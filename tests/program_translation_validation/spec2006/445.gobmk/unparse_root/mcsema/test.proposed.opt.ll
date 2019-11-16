; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99c0c8_type = type <{ [4 x i8] }>
%G__0x579c47_type = type <{ [8 x i8] }>
%G__0x579c4d_type = type <{ [8 x i8] }>
%G__0x579ca8_type = type <{ [8 x i8] }>
%G__0x579cd0_type = type <{ [8 x i8] }>
%G__0x579cf3_type = type <{ [8 x i8] }>
%G__0x579dad_type = type <{ [8 x i8] }>
%G__0x579db0_type = type <{ [8 x i8] }>
%G__0x579db6_type = type <{ [8 x i8] }>
%G__0x579db9_type = type <{ [8 x i8] }>
%G__0x579dbc_type = type <{ [8 x i8] }>
%G__0x579dbf_type = type <{ [8 x i8] }>
%G__0x579dc2_type = type <{ [8 x i8] }>
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
@G_0x99c0c8 = local_unnamed_addr global %G_0x99c0c8_type zeroinitializer
@G__0x579c47 = global %G__0x579c47_type zeroinitializer
@G__0x579c4d = global %G__0x579c4d_type zeroinitializer
@G__0x579ca8 = global %G__0x579ca8_type zeroinitializer
@G__0x579cd0 = global %G__0x579cd0_type zeroinitializer
@G__0x579cf3 = global %G__0x579cf3_type zeroinitializer
@G__0x579dad = global %G__0x579dad_type zeroinitializer
@G__0x579db0 = global %G__0x579db0_type zeroinitializer
@G__0x579db6 = global %G__0x579db6_type zeroinitializer
@G__0x579db9 = global %G__0x579db9_type zeroinitializer
@G__0x579dbc = global %G__0x579dbc_type zeroinitializer
@G__0x579dbf = global %G__0x579dbf_type zeroinitializer
@G__0x579dc2 = global %G__0x579dc2_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_403c60.sgf_putc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404300.sgfHasProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404010.sgfPrintRemainingProperties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @unparse_root(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 59, i64* %RAX.i, align 8
  %RDI.i186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i186, align 8
  %42 = add i64 %10, 16
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i183, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RSI.i183, align 8
  %EAX.i177 = bitcast %union.anon* %39 to i32*
  %56 = load i32, i32* %EAX.i177, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RDI.i186, align 8
  %58 = add i64 %52, -181
  %59 = add i64 %52, 11
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %59, i64* %62, align 8
  store i64 %61, i64* %6, align 8
  store i64 %58, i64* %3, align 8
  %call2_403d1b = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* %0, i64 %58, %struct.Memory* %2)
  %63 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579cf3_type* @G__0x579cf3 to i64), i64* %RSI.i183, align 8
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -16
  %66 = add i64 %63, 14
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RDI.i186, align 8
  %69 = add i64 %63, 1504
  %70 = add i64 %63, 19
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  %call2_403d2e = tail call %struct.Memory* @sub_404300.sgfHasProperty(%struct.State* %0, i64 %69, %struct.Memory* %call2_403d1b)
  %74 = load i32, i32* %EAX.i177, align 4
  %75 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %76 = and i32 %74, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %81 = icmp eq i32 %74, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i32 %74, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %81, i64 37, i64 9
  %85 = add i64 %75, %.v
  store i64 %85, i64* %3, align 8
  br i1 %81, label %block_.L_403d58, label %block_403d3c

block_403d3c:                                     ; preds = %entry
  %RDX.i165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x579cf3_type* @G__0x579cf3 to i64), i64* %RDX.i165, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -8
  %88 = add i64 %85, 14
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RDI.i186, align 8
  %91 = add i64 %86, -16
  %92 = add i64 %85, 18
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RSI.i183, align 8
  %95 = add i64 %85, 564
  %96 = add i64 %85, 23
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %6, align 8
  store i64 %95, i64* %3, align 8
  %call2_403d4e = tail call %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* nonnull %0, i64 %95, %struct.Memory* %call2_403d2e)
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 44
  store i64 %101, i64* %3, align 8
  br label %block_.L_403d7f

block_.L_403d58:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x579db0_type* @G__0x579db0 to i64), i64* %RDI.i186, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -8
  %104 = add i64 %85, 14
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RSI.i183, align 8
  %107 = add i64 %85, -11512
  %108 = add i64 %85, 19
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111, align 8
  store i64 %110, i64* %6, align 8
  store i64 %107, i64* %3, align 8
  %112 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %call2_403d2e)
  %RCX.i146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* bitcast (%G_0x99c0c8_type* @G_0x99c0c8 to i32*), align 8
  %115 = add i32 %114, 5
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RCX.i146, align 8
  %117 = icmp ugt i32 %114, -6
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %14, align 1
  %119 = and i32 %115, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %21, align 1
  %124 = xor i32 %115, %114
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %26, align 1
  %128 = icmp eq i32 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %29, align 1
  %130 = lshr i32 %115, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %32, align 1
  %132 = lshr i32 %114, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %38, align 1
  store i32 %115, i32* bitcast (%G_0x99c0c8_type* @G_0x99c0c8 to i32*), align 8
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -20
  %139 = load i32, i32* %EAX.i177, align 4
  %140 = add i64 %113, 20
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %141, align 4
  %.pre = load i64, i64* %3, align 8
  %.pre1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_403d7f

block_.L_403d7f:                                  ; preds = %block_.L_403d58, %block_403d3c
  %RDX.i140.pre-phi = phi i64* [ %.pre1, %block_.L_403d58 ], [ %RDX.i165, %block_403d3c ]
  %142 = phi i64 [ %.pre, %block_.L_403d58 ], [ %101, %block_403d3c ]
  %MEMORY.0 = phi %struct.Memory* [ %112, %block_.L_403d58 ], [ %call2_403d4e, %block_403d3c ]
  store i64 ptrtoint (%G__0x579cd0_type* @G__0x579cd0 to i64), i64* %RDX.i140.pre-phi, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -8
  %145 = add i64 %142, 14
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RDI.i186, align 8
  %148 = add i64 %143, -16
  %149 = add i64 %142, 18
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RSI.i183, align 8
  %152 = add i64 %142, 497
  %153 = add i64 %142, 23
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156, align 8
  store i64 %155, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  %call2_403d91 = tail call %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* nonnull %0, i64 %152, %struct.Memory* %MEMORY.0)
  %157 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -8
  %160 = add i64 %157, 9
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RSI.i183, align 8
  %163 = add i64 %157, -310
  %164 = add i64 %157, 14
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  %call2_403d9f = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %163, %struct.Memory* %call2_403d91)
  %168 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RDX.i140.pre-phi, align 8
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -8
  %171 = add i64 %168, 14
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RDI.i186, align 8
  %174 = add i64 %169, -16
  %175 = add i64 %168, 18
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RSI.i183, align 8
  %178 = add i64 %168, 460
  %179 = add i64 %168, 23
  %180 = load i64, i64* %6, align 8
  %181 = add i64 %180, -8
  %182 = inttoptr i64 %181 to i64*
  store i64 %179, i64* %182, align 8
  store i64 %181, i64* %6, align 8
  store i64 %178, i64* %3, align 8
  %call2_403db6 = tail call %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* nonnull %0, i64 %178, %struct.Memory* %call2_403d9f)
  %183 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -8
  %186 = add i64 %183, 9
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RSI.i183, align 8
  %189 = add i64 %183, -347
  %190 = add i64 %183, 14
  %191 = load i64, i64* %6, align 8
  %192 = add i64 %191, -8
  %193 = inttoptr i64 %192 to i64*
  store i64 %190, i64* %193, align 8
  store i64 %192, i64* %6, align 8
  store i64 %189, i64* %3, align 8
  %call2_403dc4 = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %189, %struct.Memory* %call2_403db6)
  %194 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579ca8_type* @G__0x579ca8 to i64), i64* %RDX.i140.pre-phi, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -8
  %197 = add i64 %194, 14
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDI.i186, align 8
  %200 = add i64 %195, -16
  %201 = add i64 %194, 18
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RSI.i183, align 8
  %204 = add i64 %194, 423
  %205 = add i64 %194, 23
  %206 = load i64, i64* %6, align 8
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %6, align 8
  store i64 %204, i64* %3, align 8
  %call2_403ddb = tail call %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* nonnull %0, i64 %204, %struct.Memory* %call2_403dc4)
  %209 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -8
  %212 = add i64 %209, 9
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RSI.i183, align 8
  %215 = add i64 %209, -384
  %216 = add i64 %209, 14
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %216, i64* %219, align 8
  store i64 %218, i64* %6, align 8
  store i64 %215, i64* %3, align 8
  %call2_403de9 = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %215, %struct.Memory* %call2_403ddb)
  %220 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579db6_type* @G__0x579db6 to i64), i64* %RDX.i140.pre-phi, align 8
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -8
  %223 = add i64 %220, 14
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RDI.i186, align 8
  %226 = add i64 %221, -16
  %227 = add i64 %220, 18
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RSI.i183, align 8
  %230 = add i64 %220, 386
  %231 = add i64 %220, 23
  %232 = load i64, i64* %6, align 8
  %233 = add i64 %232, -8
  %234 = inttoptr i64 %233 to i64*
  store i64 %231, i64* %234, align 8
  store i64 %233, i64* %6, align 8
  store i64 %230, i64* %3, align 8
  %call2_403e00 = tail call %struct.Memory* @sub_403f70.sgfPrintCharProperty(%struct.State* nonnull %0, i64 %230, %struct.Memory* %call2_403de9)
  %235 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -8
  %238 = add i64 %235, 9
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RSI.i183, align 8
  %241 = add i64 %235, -421
  %242 = add i64 %235, 14
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %6, align 8
  store i64 %241, i64* %3, align 8
  %call2_403e0e = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %241, %struct.Memory* %call2_403e00)
  %246 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579db9_type* @G__0x579db9 to i64), i64* %RDX.i140.pre-phi, align 8
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -8
  %249 = add i64 %246, 14
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RDI.i186, align 8
  %252 = add i64 %247, -16
  %253 = add i64 %246, 18
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RSI.i183, align 8
  %256 = add i64 %246, 429
  %257 = add i64 %246, 23
  %258 = load i64, i64* %6, align 8
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %257, i64* %260, align 8
  store i64 %259, i64* %6, align 8
  store i64 %256, i64* %3, align 8
  %call2_403e25 = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %256, %struct.Memory* %call2_403e0e)
  %261 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579dbc_type* @G__0x579dbc to i64), i64* %RDX.i140.pre-phi, align 8
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -8
  %264 = add i64 %261, 14
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RDI.i186, align 8
  %267 = add i64 %262, -16
  %268 = add i64 %261, 18
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RSI.i183, align 8
  %271 = add i64 %261, 406
  %272 = add i64 %261, 23
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275, align 8
  store i64 %274, i64* %6, align 8
  store i64 %271, i64* %3, align 8
  %call2_403e3c = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %271, %struct.Memory* %call2_403e25)
  %276 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -8
  %279 = add i64 %276, 9
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RSI.i183, align 8
  %282 = add i64 %276, -481
  %283 = add i64 %276, 14
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  store i64 %285, i64* %6, align 8
  store i64 %282, i64* %3, align 8
  %call2_403e4a = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %282, %struct.Memory* %call2_403e3c)
  %287 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579dbf_type* @G__0x579dbf to i64), i64* %RDX.i140.pre-phi, align 8
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -8
  %290 = add i64 %287, 14
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RDI.i186, align 8
  %293 = add i64 %288, -16
  %294 = add i64 %287, 18
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RSI.i183, align 8
  %297 = add i64 %287, 369
  %298 = add i64 %287, 23
  %299 = load i64, i64* %6, align 8
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %6, align 8
  store i64 %297, i64* %3, align 8
  %call2_403e61 = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %297, %struct.Memory* %call2_403e4a)
  %302 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579dc2_type* @G__0x579dc2 to i64), i64* %RDX.i140.pre-phi, align 8
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -8
  %305 = add i64 %302, 14
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RDI.i186, align 8
  %308 = add i64 %303, -16
  %309 = add i64 %302, 18
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RSI.i183, align 8
  %312 = add i64 %302, 346
  %313 = add i64 %302, 23
  %314 = load i64, i64* %6, align 8
  %315 = add i64 %314, -8
  %316 = inttoptr i64 %315 to i64*
  store i64 %313, i64* %316, align 8
  store i64 %315, i64* %6, align 8
  store i64 %312, i64* %3, align 8
  %call2_403e78 = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %312, %struct.Memory* %call2_403e61)
  %317 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -8
  %320 = add i64 %317, 9
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RSI.i183, align 8
  %323 = add i64 %317, -541
  %324 = add i64 %317, 14
  %325 = load i64, i64* %6, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8
  store i64 %323, i64* %3, align 8
  %call2_403e86 = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %323, %struct.Memory* %call2_403e78)
  %328 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579dad_type* @G__0x579dad to i64), i64* %RDX.i140.pre-phi, align 8
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -8
  %331 = add i64 %328, 14
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RDI.i186, align 8
  %334 = add i64 %329, -16
  %335 = add i64 %328, 18
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RSI.i183, align 8
  %338 = add i64 %328, 309
  %339 = add i64 %328, 23
  %340 = load i64, i64* %6, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %339, i64* %342, align 8
  store i64 %341, i64* %6, align 8
  store i64 %338, i64* %3, align 8
  %call2_403e9d = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %338, %struct.Memory* %call2_403e86)
  %343 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579c4d_type* @G__0x579c4d to i64), i64* %RDX.i140.pre-phi, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -8
  %346 = add i64 %343, 14
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RDI.i186, align 8
  %349 = add i64 %344, -16
  %350 = add i64 %343, 18
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RSI.i183, align 8
  %353 = add i64 %343, 286
  %354 = add i64 %343, 23
  %355 = load i64, i64* %6, align 8
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %6, align 8
  store i64 %353, i64* %3, align 8
  %call2_403eb4 = tail call %struct.Memory* @sub_403fc0.sgfPrintCommentProperty(%struct.State* nonnull %0, i64 %353, %struct.Memory* %call2_403e9d)
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -8
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 4
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RDI.i186, align 8
  %364 = add i64 %358, -16
  %365 = add i64 %360, 8
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RSI.i183, align 8
  %368 = add i64 %360, 343
  %369 = add i64 %360, 13
  %370 = load i64, i64* %6, align 8
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372, align 8
  store i64 %371, i64* %6, align 8
  store i64 %368, i64* %3, align 8
  %call2_403ec1 = tail call %struct.Memory* @sub_404010.sgfPrintRemainingProperties(%struct.State* nonnull %0, i64 %368, %struct.Memory* %call2_403eb4)
  %373 = load i64, i64* %3, align 8
  store i64 10, i64* %RDI.i186, align 8
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -8
  %376 = add i64 %373, 9
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RSI.i183, align 8
  %379 = add i64 %373, -614
  %380 = add i64 %373, 14
  %381 = load i64, i64* %6, align 8
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383, align 8
  store i64 %382, i64* %6, align 8
  store i64 %379, i64* %3, align 8
  %call2_403ecf = tail call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* nonnull %0, i64 %379, %struct.Memory* %call2_403ec1)
  %384 = load i64, i64* %6, align 8
  %385 = load i64, i64* %3, align 8
  %386 = add i64 %384, 32
  store i64 %386, i64* %6, align 8
  %387 = icmp ugt i64 %384, -33
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %14, align 1
  %389 = trunc i64 %386 to i32
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %21, align 1
  %395 = xor i64 %386, %384
  %396 = lshr i64 %395, 4
  %397 = trunc i64 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %26, align 1
  %399 = icmp eq i64 %386, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %29, align 1
  %401 = lshr i64 %386, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %32, align 1
  %403 = lshr i64 %384, 63
  %404 = xor i64 %401, %403
  %405 = add nuw nsw i64 %404, %401
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %38, align 1
  %408 = add i64 %385, 5
  store i64 %408, i64* %3, align 8
  %409 = add i64 %384, 40
  %410 = inttoptr i64 %386 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RBP.i, align 8
  store i64 %409, i64* %6, align 8
  %412 = add i64 %385, 6
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %409 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %3, align 8
  %415 = add i64 %384, 48
  store i64 %415, i64* %6, align 8
  ret %struct.Memory* %call2_403ecf
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
define %struct.Memory* @routine_movl__0x3b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 59, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.sgf_putc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x579cf3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579cf3_type* @G__0x579cf3 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.sgfHasProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403d58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x579cf3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579cf3_type* @G__0x579cf3 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfPrintCharProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403d7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579db0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579db0_type* @G__0x579db0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fputs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x99c0c8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c0c8_type* @G_0x99c0c8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -6
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
define %struct.Memory* @routine_movl__ecx__0x99c0c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c0c8_type* @G_0x99c0c8 to i32*), align 8
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
define %struct.Memory* @routine_movq__0x579cd0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579cd0_type* @G__0x579cd0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579c47___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579ca8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579ca8_type* @G__0x579ca8 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579db6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579db6_type* @G__0x579db6 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579db9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579db9_type* @G__0x579db9 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfPrintCommentProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x579dbc___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579dbc_type* @G__0x579dbc to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579dbf___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579dbf_type* @G__0x579dbf to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579dc2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579dc2_type* @G__0x579dc2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579dad___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579dad_type* @G__0x579dad to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579c4d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c4d_type* @G__0x579c4d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfPrintRemainingProperties(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
