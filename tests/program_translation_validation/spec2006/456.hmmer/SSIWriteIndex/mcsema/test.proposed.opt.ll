; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x663038_type = type <{ [4 x i8] }>
%G__0x449cd0_type = type <{ [8 x i8] }>
%G__0x449d10_type = type <{ [8 x i8] }>
%G__0x457339_type = type <{ [8 x i8] }>
%G__0x458380_type = type <{ [8 x i8] }>
%G__0x45a9d8_type = type <{ [8 x i8] }>
%G__0x45aa4b_type = type <{ [8 x i8] }>
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
@G_0x663038 = local_unnamed_addr global %G_0x663038_type zeroinitializer
@G__0x449cd0 = global %G__0x449cd0_type zeroinitializer
@G__0x449d10 = global %G__0x449d10_type zeroinitializer
@G__0x457339 = global %G__0x457339_type zeroinitializer
@G__0x458380 = global %G__0x458380_type zeroinitializer
@G__0x45a9d8 = global %G__0x45a9d8_type zeroinitializer
@G__0x45aa4b = global %G__0x45aa4b_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @fwrite(i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401640.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_448870.current_index_size(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401440.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401470.system_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4517e0.specqsort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_449d50.write_i32(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_449db0.write_i16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_449e20.write_i64(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446320.sre_fgets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_449e80.parse_pkey_info(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44a050.write_offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44a0c0.parse_skey_info(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SSIWriteIndex(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1384
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1376
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i56 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x457339_type* @G__0x457339 to i64), i64* %RAX.i56, align 8
  %RDI.i93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i93, align 8
  %42 = add i64 %10, 24
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %RSI.i118, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RDI.i93, align 8
  %56 = load i64, i64* %RAX.i56, align 8
  store i64 %56, i64* %RSI.i118, align 8
  %57 = add i64 %52, -293117
  %58 = add i64 %52, 12
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  store i64 %58, i64* %61, align 8
  store i64 %60, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  %call2_448f44 = tail call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64 %57, %struct.Memory* %2)
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RAX.i56, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RAX.i56, align 8
  %69 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %29, align 1
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v563 = select i1 %76, i64 10, i64 22
  %80 = add i64 %69, %.v563
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %RBP.i, align 8
  br i1 %76, label %block_448f57, label %block_.L_448f63

block_448f57:                                     ; preds = %entry
  %82 = add i64 %81, -4
  %83 = add i64 %80, 7
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  store i32 4, i32* %84, align 4
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 3419
  store i64 %86, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_448f63:                                  ; preds = %entry
  %87 = add i64 %81, -36
  %88 = add i64 %80, 7
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -24
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RDI.i93, align 8
  %96 = add i64 %92, -1786
  %97 = add i64 %92, 9
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  %call2_448f6e = tail call %struct.Memory* @sub_448870.current_index_size(%struct.State* nonnull %0, i64 %96, %struct.Memory* %call2_448f44)
  %101 = load i64, i64* %RAX.i56, align 8
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %101, -2047
  %104 = icmp ult i64 %101, 2047
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1
  %106 = trunc i64 %103 to i32
  %107 = and i32 %106, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  %112 = xor i64 %101, 16
  %113 = xor i64 %112, %103
  %114 = lshr i64 %113, 4
  %115 = trunc i64 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %26, align 1
  %117 = icmp eq i64 %103, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %29, align 1
  %119 = lshr i64 %103, 63
  %120 = trunc i64 %119 to i8
  store i8 %120, i8* %32, align 1
  %121 = lshr i64 %101, 63
  %122 = xor i64 %119, %121
  %123 = add nuw nsw i64 %122, %121
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %38, align 1
  %.v564 = select i1 %104, i64 40, i64 12
  %126 = add i64 %102, %.v564
  store i64 %126, i64* %3, align 8
  br i1 %104, label %block_.L_448f9b, label %block_448f7f

block_448f7f:                                     ; preds = %block_.L_448f63
  store i64 ptrtoint (%G__0x45a9d8_type* @G__0x45a9d8 to i64), i64* %RDI.i93, align 8
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -24
  %129 = add i64 %126, 14
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RAX.i56, align 8
  %132 = add i64 %131, 4
  %133 = add i64 %126, 21
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  store i32 1, i32* %134, align 4
  %AL.i = bitcast %union.anon* %39 to i8*
  %135 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %136 = add i64 %135, -42372
  %137 = add i64 %135, 7
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, -8
  %140 = inttoptr i64 %139 to i64*
  store i64 %137, i64* %140, align 8
  store i64 %139, i64* %6, align 8
  store i64 %136, i64* %3, align 8
  %call2_448f96 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %136, %struct.Memory* %call2_448f6e)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_448f9b

block_.L_448f9b:                                  ; preds = %block_448f7f, %block_.L_448f63
  %141 = phi i64 [ %126, %block_.L_448f63 ], [ %.pre, %block_448f7f ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_448f6e, %block_.L_448f63 ], [ %call2_448f96, %block_448f7f ]
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -24
  %144 = add i64 %141, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX.i56, align 8
  %RCX.i1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %147 = add i64 %146, 48
  %148 = add i64 %141, 7
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, 16
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RCX.i1687, align 8
  %153 = icmp ugt i32 %150, -17
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %151, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %150, 16
  %161 = xor i32 %160, %151
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1
  %165 = icmp eq i32 %151, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i32 %151, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %32, align 1
  %169 = lshr i32 %150, 31
  %170 = xor i32 %167, %169
  %171 = add nuw nsw i32 %170, %167
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %38, align 1
  %174 = add i64 %142, -52
  %175 = add i64 %141, 13
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 %151, i32* %176, align 4
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -24
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RAX.i56, align 8
  %183 = add i64 %179, 7
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, -1
  %187 = icmp eq i32 %185, 0
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
  %.v = select i1 %198, i64 13, i64 34
  %207 = add i64 %179, %.v
  %208 = add i64 %207, 4
  store i64 %208, i64* %3, align 8
  %209 = load i64, i64* %181, align 8
  store i64 %209, i64* %RAX.i56, align 8
  %210 = add i64 %209, 64
  %211 = add i64 %207, 7
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RCX.i1687, align 8
  %215 = add i64 %207, 10
  store i64 %215, i64* %3, align 8
  br i1 %198, label %block_448fb5, label %block_.L_448fca

block_448fb5:                                     ; preds = %block_.L_448f9b
  %216 = add i32 %213, 22
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RCX.i1687, align 8
  %218 = icmp ugt i32 %213, -23
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %14, align 1
  %220 = and i32 %216, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1
  %225 = xor i32 %213, 16
  %226 = xor i32 %225, %216
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %26, align 1
  %230 = icmp eq i32 %216, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1
  %232 = lshr i32 %216, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %32, align 1
  %234 = lshr i32 %213, 31
  %235 = xor i32 %232, %234
  %236 = add nuw nsw i32 %235, %232
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1
  %239 = add i64 %177, -1240
  %240 = add i64 %207, 16
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 %216, i32* %241, align 4
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 21
  store i64 %243, i64* %3, align 8
  br label %block_.L_448fda

block_.L_448fca:                                  ; preds = %block_.L_448f9b
  %244 = add i32 %213, 14
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RCX.i1687, align 8
  %246 = icmp ugt i32 %213, -15
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %14, align 1
  %248 = and i32 %244, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %21, align 1
  %253 = xor i32 %244, %213
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %26, align 1
  %257 = icmp eq i32 %244, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %29, align 1
  %259 = lshr i32 %244, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %32, align 1
  %261 = lshr i32 %213, 31
  %262 = xor i32 %259, %261
  %263 = add nuw nsw i32 %262, %259
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %38, align 1
  %266 = add i64 %177, -1240
  %267 = add i64 %207, 16
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 %244, i32* %268, align 4
  %.pre538 = load i64, i64* %3, align 8
  br label %block_.L_448fda

block_.L_448fda:                                  ; preds = %block_.L_448fca, %block_448fb5
  %269 = phi i64 [ %.pre538, %block_.L_448fca ], [ %243, %block_448fb5 ]
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -1240
  %272 = add i64 %269, 6
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX.i56, align 8
  %EAX.i1646 = bitcast %union.anon* %39 to i32*
  %276 = add i64 %270, -56
  %277 = add i64 %269, 9
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 %274, i32* %278, align 4
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -24
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 4
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RCX.i1687, align 8
  %285 = add i64 %284, 96
  %286 = add i64 %281, 7
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX.i56, align 8
  %290 = add i64 %281, 11
  store i64 %290, i64* %3, align 8
  %291 = load i64, i64* %283, align 8
  store i64 %291, i64* %RCX.i1687, align 8
  %292 = add i64 %291, 64
  %293 = add i64 %281, 14
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, %288
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX.i56, align 8
  %298 = icmp ult i32 %296, %288
  %299 = icmp ult i32 %296, %295
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %14, align 1
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  %307 = xor i32 %295, %288
  %308 = xor i32 %307, %296
  %309 = lshr i32 %308, 4
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %26, align 1
  %312 = icmp eq i32 %296, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %29, align 1
  %314 = lshr i32 %296, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %32, align 1
  %316 = lshr i32 %288, 31
  %317 = lshr i32 %295, 31
  %318 = xor i32 %314, %316
  %319 = xor i32 %314, %317
  %320 = add nuw nsw i32 %318, %319
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %38, align 1
  %323 = add i64 %279, -60
  %324 = add i64 %281, 17
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  store i32 %296, i32* %325, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -44
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 7
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  store i32 0, i32* %330, align 4
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -24
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 4
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %332 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RCX.i1687, align 8
  %337 = add i64 %333, 7
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = add i32 %339, -1
  %341 = icmp eq i32 %339, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %14, align 1
  %343 = and i32 %340, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %21, align 1
  %348 = xor i32 %340, %339
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %26, align 1
  %352 = icmp eq i32 %340, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %29, align 1
  %354 = lshr i32 %340, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %32, align 1
  %356 = lshr i32 %339, 31
  %357 = xor i32 %354, %356
  %358 = add nuw nsw i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %38, align 1
  %.v565 = select i1 %352, i64 13, i64 22
  %361 = add i64 %333, %.v565
  store i64 %361, i64* %3, align 8
  br i1 %352, label %block_449008, label %block_.L_449011

block_449008:                                     ; preds = %block_.L_448fda
  %362 = add i64 %331, -44
  %363 = add i64 %361, 3
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, 1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %368 = and i32 %366, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %373 = lshr i32 %365, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %375 = add i64 %361, 9
  store i64 %375, i64* %3, align 8
  store i32 %366, i32* %364, align 4
  %.pre539 = load i64, i64* %RBP.i, align 8
  %.pre540 = load i64, i64* %3, align 8
  br label %block_.L_449011

block_.L_449011:                                  ; preds = %block_.L_448fda, %block_449008
  %376 = phi i64 [ %.pre540, %block_449008 ], [ %361, %block_.L_448fda ]
  %377 = phi i64 [ %.pre539, %block_449008 ], [ %331, %block_.L_448fda ]
  %378 = add i64 %377, -24
  %379 = add i64 %376, 4
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RAX.i56, align 8
  %382 = add i64 %381, 4
  %383 = add i64 %376, 8
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, -1
  %387 = icmp eq i32 %385, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %14, align 1
  %389 = and i32 %386, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %21, align 1
  %394 = xor i32 %386, %385
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %26, align 1
  %398 = icmp eq i32 %386, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1
  %400 = lshr i32 %386, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %32, align 1
  %402 = lshr i32 %385, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %38, align 1
  %.v566 = select i1 %398, i64 14, i64 23
  %407 = add i64 %376, %.v566
  store i64 %407, i64* %3, align 8
  br i1 %398, label %block_44901f, label %block_.L_449028

block_44901f:                                     ; preds = %block_.L_449011
  %408 = add i64 %377, -44
  %409 = add i64 %407, 3
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, 2
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %414 = and i32 %412, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %419 = lshr i32 %411, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %421 = add i64 %407, 9
  store i64 %421, i64* %3, align 8
  store i32 %412, i32* %410, align 4
  %.pre541 = load i64, i64* %3, align 8
  %.pre542 = load i64, i64* %RBP.i, align 8
  br label %block_.L_449028

block_.L_449028:                                  ; preds = %block_.L_449011, %block_44901f
  %422 = phi i64 [ %.pre542, %block_44901f ], [ %377, %block_.L_449011 ]
  %423 = phi i64 [ %.pre541, %block_44901f ], [ %407, %block_.L_449011 ]
  store i64 54, i64* %RAX.i56, align 8
  store i64 66, i64* %RCX.i1687, align 8
  %RDX.i1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %424 = add i64 %422, -44
  %425 = add i64 %423, 13
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = and i32 %427, 2
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDX.i1594, align 8
  store i8 0, i8* %14, align 1
  %430 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %431 = trunc i32 %430 to i8
  %432 = xor i8 %431, 1
  store i8 %432, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit556 = lshr exact i32 %428, 1
  %433 = trunc i32 %.lobit556 to i8
  %434 = xor i8 %433, 1
  store i8 %434, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %435 = icmp eq i8 %434, 0
  %436 = select i1 %435, i64 66, i64 54
  store i64 %436, i64* %RAX.i56, align 8
  store i64 %436, i64* %RSI.i118, align 8
  %437 = add i64 %422, -72
  %438 = add i64 %423, 29
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  store i64 %436, i64* %439, align 8
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -72
  %442 = load i64, i64* %3, align 8
  %443 = add i64 %442, 4
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %441 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RSI.i118, align 8
  %446 = add i64 %440, -52
  %447 = add i64 %442, 7
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX.i56, align 8
  %451 = add i64 %440, -24
  %452 = add i64 %442, 11
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RDI.i93, align 8
  %455 = add i64 %454, 52
  %456 = add i64 %442, 15
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i16*
  %458 = load i16, i16* %457, align 2
  %459 = zext i16 %458 to i64
  store i64 %459, i64* %RCX.i1687, align 8
  %460 = sext i32 %449 to i64
  %461 = zext i16 %458 to i64
  %462 = mul nsw i64 %461, %460
  %463 = and i64 %462, 4294967295
  store i64 %463, i64* %RAX.i56, align 8
  store i64 %463, i64* %RDI.i93, align 8
  %464 = add i64 %445, %463
  store i64 %464, i64* %RSI.i118, align 8
  %465 = icmp ult i64 %464, %445
  %466 = icmp ult i64 %464, %463
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = trunc i64 %464 to i32
  %470 = and i32 %469, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i64 %445, %462
  %476 = xor i64 %475, %464
  %477 = lshr i64 %476, 4
  %478 = trunc i64 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %26, align 1
  %480 = icmp eq i64 %464, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %29, align 1
  %482 = lshr i64 %464, 63
  %483 = trunc i64 %482 to i8
  store i8 %483, i8* %32, align 1
  %484 = lshr i64 %445, 63
  %485 = xor i64 %482, %484
  %486 = add nuw nsw i64 %485, %482
  %487 = icmp eq i64 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %38, align 1
  %489 = add i64 %440, -80
  %490 = add i64 %442, 29
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  store i64 %464, i64* %491, align 8
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -80
  %494 = load i64, i64* %3, align 8
  %495 = add i64 %494, 4
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RSI.i118, align 8
  %498 = add i64 %492, -56
  %499 = add i64 %494, 7
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RAX.i56, align 8
  %503 = add i64 %492, -24
  %504 = add i64 %494, 11
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RDI.i93, align 8
  %507 = add i64 %506, 68
  %508 = add i64 %494, 15
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %501 to i64
  %512 = sext i32 %510 to i64
  %513 = mul nsw i64 %512, %511
  %514 = and i64 %513, 4294967295
  store i64 %514, i64* %RAX.i56, align 8
  store i64 %514, i64* %RDI.i93, align 8
  %515 = add i64 %497, %514
  store i64 %515, i64* %RSI.i118, align 8
  %516 = icmp ult i64 %515, %497
  %517 = icmp ult i64 %515, %514
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %14, align 1
  %520 = trunc i64 %515 to i32
  %521 = and i32 %520, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i64 %497, %513
  %527 = xor i64 %526, %515
  %528 = lshr i64 %527, 4
  %529 = trunc i64 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %26, align 1
  %531 = icmp eq i64 %515, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %29, align 1
  %533 = lshr i64 %515, 63
  %534 = trunc i64 %533 to i8
  store i8 %534, i8* %32, align 1
  %535 = lshr i64 %497, 63
  %536 = xor i64 %533, %535
  %537 = add nuw nsw i64 %536, %533
  %538 = icmp eq i64 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %38, align 1
  %540 = add i64 %492, -88
  %541 = add i64 %494, 26
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  store i64 %515, i64* %542, align 8
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -24
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RSI.i118, align 8
  %549 = add i64 %548, 8
  %550 = add i64 %545, 8
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  store i8 0, i8* %14, align 1
  %553 = and i32 %552, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %558 = icmp eq i32 %552, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %29, align 1
  %560 = lshr i32 %552, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v567 = select i1 %558, i64 351, i64 14
  %562 = add i64 %545, %.v567
  store i64 %562, i64* %3, align 8
  br i1 %558, label %block_.L_4491db, label %block_44908a

block_44908a:                                     ; preds = %block_.L_449028
  %563 = add i64 %562, 4
  store i64 %563, i64* %3, align 8
  %564 = load i64, i64* %547, align 8
  store i64 %564, i64* %RAX.i56, align 8
  %565 = add i64 %564, 80
  %566 = add i64 %562, 8
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RDI.i93, align 8
  %569 = add i64 %562, -293962
  %570 = add i64 %562, 13
  %571 = load i64, i64* %6, align 8
  %572 = add i64 %571, -8
  %573 = inttoptr i64 %572 to i64*
  store i64 %570, i64* %573, align 8
  store i64 %572, i64* %6, align 8
  store i64 %569, i64* %3, align 8
  %call2_449092 = tail call %struct.Memory* @sub_401440.fclose_plt(%struct.State* nonnull %0, i64 %569, %struct.Memory* %MEMORY.0)
  %574 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45aa4b_type* @G__0x45aa4b to i64), i64* %RSI.i118, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -1136
  store i64 %576, i64* %RDI.i93, align 8
  %577 = add i64 %575, -24
  %578 = add i64 %574, 21
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RCX.i1687, align 8
  %581 = add i64 %580, 80
  %582 = add i64 %574, 29
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  store i64 0, i64* %583, align 8
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -24
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, 4
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %585 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RCX.i1687, align 8
  %590 = add i64 %589, 72
  %591 = add i64 %586, 8
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RDX.i1594, align 8
  %594 = add i64 %586, 12
  store i64 %594, i64* %3, align 8
  %595 = load i64, i64* %588, align 8
  store i64 %595, i64* %RCX.i1687, align 8
  %596 = add i64 %595, 72
  %597 = add i64 %586, 16
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %RCX.i1687, align 8
  %600 = add i64 %584, -1244
  %601 = load i32, i32* %EAX.i1646, align 4
  %602 = add i64 %586, 22
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %600 to i32*
  store i32 %601, i32* %603, align 4
  %AL.i1491 = bitcast %union.anon* %39 to i8*
  %604 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1491, align 1
  %605 = add i64 %604, -293386
  %606 = add i64 %604, 7
  %607 = load i64, i64* %6, align 8
  %608 = add i64 %607, -8
  %609 = inttoptr i64 %608 to i64*
  store i64 %606, i64* %609, align 8
  store i64 %608, i64* %6, align 8
  store i64 %605, i64* %3, align 8
  %610 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %call2_449092)
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -1136
  %613 = load i64, i64* %3, align 8
  store i64 %612, i64* %RDI.i93, align 8
  %614 = add i64 %611, -1248
  %615 = load i32, i32* %EAX.i1646, align 4
  %616 = add i64 %613, 13
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %614 to i32*
  store i32 %615, i32* %617, align 4
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, -293998
  %620 = add i64 %618, 5
  %621 = load i64, i64* %6, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %620, i64* %623, align 8
  store i64 %622, i64* %6, align 8
  store i64 %619, i64* %3, align 8
  %call2_4490de = tail call %struct.Memory* @sub_401470.system_plt(%struct.State* nonnull %0, i64 %619, %struct.Memory* %610)
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -36
  %626 = load i32, i32* %EAX.i1646, align 4
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 3
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %625 to i32*
  store i32 %626, i32* %629, align 4
  %630 = load i32, i32* %EAX.i1646, align 4
  %631 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %632 = and i32 %630, 255
  %633 = tail call i32 @llvm.ctpop.i32(i32 %632)
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  store i8 %636, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %637 = icmp eq i32 %630, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i32 %630, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v568 = select i1 %637, i64 21, i64 9
  %641 = add i64 %631, %.v568
  store i64 %641, i64* %3, align 8
  br i1 %637, label %block_.L_4490fb, label %block_4490ef

block_4490ef:                                     ; preds = %block_44908a
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -4
  %644 = add i64 %641, 7
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  store i32 16, i32* %645, align 4
  %646 = load i64, i64* %3, align 8
  %647 = add i64 %646, 3011
  store i64 %647, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4490fb:                                  ; preds = %block_44908a
  store i64 ptrtoint (%G__0x458380_type* @G__0x458380 to i64), i64* %RSI.i118, align 8
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -24
  %650 = add i64 %641, 14
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %RAX.i56, align 8
  %653 = add i64 %652, 72
  %654 = add i64 %641, 18
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RDI.i93, align 8
  %657 = add i64 %641, -293563
  %658 = add i64 %641, 23
  %659 = load i64, i64* %6, align 8
  %660 = add i64 %659, -8
  %661 = inttoptr i64 %660 to i64*
  store i64 %658, i64* %661, align 8
  store i64 %660, i64* %6, align 8
  store i64 %657, i64* %3, align 8
  %call2_44910d = tail call %struct.Memory* @sub_401640.fopen_plt(%struct.State* nonnull %0, i64 %657, %struct.Memory* %call2_4490de)
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -24
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RSI.i118, align 8
  %668 = add i64 %667, 80
  %669 = load i64, i64* %RAX.i56, align 8
  %670 = add i64 %664, 8
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %668 to i64*
  store i64 %669, i64* %671, align 8
  %672 = load i64, i64* %RAX.i56, align 8
  %673 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %674 = trunc i64 %672 to i32
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %680 = icmp eq i64 %672, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = lshr i64 %672, 63
  %683 = trunc i64 %682 to i8
  store i8 %683, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v569 = select i1 %680, i64 10, i64 22
  %684 = add i64 %673, %.v569
  store i64 %684, i64* %3, align 8
  %685 = load i64, i64* %RBP.i, align 8
  br i1 %680, label %block_449124, label %block_.L_449130

block_449124:                                     ; preds = %block_.L_4490fb
  %686 = add i64 %685, -4
  %687 = add i64 %684, 7
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  store i32 16, i32* %688, align 4
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 2958
  store i64 %690, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449130:                                  ; preds = %block_.L_4490fb
  %691 = add i64 %685, -24
  %692 = add i64 %684, 4
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RAX.i56, align 8
  %695 = add i64 %694, 112
  %696 = add i64 %684, 8
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RDI.i93, align 8
  %699 = add i64 %684, -294128
  %700 = add i64 %684, 13
  %701 = load i64, i64* %6, align 8
  %702 = add i64 %701, -8
  %703 = inttoptr i64 %702 to i64*
  store i64 %700, i64* %703, align 8
  store i64 %702, i64* %6, align 8
  store i64 %699, i64* %3, align 8
  %call2_449138 = tail call %struct.Memory* @sub_401440.fclose_plt(%struct.State* nonnull %0, i64 %699, %struct.Memory* %call2_44910d)
  %704 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45aa4b_type* @G__0x45aa4b to i64), i64* %RSI.i118, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -1136
  store i64 %706, i64* %RDI.i93, align 8
  %707 = add i64 %705, -24
  %708 = add i64 %704, 21
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RCX.i1687, align 8
  %711 = add i64 %710, 112
  %712 = add i64 %704, 29
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i64*
  store i64 0, i64* %713, align 8
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -24
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 4
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %715 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RCX.i1687, align 8
  %720 = add i64 %719, 104
  %721 = add i64 %716, 8
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %RDX.i1594, align 8
  %724 = add i64 %716, 12
  store i64 %724, i64* %3, align 8
  %725 = load i64, i64* %718, align 8
  store i64 %725, i64* %RCX.i1687, align 8
  %726 = add i64 %725, 104
  %727 = add i64 %716, 16
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RCX.i1687, align 8
  %730 = add i64 %714, -1252
  %731 = load i32, i32* %EAX.i1646, align 4
  %732 = add i64 %716, 22
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %730 to i32*
  store i32 %731, i32* %733, align 4
  %734 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1491, align 1
  %735 = add i64 %734, -293552
  %736 = add i64 %734, 7
  %737 = load i64, i64* %6, align 8
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %736, i64* %739, align 8
  store i64 %738, i64* %6, align 8
  store i64 %735, i64* %3, align 8
  %740 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %call2_449138)
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -1136
  %743 = load i64, i64* %3, align 8
  store i64 %742, i64* %RDI.i93, align 8
  %744 = add i64 %741, -1256
  %745 = load i32, i32* %EAX.i1646, align 4
  %746 = add i64 %743, 13
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %744 to i32*
  store i32 %745, i32* %747, align 4
  %748 = load i64, i64* %3, align 8
  %749 = add i64 %748, -294164
  %750 = add i64 %748, 5
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_449184 = tail call %struct.Memory* @sub_401470.system_plt(%struct.State* nonnull %0, i64 %749, %struct.Memory* %740)
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -36
  %756 = load i32, i32* %EAX.i1646, align 4
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, 3
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %755 to i32*
  store i32 %756, i32* %759, align 4
  %760 = load i32, i32* %EAX.i1646, align 4
  %761 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %762 = and i32 %760, 255
  %763 = tail call i32 @llvm.ctpop.i32(i32 %762)
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  store i8 %766, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %767 = icmp eq i32 %760, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %29, align 1
  %769 = lshr i32 %760, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v570 = select i1 %767, i64 21, i64 9
  %771 = add i64 %761, %.v570
  store i64 %771, i64* %3, align 8
  br i1 %767, label %block_.L_4491a1, label %block_449195

block_449195:                                     ; preds = %block_.L_449130
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -4
  %774 = add i64 %771, 7
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  store i32 16, i32* %775, align 4
  %776 = load i64, i64* %3, align 8
  %777 = add i64 %776, 2845
  store i64 %777, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4491a1:                                  ; preds = %block_.L_449130
  store i64 ptrtoint (%G__0x458380_type* @G__0x458380 to i64), i64* %RSI.i118, align 8
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -24
  %780 = add i64 %771, 14
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %RAX.i56, align 8
  %783 = add i64 %782, 104
  %784 = add i64 %771, 18
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %RDI.i93, align 8
  %787 = add i64 %771, -293729
  %788 = add i64 %771, 23
  %789 = load i64, i64* %6, align 8
  %790 = add i64 %789, -8
  %791 = inttoptr i64 %790 to i64*
  store i64 %788, i64* %791, align 8
  store i64 %790, i64* %6, align 8
  store i64 %787, i64* %3, align 8
  %call2_4491b3 = tail call %struct.Memory* @sub_401640.fopen_plt(%struct.State* nonnull %0, i64 %787, %struct.Memory* %call2_449184)
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -24
  %794 = load i64, i64* %3, align 8
  %795 = add i64 %794, 4
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796, align 8
  store i64 %797, i64* %RSI.i118, align 8
  %798 = add i64 %797, 112
  %799 = load i64, i64* %RAX.i56, align 8
  %800 = add i64 %794, 8
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i64*
  store i64 %799, i64* %801, align 8
  %802 = load i64, i64* %RAX.i56, align 8
  %803 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %804 = trunc i64 %802 to i32
  %805 = and i32 %804, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %810 = icmp eq i64 %802, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %29, align 1
  %812 = lshr i64 %802, 63
  %813 = trunc i64 %812 to i8
  store i8 %813, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v571 = select i1 %810, i64 10, i64 22
  %814 = add i64 %803, %.v571
  store i64 %814, i64* %3, align 8
  br i1 %810, label %block_4491ca, label %block_.L_4491d6

block_4491ca:                                     ; preds = %block_.L_4491a1
  %815 = load i64, i64* %RBP.i, align 8
  %816 = add i64 %815, -4
  %817 = add i64 %814, 7
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  store i32 16, i32* %818, align 4
  %819 = load i64, i64* %3, align 8
  %820 = add i64 %819, 2792
  store i64 %820, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4491d6:                                  ; preds = %block_.L_4491a1
  %821 = add i64 %814, 101
  store i64 %821, i64* %3, align 8
  br label %block_.L_44923b

block_.L_4491db:                                  ; preds = %block_.L_449028
  store i64 56, i64* %RAX.i56, align 8
  store i64 56, i64* %RDX.i1594, align 8
  store i64 ptrtoint (%G__0x449cd0_type* @G__0x449cd0 to i64), i64* %RCX.i1687, align 8
  %822 = add i64 %562, 21
  store i64 %822, i64* %3, align 8
  %823 = load i64, i64* %547, align 8
  store i64 %823, i64* %RSI.i118, align 8
  %824 = add i64 %823, 56
  %825 = add i64 %562, 25
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %RSI.i118, align 8
  %828 = add i64 %562, 29
  store i64 %828, i64* %3, align 8
  %829 = load i64, i64* %547, align 8
  store i64 %829, i64* %RDI.i93, align 8
  %830 = add i64 %829, 68
  %831 = add i64 %562, 32
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RAX.i56, align 8
  store i64 %827, i64* %RDI.i93, align 8
  store i64 %834, i64* %RSI.i118, align 8
  %AL.i1351 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1351, align 1
  %835 = add i64 %562, 34309
  %836 = add i64 %562, 44
  %837 = load i64, i64* %6, align 8
  %838 = add i64 %837, -8
  %839 = inttoptr i64 %838 to i64*
  store i64 %836, i64* %839, align 8
  store i64 %838, i64* %6, align 8
  store i64 %835, i64* %3, align 8
  %call2_449202 = tail call %struct.Memory* @sub_4517e0.specqsort(%struct.State* nonnull %0, i64 %835, %struct.Memory* %MEMORY.0)
  %840 = load i64, i64* %3, align 8
  store i64 16, i64* %RSI.i118, align 8
  store i64 16, i64* %RDX.i1594, align 8
  store i64 ptrtoint (%G__0x449d10_type* @G__0x449d10 to i64), i64* %RCX.i1687, align 8
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -24
  %843 = add i64 %840, 21
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RDI.i93, align 8
  %846 = add i64 %845, 88
  %847 = add i64 %840, 25
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RDI.i93, align 8
  %R8.i1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %850 = add i64 %840, 29
  store i64 %850, i64* %3, align 8
  %851 = load i64, i64* %844, align 8
  store i64 %851, i64* %R8.i1337, align 8
  %852 = add i64 %851, 100
  %853 = add i64 %840, 33
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RSI.i118, align 8
  %857 = add i64 %841, -1260
  %858 = load i32, i32* %EAX.i1646, align 4
  %859 = add i64 %840, 39
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %857 to i32*
  store i32 %858, i32* %860, align 4
  %861 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1351, align 1
  %862 = add i64 %861, 34226
  %863 = add i64 %861, 7
  %864 = load i64, i64* %6, align 8
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %863, i64* %866, align 8
  store i64 %865, i64* %6, align 8
  store i64 %862, i64* %3, align 8
  %call2_449230 = tail call %struct.Memory* @sub_4517e0.specqsort(%struct.State* nonnull %0, i64 %862, %struct.Memory* %call2_449202)
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -1264
  %869 = load i32, i32* %EAX.i1646, align 4
  %870 = load i64, i64* %3, align 8
  %871 = add i64 %870, 6
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %868 to i32*
  store i32 %869, i32* %872, align 4
  %.pre543 = load i64, i64* %3, align 8
  br label %block_.L_44923b

block_.L_44923b:                                  ; preds = %block_.L_4491db, %block_.L_4491d6
  %873 = phi i64 [ %.pre543, %block_.L_4491db ], [ %821, %block_.L_4491d6 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_449230, %block_.L_4491db ], [ %call2_4491b3, %block_.L_4491d6 ]
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -32
  %876 = add i64 %873, 4
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %RDI.i93, align 8
  %879 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*), align 8
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RSI.i118, align 8
  %881 = add i64 %873, 2837
  %882 = add i64 %873, 16
  %883 = load i64, i64* %6, align 8
  %884 = add i64 %883, -8
  %885 = inttoptr i64 %884 to i64*
  store i64 %882, i64* %885, align 8
  store i64 %884, i64* %6, align 8
  store i64 %881, i64* %3, align 8
  %call2_449246 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %881, %struct.Memory* %MEMORY.4)
  %886 = load i32, i32* %EAX.i1646, align 4
  %887 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %888 = and i32 %886, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %893 = icmp eq i32 %886, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %29, align 1
  %895 = lshr i32 %886, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v572 = select i1 %893, i64 9, i64 21
  %897 = add i64 %887, %.v572
  store i64 %897, i64* %3, align 8
  %898 = load i64, i64* %RBP.i, align 8
  br i1 %893, label %block_449254, label %block_.L_449260

block_449254:                                     ; preds = %block_.L_44923b
  %899 = add i64 %898, -4
  %900 = add i64 %897, 7
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  store i32 15, i32* %901, align 4
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, 2654
  store i64 %903, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449260:                                  ; preds = %block_.L_44923b
  %904 = add i64 %898, -32
  %905 = add i64 %897, 4
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RDI.i93, align 8
  %908 = add i64 %898, -44
  %909 = add i64 %897, 7
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RSI.i118, align 8
  %913 = add i64 %897, 2800
  %914 = add i64 %897, 12
  %915 = load i64, i64* %6, align 8
  %916 = add i64 %915, -8
  %917 = inttoptr i64 %916 to i64*
  store i64 %914, i64* %917, align 8
  store i64 %916, i64* %6, align 8
  store i64 %913, i64* %3, align 8
  %call2_449267 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %913, %struct.Memory* %call2_449246)
  %918 = load i32, i32* %EAX.i1646, align 4
  %919 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %920 = and i32 %918, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %925 = icmp eq i32 %918, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %29, align 1
  %927 = lshr i32 %918, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v573 = select i1 %925, i64 9, i64 21
  %929 = add i64 %919, %.v573
  store i64 %929, i64* %3, align 8
  %930 = load i64, i64* %RBP.i, align 8
  br i1 %925, label %block_449275, label %block_.L_449281

block_449275:                                     ; preds = %block_.L_449260
  %931 = add i64 %930, -4
  %932 = add i64 %929, 7
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  store i32 15, i32* %933, align 4
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 2621
  store i64 %935, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449281:                                  ; preds = %block_.L_449260
  %936 = add i64 %930, -32
  %937 = add i64 %929, 4
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RDI.i93, align 8
  %940 = add i64 %930, -24
  %941 = add i64 %929, 8
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %RAX.i56, align 8
  %944 = add i64 %943, 52
  %945 = add i64 %929, 12
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i16*
  %947 = load i16, i16* %946, align 2
  %948 = zext i16 %947 to i64
  store i64 %948, i64* %RSI.i118, align 8
  %949 = add i64 %929, 2863
  %950 = add i64 %929, 17
  %951 = load i64, i64* %6, align 8
  %952 = add i64 %951, -8
  %953 = inttoptr i64 %952 to i64*
  store i64 %950, i64* %953, align 8
  store i64 %952, i64* %6, align 8
  store i64 %949, i64* %3, align 8
  %call2_44928d = tail call %struct.Memory* @sub_449db0.write_i16(%struct.State* nonnull %0, i64 %949, %struct.Memory* %call2_449267)
  %954 = load i32, i32* %EAX.i1646, align 4
  %955 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %956 = and i32 %954, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %961 = icmp eq i32 %954, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %29, align 1
  %963 = lshr i32 %954, 31
  %964 = trunc i32 %963 to i8
  store i8 %964, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v574 = select i1 %961, i64 9, i64 21
  %965 = add i64 %955, %.v574
  store i64 %965, i64* %3, align 8
  %966 = load i64, i64* %RBP.i, align 8
  br i1 %961, label %block_44929b, label %block_.L_4492a7

block_44929b:                                     ; preds = %block_.L_449281
  %967 = add i64 %966, -4
  %968 = add i64 %965, 7
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  store i32 15, i32* %969, align 4
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 2583
  store i64 %971, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4492a7:                                  ; preds = %block_.L_449281
  %972 = add i64 %966, -32
  %973 = add i64 %965, 4
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RDI.i93, align 8
  %976 = add i64 %966, -24
  %977 = add i64 %965, 8
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RAX.i56, align 8
  %980 = add i64 %979, 68
  %981 = add i64 %965, 11
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RSI.i118, align 8
  %985 = add i64 %965, 2729
  %986 = add i64 %965, 16
  %987 = load i64, i64* %6, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %986, i64* %989, align 8
  store i64 %988, i64* %6, align 8
  store i64 %985, i64* %3, align 8
  %call2_4492b2 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %985, %struct.Memory* %call2_44928d)
  %990 = load i32, i32* %EAX.i1646, align 4
  %991 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %992 = and i32 %990, 255
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %997 = icmp eq i32 %990, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %29, align 1
  %999 = lshr i32 %990, 31
  %1000 = trunc i32 %999 to i8
  store i8 %1000, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v575 = select i1 %997, i64 9, i64 21
  %1001 = add i64 %991, %.v575
  store i64 %1001, i64* %3, align 8
  %1002 = load i64, i64* %RBP.i, align 8
  br i1 %997, label %block_4492c0, label %block_.L_4492cc

block_4492c0:                                     ; preds = %block_.L_4492a7
  %1003 = add i64 %1002, -4
  %1004 = add i64 %1001, 7
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  store i32 15, i32* %1005, align 4
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 2546
  store i64 %1007, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4492cc:                                  ; preds = %block_.L_4492a7
  %1008 = add i64 %1002, -32
  %1009 = add i64 %1001, 4
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i64*
  %1011 = load i64, i64* %1010, align 8
  store i64 %1011, i64* %RDI.i93, align 8
  %1012 = add i64 %1002, -24
  %1013 = add i64 %1001, 8
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RAX.i56, align 8
  %1016 = add i64 %1015, 100
  %1017 = add i64 %1001, 11
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RSI.i118, align 8
  %1021 = add i64 %1001, 2692
  %1022 = add i64 %1001, 16
  %1023 = load i64, i64* %6, align 8
  %1024 = add i64 %1023, -8
  %1025 = inttoptr i64 %1024 to i64*
  store i64 %1022, i64* %1025, align 8
  store i64 %1024, i64* %6, align 8
  store i64 %1021, i64* %3, align 8
  %call2_4492d7 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1021, %struct.Memory* %call2_4492b2)
  %1026 = load i32, i32* %EAX.i1646, align 4
  %1027 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1028 = and i32 %1026, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1033 = icmp eq i32 %1026, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %29, align 1
  %1035 = lshr i32 %1026, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v576 = select i1 %1033, i64 9, i64 21
  %1037 = add i64 %1027, %.v576
  store i64 %1037, i64* %3, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  br i1 %1033, label %block_4492e5, label %block_.L_4492f1

block_4492e5:                                     ; preds = %block_.L_4492cc
  %1039 = add i64 %1038, -4
  %1040 = add i64 %1037, 7
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 15, i32* %1041, align 4
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 2509
  store i64 %1043, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4492f1:                                  ; preds = %block_.L_4492cc
  %1044 = add i64 %1038, -32
  %1045 = add i64 %1037, 4
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  store i64 %1047, i64* %RDI.i93, align 8
  %1048 = add i64 %1038, -24
  %1049 = add i64 %1037, 8
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %RAX.i56, align 8
  %1052 = add i64 %1051, 48
  %1053 = add i64 %1037, 11
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RSI.i118, align 8
  %1057 = add i64 %1037, 2655
  %1058 = add i64 %1037, 16
  %1059 = load i64, i64* %6, align 8
  %1060 = add i64 %1059, -8
  %1061 = inttoptr i64 %1060 to i64*
  store i64 %1058, i64* %1061, align 8
  store i64 %1060, i64* %6, align 8
  store i64 %1057, i64* %3, align 8
  %call2_4492fc = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1057, %struct.Memory* %call2_4492d7)
  %1062 = load i32, i32* %EAX.i1646, align 4
  %1063 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1064 = and i32 %1062, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1069 = icmp eq i32 %1062, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %29, align 1
  %1071 = lshr i32 %1062, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v577 = select i1 %1069, i64 9, i64 21
  %1073 = add i64 %1063, %.v577
  store i64 %1073, i64* %3, align 8
  %1074 = load i64, i64* %RBP.i, align 8
  br i1 %1069, label %block_44930a, label %block_.L_449316

block_44930a:                                     ; preds = %block_.L_4492f1
  %1075 = add i64 %1074, -4
  %1076 = add i64 %1073, 7
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  store i32 15, i32* %1077, align 4
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 2472
  store i64 %1079, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449316:                                  ; preds = %block_.L_4492f1
  %1080 = add i64 %1074, -32
  %1081 = add i64 %1073, 4
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i64*
  %1083 = load i64, i64* %1082, align 8
  store i64 %1083, i64* %RDI.i93, align 8
  %1084 = add i64 %1074, -24
  %1085 = add i64 %1073, 8
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i56, align 8
  %1088 = add i64 %1087, 64
  %1089 = add i64 %1073, 11
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RSI.i118, align 8
  %1093 = add i64 %1073, 2618
  %1094 = add i64 %1073, 16
  %1095 = load i64, i64* %6, align 8
  %1096 = add i64 %1095, -8
  %1097 = inttoptr i64 %1096 to i64*
  store i64 %1094, i64* %1097, align 8
  store i64 %1096, i64* %6, align 8
  store i64 %1093, i64* %3, align 8
  %call2_449321 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1093, %struct.Memory* %call2_4492fc)
  %1098 = load i32, i32* %EAX.i1646, align 4
  %1099 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1100 = and i32 %1098, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1105 = icmp eq i32 %1098, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %29, align 1
  %1107 = lshr i32 %1098, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v578 = select i1 %1105, i64 9, i64 21
  %1109 = add i64 %1099, %.v578
  store i64 %1109, i64* %3, align 8
  %1110 = load i64, i64* %RBP.i, align 8
  br i1 %1105, label %block_44932f, label %block_.L_44933b

block_44932f:                                     ; preds = %block_.L_449316
  %1111 = add i64 %1110, -4
  %1112 = add i64 %1109, 7
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  store i32 15, i32* %1113, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, 2435
  store i64 %1115, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44933b:                                  ; preds = %block_.L_449316
  %1116 = add i64 %1110, -32
  %1117 = add i64 %1109, 4
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RDI.i93, align 8
  %1120 = add i64 %1110, -24
  %1121 = add i64 %1109, 8
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %RAX.i56, align 8
  %1124 = add i64 %1123, 96
  %1125 = add i64 %1109, 11
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %RSI.i118, align 8
  %1129 = add i64 %1109, 2581
  %1130 = add i64 %1109, 16
  %1131 = load i64, i64* %6, align 8
  %1132 = add i64 %1131, -8
  %1133 = inttoptr i64 %1132 to i64*
  store i64 %1130, i64* %1133, align 8
  store i64 %1132, i64* %6, align 8
  store i64 %1129, i64* %3, align 8
  %call2_449346 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1129, %struct.Memory* %call2_449321)
  %1134 = load i32, i32* %EAX.i1646, align 4
  %1135 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1136 = and i32 %1134, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1141 = icmp eq i32 %1134, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %29, align 1
  %1143 = lshr i32 %1134, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v579 = select i1 %1141, i64 9, i64 21
  %1145 = add i64 %1135, %.v579
  store i64 %1145, i64* %3, align 8
  %1146 = load i64, i64* %RBP.i, align 8
  br i1 %1141, label %block_449354, label %block_.L_449360

block_449354:                                     ; preds = %block_.L_44933b
  %1147 = add i64 %1146, -4
  %1148 = add i64 %1145, 7
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  store i32 15, i32* %1149, align 4
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 2398
  store i64 %1151, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449360:                                  ; preds = %block_.L_44933b
  %1152 = add i64 %1146, -32
  %1153 = add i64 %1145, 4
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i64*
  %1155 = load i64, i64* %1154, align 8
  store i64 %1155, i64* %RDI.i93, align 8
  %1156 = add i64 %1146, -52
  %1157 = add i64 %1145, 7
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RSI.i118, align 8
  %1161 = add i64 %1145, 2544
  %1162 = add i64 %1145, 12
  %1163 = load i64, i64* %6, align 8
  %1164 = add i64 %1163, -8
  %1165 = inttoptr i64 %1164 to i64*
  store i64 %1162, i64* %1165, align 8
  store i64 %1164, i64* %6, align 8
  store i64 %1161, i64* %3, align 8
  %call2_449367 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1161, %struct.Memory* %call2_449346)
  %1166 = load i32, i32* %EAX.i1646, align 4
  %1167 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1168 = and i32 %1166, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1173 = icmp eq i32 %1166, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i32 %1166, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v580 = select i1 %1173, i64 9, i64 21
  %1177 = add i64 %1167, %.v580
  store i64 %1177, i64* %3, align 8
  %1178 = load i64, i64* %RBP.i, align 8
  br i1 %1173, label %block_449375, label %block_.L_449381

block_449375:                                     ; preds = %block_.L_449360
  %1179 = add i64 %1178, -4
  %1180 = add i64 %1177, 7
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  store i32 15, i32* %1181, align 4
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, 2365
  store i64 %1183, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449381:                                  ; preds = %block_.L_449360
  %1184 = add i64 %1178, -32
  %1185 = add i64 %1177, 4
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i64 %1187, i64* %RDI.i93, align 8
  %1188 = add i64 %1178, -56
  %1189 = add i64 %1177, 7
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RSI.i118, align 8
  %1193 = add i64 %1177, 2511
  %1194 = add i64 %1177, 12
  %1195 = load i64, i64* %6, align 8
  %1196 = add i64 %1195, -8
  %1197 = inttoptr i64 %1196 to i64*
  store i64 %1194, i64* %1197, align 8
  store i64 %1196, i64* %6, align 8
  store i64 %1193, i64* %3, align 8
  %call2_449388 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1193, %struct.Memory* %call2_449367)
  %1198 = load i32, i32* %EAX.i1646, align 4
  %1199 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1200 = and i32 %1198, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1205 = icmp eq i32 %1198, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %29, align 1
  %1207 = lshr i32 %1198, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v581 = select i1 %1205, i64 9, i64 21
  %1209 = add i64 %1199, %.v581
  store i64 %1209, i64* %3, align 8
  %1210 = load i64, i64* %RBP.i, align 8
  br i1 %1205, label %block_449396, label %block_.L_4493a2

block_449396:                                     ; preds = %block_.L_449381
  %1211 = add i64 %1210, -4
  %1212 = add i64 %1209, 7
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  store i32 15, i32* %1213, align 4
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 2332
  store i64 %1215, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4493a2:                                  ; preds = %block_.L_449381
  %1216 = add i64 %1210, -32
  %1217 = add i64 %1209, 4
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %RDI.i93, align 8
  %1220 = add i64 %1210, -60
  %1221 = add i64 %1209, 7
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RSI.i118, align 8
  %1225 = add i64 %1209, 2478
  %1226 = add i64 %1209, 12
  %1227 = load i64, i64* %6, align 8
  %1228 = add i64 %1227, -8
  %1229 = inttoptr i64 %1228 to i64*
  store i64 %1226, i64* %1229, align 8
  store i64 %1228, i64* %6, align 8
  store i64 %1225, i64* %3, align 8
  %call2_4493a9 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1225, %struct.Memory* %call2_449388)
  %1230 = load i32, i32* %EAX.i1646, align 4
  %1231 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1232 = and i32 %1230, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1237 = icmp eq i32 %1230, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %29, align 1
  %1239 = lshr i32 %1230, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v558 = select i1 %1237, i64 9, i64 21
  %1241 = add i64 %1231, %.v558
  store i64 %1241, i64* %3, align 8
  %1242 = load i64, i64* %RBP.i, align 8
  br i1 %1237, label %block_4493b7, label %block_.L_4493c3

block_4493b7:                                     ; preds = %block_.L_4493a2
  %1243 = add i64 %1242, -4
  %1244 = add i64 %1241, 7
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  store i32 15, i32* %1245, align 4
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 2299
  store i64 %1247, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4493c3:                                  ; preds = %block_.L_4493a2
  %1248 = add i64 %1242, -24
  %1249 = add i64 %1241, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX.i56, align 8
  %1252 = add i64 %1251, 4
  %1253 = add i64 %1241, 8
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  store i8 0, i8* %14, align 1
  %1256 = and i32 %1255, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1261 = icmp eq i32 %1255, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %29, align 1
  %1263 = lshr i32 %1255, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v557 = select i1 %1261, i64 14, i64 133
  %1265 = add i64 %1241, %.v557
  %1266 = add i64 %1242, -32
  %1267 = add i64 %1265, 4
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RDI.i93, align 8
  %1270 = add i64 %1242, -72
  %1271 = add i64 %1265, 8
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  br i1 %1261, label %block_4493d1, label %block_.L_449448

block_4493d1:                                     ; preds = %block_.L_4493c3
  store i64 %1273, i64* %RAX.i56, align 8
  %1274 = and i64 %1273, 4294967295
  store i64 %1274, i64* %RCX.i1687, align 8
  store i64 %1274, i64* %RSI.i118, align 8
  %1275 = add i64 %1265, 2431
  %1276 = add i64 %1265, 17
  %1277 = load i64, i64* %6, align 8
  %1278 = add i64 %1277, -8
  %1279 = inttoptr i64 %1278 to i64*
  store i64 %1276, i64* %1279, align 8
  store i64 %1278, i64* %6, align 8
  store i64 %1275, i64* %3, align 8
  %call2_4493dd = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1275, %struct.Memory* %call2_4493a9)
  %1280 = load i32, i32* %EAX.i1646, align 4
  %1281 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1282 = and i32 %1280, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1287 = icmp eq i32 %1280, 0
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %29, align 1
  %1289 = lshr i32 %1280, 31
  %1290 = trunc i32 %1289 to i8
  store i8 %1290, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v617 = select i1 %1287, i64 9, i64 21
  %1291 = add i64 %1281, %.v617
  store i64 %1291, i64* %3, align 8
  %1292 = load i64, i64* %RBP.i, align 8
  br i1 %1287, label %block_4493eb, label %block_.L_4493f7

block_4493eb:                                     ; preds = %block_4493d1
  %1293 = add i64 %1292, -4
  %1294 = add i64 %1291, 7
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 15, i32* %1295, align 4
  %1296 = load i64, i64* %3, align 8
  %1297 = add i64 %1296, 2247
  store i64 %1297, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4493f7:                                  ; preds = %block_4493d1
  %1298 = add i64 %1292, -32
  %1299 = add i64 %1291, 4
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i64*
  %1301 = load i64, i64* %1300, align 8
  store i64 %1301, i64* %RDI.i93, align 8
  %1302 = add i64 %1292, -80
  %1303 = add i64 %1291, 8
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i64*
  %1305 = load i64, i64* %1304, align 8
  store i64 %1305, i64* %RAX.i56, align 8
  %1306 = and i64 %1305, 4294967295
  store i64 %1306, i64* %RCX.i1687, align 8
  store i64 %1306, i64* %RSI.i118, align 8
  %1307 = add i64 %1291, 2393
  %1308 = add i64 %1291, 17
  %1309 = load i64, i64* %6, align 8
  %1310 = add i64 %1309, -8
  %1311 = inttoptr i64 %1310 to i64*
  store i64 %1308, i64* %1311, align 8
  store i64 %1310, i64* %6, align 8
  store i64 %1307, i64* %3, align 8
  %call2_449403 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1307, %struct.Memory* %call2_4493dd)
  %1312 = load i32, i32* %EAX.i1646, align 4
  %1313 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1314 = and i32 %1312, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1319 = icmp eq i32 %1312, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %29, align 1
  %1321 = lshr i32 %1312, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v618 = select i1 %1319, i64 9, i64 21
  %1323 = add i64 %1313, %.v618
  store i64 %1323, i64* %3, align 8
  %1324 = load i64, i64* %RBP.i, align 8
  br i1 %1319, label %block_449411, label %block_.L_44941d

block_449411:                                     ; preds = %block_.L_4493f7
  %1325 = add i64 %1324, -4
  %1326 = add i64 %1323, 7
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  store i32 15, i32* %1327, align 4
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 2209
  store i64 %1329, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44941d:                                  ; preds = %block_.L_4493f7
  %1330 = add i64 %1324, -32
  %1331 = add i64 %1323, 4
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RDI.i93, align 8
  %1334 = add i64 %1324, -88
  %1335 = add i64 %1323, 8
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i64*
  %1337 = load i64, i64* %1336, align 8
  store i64 %1337, i64* %RAX.i56, align 8
  %1338 = and i64 %1337, 4294967295
  store i64 %1338, i64* %RCX.i1687, align 8
  store i64 %1338, i64* %RSI.i118, align 8
  %1339 = add i64 %1323, 2355
  %1340 = add i64 %1323, 17
  %1341 = load i64, i64* %6, align 8
  %1342 = add i64 %1341, -8
  %1343 = inttoptr i64 %1342 to i64*
  store i64 %1340, i64* %1343, align 8
  store i64 %1342, i64* %6, align 8
  store i64 %1339, i64* %3, align 8
  %call2_449429 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1339, %struct.Memory* %call2_449403)
  %1344 = load i32, i32* %EAX.i1646, align 4
  %1345 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1346 = and i32 %1344, 255
  %1347 = tail call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1351 = icmp eq i32 %1344, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %29, align 1
  %1353 = lshr i32 %1344, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v619 = select i1 %1351, i64 9, i64 21
  %1355 = add i64 %1345, %.v619
  store i64 %1355, i64* %3, align 8
  br i1 %1351, label %block_449437, label %block_.L_449443

block_449437:                                     ; preds = %block_.L_44941d
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -4
  %1358 = add i64 %1355, 7
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  store i32 15, i32* %1359, align 4
  %1360 = load i64, i64* %3, align 8
  %1361 = add i64 %1360, 2171
  store i64 %1361, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449443:                                  ; preds = %block_.L_44941d
  %1362 = add i64 %1355, 112
  br label %block_.L_4494b3

block_.L_449448:                                  ; preds = %block_.L_4493c3
  store i64 %1273, i64* %RSI.i118, align 8
  %1363 = add i64 %1265, 2520
  %1364 = add i64 %1265, 13
  %1365 = load i64, i64* %6, align 8
  %1366 = add i64 %1365, -8
  %1367 = inttoptr i64 %1366 to i64*
  store i64 %1364, i64* %1367, align 8
  store i64 %1366, i64* %6, align 8
  store i64 %1363, i64* %3, align 8
  %call2_449450 = tail call %struct.Memory* @sub_449e20.write_i64(%struct.State* nonnull %0, i64 %1363, %struct.Memory* %call2_4493a9)
  %1368 = load i32, i32* %EAX.i1646, align 4
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
  %.v582 = select i1 %1375, i64 9, i64 21
  %1379 = add i64 %1369, %.v582
  store i64 %1379, i64* %3, align 8
  %1380 = load i64, i64* %RBP.i, align 8
  br i1 %1375, label %block_44945e, label %block_.L_44946a

block_44945e:                                     ; preds = %block_.L_449448
  %1381 = add i64 %1380, -4
  %1382 = add i64 %1379, 7
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  store i32 15, i32* %1383, align 4
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 2132
  store i64 %1385, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44946a:                                  ; preds = %block_.L_449448
  %1386 = add i64 %1380, -32
  %1387 = add i64 %1379, 4
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RDI.i93, align 8
  %1390 = add i64 %1380, -80
  %1391 = add i64 %1379, 8
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %RSI.i118, align 8
  %1394 = add i64 %1379, 2486
  %1395 = add i64 %1379, 13
  %1396 = load i64, i64* %6, align 8
  %1397 = add i64 %1396, -8
  %1398 = inttoptr i64 %1397 to i64*
  store i64 %1395, i64* %1398, align 8
  store i64 %1397, i64* %6, align 8
  store i64 %1394, i64* %3, align 8
  %call2_449472 = tail call %struct.Memory* @sub_449e20.write_i64(%struct.State* nonnull %0, i64 %1394, %struct.Memory* %call2_449450)
  %1399 = load i32, i32* %EAX.i1646, align 4
  %1400 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1401 = and i32 %1399, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1406 = icmp eq i32 %1399, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1399, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v583 = select i1 %1406, i64 9, i64 21
  %1410 = add i64 %1400, %.v583
  store i64 %1410, i64* %3, align 8
  %1411 = load i64, i64* %RBP.i, align 8
  br i1 %1406, label %block_449480, label %block_.L_44948c

block_449480:                                     ; preds = %block_.L_44946a
  %1412 = add i64 %1411, -4
  %1413 = add i64 %1410, 7
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  store i32 15, i32* %1414, align 4
  %1415 = load i64, i64* %3, align 8
  %1416 = add i64 %1415, 2098
  store i64 %1416, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44948c:                                  ; preds = %block_.L_44946a
  %1417 = add i64 %1411, -32
  %1418 = add i64 %1410, 4
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i64*
  %1420 = load i64, i64* %1419, align 8
  store i64 %1420, i64* %RDI.i93, align 8
  %1421 = add i64 %1411, -88
  %1422 = add i64 %1410, 8
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %RSI.i118, align 8
  %1425 = add i64 %1410, 2452
  %1426 = add i64 %1410, 13
  %1427 = load i64, i64* %6, align 8
  %1428 = add i64 %1427, -8
  %1429 = inttoptr i64 %1428 to i64*
  store i64 %1426, i64* %1429, align 8
  store i64 %1428, i64* %6, align 8
  store i64 %1425, i64* %3, align 8
  %call2_449494 = tail call %struct.Memory* @sub_449e20.write_i64(%struct.State* nonnull %0, i64 %1425, %struct.Memory* %call2_449472)
  %1430 = load i32, i32* %EAX.i1646, align 4
  %1431 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1432 = and i32 %1430, 255
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1437 = icmp eq i32 %1430, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %29, align 1
  %1439 = lshr i32 %1430, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v584 = select i1 %1437, i64 9, i64 21
  %1441 = add i64 %1431, %.v584
  store i64 %1441, i64* %3, align 8
  br i1 %1437, label %block_4494a2, label %block_.L_4494ae

block_4494a2:                                     ; preds = %block_.L_44948c
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -4
  %1444 = add i64 %1441, 7
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  store i32 15, i32* %1445, align 4
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, 2064
  store i64 %1447, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4494ae:                                  ; preds = %block_.L_44948c
  %1448 = add i64 %1441, 5
  store i64 %1448, i64* %3, align 8
  br label %block_.L_4494b3

block_.L_4494b3:                                  ; preds = %block_.L_4494ae, %block_.L_449443
  %storemerge = phi i64 [ %1362, %block_.L_449443 ], [ %1448, %block_.L_4494ae ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_449429, %block_.L_449443 ], [ %call2_449494, %block_.L_4494ae ]
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -24
  %1451 = add i64 %storemerge, 4
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i64*
  %1453 = load i64, i64* %1452, align 8
  store i64 %1453, i64* %RAX.i56, align 8
  %1454 = add i64 %1453, 48
  %1455 = add i64 %storemerge, 7
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i1687, align 8
  store i64 %1458, i64* %RAX.i56, align 8
  store i64 %1458, i64* %RDI.i93, align 8
  %1459 = add i64 %storemerge, -294627
  %1460 = add i64 %storemerge, 21
  %1461 = load i64, i64* %6, align 8
  %1462 = add i64 %1461, -8
  %1463 = inttoptr i64 %1462 to i64*
  store i64 %1460, i64* %1463, align 8
  store i64 %1462, i64* %6, align 8
  store i64 %1459, i64* %3, align 8
  %1464 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.5)
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -96
  %1467 = load i64, i64* %RAX.i56, align 8
  %1468 = load i64, i64* %3, align 8
  %1469 = add i64 %1468, 4
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1466 to i64*
  store i64 %1467, i64* %1470, align 8
  %1471 = load i64, i64* %RAX.i56, align 8
  %1472 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1473 = trunc i64 %1471 to i32
  %1474 = and i32 %1473, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1479 = icmp eq i64 %1471, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %29, align 1
  %1481 = lshr i64 %1471, 63
  %1482 = trunc i64 %1481 to i8
  store i8 %1482, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v585 = select i1 %1479, i64 10, i64 22
  %1483 = add i64 %1472, %.v585
  store i64 %1483, i64* %3, align 8
  %1484 = load i64, i64* %RBP.i, align 8
  br i1 %1479, label %block_4494d6, label %block_.L_4494e2

block_4494d6:                                     ; preds = %block_.L_4494b3
  %1485 = add i64 %1484, -4
  %1486 = add i64 %1483, 7
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  store i32 3, i32* %1487, align 4
  %1488 = load i64, i64* %3, align 8
  %1489 = add i64 %1488, 2012
  store i64 %1489, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4494e2:                                  ; preds = %block_.L_4494b3
  %1490 = add i64 %1484, -40
  %1491 = add i64 %1483, 7
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  store i32 0, i32* %1492, align 4
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre544 = load i64, i64* %3, align 8
  br label %block_.L_4494e9

block_.L_4494e9:                                  ; preds = %block_.L_449650, %block_.L_4494e2
  %1494 = phi i64 [ %.pre544, %block_.L_4494e2 ], [ %1914, %block_.L_449650 ]
  %MEMORY.6 = phi %struct.Memory* [ %1464, %block_.L_4494e2 ], [ %call2_449636, %block_.L_449650 ]
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -40
  %1497 = add i64 %1494, 3
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RAX.i56, align 8
  %1501 = add i64 %1495, -24
  %1502 = add i64 %1494, 7
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RCX.i1687, align 8
  %1505 = add i64 %1504, 52
  %1506 = add i64 %1494, 11
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i16*
  %1508 = load i16, i16* %1507, align 2
  %1509 = zext i16 %1508 to i64
  store i64 %1509, i64* %RDX.i1594, align 8
  %1510 = zext i16 %1508 to i32
  %1511 = sub i32 %1499, %1510
  %1512 = icmp ult i32 %1499, %1510
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = and i32 %1511, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i32 %1510, %1499
  %1520 = xor i32 %1519, %1511
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %26, align 1
  %1524 = icmp eq i32 %1511, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %29, align 1
  %1526 = lshr i32 %1511, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %32, align 1
  %1528 = lshr i32 %1499, 31
  %1529 = xor i32 %1526, %1528
  %1530 = add nuw nsw i32 %1529, %1528
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %38, align 1
  %1533 = icmp ne i8 %1527, 0
  %1534 = xor i1 %1533, %1531
  %.v586 = select i1 %1534, i64 19, i64 378
  %1535 = add i64 %1494, %.v586
  store i64 %1535, i64* %3, align 8
  br i1 %1534, label %block_4494fc, label %block_.L_449663

block_4494fc:                                     ; preds = %block_.L_4494e9
  %1536 = add i64 %1495, -48
  %1537 = add i64 %1535, 7
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  store i32 0, i32* %1538, align 4
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -24
  %1541 = load i64, i64* %3, align 8
  %1542 = add i64 %1541, 4
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1540 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %RAX.i56, align 8
  %1545 = add i64 %1544, 32
  %1546 = add i64 %1541, 8
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  %1548 = load i64, i64* %1547, align 8
  store i64 %1548, i64* %RAX.i56, align 8
  %1549 = add i64 %1539, -40
  %1550 = add i64 %1541, 12
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i1687, align 8
  %1554 = shl nsw i64 %1553, 2
  %1555 = add i64 %1554, %1548
  %1556 = add i64 %1541, 16
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  store i8 0, i8* %14, align 1
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1564 = icmp eq i32 %1558, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1558, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v610 = select i1 %1564, i64 53, i64 22
  %1568 = add i64 %1541, %.v610
  store i64 %1568, i64* %3, align 8
  br i1 %1564, label %block_.L_449538, label %block_449519

block_449519:                                     ; preds = %block_4494fc
  %1569 = add i64 %1568, 4
  store i64 %1569, i64* %3, align 8
  %1570 = load i64, i64* %1543, align 8
  store i64 %1570, i64* %RAX.i56, align 8
  %1571 = add i64 %1570, 40
  %1572 = add i64 %1568, 8
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i64*
  %1574 = load i64, i64* %1573, align 8
  store i64 %1574, i64* %RAX.i56, align 8
  %1575 = add i64 %1568, 12
  store i64 %1575, i64* %3, align 8
  %1576 = load i32, i32* %1551, align 4
  %1577 = sext i32 %1576 to i64
  store i64 %1577, i64* %RCX.i1687, align 8
  %1578 = shl nsw i64 %1577, 2
  %1579 = add i64 %1578, %1574
  %1580 = add i64 %1568, 16
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  store i8 0, i8* %14, align 1
  %1583 = and i32 %1582, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1588 = icmp eq i32 %1582, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %29, align 1
  %1590 = lshr i32 %1582, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v611 = select i1 %1588, i64 31, i64 22
  %1592 = add i64 %1568, %.v611
  store i64 %1592, i64* %3, align 8
  br i1 %1588, label %block_.L_449538, label %block_44952f

block_44952f:                                     ; preds = %block_449519
  %1593 = add i64 %1539, -48
  %1594 = add i64 %1592, 3
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = or i32 %1596, 1
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %1599 = and i32 %1597, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1604 = lshr i32 %1596, 31
  %1605 = trunc i32 %1604 to i8
  store i8 %1605, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1606 = add i64 %1592, 9
  store i64 %1606, i64* %3, align 8
  store i32 %1597, i32* %1595, align 4
  %.pre553 = load i64, i64* %3, align 8
  %.pre554 = load i64, i64* %RBP.i, align 8
  br label %block_.L_449538

block_.L_449538:                                  ; preds = %block_44952f, %block_449519, %block_4494fc
  %1607 = phi i64 [ %.pre554, %block_44952f ], [ %1539, %block_449519 ], [ %1539, %block_4494fc ]
  %1608 = phi i64 [ %.pre553, %block_44952f ], [ %1592, %block_449519 ], [ %1568, %block_4494fc ]
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %1609 = add i64 %1607, -96
  %1610 = add i64 %1608, 11
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %RDI.i93, align 8
  %1613 = add i64 %1607, -24
  %1614 = add i64 %1608, 15
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i64*
  %1616 = load i64, i64* %1615, align 8
  store i64 %1616, i64* %RCX.i1687, align 8
  %1617 = add i64 %1616, 16
  %1618 = add i64 %1608, 19
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %RCX.i1687, align 8
  %1621 = add i64 %1607, -40
  %1622 = add i64 %1608, 23
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = sext i32 %1624 to i64
  store i64 %1625, i64* %RDX.i1594, align 8
  %1626 = shl nsw i64 %1625, 3
  %1627 = add i64 %1626, %1620
  %1628 = add i64 %1608, 27
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RCX.i1687, align 8
  %1631 = add i64 %1607, -1272
  %1632 = add i64 %1608, 34
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i64*
  store i64 1, i64* %1633, align 8
  %1634 = load i64, i64* %RCX.i1687, align 8
  %1635 = load i64, i64* %3, align 8
  store i64 %1634, i64* %RSI.i118, align 8
  %1636 = add i64 %1635, -295290
  %1637 = add i64 %1635, 8
  %1638 = load i64, i64* %6, align 8
  %1639 = add i64 %1638, -8
  %1640 = inttoptr i64 %1639 to i64*
  store i64 %1637, i64* %1640, align 8
  store i64 %1639, i64* %6, align 8
  store i64 %1636, i64* %3, align 8
  %1641 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.6)
  %1642 = load i64, i64* %RBP.i, align 8
  %1643 = add i64 %1642, -96
  %1644 = load i64, i64* %3, align 8
  %1645 = add i64 %1644, 4
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1643 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %RDI.i93, align 8
  %1648 = add i64 %1642, -24
  %1649 = add i64 %1644, 8
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RCX.i1687, align 8
  %1652 = add i64 %1651, 48
  %1653 = add i64 %1644, 12
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %1493, align 8
  store i64 %1656, i64* %RDX.i1594, align 8
  %1657 = add i64 %1642, -32
  %1658 = add i64 %1644, 19
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RCX.i1687, align 8
  %1661 = add i64 %1642, -1272
  %1662 = add i64 %1644, 26
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i64*
  %1664 = load i64, i64* %1663, align 8
  store i64 %1664, i64* %RSI.i118, align 8
  %1665 = add i64 %1642, -1280
  %1666 = load i64, i64* %RAX.i56, align 8
  %1667 = add i64 %1644, 33
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1665 to i64*
  store i64 %1666, i64* %1668, align 8
  %1669 = load i64, i64* %3, align 8
  %1670 = add i64 %1669, -294563
  %1671 = add i64 %1669, 5
  %1672 = load i64, i64* %6, align 8
  %1673 = add i64 %1672, -8
  %1674 = inttoptr i64 %1673 to i64*
  store i64 %1671, i64* %1674, align 8
  store i64 %1673, i64* %6, align 8
  store i64 %1670, i64* %3, align 8
  %1675 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1641)
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -24
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 4
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1677 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RCX.i1687, align 8
  %1682 = add i64 %1681, 48
  %1683 = add i64 %1678, 8
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %1493, align 8
  store i64 %1686, i64* %RCX.i1687, align 8
  %1687 = load i64, i64* %RAX.i56, align 8
  %1688 = sub i64 %1687, %1686
  %1689 = icmp ult i64 %1687, %1686
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %14, align 1
  %1691 = trunc i64 %1688 to i32
  %1692 = and i32 %1691, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %21, align 1
  %1697 = xor i64 %1687, %1686
  %1698 = xor i64 %1697, %1688
  %1699 = lshr i64 %1698, 4
  %1700 = trunc i64 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %26, align 1
  %1702 = icmp eq i64 %1688, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %29, align 1
  %1704 = lshr i64 %1688, 63
  %1705 = trunc i64 %1704 to i8
  store i8 %1705, i8* %32, align 1
  %1706 = lshr i64 %1687, 63
  %1707 = xor i64 %1704, %1706
  %1708 = add nuw nsw i64 %1707, %1706
  %1709 = icmp eq i64 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %38, align 1
  %.v612 = select i1 %1702, i64 32, i64 20
  %1711 = add i64 %1678, %.v612
  store i64 %1711, i64* %3, align 8
  br i1 %1702, label %block_.L_4495a8, label %block_44959c

block_44959c:                                     ; preds = %block_.L_449538
  %1712 = add i64 %1676, -4
  %1713 = add i64 %1711, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  store i32 15, i32* %1714, align 4
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 1814
  store i64 %1716, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4495a8:                                  ; preds = %block_.L_449538
  %1717 = add i64 %1676, -32
  %1718 = add i64 %1711, 4
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i64*
  %1720 = load i64, i64* %1719, align 8
  store i64 %1720, i64* %RDI.i93, align 8
  %1721 = add i64 %1711, 8
  store i64 %1721, i64* %3, align 8
  %1722 = load i64, i64* %1680, align 8
  store i64 %1722, i64* %RAX.i56, align 8
  %1723 = add i64 %1722, 24
  %1724 = add i64 %1711, 12
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i56, align 8
  %1727 = add i64 %1676, -40
  %1728 = add i64 %1711, 16
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = sext i32 %1730 to i64
  store i64 %1731, i64* %RCX.i1687, align 8
  %1732 = shl nsw i64 %1731, 2
  %1733 = add i64 %1732, %1726
  %1734 = add i64 %1711, 19
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  %1736 = load i32, i32* %1735, align 4
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RSI.i118, align 8
  %1738 = add i64 %1711, 1960
  %1739 = add i64 %1711, 24
  %1740 = load i64, i64* %6, align 8
  %1741 = add i64 %1740, -8
  %1742 = inttoptr i64 %1741 to i64*
  store i64 %1739, i64* %1742, align 8
  store i64 %1741, i64* %6, align 8
  store i64 %1738, i64* %3, align 8
  %call2_4495bb = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1738, %struct.Memory* %1675)
  %1743 = load i32, i32* %EAX.i1646, align 4
  %1744 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1745 = and i32 %1743, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1750 = icmp eq i32 %1743, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %29, align 1
  %1752 = lshr i32 %1743, 31
  %1753 = trunc i32 %1752 to i8
  store i8 %1753, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v613 = select i1 %1750, i64 9, i64 21
  %1754 = add i64 %1744, %.v613
  store i64 %1754, i64* %3, align 8
  %1755 = load i64, i64* %RBP.i, align 8
  br i1 %1750, label %block_4495c9, label %block_.L_4495d5

block_4495c9:                                     ; preds = %block_.L_4495a8
  %1756 = add i64 %1755, -4
  %1757 = add i64 %1754, 7
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  store i32 15, i32* %1758, align 4
  %1759 = load i64, i64* %3, align 8
  %1760 = add i64 %1759, 1769
  store i64 %1760, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4495d5:                                  ; preds = %block_.L_4495a8
  %1761 = add i64 %1755, -32
  %1762 = add i64 %1754, 4
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %RDI.i93, align 8
  %1765 = add i64 %1755, -48
  %1766 = add i64 %1754, 7
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RSI.i118, align 8
  %1770 = add i64 %1754, 1915
  %1771 = add i64 %1754, 12
  %1772 = load i64, i64* %6, align 8
  %1773 = add i64 %1772, -8
  %1774 = inttoptr i64 %1773 to i64*
  store i64 %1771, i64* %1774, align 8
  store i64 %1773, i64* %6, align 8
  store i64 %1770, i64* %3, align 8
  %call2_4495dc = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1770, %struct.Memory* %call2_4495bb)
  %1775 = load i32, i32* %EAX.i1646, align 4
  %1776 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1777 = and i32 %1775, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1782 = icmp eq i32 %1775, 0
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %29, align 1
  %1784 = lshr i32 %1775, 31
  %1785 = trunc i32 %1784 to i8
  store i8 %1785, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v614 = select i1 %1782, i64 9, i64 21
  %1786 = add i64 %1776, %.v614
  store i64 %1786, i64* %3, align 8
  %1787 = load i64, i64* %RBP.i, align 8
  br i1 %1782, label %block_4495ea, label %block_.L_4495f6

block_4495ea:                                     ; preds = %block_.L_4495d5
  %1788 = add i64 %1787, -4
  %1789 = add i64 %1786, 7
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i32*
  store i32 15, i32* %1790, align 4
  %1791 = load i64, i64* %3, align 8
  %1792 = add i64 %1791, 1736
  store i64 %1792, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4495f6:                                  ; preds = %block_.L_4495d5
  %1793 = add i64 %1787, -32
  %1794 = add i64 %1786, 4
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i64*
  %1796 = load i64, i64* %1795, align 8
  store i64 %1796, i64* %RDI.i93, align 8
  %1797 = add i64 %1787, -24
  %1798 = add i64 %1786, 8
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i64*
  %1800 = load i64, i64* %1799, align 8
  store i64 %1800, i64* %RAX.i56, align 8
  %1801 = add i64 %1800, 32
  %1802 = add i64 %1786, 12
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i64*
  %1804 = load i64, i64* %1803, align 8
  store i64 %1804, i64* %RAX.i56, align 8
  %1805 = add i64 %1787, -40
  %1806 = add i64 %1786, 16
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = sext i32 %1808 to i64
  store i64 %1809, i64* %RCX.i1687, align 8
  %1810 = shl nsw i64 %1809, 2
  %1811 = add i64 %1810, %1804
  %1812 = add i64 %1786, 19
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RSI.i118, align 8
  %1816 = add i64 %1786, 1882
  %1817 = add i64 %1786, 24
  %1818 = load i64, i64* %6, align 8
  %1819 = add i64 %1818, -8
  %1820 = inttoptr i64 %1819 to i64*
  store i64 %1817, i64* %1820, align 8
  store i64 %1819, i64* %6, align 8
  store i64 %1816, i64* %3, align 8
  %call2_449609 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1816, %struct.Memory* %call2_4495dc)
  %1821 = load i32, i32* %EAX.i1646, align 4
  %1822 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1823 = and i32 %1821, 255
  %1824 = tail call i32 @llvm.ctpop.i32(i32 %1823)
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  %1827 = xor i8 %1826, 1
  store i8 %1827, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1828 = icmp eq i32 %1821, 0
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %29, align 1
  %1830 = lshr i32 %1821, 31
  %1831 = trunc i32 %1830 to i8
  store i8 %1831, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v615 = select i1 %1828, i64 9, i64 21
  %1832 = add i64 %1822, %.v615
  store i64 %1832, i64* %3, align 8
  %1833 = load i64, i64* %RBP.i, align 8
  br i1 %1828, label %block_449617, label %block_.L_449623

block_449617:                                     ; preds = %block_.L_4495f6
  %1834 = add i64 %1833, -4
  %1835 = add i64 %1832, 7
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  store i32 15, i32* %1836, align 4
  %1837 = load i64, i64* %3, align 8
  %1838 = add i64 %1837, 1691
  store i64 %1838, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449623:                                  ; preds = %block_.L_4495f6
  %1839 = add i64 %1833, -32
  %1840 = add i64 %1832, 4
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %RDI.i93, align 8
  %1843 = add i64 %1833, -24
  %1844 = add i64 %1832, 8
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RAX.i56, align 8
  %1847 = add i64 %1846, 40
  %1848 = add i64 %1832, 12
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %RAX.i56, align 8
  %1851 = add i64 %1833, -40
  %1852 = add i64 %1832, 16
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i32*
  %1854 = load i32, i32* %1853, align 4
  %1855 = sext i32 %1854 to i64
  store i64 %1855, i64* %RCX.i1687, align 8
  %1856 = shl nsw i64 %1855, 2
  %1857 = add i64 %1856, %1850
  %1858 = add i64 %1832, 19
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RSI.i118, align 8
  %1862 = add i64 %1832, 1837
  %1863 = add i64 %1832, 24
  %1864 = load i64, i64* %6, align 8
  %1865 = add i64 %1864, -8
  %1866 = inttoptr i64 %1865 to i64*
  store i64 %1863, i64* %1866, align 8
  store i64 %1865, i64* %6, align 8
  store i64 %1862, i64* %3, align 8
  %call2_449636 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %1862, %struct.Memory* %call2_449609)
  %1867 = load i32, i32* %EAX.i1646, align 4
  %1868 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1869 = and i32 %1867, 255
  %1870 = tail call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  store i8 %1873, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1874 = icmp eq i32 %1867, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %29, align 1
  %1876 = lshr i32 %1867, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v616 = select i1 %1874, i64 9, i64 21
  %1878 = add i64 %1868, %.v616
  store i64 %1878, i64* %3, align 8
  %1879 = load i64, i64* %RBP.i, align 8
  br i1 %1874, label %block_449644, label %block_.L_449650

block_449644:                                     ; preds = %block_.L_449623
  %1880 = add i64 %1879, -4
  %1881 = add i64 %1878, 7
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  store i32 15, i32* %1882, align 4
  %1883 = load i64, i64* %3, align 8
  %1884 = add i64 %1883, 1646
  store i64 %1884, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449650:                                  ; preds = %block_.L_449623
  %1885 = add i64 %1879, -40
  %1886 = add i64 %1878, 8
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = add i32 %1888, 1
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX.i56, align 8
  %1891 = icmp eq i32 %1888, -1
  %1892 = icmp eq i32 %1889, 0
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %14, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %21, align 1
  %1900 = xor i32 %1889, %1888
  %1901 = lshr i32 %1900, 4
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  store i8 %1903, i8* %26, align 1
  %1904 = zext i1 %1892 to i8
  store i8 %1904, i8* %29, align 1
  %1905 = lshr i32 %1889, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %32, align 1
  %1907 = lshr i32 %1888, 31
  %1908 = xor i32 %1905, %1907
  %1909 = add nuw nsw i32 %1908, %1905
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %38, align 1
  %1912 = add i64 %1878, 14
  store i64 %1912, i64* %3, align 8
  store i32 %1889, i32* %1887, align 4
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, -373
  store i64 %1914, i64* %3, align 8
  br label %block_.L_4494e9

block_.L_449663:                                  ; preds = %block_.L_4494e9
  %1915 = add i64 %1495, -96
  %1916 = add i64 %1535, 4
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RDI.i93, align 8
  %1919 = add i64 %1535, -295651
  %1920 = add i64 %1535, 9
  %1921 = load i64, i64* %6, align 8
  %1922 = add i64 %1921, -8
  %1923 = inttoptr i64 %1922 to i64*
  store i64 %1920, i64* %1923, align 8
  store i64 %1922, i64* %6, align 8
  store i64 %1919, i64* %3, align 8
  %1924 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.6)
  %1925 = load i64, i64* %RBP.i, align 8
  %1926 = add i64 %1925, -24
  %1927 = load i64, i64* %3, align 8
  %1928 = add i64 %1927, 4
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1926 to i64*
  %1930 = load i64, i64* %1929, align 8
  store i64 %1930, i64* %RDI.i93, align 8
  %1931 = add i64 %1930, 64
  %1932 = add i64 %1927, 7
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RAX.i56, align 8
  store i64 %1935, i64* %RDI.i93, align 8
  %1936 = add i64 %1927, -295068
  %1937 = add i64 %1927, 18
  %1938 = load i64, i64* %6, align 8
  %1939 = add i64 %1938, -8
  %1940 = inttoptr i64 %1939 to i64*
  store i64 %1937, i64* %1940, align 8
  store i64 %1939, i64* %6, align 8
  store i64 %1936, i64* %3, align 8
  %1941 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1924)
  %1942 = load i64, i64* %RBP.i, align 8
  %1943 = add i64 %1942, -96
  %1944 = load i64, i64* %RAX.i56, align 8
  %1945 = load i64, i64* %3, align 8
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1943 to i64*
  store i64 %1944, i64* %1947, align 8
  %1948 = load i64, i64* %RAX.i56, align 8
  %1949 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1950 = trunc i64 %1948 to i32
  %1951 = and i32 %1950, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951)
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1956 = icmp eq i64 %1948, 0
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %29, align 1
  %1958 = lshr i64 %1948, 63
  %1959 = trunc i64 %1958 to i8
  store i8 %1959, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v587 = select i1 %1956, i64 10, i64 22
  %1960 = add i64 %1949, %.v587
  store i64 %1960, i64* %3, align 8
  %1961 = load i64, i64* %RBP.i, align 8
  br i1 %1956, label %block_44968c, label %block_.L_449698

block_44968c:                                     ; preds = %block_.L_449663
  %1962 = add i64 %1961, -4
  %1963 = add i64 %1960, 7
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  store i32 3, i32* %1964, align 4
  %1965 = load i64, i64* %3, align 8
  %1966 = add i64 %1965, 1574
  store i64 %1966, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449698:                                  ; preds = %block_.L_449663
  %1967 = add i64 %1961, -24
  %1968 = add i64 %1960, 4
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i64*
  %1970 = load i64, i64* %1969, align 8
  store i64 %1970, i64* %RAX.i56, align 8
  %1971 = add i64 %1970, 8
  %1972 = add i64 %1960, 8
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  store i8 0, i8* %14, align 1
  %1975 = and i32 %1974, 255
  %1976 = tail call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  store i8 %1979, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1980 = icmp eq i32 %1974, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %29, align 1
  %1982 = lshr i32 %1974, 31
  %1983 = trunc i32 %1982 to i8
  store i8 %1983, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v588 = select i1 %1980, i64 456, i64 14
  %1984 = add i64 %1960, %.v588
  store i64 %1984, i64* %3, align 8
  br i1 %1980, label %block_.L_449860, label %block_4496a6

block_4496a6:                                     ; preds = %block_.L_449698
  %1985 = add i64 %1961, -1144
  %1986 = add i64 %1984, 11
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i64*
  store i64 0, i64* %1987, align 8
  %1988 = load i64, i64* %RBP.i, align 8
  %1989 = add i64 %1988, -1148
  %1990 = load i64, i64* %3, align 8
  %1991 = add i64 %1990, 10
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1989 to i32*
  store i32 0, i32* %1992, align 4
  %1993 = load i64, i64* %RBP.i, align 8
  %1994 = add i64 %1993, -40
  %1995 = load i64, i64* %3, align 8
  %1996 = add i64 %1995, 7
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1994 to i32*
  store i32 0, i32* %1997, align 4
  %.pre545 = load i64, i64* %3, align 8
  br label %block_.L_4496c2

block_.L_4496c2:                                  ; preds = %block_.L_44983c, %block_4496a6
  %1998 = phi i64 [ %.pre545, %block_4496a6 ], [ %2399, %block_.L_44983c ]
  %MEMORY.8 = phi %struct.Memory* [ %1941, %block_4496a6 ], [ %call2_449822, %block_.L_44983c ]
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -40
  %2001 = add i64 %1998, 3
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX.i56, align 8
  %2005 = add i64 %1999, -24
  %2006 = add i64 %1998, 7
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i64*
  %2008 = load i64, i64* %2007, align 8
  store i64 %2008, i64* %RCX.i1687, align 8
  %2009 = add i64 %2008, 68
  %2010 = add i64 %1998, 10
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = sub i32 %2003, %2012
  %2014 = icmp ult i32 %2003, %2012
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %14, align 1
  %2016 = and i32 %2013, 255
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %21, align 1
  %2021 = xor i32 %2012, %2003
  %2022 = xor i32 %2021, %2013
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %26, align 1
  %2026 = icmp eq i32 %2013, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %29, align 1
  %2028 = lshr i32 %2013, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %32, align 1
  %2030 = lshr i32 %2003, 31
  %2031 = lshr i32 %2012, 31
  %2032 = xor i32 %2031, %2030
  %2033 = xor i32 %2028, %2030
  %2034 = add nuw nsw i32 %2033, %2032
  %2035 = icmp eq i32 %2034, 2
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %38, align 1
  %.v559 = select i1 %2014, i64 16, i64 397
  %2037 = add i64 %1998, %.v559
  %2038 = add i64 %1999, -1144
  %2039 = add i64 %2037, 7
  store i64 %2039, i64* %3, align 8
  br i1 %2014, label %block_4496d2, label %block_.L_44984f

block_4496d2:                                     ; preds = %block_.L_4496c2
  store i64 %2038, i64* %RDI.i93, align 8
  %2040 = add i64 %1999, -1148
  store i64 %2040, i64* %RSI.i118, align 8
  %2041 = add i64 %2037, 18
  store i64 %2041, i64* %3, align 8
  %2042 = load i64, i64* %2007, align 8
  store i64 %2042, i64* %RAX.i56, align 8
  %2043 = add i64 %2042, 80
  %2044 = add i64 %2037, 22
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RDX.i1594, align 8
  %2047 = add i64 %2037, -13234
  %2048 = add i64 %2037, 27
  %2049 = load i64, i64* %6, align 8
  %2050 = add i64 %2049, -8
  %2051 = inttoptr i64 %2050 to i64*
  store i64 %2048, i64* %2051, align 8
  store i64 %2050, i64* %6, align 8
  store i64 %2047, i64* %3, align 8
  %call2_4496e8 = tail call %struct.Memory* @sub_446320.sre_fgets(%struct.State* nonnull %0, i64 %2047, %struct.Memory* %MEMORY.8)
  %2052 = load i64, i64* %RAX.i56, align 8
  %2053 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2054 = trunc i64 %2052 to i32
  %2055 = and i32 %2054, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2060 = icmp eq i64 %2052, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %29, align 1
  %2062 = lshr i64 %2052, 63
  %2063 = trunc i64 %2062 to i8
  store i8 %2063, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v597 = select i1 %2060, i64 10, i64 22
  %2064 = add i64 %2053, %.v597
  store i64 %2064, i64* %3, align 8
  %2065 = load i64, i64* %RBP.i, align 8
  br i1 %2060, label %block_4496f7, label %block_.L_449703

block_4496f7:                                     ; preds = %block_4496d2
  %2066 = add i64 %2065, -4
  %2067 = add i64 %2064, 7
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2066 to i32*
  store i32 1, i32* %2068, align 4
  %2069 = load i64, i64* %3, align 8
  %2070 = add i64 %2069, 1467
  store i64 %2070, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449703:                                  ; preds = %block_4496d2
  %2071 = add i64 %2065, -1208
  store i64 %2071, i64* %RDX.i1594, align 8
  %2072 = add i64 %2065, -1144
  %2073 = add i64 %2064, 14
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i64*
  %2075 = load i64, i64* %2074, align 8
  store i64 %2075, i64* %RDI.i93, align 8
  %2076 = add i64 %2065, -24
  %2077 = add i64 %2064, 18
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i64*
  %2079 = load i64, i64* %2078, align 8
  store i64 %2079, i64* %RAX.i56, align 8
  %2080 = add i64 %2064, 20
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  %2082 = load i32, i32* %2081, align 4
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RCX.i1687, align 8
  %2084 = zext i32 %2082 to i64
  %sext = shl i64 %2084, 56
  %2085 = ashr exact i64 %sext, 56
  %2086 = and i64 %2085, 4294967295
  store i64 %2086, i64* %RSI.i118, align 8
  %2087 = add i64 %2064, 1917
  %2088 = add i64 %2064, 32
  %2089 = load i64, i64* %6, align 8
  %2090 = add i64 %2089, -8
  %2091 = inttoptr i64 %2090 to i64*
  store i64 %2088, i64* %2091, align 8
  store i64 %2090, i64* %6, align 8
  store i64 %2087, i64* %3, align 8
  %call2_44971e = tail call %struct.Memory* @sub_449e80.parse_pkey_info(%struct.State* nonnull %0, i64 %2087, %struct.Memory* %MEMORY.8)
  %2092 = load i32, i32* %EAX.i1646, align 4
  %2093 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2094 = and i32 %2092, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2099 = icmp eq i32 %2092, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %29, align 1
  %2101 = lshr i32 %2092, 31
  %2102 = trunc i32 %2101 to i8
  store i8 %2102, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v598 = select i1 %2099, i64 21, i64 9
  %2103 = add i64 %2093, %.v598
  store i64 %2103, i64* %3, align 8
  br i1 %2099, label %block_.L_449738, label %block_44972c

block_44972c:                                     ; preds = %block_.L_449703
  %2104 = load i64, i64* %RBP.i, align 8
  %2105 = add i64 %2104, -4
  %2106 = add i64 %2103, 7
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  store i32 6, i32* %2107, align 4
  %2108 = load i64, i64* %3, align 8
  %2109 = add i64 %2108, 1414
  store i64 %2109, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449738:                                  ; preds = %block_.L_449703
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %2110 = load i64, i64* %RBP.i, align 8
  %2111 = add i64 %2110, -96
  %2112 = add i64 %2103, 11
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  %2114 = load i64, i64* %2113, align 8
  store i64 %2114, i64* %RDI.i93, align 8
  %2115 = add i64 %2110, -1208
  %2116 = add i64 %2103, 18
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %RCX.i1687, align 8
  %2119 = add i64 %2110, -1288
  %2120 = add i64 %2103, 25
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  store i64 1, i64* %2121, align 8
  %2122 = load i64, i64* %RCX.i1687, align 8
  %2123 = load i64, i64* %3, align 8
  store i64 %2122, i64* %RSI.i118, align 8
  %2124 = add i64 %2123, -295793
  %2125 = add i64 %2123, 8
  %2126 = load i64, i64* %6, align 8
  %2127 = add i64 %2126, -8
  %2128 = inttoptr i64 %2127 to i64*
  store i64 %2125, i64* %2128, align 8
  store i64 %2127, i64* %6, align 8
  store i64 %2124, i64* %3, align 8
  %2129 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.8)
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -96
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2131 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %RDI.i93, align 8
  %2136 = add i64 %2130, -24
  %2137 = add i64 %2132, 8
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %RCX.i1687, align 8
  %2140 = add i64 %2139, 64
  %2141 = add i64 %2132, 11
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RDX.i1594, align 8
  %2145 = add i64 %2130, -32
  %2146 = add i64 %2132, 15
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RCX.i1687, align 8
  %2149 = add i64 %2130, -1288
  %2150 = add i64 %2132, 22
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RSI.i118, align 8
  %2153 = add i64 %2130, -1296
  %2154 = load i64, i64* %RAX.i56, align 8
  %2155 = add i64 %2132, 29
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2153 to i64*
  store i64 %2154, i64* %2156, align 8
  %2157 = load i64, i64* %3, align 8
  %2158 = add i64 %2157, -295062
  %2159 = add i64 %2157, 5
  %2160 = load i64, i64* %6, align 8
  %2161 = add i64 %2160, -8
  %2162 = inttoptr i64 %2161 to i64*
  store i64 %2159, i64* %2162, align 8
  store i64 %2161, i64* %6, align 8
  store i64 %2158, i64* %3, align 8
  %2163 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %2129)
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, -24
  %2166 = load i64, i64* %3, align 8
  %2167 = add i64 %2166, 4
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2165 to i64*
  %2169 = load i64, i64* %2168, align 8
  store i64 %2169, i64* %RCX.i1687, align 8
  %2170 = add i64 %2169, 64
  %2171 = add i64 %2166, 8
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %1493, align 8
  store i64 %2174, i64* %RCX.i1687, align 8
  %2175 = load i64, i64* %RAX.i56, align 8
  %2176 = sub i64 %2175, %2174
  %2177 = icmp ult i64 %2175, %2174
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %14, align 1
  %2179 = trunc i64 %2176 to i32
  %2180 = and i32 %2179, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %21, align 1
  %2185 = xor i64 %2175, %2174
  %2186 = xor i64 %2185, %2176
  %2187 = lshr i64 %2186, 4
  %2188 = trunc i64 %2187 to i8
  %2189 = and i8 %2188, 1
  store i8 %2189, i8* %26, align 1
  %2190 = icmp eq i64 %2176, 0
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %29, align 1
  %2192 = lshr i64 %2176, 63
  %2193 = trunc i64 %2192 to i8
  store i8 %2193, i8* %32, align 1
  %2194 = lshr i64 %2175, 63
  %2195 = xor i64 %2192, %2194
  %2196 = add nuw nsw i64 %2195, %2194
  %2197 = icmp eq i64 %2196, 2
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %38, align 1
  %.v599 = select i1 %2190, i64 32, i64 20
  %2199 = add i64 %2166, %.v599
  store i64 %2199, i64* %3, align 8
  br i1 %2190, label %block_.L_44979b, label %block_44978f

block_44978f:                                     ; preds = %block_.L_449738
  %2200 = add i64 %2164, -4
  %2201 = add i64 %2199, 7
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  store i32 15, i32* %2202, align 4
  %2203 = load i64, i64* %3, align 8
  %2204 = add i64 %2203, 1315
  store i64 %2204, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44979b:                                  ; preds = %block_.L_449738
  %2205 = add i64 %2164, -32
  %2206 = add i64 %2199, 4
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %RDI.i93, align 8
  %2209 = add i64 %2164, -1200
  %2210 = add i64 %2199, 11
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i16*
  %2212 = load i16, i16* %2211, align 2
  %2213 = zext i16 %2212 to i64
  store i64 %2213, i64* %RSI.i118, align 8
  %2214 = add i64 %2199, 1557
  %2215 = add i64 %2199, 16
  %2216 = load i64, i64* %6, align 8
  %2217 = add i64 %2216, -8
  %2218 = inttoptr i64 %2217 to i64*
  store i64 %2215, i64* %2218, align 8
  store i64 %2217, i64* %6, align 8
  store i64 %2214, i64* %3, align 8
  %call2_4497a6 = tail call %struct.Memory* @sub_449db0.write_i16(%struct.State* nonnull %0, i64 %2214, %struct.Memory* %2163)
  %2219 = load i32, i32* %EAX.i1646, align 4
  %2220 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2221 = and i32 %2219, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2226 = icmp eq i32 %2219, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2219, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v600 = select i1 %2226, i64 9, i64 21
  %2230 = add i64 %2220, %.v600
  store i64 %2230, i64* %3, align 8
  %2231 = load i64, i64* %RBP.i, align 8
  br i1 %2226, label %block_4497b4, label %block_.L_4497c0

block_4497b4:                                     ; preds = %block_.L_44979b
  %2232 = add i64 %2231, -4
  %2233 = add i64 %2230, 7
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  store i32 15, i32* %2234, align 4
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 1278
  store i64 %2236, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4497c0:                                  ; preds = %block_.L_44979b
  %2237 = add i64 %2231, -1208
  store i64 %2237, i64* %RAX.i56, align 8
  %2238 = add i64 %2231, -32
  %2239 = add i64 %2230, 11
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i64*
  %2241 = load i64, i64* %2240, align 8
  store i64 %2241, i64* %RDI.i93, align 8
  %2242 = add i64 %2231, -1192
  store i64 %2242, i64* %RAX.i56, align 8
  %2243 = icmp ugt i64 %2237, -17
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = trunc i64 %2242 to i32
  %2246 = and i32 %2245, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i64 %2237, 16
  %2252 = xor i64 %2251, %2242
  %2253 = lshr i64 %2252, 4
  %2254 = trunc i64 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %26, align 1
  %2256 = icmp eq i64 %2242, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i64 %2242, 63
  %2259 = trunc i64 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = lshr i64 %2237, 63
  %2261 = xor i64 %2258, %2260
  %2262 = add nuw nsw i64 %2261, %2258
  %2263 = icmp eq i64 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  store i64 %2242, i64* %RSI.i118, align 8
  %2265 = add i64 %2230, 2192
  %2266 = add i64 %2230, 23
  %2267 = load i64, i64* %6, align 8
  %2268 = add i64 %2267, -8
  %2269 = inttoptr i64 %2268 to i64*
  store i64 %2266, i64* %2269, align 8
  store i64 %2268, i64* %6, align 8
  store i64 %2265, i64* %3, align 8
  %call2_4497d2 = tail call %struct.Memory* @sub_44a050.write_offset(%struct.State* nonnull %0, i64 %2265, %struct.Memory* %call2_4497a6)
  %2270 = load i32, i32* %EAX.i1646, align 4
  %2271 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2272 = and i32 %2270, 255
  %2273 = tail call i32 @llvm.ctpop.i32(i32 %2272)
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  %2276 = xor i8 %2275, 1
  store i8 %2276, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2277 = icmp eq i32 %2270, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %29, align 1
  %2279 = lshr i32 %2270, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v601 = select i1 %2277, i64 9, i64 21
  %2281 = add i64 %2271, %.v601
  store i64 %2281, i64* %3, align 8
  %2282 = load i64, i64* %RBP.i, align 8
  br i1 %2277, label %block_4497e0, label %block_.L_4497ec

block_4497e0:                                     ; preds = %block_.L_4497c0
  %2283 = add i64 %2282, -4
  %2284 = add i64 %2281, 7
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i32*
  store i32 15, i32* %2285, align 4
  %2286 = load i64, i64* %3, align 8
  %2287 = add i64 %2286, 1234
  store i64 %2287, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4497ec:                                  ; preds = %block_.L_4497c0
  %2288 = add i64 %2282, -1208
  store i64 %2288, i64* %RAX.i56, align 8
  %2289 = add i64 %2282, -32
  %2290 = add i64 %2281, 11
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i64*
  %2292 = load i64, i64* %2291, align 8
  store i64 %2292, i64* %RDI.i93, align 8
  %2293 = add i64 %2282, -1176
  store i64 %2293, i64* %RAX.i56, align 8
  %2294 = icmp ugt i64 %2288, -33
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = trunc i64 %2293 to i32
  %2297 = and i32 %2296, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %21, align 1
  %2302 = xor i64 %2293, %2288
  %2303 = lshr i64 %2302, 4
  %2304 = trunc i64 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %26, align 1
  %2306 = icmp eq i64 %2293, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %29, align 1
  %2308 = lshr i64 %2293, 63
  %2309 = trunc i64 %2308 to i8
  store i8 %2309, i8* %32, align 1
  %2310 = lshr i64 %2288, 63
  %2311 = xor i64 %2308, %2310
  %2312 = add nuw nsw i64 %2311, %2308
  %2313 = icmp eq i64 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %38, align 1
  store i64 %2293, i64* %RSI.i118, align 8
  %2315 = add i64 %2281, 2148
  %2316 = add i64 %2281, 23
  %2317 = load i64, i64* %6, align 8
  %2318 = add i64 %2317, -8
  %2319 = inttoptr i64 %2318 to i64*
  store i64 %2316, i64* %2319, align 8
  store i64 %2318, i64* %6, align 8
  store i64 %2315, i64* %3, align 8
  %call2_4497fe = tail call %struct.Memory* @sub_44a050.write_offset(%struct.State* nonnull %0, i64 %2315, %struct.Memory* %call2_4497d2)
  %2320 = load i32, i32* %EAX.i1646, align 4
  %2321 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2322 = and i32 %2320, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2327 = icmp eq i32 %2320, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %29, align 1
  %2329 = lshr i32 %2320, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v602 = select i1 %2327, i64 9, i64 21
  %2331 = add i64 %2321, %.v602
  store i64 %2331, i64* %3, align 8
  %2332 = load i64, i64* %RBP.i, align 8
  br i1 %2327, label %block_44980c, label %block_.L_449818

block_44980c:                                     ; preds = %block_.L_4497ec
  %2333 = add i64 %2332, -4
  %2334 = add i64 %2331, 7
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  store i32 15, i32* %2335, align 4
  %2336 = load i64, i64* %3, align 8
  %2337 = add i64 %2336, 1190
  store i64 %2337, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449818:                                  ; preds = %block_.L_4497ec
  %2338 = add i64 %2332, -32
  %2339 = add i64 %2331, 4
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i64*
  %2341 = load i64, i64* %2340, align 8
  store i64 %2341, i64* %RDI.i93, align 8
  %2342 = add i64 %2332, -1160
  %2343 = add i64 %2331, 10
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RSI.i118, align 8
  %2347 = add i64 %2331, 1336
  %2348 = add i64 %2331, 15
  %2349 = load i64, i64* %6, align 8
  %2350 = add i64 %2349, -8
  %2351 = inttoptr i64 %2350 to i64*
  store i64 %2348, i64* %2351, align 8
  store i64 %2350, i64* %6, align 8
  store i64 %2347, i64* %3, align 8
  %call2_449822 = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %2347, %struct.Memory* %call2_4497fe)
  %2352 = load i32, i32* %EAX.i1646, align 4
  %2353 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2354 = and i32 %2352, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2359 = icmp eq i32 %2352, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %29, align 1
  %2361 = lshr i32 %2352, 31
  %2362 = trunc i32 %2361 to i8
  store i8 %2362, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v603 = select i1 %2359, i64 9, i64 21
  %2363 = add i64 %2353, %.v603
  store i64 %2363, i64* %3, align 8
  %2364 = load i64, i64* %RBP.i, align 8
  br i1 %2359, label %block_449830, label %block_.L_44983c

block_449830:                                     ; preds = %block_.L_449818
  %2365 = add i64 %2364, -4
  %2366 = add i64 %2363, 7
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  store i32 15, i32* %2367, align 4
  %2368 = load i64, i64* %3, align 8
  %2369 = add i64 %2368, 1154
  store i64 %2369, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44983c:                                  ; preds = %block_.L_449818
  %2370 = add i64 %2364, -40
  %2371 = add i64 %2363, 8
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = add i32 %2373, 1
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RAX.i56, align 8
  %2376 = icmp eq i32 %2373, -1
  %2377 = icmp eq i32 %2374, 0
  %2378 = or i1 %2376, %2377
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %14, align 1
  %2380 = and i32 %2374, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %21, align 1
  %2385 = xor i32 %2374, %2373
  %2386 = lshr i32 %2385, 4
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %26, align 1
  %2389 = zext i1 %2377 to i8
  store i8 %2389, i8* %29, align 1
  %2390 = lshr i32 %2374, 31
  %2391 = trunc i32 %2390 to i8
  store i8 %2391, i8* %32, align 1
  %2392 = lshr i32 %2373, 31
  %2393 = xor i32 %2390, %2392
  %2394 = add nuw nsw i32 %2393, %2390
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %38, align 1
  %2397 = add i64 %2363, 14
  store i64 %2397, i64* %3, align 8
  store i32 %2374, i32* %2372, align 4
  %2398 = load i64, i64* %3, align 8
  %2399 = add i64 %2398, -392
  store i64 %2399, i64* %3, align 8
  br label %block_.L_4496c2

block_.L_44984f:                                  ; preds = %block_.L_4496c2
  %2400 = inttoptr i64 %2038 to i64*
  %2401 = load i64, i64* %2400, align 8
  store i64 %2401, i64* %RDI.i93, align 8
  %2402 = add i64 %2037, -296143
  %2403 = add i64 %2037, 12
  %2404 = load i64, i64* %6, align 8
  %2405 = add i64 %2404, -8
  %2406 = inttoptr i64 %2405 to i64*
  store i64 %2403, i64* %2406, align 8
  store i64 %2405, i64* %6, align 8
  store i64 %2402, i64* %3, align 8
  %2407 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.8)
  %2408 = load i64, i64* %3, align 8
  %2409 = add i64 %2408, 387
  %.pre547 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4499de

block_.L_449860:                                  ; preds = %block_.L_449698
  %2410 = add i64 %1961, -40
  %2411 = add i64 %1984, 7
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  store i32 0, i32* %2412, align 4
  %.pre546 = load i64, i64* %3, align 8
  br label %block_.L_449867

block_.L_449867:                                  ; preds = %block_.L_4499c6, %block_.L_449860
  %2413 = phi i64 [ %.pre546, %block_.L_449860 ], [ %2886, %block_.L_4499c6 ]
  %MEMORY.9 = phi %struct.Memory* [ %1941, %block_.L_449860 ], [ %call2_4499ac, %block_.L_4499c6 ]
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -40
  %2416 = add i64 %2413, 3
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i56, align 8
  %2420 = add i64 %2414, -24
  %2421 = add i64 %2413, 7
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i64*
  %2423 = load i64, i64* %2422, align 8
  store i64 %2423, i64* %RCX.i1687, align 8
  %2424 = add i64 %2423, 68
  %2425 = add i64 %2413, 10
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sub i32 %2418, %2427
  %2429 = icmp ult i32 %2418, %2427
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %14, align 1
  %2431 = and i32 %2428, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %21, align 1
  %2436 = xor i32 %2427, %2418
  %2437 = xor i32 %2436, %2428
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %26, align 1
  %2441 = icmp eq i32 %2428, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %29, align 1
  %2443 = lshr i32 %2428, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %32, align 1
  %2445 = lshr i32 %2418, 31
  %2446 = lshr i32 %2427, 31
  %2447 = xor i32 %2446, %2445
  %2448 = xor i32 %2443, %2445
  %2449 = add nuw nsw i32 %2448, %2447
  %2450 = icmp eq i32 %2449, 2
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %38, align 1
  %.v604 = select i1 %2429, i64 16, i64 370
  %2452 = add i64 %2413, %.v604
  %2453 = add i64 %2452, 5
  store i64 %2453, i64* %3, align 8
  br i1 %2429, label %block_449877, label %block_.L_4499de.loopexit

block_449877:                                     ; preds = %block_.L_449867
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %2454 = add i64 %2414, -96
  %2455 = add i64 %2452, 11
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i64*
  %2457 = load i64, i64* %2456, align 8
  store i64 %2457, i64* %RDI.i93, align 8
  %2458 = add i64 %2452, 15
  store i64 %2458, i64* %3, align 8
  %2459 = load i64, i64* %2422, align 8
  store i64 %2459, i64* %RCX.i1687, align 8
  %2460 = add i64 %2459, 56
  %2461 = add i64 %2452, 19
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %RCX.i1687, align 8
  %2464 = add i64 %2452, 23
  store i64 %2464, i64* %3, align 8
  %2465 = load i32, i32* %2417, align 4
  %2466 = sext i32 %2465 to i64
  %2467 = mul nsw i64 %2466, 56
  store i64 %2467, i64* %RDX.i1594, align 8
  %2468 = lshr i64 %2467, 63
  %2469 = add i64 %2467, %2463
  store i64 %2469, i64* %RCX.i1687, align 8
  %2470 = icmp ult i64 %2469, %2463
  %2471 = icmp ult i64 %2469, %2467
  %2472 = or i1 %2470, %2471
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %14, align 1
  %2474 = trunc i64 %2469 to i32
  %2475 = and i32 %2474, 255
  %2476 = tail call i32 @llvm.ctpop.i32(i32 %2475)
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  store i8 %2479, i8* %21, align 1
  %2480 = xor i64 %2467, %2463
  %2481 = xor i64 %2480, %2469
  %2482 = lshr i64 %2481, 4
  %2483 = trunc i64 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %26, align 1
  %2485 = icmp eq i64 %2469, 0
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %29, align 1
  %2487 = lshr i64 %2469, 63
  %2488 = trunc i64 %2487 to i8
  store i8 %2488, i8* %32, align 1
  %2489 = lshr i64 %2463, 63
  %2490 = xor i64 %2487, %2489
  %2491 = xor i64 %2487, %2468
  %2492 = add nuw nsw i64 %2490, %2491
  %2493 = icmp eq i64 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %38, align 1
  %2495 = inttoptr i64 %2469 to i64*
  %2496 = add i64 %2452, 33
  store i64 %2496, i64* %3, align 8
  %2497 = load i64, i64* %2495, align 8
  store i64 %2497, i64* %RCX.i1687, align 8
  %2498 = add i64 %2414, -1304
  %2499 = add i64 %2452, 40
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i64*
  store i64 1, i64* %2500, align 8
  %2501 = load i64, i64* %RCX.i1687, align 8
  %2502 = load i64, i64* %3, align 8
  store i64 %2501, i64* %RSI.i118, align 8
  %2503 = add i64 %2502, -296127
  %2504 = add i64 %2502, 8
  %2505 = load i64, i64* %6, align 8
  %2506 = add i64 %2505, -8
  %2507 = inttoptr i64 %2506 to i64*
  store i64 %2504, i64* %2507, align 8
  store i64 %2506, i64* %6, align 8
  store i64 %2503, i64* %3, align 8
  %2508 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.9)
  %2509 = load i64, i64* %RBP.i, align 8
  %2510 = add i64 %2509, -96
  %2511 = load i64, i64* %3, align 8
  %2512 = add i64 %2511, 4
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2510 to i64*
  %2514 = load i64, i64* %2513, align 8
  store i64 %2514, i64* %RDI.i93, align 8
  %2515 = add i64 %2509, -24
  %2516 = add i64 %2511, 8
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RCX.i1687, align 8
  %2519 = add i64 %2518, 64
  %2520 = add i64 %2511, 12
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i32*
  %2522 = load i32, i32* %2521, align 4
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %1493, align 8
  store i64 %2523, i64* %RDX.i1594, align 8
  %2524 = add i64 %2509, -32
  %2525 = add i64 %2511, 19
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i64*
  %2527 = load i64, i64* %2526, align 8
  store i64 %2527, i64* %RCX.i1687, align 8
  %2528 = add i64 %2509, -1304
  %2529 = add i64 %2511, 26
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RSI.i118, align 8
  %2532 = add i64 %2509, -1312
  %2533 = load i64, i64* %RAX.i56, align 8
  %2534 = add i64 %2511, 33
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2532 to i64*
  store i64 %2533, i64* %2535, align 8
  %2536 = load i64, i64* %3, align 8
  %2537 = add i64 %2536, -295400
  %2538 = add i64 %2536, 5
  %2539 = load i64, i64* %6, align 8
  %2540 = add i64 %2539, -8
  %2541 = inttoptr i64 %2540 to i64*
  store i64 %2538, i64* %2541, align 8
  store i64 %2540, i64* %6, align 8
  store i64 %2537, i64* %3, align 8
  %2542 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %2508)
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -24
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %RCX.i1687, align 8
  %2549 = add i64 %2548, 64
  %2550 = add i64 %2545, 8
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %1493, align 8
  store i64 %2553, i64* %RCX.i1687, align 8
  %2554 = load i64, i64* %RAX.i56, align 8
  %2555 = sub i64 %2554, %2553
  %2556 = icmp ult i64 %2554, %2553
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %14, align 1
  %2558 = trunc i64 %2555 to i32
  %2559 = and i32 %2558, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %21, align 1
  %2564 = xor i64 %2554, %2553
  %2565 = xor i64 %2564, %2555
  %2566 = lshr i64 %2565, 4
  %2567 = trunc i64 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %26, align 1
  %2569 = icmp eq i64 %2555, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %29, align 1
  %2571 = lshr i64 %2555, 63
  %2572 = trunc i64 %2571 to i8
  store i8 %2572, i8* %32, align 1
  %2573 = lshr i64 %2554, 63
  %2574 = xor i64 %2571, %2573
  %2575 = add nuw nsw i64 %2574, %2573
  %2576 = icmp eq i64 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %38, align 1
  %.v605 = select i1 %2569, i64 32, i64 20
  %2578 = add i64 %2545, %.v605
  store i64 %2578, i64* %3, align 8
  br i1 %2569, label %block_.L_4498ed, label %block_4498e1

block_4498e1:                                     ; preds = %block_449877
  %2579 = add i64 %2543, -4
  %2580 = add i64 %2578, 7
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i32*
  store i32 15, i32* %2581, align 4
  %2582 = load i64, i64* %3, align 8
  %2583 = add i64 %2582, 977
  store i64 %2583, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4498ed:                                  ; preds = %block_449877
  %2584 = add i64 %2543, -32
  %2585 = add i64 %2578, 4
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i64*
  %2587 = load i64, i64* %2586, align 8
  store i64 %2587, i64* %RDI.i93, align 8
  %2588 = add i64 %2578, 8
  store i64 %2588, i64* %3, align 8
  %2589 = load i64, i64* %2547, align 8
  store i64 %2589, i64* %RAX.i56, align 8
  %2590 = add i64 %2589, 56
  %2591 = add i64 %2578, 12
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i64*
  %2593 = load i64, i64* %2592, align 8
  store i64 %2593, i64* %RAX.i56, align 8
  %2594 = add i64 %2543, -40
  %2595 = add i64 %2578, 16
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = sext i32 %2597 to i64
  %2599 = mul nsw i64 %2598, 56
  store i64 %2599, i64* %RCX.i1687, align 8
  %2600 = lshr i64 %2599, 63
  %2601 = add i64 %2599, %2593
  store i64 %2601, i64* %RAX.i56, align 8
  %2602 = icmp ult i64 %2601, %2593
  %2603 = icmp ult i64 %2601, %2599
  %2604 = or i1 %2602, %2603
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %14, align 1
  %2606 = trunc i64 %2601 to i32
  %2607 = and i32 %2606, 255
  %2608 = tail call i32 @llvm.ctpop.i32(i32 %2607)
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = xor i8 %2610, 1
  store i8 %2611, i8* %21, align 1
  %2612 = xor i64 %2599, %2593
  %2613 = xor i64 %2612, %2601
  %2614 = lshr i64 %2613, 4
  %2615 = trunc i64 %2614 to i8
  %2616 = and i8 %2615, 1
  store i8 %2616, i8* %26, align 1
  %2617 = icmp eq i64 %2601, 0
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %29, align 1
  %2619 = lshr i64 %2601, 63
  %2620 = trunc i64 %2619 to i8
  store i8 %2620, i8* %32, align 1
  %2621 = lshr i64 %2593, 63
  %2622 = xor i64 %2619, %2621
  %2623 = xor i64 %2619, %2600
  %2624 = add nuw nsw i64 %2622, %2623
  %2625 = icmp eq i64 %2624, 2
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %38, align 1
  %2627 = add i64 %2601, 8
  %2628 = add i64 %2578, 27
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i16*
  %2630 = load i16, i16* %2629, align 2
  %2631 = zext i16 %2630 to i64
  store i64 %2631, i64* %RSI.i118, align 8
  %2632 = add i64 %2578, 1219
  %2633 = add i64 %2578, 32
  %2634 = load i64, i64* %6, align 8
  %2635 = add i64 %2634, -8
  %2636 = inttoptr i64 %2635 to i64*
  store i64 %2633, i64* %2636, align 8
  store i64 %2635, i64* %6, align 8
  store i64 %2632, i64* %3, align 8
  %call2_449908 = tail call %struct.Memory* @sub_449db0.write_i16(%struct.State* nonnull %0, i64 %2632, %struct.Memory* %2542)
  %2637 = load i32, i32* %EAX.i1646, align 4
  %2638 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2639 = and i32 %2637, 255
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2644 = icmp eq i32 %2637, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %29, align 1
  %2646 = lshr i32 %2637, 31
  %2647 = trunc i32 %2646 to i8
  store i8 %2647, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v606 = select i1 %2644, i64 9, i64 21
  %2648 = add i64 %2638, %.v606
  store i64 %2648, i64* %3, align 8
  %2649 = load i64, i64* %RBP.i, align 8
  br i1 %2644, label %block_449916, label %block_.L_449922

block_449916:                                     ; preds = %block_.L_4498ed
  %2650 = add i64 %2649, -4
  %2651 = add i64 %2648, 7
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  store i32 15, i32* %2652, align 4
  %2653 = load i64, i64* %3, align 8
  %2654 = add i64 %2653, 924
  store i64 %2654, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449922:                                  ; preds = %block_.L_4498ed
  %2655 = add i64 %2649, -32
  %2656 = add i64 %2648, 4
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i64*
  %2658 = load i64, i64* %2657, align 8
  store i64 %2658, i64* %RDI.i93, align 8
  %2659 = add i64 %2649, -24
  %2660 = add i64 %2648, 8
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RAX.i56, align 8
  %2663 = add i64 %2662, 56
  %2664 = add i64 %2648, 12
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2663 to i64*
  %2666 = load i64, i64* %2665, align 8
  store i64 %2666, i64* %RAX.i56, align 8
  %2667 = add i64 %2649, -40
  %2668 = add i64 %2648, 16
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i32*
  %2670 = load i32, i32* %2669, align 4
  %2671 = sext i32 %2670 to i64
  %2672 = mul nsw i64 %2671, 56
  store i64 %2672, i64* %RCX.i1687, align 8
  %2673 = add i64 %2672, %2666
  %2674 = lshr i64 %2673, 63
  %2675 = add i64 %2673, 16
  store i64 %2675, i64* %RAX.i56, align 8
  %2676 = icmp ugt i64 %2673, -17
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %14, align 1
  %2678 = trunc i64 %2675 to i32
  %2679 = and i32 %2678, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %21, align 1
  %2684 = xor i64 %2673, 16
  %2685 = xor i64 %2684, %2675
  %2686 = lshr i64 %2685, 4
  %2687 = trunc i64 %2686 to i8
  %2688 = and i8 %2687, 1
  store i8 %2688, i8* %26, align 1
  %2689 = icmp eq i64 %2675, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %29, align 1
  %2691 = lshr i64 %2675, 63
  %2692 = trunc i64 %2691 to i8
  store i8 %2692, i8* %32, align 1
  %2693 = xor i64 %2691, %2674
  %2694 = add nuw nsw i64 %2693, %2691
  %2695 = icmp eq i64 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %38, align 1
  store i64 %2675, i64* %RSI.i118, align 8
  %2697 = add i64 %2648, 1838
  %2698 = add i64 %2648, 35
  %2699 = load i64, i64* %6, align 8
  %2700 = add i64 %2699, -8
  %2701 = inttoptr i64 %2700 to i64*
  store i64 %2698, i64* %2701, align 8
  store i64 %2700, i64* %6, align 8
  store i64 %2697, i64* %3, align 8
  %call2_449940 = tail call %struct.Memory* @sub_44a050.write_offset(%struct.State* nonnull %0, i64 %2697, %struct.Memory* %call2_449908)
  %2702 = load i32, i32* %EAX.i1646, align 4
  %2703 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2704 = and i32 %2702, 255
  %2705 = tail call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  store i8 %2708, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2709 = icmp eq i32 %2702, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %29, align 1
  %2711 = lshr i32 %2702, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v607 = select i1 %2709, i64 9, i64 21
  %2713 = add i64 %2703, %.v607
  store i64 %2713, i64* %3, align 8
  %2714 = load i64, i64* %RBP.i, align 8
  br i1 %2709, label %block_44994e, label %block_.L_44995a

block_44994e:                                     ; preds = %block_.L_449922
  %2715 = add i64 %2714, -4
  %2716 = add i64 %2713, 7
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  store i32 15, i32* %2717, align 4
  %2718 = load i64, i64* %3, align 8
  %2719 = add i64 %2718, 868
  store i64 %2719, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_44995a:                                  ; preds = %block_.L_449922
  %2720 = add i64 %2714, -32
  %2721 = add i64 %2713, 4
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i64*
  %2723 = load i64, i64* %2722, align 8
  store i64 %2723, i64* %RDI.i93, align 8
  %2724 = add i64 %2714, -24
  %2725 = add i64 %2713, 8
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RAX.i56, align 8
  %2728 = add i64 %2727, 56
  %2729 = add i64 %2713, 12
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i64*
  %2731 = load i64, i64* %2730, align 8
  store i64 %2731, i64* %RAX.i56, align 8
  %2732 = add i64 %2714, -40
  %2733 = add i64 %2713, 16
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = sext i32 %2735 to i64
  %2737 = mul nsw i64 %2736, 56
  store i64 %2737, i64* %RCX.i1687, align 8
  %2738 = add i64 %2737, %2731
  %2739 = lshr i64 %2738, 63
  %2740 = add i64 %2738, 32
  store i64 %2740, i64* %RAX.i56, align 8
  %2741 = icmp ugt i64 %2738, -33
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %14, align 1
  %2743 = trunc i64 %2740 to i32
  %2744 = and i32 %2743, 255
  %2745 = tail call i32 @llvm.ctpop.i32(i32 %2744)
  %2746 = trunc i32 %2745 to i8
  %2747 = and i8 %2746, 1
  %2748 = xor i8 %2747, 1
  store i8 %2748, i8* %21, align 1
  %2749 = xor i64 %2740, %2738
  %2750 = lshr i64 %2749, 4
  %2751 = trunc i64 %2750 to i8
  %2752 = and i8 %2751, 1
  store i8 %2752, i8* %26, align 1
  %2753 = icmp eq i64 %2740, 0
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %29, align 1
  %2755 = lshr i64 %2740, 63
  %2756 = trunc i64 %2755 to i8
  store i8 %2756, i8* %32, align 1
  %2757 = xor i64 %2755, %2739
  %2758 = add nuw nsw i64 %2757, %2755
  %2759 = icmp eq i64 %2758, 2
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %38, align 1
  store i64 %2740, i64* %RSI.i118, align 8
  %2761 = add i64 %2713, 1782
  %2762 = add i64 %2713, 35
  %2763 = load i64, i64* %6, align 8
  %2764 = add i64 %2763, -8
  %2765 = inttoptr i64 %2764 to i64*
  store i64 %2762, i64* %2765, align 8
  store i64 %2764, i64* %6, align 8
  store i64 %2761, i64* %3, align 8
  %call2_449978 = tail call %struct.Memory* @sub_44a050.write_offset(%struct.State* nonnull %0, i64 %2761, %struct.Memory* %call2_449940)
  %2766 = load i32, i32* %EAX.i1646, align 4
  %2767 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2768 = and i32 %2766, 255
  %2769 = tail call i32 @llvm.ctpop.i32(i32 %2768)
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = xor i8 %2771, 1
  store i8 %2772, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2773 = icmp eq i32 %2766, 0
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %29, align 1
  %2775 = lshr i32 %2766, 31
  %2776 = trunc i32 %2775 to i8
  store i8 %2776, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v608 = select i1 %2773, i64 9, i64 21
  %2777 = add i64 %2767, %.v608
  store i64 %2777, i64* %3, align 8
  %2778 = load i64, i64* %RBP.i, align 8
  br i1 %2773, label %block_449986, label %block_.L_449992

block_449986:                                     ; preds = %block_.L_44995a
  %2779 = add i64 %2778, -4
  %2780 = add i64 %2777, 7
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  store i32 15, i32* %2781, align 4
  %2782 = load i64, i64* %3, align 8
  %2783 = add i64 %2782, 812
  store i64 %2783, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449992:                                  ; preds = %block_.L_44995a
  %2784 = add i64 %2778, -32
  %2785 = add i64 %2777, 4
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i64*
  %2787 = load i64, i64* %2786, align 8
  store i64 %2787, i64* %RDI.i93, align 8
  %2788 = add i64 %2778, -24
  %2789 = add i64 %2777, 8
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i64*
  %2791 = load i64, i64* %2790, align 8
  store i64 %2791, i64* %RAX.i56, align 8
  %2792 = add i64 %2791, 56
  %2793 = add i64 %2777, 12
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i64*
  %2795 = load i64, i64* %2794, align 8
  store i64 %2795, i64* %RAX.i56, align 8
  %2796 = add i64 %2778, -40
  %2797 = add i64 %2777, 16
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = sext i32 %2799 to i64
  %2801 = mul nsw i64 %2800, 56
  store i64 %2801, i64* %RCX.i1687, align 8
  %2802 = lshr i64 %2801, 63
  %2803 = add i64 %2801, %2795
  store i64 %2803, i64* %RAX.i56, align 8
  %2804 = icmp ult i64 %2803, %2795
  %2805 = icmp ult i64 %2803, %2801
  %2806 = or i1 %2804, %2805
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %14, align 1
  %2808 = trunc i64 %2803 to i32
  %2809 = and i32 %2808, 255
  %2810 = tail call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  store i8 %2813, i8* %21, align 1
  %2814 = xor i64 %2801, %2795
  %2815 = xor i64 %2814, %2803
  %2816 = lshr i64 %2815, 4
  %2817 = trunc i64 %2816 to i8
  %2818 = and i8 %2817, 1
  store i8 %2818, i8* %26, align 1
  %2819 = icmp eq i64 %2803, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %29, align 1
  %2821 = lshr i64 %2803, 63
  %2822 = trunc i64 %2821 to i8
  store i8 %2822, i8* %32, align 1
  %2823 = lshr i64 %2795, 63
  %2824 = xor i64 %2821, %2823
  %2825 = xor i64 %2821, %2802
  %2826 = add nuw nsw i64 %2824, %2825
  %2827 = icmp eq i64 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %38, align 1
  %2829 = add i64 %2803, 48
  %2830 = add i64 %2777, 26
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i32*
  %2832 = load i32, i32* %2831, align 4
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RSI.i118, align 8
  %2834 = add i64 %2777, 958
  %2835 = add i64 %2777, 31
  %2836 = load i64, i64* %6, align 8
  %2837 = add i64 %2836, -8
  %2838 = inttoptr i64 %2837 to i64*
  store i64 %2835, i64* %2838, align 8
  store i64 %2837, i64* %6, align 8
  store i64 %2834, i64* %3, align 8
  %call2_4499ac = tail call %struct.Memory* @sub_449d50.write_i32(%struct.State* nonnull %0, i64 %2834, %struct.Memory* %call2_449978)
  %2839 = load i32, i32* %EAX.i1646, align 4
  %2840 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2841 = and i32 %2839, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2846 = icmp eq i32 %2839, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %29, align 1
  %2848 = lshr i32 %2839, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v609 = select i1 %2846, i64 9, i64 21
  %2850 = add i64 %2840, %.v609
  store i64 %2850, i64* %3, align 8
  %2851 = load i64, i64* %RBP.i, align 8
  br i1 %2846, label %block_4499ba, label %block_.L_4499c6

block_4499ba:                                     ; preds = %block_.L_449992
  %2852 = add i64 %2851, -4
  %2853 = add i64 %2850, 7
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  store i32 15, i32* %2854, align 4
  %2855 = load i64, i64* %3, align 8
  %2856 = add i64 %2855, 760
  store i64 %2856, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_4499c6:                                  ; preds = %block_.L_449992
  %2857 = add i64 %2851, -40
  %2858 = add i64 %2850, 8
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = add i32 %2860, 1
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RAX.i56, align 8
  %2863 = icmp eq i32 %2860, -1
  %2864 = icmp eq i32 %2861, 0
  %2865 = or i1 %2863, %2864
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %14, align 1
  %2867 = and i32 %2861, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %21, align 1
  %2872 = xor i32 %2861, %2860
  %2873 = lshr i32 %2872, 4
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %26, align 1
  %2876 = zext i1 %2864 to i8
  store i8 %2876, i8* %29, align 1
  %2877 = lshr i32 %2861, 31
  %2878 = trunc i32 %2877 to i8
  store i8 %2878, i8* %32, align 1
  %2879 = lshr i32 %2860, 31
  %2880 = xor i32 %2877, %2879
  %2881 = add nuw nsw i32 %2880, %2877
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %38, align 1
  %2884 = add i64 %2850, 14
  store i64 %2884, i64* %3, align 8
  store i32 %2861, i32* %2859, align 4
  %2885 = load i64, i64* %3, align 8
  %2886 = add i64 %2885, -365
  store i64 %2886, i64* %3, align 8
  br label %block_.L_449867

block_.L_4499de.loopexit:                         ; preds = %block_.L_449867
  br label %block_.L_4499de

block_.L_4499de:                                  ; preds = %block_.L_4499de.loopexit, %block_.L_44984f
  %2887 = phi i64 [ %.pre547, %block_.L_44984f ], [ %2414, %block_.L_4499de.loopexit ]
  %storemerge64 = phi i64 [ %2409, %block_.L_44984f ], [ %2453, %block_.L_4499de.loopexit ]
  %MEMORY.10 = phi %struct.Memory* [ %2407, %block_.L_44984f ], [ %MEMORY.9, %block_.L_4499de.loopexit ]
  %2888 = add i64 %2887, -24
  %2889 = add i64 %storemerge64, 4
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i64*
  %2891 = load i64, i64* %2890, align 8
  store i64 %2891, i64* %RAX.i56, align 8
  %2892 = add i64 %2891, 100
  %2893 = add i64 %storemerge64, 8
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  store i8 0, i8* %14, align 1
  %2896 = and i32 %2895, 255
  %2897 = tail call i32 @llvm.ctpop.i32(i32 %2896)
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  %2900 = xor i8 %2899, 1
  store i8 %2900, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2901 = icmp eq i32 %2895, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %29, align 1
  %2903 = lshr i32 %2895, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v589 = select i1 %2901, i64 701, i64 14
  %2905 = add i64 %storemerge64, %.v589
  store i64 %2905, i64* %3, align 8
  br i1 %2901, label %block_.L_449c9b, label %block_4499ec

block_4499ec:                                     ; preds = %block_.L_4499de
  %2906 = add i64 %2905, 4
  store i64 %2906, i64* %3, align 8
  %2907 = load i64, i64* %2890, align 8
  store i64 %2907, i64* %RAX.i56, align 8
  %2908 = add i64 %2907, 96
  %2909 = add i64 %2905, 7
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = zext i32 %2911 to i64
  store i64 %2912, i64* %RCX.i1687, align 8
  store i64 %2912, i64* %RAX.i56, align 8
  store i64 %2912, i64* %RDI.i93, align 8
  %2913 = add i64 %2905, -295964
  %2914 = add i64 %2905, 21
  %2915 = load i64, i64* %6, align 8
  %2916 = add i64 %2915, -8
  %2917 = inttoptr i64 %2916 to i64*
  store i64 %2914, i64* %2917, align 8
  store i64 %2916, i64* %6, align 8
  store i64 %2913, i64* %3, align 8
  %2918 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.10)
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -104
  %2921 = load i64, i64* %RAX.i56, align 8
  %2922 = load i64, i64* %3, align 8
  %2923 = add i64 %2922, 4
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2920 to i64*
  store i64 %2921, i64* %2924, align 8
  %2925 = load i64, i64* %RAX.i56, align 8
  %2926 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2927 = trunc i64 %2925 to i32
  %2928 = and i32 %2927, 255
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2933 = icmp eq i64 %2925, 0
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %29, align 1
  %2935 = lshr i64 %2925, 63
  %2936 = trunc i64 %2935 to i8
  store i8 %2936, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v590 = select i1 %2933, i64 10, i64 22
  %2937 = add i64 %2926, %.v590
  store i64 %2937, i64* %3, align 8
  %2938 = load i64, i64* %RBP.i, align 8
  br i1 %2933, label %block_449a0f, label %block_.L_449a1b

block_449a0f:                                     ; preds = %block_4499ec
  %2939 = add i64 %2938, -4
  %2940 = add i64 %2937, 7
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i32*
  store i32 3, i32* %2941, align 4
  %2942 = load i64, i64* %3, align 8
  %2943 = add i64 %2942, 675
  store i64 %2943, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449a1b:                                  ; preds = %block_4499ec
  %2944 = add i64 %2938, -24
  %2945 = add i64 %2937, 4
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RAX.i56, align 8
  %2948 = add i64 %2947, 8
  %2949 = add i64 %2937, 8
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  store i8 0, i8* %14, align 1
  %2952 = and i32 %2951, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2957 = icmp eq i32 %2951, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %29, align 1
  %2959 = lshr i32 %2951, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v591 = select i1 %2957, i64 366, i64 14
  %2961 = add i64 %2937, %.v591
  store i64 %2961, i64* %3, align 8
  br i1 %2957, label %block_.L_449b89, label %block_449a29

block_449a29:                                     ; preds = %block_.L_449a1b
  %2962 = add i64 %2938, -1232
  %2963 = add i64 %2961, 11
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i64*
  store i64 0, i64* %2964, align 8
  %2965 = load i64, i64* %RBP.i, align 8
  %2966 = add i64 %2965, -1236
  %2967 = load i64, i64* %3, align 8
  %2968 = add i64 %2967, 10
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2966 to i32*
  store i32 0, i32* %2969, align 4
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -40
  %2972 = load i64, i64* %3, align 8
  %2973 = add i64 %2972, 7
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2971 to i32*
  store i32 0, i32* %2974, align 4
  %.pre548 = load i64, i64* %3, align 8
  br label %block_.L_449a45

block_.L_449a45:                                  ; preds = %block_.L_449b65, %block_449a29
  %2975 = phi i64 [ %.pre548, %block_449a29 ], [ %3283, %block_.L_449b65 ]
  %MEMORY.11 = phi %struct.Memory* [ %2918, %block_449a29 ], [ %3212, %block_.L_449b65 ]
  %2976 = load i64, i64* %RBP.i, align 8
  %2977 = add i64 %2976, -40
  %2978 = add i64 %2975, 3
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RAX.i56, align 8
  %2982 = add i64 %2976, -24
  %2983 = add i64 %2975, 7
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %RCX.i1687, align 8
  %2986 = add i64 %2985, 100
  %2987 = add i64 %2975, 10
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = sub i32 %2980, %2989
  %2991 = icmp ult i32 %2980, %2989
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %14, align 1
  %2993 = and i32 %2990, 255
  %2994 = tail call i32 @llvm.ctpop.i32(i32 %2993)
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = xor i8 %2996, 1
  store i8 %2997, i8* %21, align 1
  %2998 = xor i32 %2989, %2980
  %2999 = xor i32 %2998, %2990
  %3000 = lshr i32 %2999, 4
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  store i8 %3002, i8* %26, align 1
  %3003 = icmp eq i32 %2990, 0
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %29, align 1
  %3005 = lshr i32 %2990, 31
  %3006 = trunc i32 %3005 to i8
  store i8 %3006, i8* %32, align 1
  %3007 = lshr i32 %2980, 31
  %3008 = lshr i32 %2989, 31
  %3009 = xor i32 %3008, %3007
  %3010 = xor i32 %3005, %3007
  %3011 = add nuw nsw i32 %3010, %3009
  %3012 = icmp eq i32 %3011, 2
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %38, align 1
  %.v560 = select i1 %2991, i64 16, i64 307
  %3014 = add i64 %2975, %.v560
  %3015 = add i64 %2976, -1232
  %3016 = add i64 %3014, 7
  store i64 %3016, i64* %3, align 8
  br i1 %2991, label %block_449a55, label %block_.L_449b78

block_449a55:                                     ; preds = %block_.L_449a45
  store i64 %3015, i64* %RDI.i93, align 8
  %3017 = add i64 %2976, -1236
  store i64 %3017, i64* %RSI.i118, align 8
  %3018 = add i64 %3014, 18
  store i64 %3018, i64* %3, align 8
  %3019 = load i64, i64* %2984, align 8
  store i64 %3019, i64* %RAX.i56, align 8
  %3020 = add i64 %3019, 112
  %3021 = add i64 %3014, 22
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i64*
  %3023 = load i64, i64* %3022, align 8
  store i64 %3023, i64* %RDX.i1594, align 8
  %3024 = add i64 %3014, -14133
  %3025 = add i64 %3014, 27
  %3026 = load i64, i64* %6, align 8
  %3027 = add i64 %3026, -8
  %3028 = inttoptr i64 %3027 to i64*
  store i64 %3025, i64* %3028, align 8
  store i64 %3027, i64* %6, align 8
  store i64 %3024, i64* %3, align 8
  %call2_449a6b = tail call %struct.Memory* @sub_446320.sre_fgets(%struct.State* nonnull %0, i64 %3024, %struct.Memory* %MEMORY.11)
  %3029 = load i64, i64* %RAX.i56, align 8
  %3030 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3031 = trunc i64 %3029 to i32
  %3032 = and i32 %3031, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3037 = icmp eq i64 %3029, 0
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %29, align 1
  %3039 = lshr i64 %3029, 63
  %3040 = trunc i64 %3039 to i8
  store i8 %3040, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v592 = select i1 %3037, i64 10, i64 22
  %3041 = add i64 %3030, %.v592
  store i64 %3041, i64* %3, align 8
  %3042 = load i64, i64* %RBP.i, align 8
  br i1 %3037, label %block_449a7a, label %block_.L_449a86

block_449a7a:                                     ; preds = %block_449a55
  %3043 = add i64 %3042, -4
  %3044 = add i64 %3041, 7
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  store i32 1, i32* %3045, align 4
  %3046 = load i64, i64* %3, align 8
  %3047 = add i64 %3046, 568
  store i64 %3047, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449a86:                                  ; preds = %block_449a55
  %3048 = add i64 %3042, -1224
  store i64 %3048, i64* %RSI.i118, align 8
  %3049 = add i64 %3042, -1232
  %3050 = add i64 %3041, 14
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i64*
  %3052 = load i64, i64* %3051, align 8
  store i64 %3052, i64* %RDI.i93, align 8
  %3053 = add i64 %3041, 1594
  %3054 = add i64 %3041, 19
  %3055 = load i64, i64* %6, align 8
  %3056 = add i64 %3055, -8
  %3057 = inttoptr i64 %3056 to i64*
  store i64 %3054, i64* %3057, align 8
  store i64 %3056, i64* %6, align 8
  store i64 %3053, i64* %3, align 8
  %call2_449a94 = tail call %struct.Memory* @sub_44a0c0.parse_skey_info(%struct.State* nonnull %0, i64 %3053, %struct.Memory* %MEMORY.11)
  %3058 = load i32, i32* %EAX.i1646, align 4
  %3059 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3060 = and i32 %3058, 255
  %3061 = tail call i32 @llvm.ctpop.i32(i32 %3060)
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  store i8 %3064, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3065 = icmp eq i32 %3058, 0
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %29, align 1
  %3067 = lshr i32 %3058, 31
  %3068 = trunc i32 %3067 to i8
  store i8 %3068, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v593 = select i1 %3065, i64 21, i64 9
  %3069 = add i64 %3059, %.v593
  store i64 %3069, i64* %3, align 8
  br i1 %3065, label %block_.L_449aae, label %block_449aa2

block_449aa2:                                     ; preds = %block_.L_449a86
  %3070 = load i64, i64* %RBP.i, align 8
  %3071 = add i64 %3070, -4
  %3072 = add i64 %3069, 7
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3071 to i32*
  store i32 6, i32* %3073, align 4
  %3074 = load i64, i64* %3, align 8
  %3075 = add i64 %3074, 528
  store i64 %3075, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449aae:                                  ; preds = %block_.L_449a86
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %3076 = load i64, i64* %RBP.i, align 8
  %3077 = add i64 %3076, -104
  %3078 = add i64 %3069, 11
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %RDI.i93, align 8
  %3081 = add i64 %3076, -1224
  %3082 = add i64 %3069, 18
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %RCX.i1687, align 8
  %3085 = add i64 %3076, -1320
  %3086 = add i64 %3069, 25
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i64*
  store i64 1, i64* %3087, align 8
  %3088 = load i64, i64* %RCX.i1687, align 8
  %3089 = load i64, i64* %3, align 8
  store i64 %3088, i64* %RSI.i118, align 8
  %3090 = add i64 %3089, -296679
  %3091 = add i64 %3089, 8
  %3092 = load i64, i64* %6, align 8
  %3093 = add i64 %3092, -8
  %3094 = inttoptr i64 %3093 to i64*
  store i64 %3091, i64* %3094, align 8
  store i64 %3093, i64* %6, align 8
  store i64 %3090, i64* %3, align 8
  %3095 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.11)
  %3096 = load i64, i64* %RBP.i, align 8
  %3097 = add i64 %3096, -96
  %3098 = load i64, i64* %3, align 8
  %3099 = add i64 %3098, 4
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3097 to i64*
  %3101 = load i64, i64* %3100, align 8
  store i64 %3101, i64* %RDI.i93, align 8
  %3102 = add i64 %3096, -1216
  %3103 = add i64 %3098, 11
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i64*
  %3105 = load i64, i64* %3104, align 8
  store i64 %3105, i64* %RSI.i118, align 8
  %3106 = add i64 %3096, -1328
  %3107 = load i64, i64* %RAX.i56, align 8
  %3108 = add i64 %3098, 18
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3106 to i64*
  store i64 %3107, i64* %3109, align 8
  %3110 = load i64, i64* %3, align 8
  %3111 = add i64 %3110, -296705
  %3112 = add i64 %3110, 5
  %3113 = load i64, i64* %6, align 8
  %3114 = add i64 %3113, -8
  %3115 = inttoptr i64 %3114 to i64*
  store i64 %3112, i64* %3115, align 8
  store i64 %3114, i64* %6, align 8
  store i64 %3111, i64* %3, align 8
  %3116 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %3095)
  %3117 = load i64, i64* %RBP.i, align 8
  %3118 = add i64 %3117, -104
  %3119 = load i64, i64* %3, align 8
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3118 to i64*
  %3122 = load i64, i64* %3121, align 8
  store i64 %3122, i64* %RDI.i93, align 8
  %3123 = add i64 %3117, -24
  %3124 = add i64 %3119, 8
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i64*
  %3126 = load i64, i64* %3125, align 8
  store i64 %3126, i64* %RCX.i1687, align 8
  %3127 = add i64 %3126, 96
  %3128 = add i64 %3119, 11
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RDX.i1594, align 8
  %3132 = add i64 %3117, -32
  %3133 = add i64 %3119, 15
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i64*
  %3135 = load i64, i64* %3134, align 8
  store i64 %3135, i64* %RCX.i1687, align 8
  %3136 = add i64 %3117, -1320
  %3137 = add i64 %3119, 22
  store i64 %3137, i64* %3, align 8
  %3138 = inttoptr i64 %3136 to i64*
  %3139 = load i64, i64* %3138, align 8
  store i64 %3139, i64* %RSI.i118, align 8
  %3140 = add i64 %3117, -1336
  %3141 = load i64, i64* %RAX.i56, align 8
  %3142 = add i64 %3119, 29
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3140 to i64*
  store i64 %3141, i64* %3143, align 8
  %3144 = load i64, i64* %3, align 8
  %3145 = add i64 %3144, -295971
  %3146 = add i64 %3144, 5
  %3147 = load i64, i64* %6, align 8
  %3148 = add i64 %3147, -8
  %3149 = inttoptr i64 %3148 to i64*
  store i64 %3146, i64* %3149, align 8
  store i64 %3148, i64* %6, align 8
  store i64 %3145, i64* %3, align 8
  %3150 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %3116)
  %3151 = load i64, i64* %RBP.i, align 8
  %3152 = add i64 %3151, -24
  %3153 = load i64, i64* %3, align 8
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3152 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i64 %3156, i64* %RCX.i1687, align 8
  %3157 = add i64 %3156, 96
  %3158 = add i64 %3153, 8
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %1493, align 8
  store i64 %3161, i64* %RCX.i1687, align 8
  %3162 = load i64, i64* %RAX.i56, align 8
  %3163 = sub i64 %3162, %3161
  %3164 = icmp ult i64 %3162, %3161
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %14, align 1
  %3166 = trunc i64 %3163 to i32
  %3167 = and i32 %3166, 255
  %3168 = tail call i32 @llvm.ctpop.i32(i32 %3167)
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  store i8 %3171, i8* %21, align 1
  %3172 = xor i64 %3162, %3161
  %3173 = xor i64 %3172, %3163
  %3174 = lshr i64 %3173, 4
  %3175 = trunc i64 %3174 to i8
  %3176 = and i8 %3175, 1
  store i8 %3176, i8* %26, align 1
  %3177 = icmp eq i64 %3163, 0
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %29, align 1
  %3179 = lshr i64 %3163, 63
  %3180 = trunc i64 %3179 to i8
  store i8 %3180, i8* %32, align 1
  %3181 = lshr i64 %3162, 63
  %3182 = xor i64 %3179, %3181
  %3183 = add nuw nsw i64 %3182, %3181
  %3184 = icmp eq i64 %3183, 2
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %38, align 1
  %.v594 = select i1 %3177, i64 32, i64 20
  %3186 = add i64 %3153, %.v594
  store i64 %3186, i64* %3, align 8
  br i1 %3177, label %block_.L_449b28, label %block_449b1c

block_449b1c:                                     ; preds = %block_.L_449aae
  %3187 = add i64 %3151, -4
  %3188 = add i64 %3186, 7
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i32*
  store i32 15, i32* %3189, align 4
  %3190 = load i64, i64* %3, align 8
  %3191 = add i64 %3190, 406
  store i64 %3191, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449b28:                                  ; preds = %block_.L_449aae
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %3192 = add i64 %3151, -96
  %3193 = add i64 %3186, 11
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3192 to i64*
  %3195 = load i64, i64* %3194, align 8
  store i64 %3195, i64* %RDI.i93, align 8
  %3196 = add i64 %3186, 15
  store i64 %3196, i64* %3, align 8
  %3197 = load i64, i64* %3155, align 8
  store i64 %3197, i64* %RCX.i1687, align 8
  %3198 = add i64 %3197, 64
  %3199 = add i64 %3186, 18
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3198 to i32*
  %3201 = load i32, i32* %3200, align 4
  %3202 = zext i32 %3201 to i64
  store i64 %3202, i64* %RAX.i56, align 8
  store i64 %3202, i64* %RDX.i1594, align 8
  %3203 = add i64 %3151, -32
  %3204 = add i64 %3186, 24
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i64*
  %3206 = load i64, i64* %3205, align 8
  store i64 %3206, i64* %RCX.i1687, align 8
  %3207 = add i64 %3186, -296008
  %3208 = add i64 %3186, 29
  %3209 = load i64, i64* %6, align 8
  %3210 = add i64 %3209, -8
  %3211 = inttoptr i64 %3210 to i64*
  store i64 %3208, i64* %3211, align 8
  store i64 %3210, i64* %6, align 8
  store i64 %3207, i64* %3, align 8
  %3212 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %3150)
  %3213 = load i64, i64* %RBP.i, align 8
  %3214 = add i64 %3213, -24
  %3215 = load i64, i64* %3, align 8
  %3216 = add i64 %3215, 4
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3214 to i64*
  %3218 = load i64, i64* %3217, align 8
  store i64 %3218, i64* %RCX.i1687, align 8
  %3219 = add i64 %3218, 64
  %3220 = add i64 %3215, 8
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %1493, align 8
  store i64 %3223, i64* %RCX.i1687, align 8
  %3224 = load i64, i64* %RAX.i56, align 8
  %3225 = sub i64 %3224, %3223
  %3226 = icmp ult i64 %3224, %3223
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %14, align 1
  %3228 = trunc i64 %3225 to i32
  %3229 = and i32 %3228, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %21, align 1
  %3234 = xor i64 %3224, %3223
  %3235 = xor i64 %3234, %3225
  %3236 = lshr i64 %3235, 4
  %3237 = trunc i64 %3236 to i8
  %3238 = and i8 %3237, 1
  store i8 %3238, i8* %26, align 1
  %3239 = icmp eq i64 %3225, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %29, align 1
  %3241 = lshr i64 %3225, 63
  %3242 = trunc i64 %3241 to i8
  store i8 %3242, i8* %32, align 1
  %3243 = lshr i64 %3224, 63
  %3244 = xor i64 %3241, %3243
  %3245 = add nuw nsw i64 %3244, %3243
  %3246 = icmp eq i64 %3245, 2
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %38, align 1
  %.v561 = select i1 %3239, i64 32, i64 20
  %3248 = add i64 %3215, %.v561
  store i64 %3248, i64* %3, align 8
  br i1 %3239, label %block_.L_449b65, label %block_449b59

block_449b59:                                     ; preds = %block_.L_449b28
  %3249 = add i64 %3213, -4
  %3250 = add i64 %3248, 7
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  store i32 15, i32* %3251, align 4
  %3252 = load i64, i64* %3, align 8
  %3253 = add i64 %3252, 345
  store i64 %3253, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449b65:                                  ; preds = %block_.L_449b28
  %3254 = add i64 %3213, -40
  %3255 = add i64 %3248, 8
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i32*
  %3257 = load i32, i32* %3256, align 4
  %3258 = add i32 %3257, 1
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RAX.i56, align 8
  %3260 = icmp eq i32 %3257, -1
  %3261 = icmp eq i32 %3258, 0
  %3262 = or i1 %3260, %3261
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %14, align 1
  %3264 = and i32 %3258, 255
  %3265 = tail call i32 @llvm.ctpop.i32(i32 %3264)
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = xor i8 %3267, 1
  store i8 %3268, i8* %21, align 1
  %3269 = xor i32 %3258, %3257
  %3270 = lshr i32 %3269, 4
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  store i8 %3272, i8* %26, align 1
  %3273 = zext i1 %3261 to i8
  store i8 %3273, i8* %29, align 1
  %3274 = lshr i32 %3258, 31
  %3275 = trunc i32 %3274 to i8
  store i8 %3275, i8* %32, align 1
  %3276 = lshr i32 %3257, 31
  %3277 = xor i32 %3274, %3276
  %3278 = add nuw nsw i32 %3277, %3274
  %3279 = icmp eq i32 %3278, 2
  %3280 = zext i1 %3279 to i8
  store i8 %3280, i8* %38, align 1
  %3281 = add i64 %3248, 14
  store i64 %3281, i64* %3, align 8
  store i32 %3258, i32* %3256, align 4
  %3282 = load i64, i64* %3, align 8
  %3283 = add i64 %3282, -302
  store i64 %3283, i64* %3, align 8
  br label %block_.L_449a45

block_.L_449b78:                                  ; preds = %block_.L_449a45
  %3284 = inttoptr i64 %3015 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %RDI.i93, align 8
  %3286 = add i64 %3014, -296952
  %3287 = add i64 %3014, 12
  %3288 = load i64, i64* %6, align 8
  %3289 = add i64 %3288, -8
  %3290 = inttoptr i64 %3289 to i64*
  store i64 %3287, i64* %3290, align 8
  store i64 %3289, i64* %6, align 8
  store i64 %3286, i64* %3, align 8
  %3291 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.11)
  %3292 = load i64, i64* %3, align 8
  %3293 = add i64 %3292, 270
  %.pre550 = load i64, i64* %RBP.i, align 8
  br label %block_.L_449c92

block_.L_449b89:                                  ; preds = %block_.L_449a1b
  %3294 = add i64 %2938, -40
  %3295 = add i64 %2961, 7
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  store i32 0, i32* %3296, align 4
  %.pre549 = load i64, i64* %3, align 8
  br label %block_.L_449b90

block_.L_449b90:                                  ; preds = %block_.L_449c7a, %block_.L_449b89
  %3297 = phi i64 [ %.pre549, %block_.L_449b89 ], [ %3623, %block_.L_449c7a ]
  %MEMORY.12 = phi %struct.Memory* [ %2918, %block_.L_449b89 ], [ %3552, %block_.L_449c7a ]
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -40
  %3300 = add i64 %3297, 3
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  %3302 = load i32, i32* %3301, align 4
  %3303 = zext i32 %3302 to i64
  store i64 %3303, i64* %RAX.i56, align 8
  %3304 = add i64 %3298, -24
  %3305 = add i64 %3297, 7
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i64*
  %3307 = load i64, i64* %3306, align 8
  store i64 %3307, i64* %RCX.i1687, align 8
  %3308 = add i64 %3307, 100
  %3309 = add i64 %3297, 10
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = sub i32 %3302, %3311
  %3313 = icmp ult i32 %3302, %3311
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = and i32 %3312, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %21, align 1
  %3320 = xor i32 %3311, %3302
  %3321 = xor i32 %3320, %3312
  %3322 = lshr i32 %3321, 4
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %26, align 1
  %3325 = icmp eq i32 %3312, 0
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %29, align 1
  %3327 = lshr i32 %3312, 31
  %3328 = trunc i32 %3327 to i8
  store i8 %3328, i8* %32, align 1
  %3329 = lshr i32 %3302, 31
  %3330 = lshr i32 %3311, 31
  %3331 = xor i32 %3330, %3329
  %3332 = xor i32 %3327, %3329
  %3333 = add nuw nsw i32 %3332, %3331
  %3334 = icmp eq i32 %3333, 2
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %38, align 1
  %.v595 = select i1 %3313, i64 16, i64 253
  %3336 = add i64 %3297, %.v595
  %3337 = add i64 %3336, 5
  store i64 %3337, i64* %3, align 8
  br i1 %3313, label %block_449ba0, label %block_.L_449c92.loopexit

block_449ba0:                                     ; preds = %block_.L_449b90
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %3338 = add i64 %3298, -104
  %3339 = add i64 %3336, 11
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i64*
  %3341 = load i64, i64* %3340, align 8
  store i64 %3341, i64* %RDI.i93, align 8
  %3342 = add i64 %3336, 15
  store i64 %3342, i64* %3, align 8
  %3343 = load i64, i64* %3306, align 8
  store i64 %3343, i64* %RCX.i1687, align 8
  %3344 = add i64 %3343, 88
  %3345 = add i64 %3336, 19
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i64*
  %3347 = load i64, i64* %3346, align 8
  store i64 %3347, i64* %RCX.i1687, align 8
  %3348 = add i64 %3336, 23
  store i64 %3348, i64* %3, align 8
  %3349 = load i32, i32* %3301, align 4
  %3350 = sext i32 %3349 to i64
  %3351 = shl nsw i64 %3350, 4
  store i64 %3351, i64* %RDX.i1594, align 8
  %3352 = add i64 %3351, %3347
  store i64 %3352, i64* %RCX.i1687, align 8
  %3353 = icmp ult i64 %3352, %3347
  %3354 = icmp ult i64 %3352, %3351
  %3355 = or i1 %3353, %3354
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %14, align 1
  %3357 = trunc i64 %3352 to i32
  %3358 = and i32 %3357, 255
  %3359 = tail call i32 @llvm.ctpop.i32(i32 %3358)
  %3360 = trunc i32 %3359 to i8
  %3361 = and i8 %3360, 1
  %3362 = xor i8 %3361, 1
  store i8 %3362, i8* %21, align 1
  %3363 = xor i64 %3351, %3347
  %3364 = xor i64 %3363, %3352
  %3365 = lshr i64 %3364, 4
  %3366 = trunc i64 %3365 to i8
  %3367 = and i8 %3366, 1
  store i8 %3367, i8* %26, align 1
  %3368 = icmp eq i64 %3352, 0
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %29, align 1
  %3370 = lshr i64 %3352, 63
  %3371 = trunc i64 %3370 to i8
  store i8 %3371, i8* %32, align 1
  %3372 = lshr i64 %3347, 63
  %3373 = lshr i64 %3350, 59
  %3374 = and i64 %3373, 1
  %3375 = xor i64 %3370, %3372
  %3376 = xor i64 %3370, %3374
  %3377 = add nuw nsw i64 %3375, %3376
  %3378 = icmp eq i64 %3377, 2
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %38, align 1
  %3380 = inttoptr i64 %3352 to i64*
  %3381 = add i64 %3336, 33
  store i64 %3381, i64* %3, align 8
  %3382 = load i64, i64* %3380, align 8
  store i64 %3382, i64* %RCX.i1687, align 8
  %3383 = add i64 %3298, -1344
  %3384 = add i64 %3336, 40
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i64*
  store i64 1, i64* %3385, align 8
  %3386 = load i64, i64* %RCX.i1687, align 8
  %3387 = load i64, i64* %3, align 8
  store i64 %3386, i64* %RSI.i118, align 8
  %3388 = add i64 %3387, -296936
  %3389 = add i64 %3387, 8
  %3390 = load i64, i64* %6, align 8
  %3391 = add i64 %3390, -8
  %3392 = inttoptr i64 %3391 to i64*
  store i64 %3389, i64* %3392, align 8
  store i64 %3391, i64* %6, align 8
  store i64 %3388, i64* %3, align 8
  %3393 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.12)
  %3394 = load i64, i64* %RBP.i, align 8
  %3395 = add i64 %3394, -96
  %3396 = load i64, i64* %3, align 8
  %3397 = add i64 %3396, 4
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3395 to i64*
  %3399 = load i64, i64* %3398, align 8
  store i64 %3399, i64* %RDI.i93, align 8
  %3400 = add i64 %3394, -24
  %3401 = add i64 %3396, 8
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3400 to i64*
  %3403 = load i64, i64* %3402, align 8
  store i64 %3403, i64* %RCX.i1687, align 8
  %3404 = add i64 %3403, 88
  %3405 = add i64 %3396, 12
  store i64 %3405, i64* %3, align 8
  %3406 = inttoptr i64 %3404 to i64*
  %3407 = load i64, i64* %3406, align 8
  store i64 %3407, i64* %RCX.i1687, align 8
  %3408 = add i64 %3394, -40
  %3409 = add i64 %3396, 16
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i32*
  %3411 = load i32, i32* %3410, align 4
  %3412 = sext i32 %3411 to i64
  %3413 = shl nsw i64 %3412, 4
  store i64 %3413, i64* %RDX.i1594, align 8
  %3414 = add i64 %3413, %3407
  store i64 %3414, i64* %RCX.i1687, align 8
  %3415 = icmp ult i64 %3414, %3407
  %3416 = icmp ult i64 %3414, %3413
  %3417 = or i1 %3415, %3416
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %14, align 1
  %3419 = trunc i64 %3414 to i32
  %3420 = and i32 %3419, 255
  %3421 = tail call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  store i8 %3424, i8* %21, align 1
  %3425 = xor i64 %3413, %3407
  %3426 = xor i64 %3425, %3414
  %3427 = lshr i64 %3426, 4
  %3428 = trunc i64 %3427 to i8
  %3429 = and i8 %3428, 1
  store i8 %3429, i8* %26, align 1
  %3430 = icmp eq i64 %3414, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %29, align 1
  %3432 = lshr i64 %3414, 63
  %3433 = trunc i64 %3432 to i8
  store i8 %3433, i8* %32, align 1
  %3434 = lshr i64 %3407, 63
  %3435 = lshr i64 %3412, 59
  %3436 = and i64 %3435, 1
  %3437 = xor i64 %3432, %3434
  %3438 = xor i64 %3432, %3436
  %3439 = add nuw nsw i64 %3437, %3438
  %3440 = icmp eq i64 %3439, 2
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %38, align 1
  %3442 = add i64 %3414, 8
  %3443 = add i64 %3396, 27
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i64*
  %3445 = load i64, i64* %3444, align 8
  store i64 %3445, i64* %RSI.i118, align 8
  %3446 = add i64 %3394, -1352
  %3447 = load i64, i64* %RAX.i56, align 8
  %3448 = add i64 %3396, 34
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3446 to i64*
  store i64 %3447, i64* %3449, align 8
  %3450 = load i64, i64* %3, align 8
  %3451 = add i64 %3450, -296978
  %3452 = add i64 %3450, 5
  %3453 = load i64, i64* %6, align 8
  %3454 = add i64 %3453, -8
  %3455 = inttoptr i64 %3454 to i64*
  store i64 %3452, i64* %3455, align 8
  store i64 %3454, i64* %6, align 8
  store i64 %3451, i64* %3, align 8
  %3456 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %3393)
  %3457 = load i64, i64* %RBP.i, align 8
  %3458 = add i64 %3457, -104
  %3459 = load i64, i64* %3, align 8
  %3460 = add i64 %3459, 4
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3458 to i64*
  %3462 = load i64, i64* %3461, align 8
  store i64 %3462, i64* %RDI.i93, align 8
  %3463 = add i64 %3457, -24
  %3464 = add i64 %3459, 8
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i64*
  %3466 = load i64, i64* %3465, align 8
  store i64 %3466, i64* %RCX.i1687, align 8
  %3467 = add i64 %3466, 96
  %3468 = add i64 %3459, 12
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = zext i32 %3470 to i64
  store i64 %3471, i64* %1493, align 8
  store i64 %3471, i64* %RDX.i1594, align 8
  %3472 = add i64 %3457, -32
  %3473 = add i64 %3459, 19
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i64*
  %3475 = load i64, i64* %3474, align 8
  store i64 %3475, i64* %RCX.i1687, align 8
  %3476 = add i64 %3457, -1344
  %3477 = add i64 %3459, 26
  store i64 %3477, i64* %3, align 8
  %3478 = inttoptr i64 %3476 to i64*
  %3479 = load i64, i64* %3478, align 8
  store i64 %3479, i64* %RSI.i118, align 8
  %3480 = add i64 %3457, -1360
  %3481 = load i64, i64* %RAX.i56, align 8
  %3482 = add i64 %3459, 33
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3480 to i64*
  store i64 %3481, i64* %3483, align 8
  %3484 = load i64, i64* %3, align 8
  %3485 = add i64 %3484, -296248
  %3486 = add i64 %3484, 5
  %3487 = load i64, i64* %6, align 8
  %3488 = add i64 %3487, -8
  %3489 = inttoptr i64 %3488 to i64*
  store i64 %3486, i64* %3489, align 8
  store i64 %3488, i64* %6, align 8
  store i64 %3485, i64* %3, align 8
  %3490 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %3456)
  %3491 = load i64, i64* %RBP.i, align 8
  %3492 = add i64 %3491, -24
  %3493 = load i64, i64* %3, align 8
  %3494 = add i64 %3493, 4
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3492 to i64*
  %3496 = load i64, i64* %3495, align 8
  store i64 %3496, i64* %RCX.i1687, align 8
  %3497 = add i64 %3496, 96
  %3498 = add i64 %3493, 8
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = zext i32 %3500 to i64
  store i64 %3501, i64* %1493, align 8
  store i64 %3501, i64* %RCX.i1687, align 8
  %3502 = load i64, i64* %RAX.i56, align 8
  %3503 = sub i64 %3502, %3501
  %3504 = icmp ult i64 %3502, %3501
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %14, align 1
  %3506 = trunc i64 %3503 to i32
  %3507 = and i32 %3506, 255
  %3508 = tail call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  store i8 %3511, i8* %21, align 1
  %3512 = xor i64 %3502, %3501
  %3513 = xor i64 %3512, %3503
  %3514 = lshr i64 %3513, 4
  %3515 = trunc i64 %3514 to i8
  %3516 = and i8 %3515, 1
  store i8 %3516, i8* %26, align 1
  %3517 = icmp eq i64 %3503, 0
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %29, align 1
  %3519 = lshr i64 %3503, 63
  %3520 = trunc i64 %3519 to i8
  store i8 %3520, i8* %32, align 1
  %3521 = lshr i64 %3502, 63
  %3522 = xor i64 %3519, %3521
  %3523 = add nuw nsw i64 %3522, %3521
  %3524 = icmp eq i64 %3523, 2
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %38, align 1
  %.v596 = select i1 %3517, i64 32, i64 20
  %3526 = add i64 %3493, %.v596
  store i64 %3526, i64* %3, align 8
  br i1 %3517, label %block_.L_449c3d, label %block_449c31

block_449c31:                                     ; preds = %block_449ba0
  %3527 = add i64 %3491, -4
  %3528 = add i64 %3526, 7
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i32*
  store i32 15, i32* %3529, align 4
  %3530 = load i64, i64* %3, align 8
  %3531 = add i64 %3530, 129
  store i64 %3531, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449c3d:                                  ; preds = %block_449ba0
  store i64 1, i64* %RAX.i56, align 8
  store i64 1, i64* %RSI.i118, align 8
  %3532 = add i64 %3491, -96
  %3533 = add i64 %3526, 11
  store i64 %3533, i64* %3, align 8
  %3534 = inttoptr i64 %3532 to i64*
  %3535 = load i64, i64* %3534, align 8
  store i64 %3535, i64* %RDI.i93, align 8
  %3536 = add i64 %3526, 15
  store i64 %3536, i64* %3, align 8
  %3537 = load i64, i64* %3495, align 8
  store i64 %3537, i64* %RCX.i1687, align 8
  %3538 = add i64 %3537, 64
  %3539 = add i64 %3526, 18
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3538 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RAX.i56, align 8
  store i64 %3542, i64* %RDX.i1594, align 8
  %3543 = add i64 %3491, -32
  %3544 = add i64 %3526, 24
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i64*
  %3546 = load i64, i64* %3545, align 8
  store i64 %3546, i64* %RCX.i1687, align 8
  %3547 = add i64 %3526, -296285
  %3548 = add i64 %3526, 29
  %3549 = load i64, i64* %6, align 8
  %3550 = add i64 %3549, -8
  %3551 = inttoptr i64 %3550 to i64*
  store i64 %3548, i64* %3551, align 8
  store i64 %3550, i64* %6, align 8
  store i64 %3547, i64* %3, align 8
  %3552 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %3490)
  %3553 = load i64, i64* %RBP.i, align 8
  %3554 = add i64 %3553, -24
  %3555 = load i64, i64* %3, align 8
  %3556 = add i64 %3555, 4
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3554 to i64*
  %3558 = load i64, i64* %3557, align 8
  store i64 %3558, i64* %RCX.i1687, align 8
  %3559 = add i64 %3558, 64
  %3560 = add i64 %3555, 8
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  %3562 = load i32, i32* %3561, align 4
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %1493, align 8
  store i64 %3563, i64* %RCX.i1687, align 8
  %3564 = load i64, i64* %RAX.i56, align 8
  %3565 = sub i64 %3564, %3563
  %3566 = icmp ult i64 %3564, %3563
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %14, align 1
  %3568 = trunc i64 %3565 to i32
  %3569 = and i32 %3568, 255
  %3570 = tail call i32 @llvm.ctpop.i32(i32 %3569)
  %3571 = trunc i32 %3570 to i8
  %3572 = and i8 %3571, 1
  %3573 = xor i8 %3572, 1
  store i8 %3573, i8* %21, align 1
  %3574 = xor i64 %3564, %3563
  %3575 = xor i64 %3574, %3565
  %3576 = lshr i64 %3575, 4
  %3577 = trunc i64 %3576 to i8
  %3578 = and i8 %3577, 1
  store i8 %3578, i8* %26, align 1
  %3579 = icmp eq i64 %3565, 0
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %29, align 1
  %3581 = lshr i64 %3565, 63
  %3582 = trunc i64 %3581 to i8
  store i8 %3582, i8* %32, align 1
  %3583 = lshr i64 %3564, 63
  %3584 = xor i64 %3581, %3583
  %3585 = add nuw nsw i64 %3584, %3583
  %3586 = icmp eq i64 %3585, 2
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %38, align 1
  %.v562 = select i1 %3579, i64 32, i64 20
  %3588 = add i64 %3555, %.v562
  store i64 %3588, i64* %3, align 8
  br i1 %3579, label %block_.L_449c7a, label %block_449c6e

block_449c6e:                                     ; preds = %block_.L_449c3d
  %3589 = add i64 %3553, -4
  %3590 = add i64 %3588, 7
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3589 to i32*
  store i32 15, i32* %3591, align 4
  %3592 = load i64, i64* %3, align 8
  %3593 = add i64 %3592, 68
  store i64 %3593, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449c7a:                                  ; preds = %block_.L_449c3d
  %3594 = add i64 %3553, -40
  %3595 = add i64 %3588, 8
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = add i32 %3597, 1
  %3599 = zext i32 %3598 to i64
  store i64 %3599, i64* %RAX.i56, align 8
  %3600 = icmp eq i32 %3597, -1
  %3601 = icmp eq i32 %3598, 0
  %3602 = or i1 %3600, %3601
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %14, align 1
  %3604 = and i32 %3598, 255
  %3605 = tail call i32 @llvm.ctpop.i32(i32 %3604)
  %3606 = trunc i32 %3605 to i8
  %3607 = and i8 %3606, 1
  %3608 = xor i8 %3607, 1
  store i8 %3608, i8* %21, align 1
  %3609 = xor i32 %3598, %3597
  %3610 = lshr i32 %3609, 4
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  store i8 %3612, i8* %26, align 1
  %3613 = zext i1 %3601 to i8
  store i8 %3613, i8* %29, align 1
  %3614 = lshr i32 %3598, 31
  %3615 = trunc i32 %3614 to i8
  store i8 %3615, i8* %32, align 1
  %3616 = lshr i32 %3597, 31
  %3617 = xor i32 %3614, %3616
  %3618 = add nuw nsw i32 %3617, %3614
  %3619 = icmp eq i32 %3618, 2
  %3620 = zext i1 %3619 to i8
  store i8 %3620, i8* %38, align 1
  %3621 = add i64 %3588, 14
  store i64 %3621, i64* %3, align 8
  store i32 %3598, i32* %3596, align 4
  %3622 = load i64, i64* %3, align 8
  %3623 = add i64 %3622, -248
  store i64 %3623, i64* %3, align 8
  br label %block_.L_449b90

block_.L_449c92.loopexit:                         ; preds = %block_.L_449b90
  br label %block_.L_449c92

block_.L_449c92:                                  ; preds = %block_.L_449c92.loopexit, %block_.L_449b78
  %3624 = phi i64 [ %.pre550, %block_.L_449b78 ], [ %3298, %block_.L_449c92.loopexit ]
  %storemerge65 = phi i64 [ %3293, %block_.L_449b78 ], [ %3337, %block_.L_449c92.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %3291, %block_.L_449b78 ], [ %MEMORY.12, %block_.L_449c92.loopexit ]
  %3625 = add i64 %3624, -104
  %3626 = add i64 %storemerge65, 4
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i64*
  %3628 = load i64, i64* %3627, align 8
  store i64 %3628, i64* %RDI.i93, align 8
  %3629 = add i64 %storemerge65, -297234
  %3630 = add i64 %storemerge65, 9
  %3631 = load i64, i64* %6, align 8
  %3632 = add i64 %3631, -8
  %3633 = inttoptr i64 %3632 to i64*
  store i64 %3630, i64* %3633, align 8
  store i64 %3632, i64* %6, align 8
  store i64 %3629, i64* %3, align 8
  %3634 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.13)
  %.pre551 = load i64, i64* %RBP.i, align 8
  %.pre552 = load i64, i64* %3, align 8
  br label %block_.L_449c9b

block_.L_449c9b:                                  ; preds = %block_.L_449c92, %block_.L_4499de
  %3635 = phi i64 [ %2905, %block_.L_4499de ], [ %.pre552, %block_.L_449c92 ]
  %3636 = phi i64 [ %2887, %block_.L_4499de ], [ %.pre551, %block_.L_449c92 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.10, %block_.L_4499de ], [ %3634, %block_.L_449c92 ]
  %3637 = add i64 %3636, -96
  %3638 = add i64 %3635, 4
  store i64 %3638, i64* %3, align 8
  %3639 = inttoptr i64 %3637 to i64*
  %3640 = load i64, i64* %3639, align 8
  store i64 %3640, i64* %RDI.i93, align 8
  %3641 = add i64 %3635, -297243
  %3642 = add i64 %3635, 9
  %3643 = load i64, i64* %6, align 8
  %3644 = add i64 %3643, -8
  %3645 = inttoptr i64 %3644 to i64*
  store i64 %3642, i64* %3645, align 8
  store i64 %3644, i64* %6, align 8
  store i64 %3641, i64* %3, align 8
  %3646 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.14)
  %3647 = load i64, i64* %RBP.i, align 8
  %3648 = add i64 %3647, -32
  %3649 = load i64, i64* %3, align 8
  %3650 = add i64 %3649, 4
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3648 to i64*
  %3652 = load i64, i64* %3651, align 8
  store i64 %3652, i64* %RDI.i93, align 8
  %3653 = add i64 %3649, -297060
  %3654 = add i64 %3649, 9
  %3655 = load i64, i64* %6, align 8
  %3656 = add i64 %3655, -8
  %3657 = inttoptr i64 %3656 to i64*
  store i64 %3654, i64* %3657, align 8
  store i64 %3656, i64* %6, align 8
  store i64 %3653, i64* %3, align 8
  %call2_449ca8 = tail call %struct.Memory* @sub_401440.fclose_plt(%struct.State* nonnull %0, i64 %3653, %struct.Memory* %3646)
  %3658 = load i64, i64* %RBP.i, align 8
  %3659 = add i64 %3658, -36
  %3660 = load i64, i64* %3, align 8
  %3661 = add i64 %3660, 3
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3659 to i32*
  %3663 = load i32, i32* %3662, align 4
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RCX.i1687, align 8
  %3665 = add i64 %3658, -4
  %3666 = add i64 %3660, 6
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i32*
  store i32 %3663, i32* %3667, align 4
  %3668 = load i64, i64* %RBP.i, align 8
  %3669 = add i64 %3668, -1364
  %3670 = load i32, i32* %EAX.i1646, align 4
  %3671 = load i64, i64* %3, align 8
  %3672 = add i64 %3671, 6
  store i64 %3672, i64* %3, align 8
  %3673 = inttoptr i64 %3669 to i32*
  store i32 %3670, i32* %3673, align 4
  %.pre555 = load i64, i64* %3, align 8
  br label %block_.L_449cb9

block_.L_449cb9:                                  ; preds = %block_.L_449c9b, %block_449c6e, %block_449c31, %block_449b59, %block_449b1c, %block_449aa2, %block_449a7a, %block_449a0f, %block_4499ba, %block_449986, %block_44994e, %block_449916, %block_4498e1, %block_449830, %block_44980c, %block_4497e0, %block_4497b4, %block_44978f, %block_44972c, %block_4496f7, %block_44968c, %block_449644, %block_449617, %block_4495ea, %block_4495c9, %block_44959c, %block_4494d6, %block_4494a2, %block_449480, %block_44945e, %block_449437, %block_449411, %block_4493eb, %block_4493b7, %block_449396, %block_449375, %block_449354, %block_44932f, %block_44930a, %block_4492e5, %block_4492c0, %block_44929b, %block_449275, %block_449254, %block_4491ca, %block_449195, %block_449124, %block_4490ef, %block_448f57
  %3674 = phi i64 [ %.pre555, %block_.L_449c9b ], [ %3593, %block_449c6e ], [ %3531, %block_449c31 ], [ %3253, %block_449b59 ], [ %3191, %block_449b1c ], [ %3075, %block_449aa2 ], [ %3047, %block_449a7a ], [ %2943, %block_449a0f ], [ %2856, %block_4499ba ], [ %2783, %block_449986 ], [ %2719, %block_44994e ], [ %2654, %block_449916 ], [ %2583, %block_4498e1 ], [ %2369, %block_449830 ], [ %2337, %block_44980c ], [ %2287, %block_4497e0 ], [ %2236, %block_4497b4 ], [ %2204, %block_44978f ], [ %2109, %block_44972c ], [ %2070, %block_4496f7 ], [ %1966, %block_44968c ], [ %1884, %block_449644 ], [ %1838, %block_449617 ], [ %1792, %block_4495ea ], [ %1760, %block_4495c9 ], [ %1716, %block_44959c ], [ %1489, %block_4494d6 ], [ %1447, %block_4494a2 ], [ %1416, %block_449480 ], [ %1385, %block_44945e ], [ %1361, %block_449437 ], [ %1329, %block_449411 ], [ %1297, %block_4493eb ], [ %1247, %block_4493b7 ], [ %1215, %block_449396 ], [ %1183, %block_449375 ], [ %1151, %block_449354 ], [ %1115, %block_44932f ], [ %1079, %block_44930a ], [ %1043, %block_4492e5 ], [ %1007, %block_4492c0 ], [ %971, %block_44929b ], [ %935, %block_449275 ], [ %903, %block_449254 ], [ %820, %block_4491ca ], [ %777, %block_449195 ], [ %690, %block_449124 ], [ %647, %block_4490ef ], [ %86, %block_448f57 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_449ca8, %block_.L_449c9b ], [ %3552, %block_449c6e ], [ %3490, %block_449c31 ], [ %3212, %block_449b59 ], [ %3150, %block_449b1c ], [ %MEMORY.11, %block_449aa2 ], [ %MEMORY.11, %block_449a7a ], [ %2918, %block_449a0f ], [ %call2_4499ac, %block_4499ba ], [ %call2_449978, %block_449986 ], [ %call2_449940, %block_44994e ], [ %call2_449908, %block_449916 ], [ %2542, %block_4498e1 ], [ %call2_449822, %block_449830 ], [ %call2_4497fe, %block_44980c ], [ %call2_4497d2, %block_4497e0 ], [ %call2_4497a6, %block_4497b4 ], [ %2163, %block_44978f ], [ %MEMORY.8, %block_44972c ], [ %MEMORY.8, %block_4496f7 ], [ %1941, %block_44968c ], [ %call2_449636, %block_449644 ], [ %call2_449609, %block_449617 ], [ %call2_4495dc, %block_4495ea ], [ %call2_4495bb, %block_4495c9 ], [ %1675, %block_44959c ], [ %1464, %block_4494d6 ], [ %call2_449494, %block_4494a2 ], [ %call2_449472, %block_449480 ], [ %call2_449450, %block_44945e ], [ %call2_449429, %block_449437 ], [ %call2_449403, %block_449411 ], [ %call2_4493dd, %block_4493eb ], [ %call2_4493a9, %block_4493b7 ], [ %call2_449388, %block_449396 ], [ %call2_449367, %block_449375 ], [ %call2_449346, %block_449354 ], [ %call2_449321, %block_44932f ], [ %call2_4492fc, %block_44930a ], [ %call2_4492d7, %block_4492e5 ], [ %call2_4492b2, %block_4492c0 ], [ %call2_44928d, %block_44929b ], [ %call2_449267, %block_449275 ], [ %call2_449246, %block_449254 ], [ %call2_4491b3, %block_4491ca ], [ %call2_449184, %block_449195 ], [ %call2_44910d, %block_449124 ], [ %call2_4490de, %block_4490ef ], [ %call2_448f44, %block_448f57 ]
  %3675 = load i64, i64* %RBP.i, align 8
  %3676 = add i64 %3675, -4
  %3677 = add i64 %3674, 3
  store i64 %3677, i64* %3, align 8
  %3678 = inttoptr i64 %3676 to i32*
  %3679 = load i32, i32* %3678, align 4
  %3680 = zext i32 %3679 to i64
  store i64 %3680, i64* %RAX.i56, align 8
  %3681 = load i64, i64* %6, align 8
  %3682 = add i64 %3681, 1376
  store i64 %3682, i64* %6, align 8
  %3683 = icmp ugt i64 %3681, -1377
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %14, align 1
  %3685 = trunc i64 %3682 to i32
  %3686 = and i32 %3685, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %21, align 1
  %3691 = xor i64 %3682, %3681
  %3692 = lshr i64 %3691, 4
  %3693 = trunc i64 %3692 to i8
  %3694 = and i8 %3693, 1
  store i8 %3694, i8* %26, align 1
  %3695 = icmp eq i64 %3682, 0
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %29, align 1
  %3697 = lshr i64 %3682, 63
  %3698 = trunc i64 %3697 to i8
  store i8 %3698, i8* %32, align 1
  %3699 = lshr i64 %3681, 63
  %3700 = xor i64 %3697, %3699
  %3701 = add nuw nsw i64 %3700, %3697
  %3702 = icmp eq i64 %3701, 2
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %38, align 1
  %3704 = add i64 %3674, 11
  store i64 %3704, i64* %3, align 8
  %3705 = add i64 %3681, 1384
  %3706 = inttoptr i64 %3682 to i64*
  %3707 = load i64, i64* %3706, align 8
  store i64 %3707, i64* %RBP.i, align 8
  store i64 %3705, i64* %6, align 8
  %3708 = add i64 %3674, 12
  store i64 %3708, i64* %3, align 8
  %3709 = inttoptr i64 %3705 to i64*
  %3710 = load i64, i64* %3709, align 8
  store i64 %3710, i64* %3, align 8
  %3711 = add i64 %3681, 1392
  store i64 %3711, i64* %6, align 8
  ret %struct.Memory* %MEMORY.15
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
define %struct.Memory* @routine_subq__0x560___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1376
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1376
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
define %struct.Memory* @routine_movq__0x457339___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457339_type* @G__0x457339 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fopen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jne_.L_448f63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.current_index_size(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x7ff___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2047
  %7 = icmp ult i64 %3, 2047
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
define %struct.Memory* @routine_jb_.L_448f9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a9d8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a9d8_type* @G__0x45a9d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_addl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %18 = xor i32 %8, %7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_448fca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x16___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 22
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -23
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1240
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448fda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xe___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 14
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -15
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
define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1240
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_addl_0x40__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
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
  %18 = xor i32 %8, %7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449011(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_orl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_449028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 2
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x36___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 54, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x42___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 66, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_0x34__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_imull_0x44__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 68
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
define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_je_.L_4491db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fclose_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45aa4b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45aa4b_type* @G__0x45aa4b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x50__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.system_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4490fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458380___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458380_type* @G__0x458380 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x50__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449130(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x70__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4491a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x70__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4491d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44923b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x38___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 56, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x449cd0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x449cd0_type* @G__0x449cd0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x44__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.specqsort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x449d10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x449d10_type* @G__0x449d10 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x58__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x663038___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.write_i32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449281(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzwl_0x34__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.write_i16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4492a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x44__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_jne_.L_4492cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x64__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_jne_.L_4492f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_jne_.L_449316(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x40__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jne_.L_44933b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x60__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_jne_.L_449360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449381(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4493a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jne_.L_4493c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_449448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_4493f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44941d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449443(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4494b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.write_i64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44946a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44948c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4494ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4494e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movzwl_0x34__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_449663(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jbe_.L_449538(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x4f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1272
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x30__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4f8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x500__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1280
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4495a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_4495d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4495f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449623(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449655(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4494e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x40__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449698(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_je_.L_449860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__MINUS0x478__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x47c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 68
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
define %struct.Memory* @routine_jae_.L_44984f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x478__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x47c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x50__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449703(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x478__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__sil___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.parse_pkey_info(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_449738(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4b8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x508__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1288
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x508__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x510__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1296
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
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
define %struct.Memory* @routine_je_.L_44979b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzwl_MINUS0x4b0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4497c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_callq_.write_offset(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4497ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_449818(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x488__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1160
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
define %struct.Memory* @routine_jne_.L_44983c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449841(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4496c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4499de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4499d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x38___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 56
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x518__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1304
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x518__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x520__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1312
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4498ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 56
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449922(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44995a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_449992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4499c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4499cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449867(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jbe_.L_449c9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449a1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_449b89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__MINUS0x4d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 100
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
define %struct.Memory* @routine_jae_.L_449b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_449a86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4c8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4d0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.parse_skey_info(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_449aae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4c8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x528__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1320
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4c0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movq_MINUS0x528__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x538__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1336
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 96
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
define %struct.Memory* @routine_je_.L_449b28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_449b65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449b6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449a45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449c92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_449c8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x540__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1344
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x548__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1352
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x540__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x550__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1360
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_449c3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_449c7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_449c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_449b90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_addq__0x560___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1376
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1377
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
