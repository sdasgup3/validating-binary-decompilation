; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x661538_type = type <{ [8 x i8] }>
%G__0x676d90_type = type <{ [8 x i8] }>
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
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x661538 = global %G__0x661538_type zeroinitializer
@G__0x676d90 = global %G__0x676d90_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fwrite(i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @WriteBinHMM(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -408
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 400
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
  %RAX.i130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0x661538_type* @G__0x661538 to i64), i64* %RAX.i130, align 8
  %RCX.i178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 4, i64* %RDX.i216, align 8
  store i64 1, i64* %RCX.i178, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 1, i64* %40, align 8
  %RDI.i322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %41 = add i64 %7, -16
  %42 = load i64, i64* %RDI.i322, align 8
  %43 = add i64 %10, 39
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %RSI.i367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i367, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RCX.i178, align 8
  %57 = load i64, i64* %RAX.i130, align 8
  store i64 %57, i64* %RDI.i322, align 8
  %58 = load i64, i64* %RDX.i216, align 8
  store i64 %58, i64* %RSI.i367, align 8
  %59 = load i64, i64* %40, align 8
  store i64 %59, i64* %RDX.i216, align 8
  %60 = add i64 %53, -138572
  %61 = add i64 %53, 18
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %61, i64* %64, align 8
  store i64 %63, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  %65 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %2)
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %67 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %66, align 8
  store i64 1, i64* %RDX.i216, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -16
  %70 = add i64 %67, 22
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 456
  store i64 %73, i64* %RCX.i178, align 8
  %74 = icmp ugt i64 %72, -457
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %14, align 1
  %76 = trunc i64 %73 to i32
  %77 = and i32 %76, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %21, align 1
  %82 = xor i64 %73, %72
  %83 = lshr i64 %82, 4
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %27, align 1
  %86 = icmp eq i64 %73, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %30, align 1
  %88 = lshr i64 %73, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %33, align 1
  %90 = lshr i64 %72, 63
  %91 = xor i64 %88, %90
  %92 = add nuw nsw i64 %91, %88
  %93 = icmp eq i64 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %39, align 1
  %95 = add i64 %68, -8
  %96 = add i64 %67, 33
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %68, -32
  %100 = add i64 %67, 37
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i64*
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %RCX.i178, align 8
  %103 = load i64, i64* %3, align 8
  store i64 %102, i64* %RDI.i322, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -32
  %106 = add i64 %103, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RCX.i178, align 8
  %109 = add i64 %104, -40
  %110 = load i64, i64* %RAX.i130, align 8
  %111 = add i64 %103, 11
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, -138638
  %115 = add i64 %113, 5
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %119 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %65)
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -8
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %121 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RDI.i322, align 8
  %126 = add i64 %120, -16
  %127 = add i64 %122, 8
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %RCX.i178, align 8
  %130 = add i64 %122, 11
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RSI.i367, align 8
  %133 = add i64 %120, -48
  %134 = load i64, i64* %RAX.i130, align 8
  %135 = add i64 %122, 15
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1854
  %139 = add i64 %137, 5
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %call2_423482 = tail call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64 %138, %struct.Memory* %119)
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -16
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RAX.i130, align 8
  %149 = add i64 %148, 456
  %150 = add i64 %145, 11
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 512
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %66, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %155 = icmp eq i32 %153, 0
  %.lobit44 = lshr exact i32 %153, 9
  %156 = trunc i32 %.lobit44 to i8
  %157 = xor i8 %156, 1
  store i8 %157, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %155, i64 45, i64 28
  %158 = add i64 %145, %.v
  store i64 %158, i64* %3, align 8
  br i1 %155, label %block_.L_4234b4, label %block_4234a3

block_4234a3:                                     ; preds = %entry
  %159 = add i64 %143, -8
  %160 = add i64 %158, 4
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RDI.i322, align 8
  %163 = add i64 %158, 8
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %147, align 8
  store i64 %164, i64* %RAX.i130, align 8
  %165 = add i64 %164, 8
  %166 = add i64 %158, 12
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RSI.i367, align 8
  %169 = add i64 %158, 1821
  %170 = add i64 %158, 17
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %6, align 8
  store i64 %169, i64* %3, align 8
  %call2_4234af = tail call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* nonnull %0, i64 %169, %struct.Memory* %call2_423482)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_4234b4

block_.L_4234b4:                                  ; preds = %block_4234a3, %entry
  %174 = phi i64 [ %158, %entry ], [ %.pre26, %block_4234a3 ]
  %175 = phi i64 [ %143, %entry ], [ %.pre, %block_4234a3 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_423482, %entry ], [ %call2_4234af, %block_4234a3 ]
  %176 = add i64 %175, -16
  %177 = add i64 %174, 4
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX.i130, align 8
  %180 = add i64 %179, 456
  %181 = add i64 %174, 10
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 2
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RCX.i178, align 8
  store i8 0, i8* %14, align 1
  %186 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %187 = trunc i32 %186 to i8
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %189 = icmp eq i32 %184, 0
  %.lobit45 = lshr exact i32 %184, 1
  %190 = trunc i32 %.lobit45 to i8
  %191 = xor i8 %190, 1
  store i8 %191, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v53 = select i1 %189, i64 39, i64 22
  %192 = add i64 %174, %.v53
  store i64 %192, i64* %3, align 8
  br i1 %189, label %block_.L_4234db, label %block_4234ca

block_4234ca:                                     ; preds = %block_.L_4234b4
  %193 = add i64 %175, -8
  %194 = add i64 %192, 4
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RDI.i322, align 8
  %197 = add i64 %192, 8
  store i64 %197, i64* %3, align 8
  %198 = load i64, i64* %178, align 8
  store i64 %198, i64* %RAX.i130, align 8
  %199 = add i64 %198, 16
  %200 = add i64 %192, 12
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RSI.i367, align 8
  %203 = add i64 %192, 1782
  %204 = add i64 %192, 17
  %205 = load i64, i64* %6, align 8
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207, align 8
  store i64 %206, i64* %6, align 8
  store i64 %203, i64* %3, align 8
  %call2_4234d6 = tail call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* nonnull %0, i64 %203, %struct.Memory* %MEMORY.0)
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4234db

block_.L_4234db:                                  ; preds = %block_4234ca, %block_.L_4234b4
  %208 = phi i64 [ %175, %block_.L_4234b4 ], [ %.pre28, %block_4234ca ]
  %209 = phi i64 [ %192, %block_.L_4234b4 ], [ %.pre27, %block_4234ca ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4234b4 ], [ %call2_4234d6, %block_4234ca ]
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %210 = add i64 %208, -16
  %211 = add i64 %209, 18
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 136
  store i64 %214, i64* %RCX.i178, align 8
  %215 = icmp ugt i64 %213, -137
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %14, align 1
  %217 = trunc i64 %214 to i32
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %21, align 1
  %223 = xor i64 %214, %213
  %224 = lshr i64 %223, 4
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %27, align 1
  %227 = icmp eq i64 %214, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i64 %214, 63
  %230 = trunc i64 %229 to i8
  store i8 %230, i8* %33, align 1
  %231 = lshr i64 %213, 63
  %232 = xor i64 %229, %231
  %233 = add nuw nsw i64 %232, %229
  %234 = icmp eq i64 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %39, align 1
  %236 = add i64 %208, -8
  %237 = add i64 %209, 29
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %208, -56
  %241 = add i64 %209, 33
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  store i64 %239, i64* %242, align 8
  %243 = load i64, i64* %RCX.i178, align 8
  %244 = load i64, i64* %3, align 8
  store i64 %243, i64* %RDI.i322, align 8
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -56
  %247 = add i64 %244, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RCX.i178, align 8
  %250 = add i64 %244, -138780
  %251 = add i64 %244, 12
  %252 = load i64, i64* %6, align 8
  %253 = add i64 %252, -8
  %254 = inttoptr i64 %253 to i64*
  store i64 %251, i64* %254, align 8
  store i64 %253, i64* %6, align 8
  store i64 %250, i64* %3, align 8
  %255 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.1)
  %256 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x676d90_type* @G__0x676d90 to i64), i64* %RCX.i178, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -8
  %259 = add i64 %256, 32
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %257, -64
  %263 = add i64 %256, 36
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i64*
  store i64 %261, i64* %264, align 8
  %265 = load i64, i64* %RCX.i178, align 8
  %266 = load i64, i64* %3, align 8
  store i64 %265, i64* %RDI.i322, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -64
  %269 = add i64 %266, 7
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RCX.i178, align 8
  %272 = add i64 %267, -72
  %273 = load i64, i64* %RAX.i130, align 8
  %274 = add i64 %266, 11
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i64*
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, -138839
  %278 = add i64 %276, 5
  %279 = load i64, i64* %6, align 8
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %6, align 8
  store i64 %277, i64* %3, align 8
  %282 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %255)
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -16
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 4
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %RCX.i178, align 8
  %289 = add i64 %288, 456
  %290 = add i64 %285, 11
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %40, align 8
  %295 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %296 = trunc i32 %295 to i8
  store i8 0, i8* %14, align 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit46 = lshr exact i32 %293, 2
  %298 = trunc i32 %.lobit46 to i8
  %299 = xor i8 %298, 1
  store i8 %299, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %300 = add i64 %283, -80
  %301 = load i64, i64* %RAX.i130, align 8
  %302 = add i64 %285, 23
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %300 to i64*
  store i64 %301, i64* %303, align 8
  %304 = load i64, i64* %3, align 8
  %305 = load i8, i8* %30, align 1
  %306 = icmp ne i8 %305, 0
  %.v68 = select i1 %306, i64 50, i64 6
  %307 = add i64 %304, %.v68
  store i64 %307, i64* %3, align 8
  %cmpBr_423553 = icmp eq i8 %305, 1
  br i1 %cmpBr_423553, label %block_.L_423585, label %block_423559

block_423559:                                     ; preds = %block_.L_4234db
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RSI.i367, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -16
  %310 = add i64 %307, 11
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RCX.i178, align 8
  %313 = add i64 %312, 24
  %314 = add i64 %307, 15
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDI.i322, align 8
  %317 = add i64 %307, 19
  store i64 %317, i64* %3, align 8
  %318 = load i64, i64* %311, align 8
  store i64 %318, i64* %RCX.i178, align 8
  %319 = add i64 %318, 136
  %320 = add i64 %307, 25
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, 1
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i130, align 8
  %325 = icmp eq i32 %322, -1
  %326 = icmp eq i32 %323, 0
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = and i32 %323, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i32 %323, %322
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = zext i1 %326 to i8
  store i8 %338, i8* %30, align 1
  %339 = lshr i32 %323, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %33, align 1
  %341 = lshr i32 %322, 31
  %342 = xor i32 %339, %341
  %343 = add nuw nsw i32 %342, %339
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %39, align 1
  %346 = sext i32 %323 to i64
  store i64 %346, i64* %RDX.i216, align 8
  %347 = add i64 %308, -8
  %348 = add i64 %307, 35
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RCX.i178, align 8
  %351 = add i64 %307, -138873
  %352 = add i64 %307, 40
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %356 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %282)
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -88
  %359 = load i64, i64* %RAX.i130, align 8
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 4
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %358 to i64*
  store i64 %359, i64* %362, align 8
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_423585

block_.L_423585:                                  ; preds = %block_423559, %block_.L_4234db
  %363 = phi i64 [ %307, %block_.L_4234db ], [ %.pre29, %block_423559 ]
  %MEMORY.2 = phi %struct.Memory* [ %282, %block_.L_4234db ], [ %356, %block_423559 ]
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -16
  %366 = add i64 %363, 4
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RAX.i130, align 8
  %369 = add i64 %368, 456
  %370 = add i64 %363, 10
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %372, 8
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX.i178, align 8
  store i8 0, i8* %14, align 1
  %375 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %376 = trunc i32 %375 to i8
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %378 = icmp eq i32 %373, 0
  %.lobit47 = lshr exact i32 %373, 3
  %379 = trunc i32 %.lobit47 to i8
  %380 = xor i8 %379, 1
  store i8 %380, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v54 = select i1 %378, i64 66, i64 22
  %381 = add i64 %363, %.v54
  store i64 %381, i64* %3, align 8
  br i1 %378, label %block_.L_4235c7, label %block_42359b

block_42359b:                                     ; preds = %block_.L_423585
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RSI.i367, align 8
  %382 = add i64 %381, 11
  store i64 %382, i64* %3, align 8
  %383 = load i64, i64* %367, align 8
  store i64 %383, i64* %RCX.i178, align 8
  %384 = add i64 %383, 32
  %385 = add i64 %381, 15
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RDI.i322, align 8
  %388 = add i64 %381, 19
  store i64 %388, i64* %3, align 8
  %389 = load i64, i64* %367, align 8
  store i64 %389, i64* %RCX.i178, align 8
  %390 = add i64 %389, 136
  %391 = add i64 %381, 25
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, 1
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX.i130, align 8
  %396 = icmp eq i32 %393, -1
  %397 = icmp eq i32 %394, 0
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %14, align 1
  %400 = and i32 %394, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1
  %405 = xor i32 %394, %393
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %27, align 1
  %409 = zext i1 %397 to i8
  store i8 %409, i8* %30, align 1
  %410 = lshr i32 %394, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %33, align 1
  %412 = lshr i32 %393, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %39, align 1
  %417 = sext i32 %394 to i64
  store i64 %417, i64* %RDX.i216, align 8
  %418 = add i64 %364, -8
  %419 = add i64 %381, 35
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RCX.i178, align 8
  %422 = add i64 %381, -138939
  %423 = add i64 %381, 40
  %424 = load i64, i64* %6, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %6, align 8
  store i64 %422, i64* %3, align 8
  %427 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.2)
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -96
  %430 = load i64, i64* %RAX.i130, align 8
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, 4
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %429 to i64*
  store i64 %430, i64* %433, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4235c7

block_.L_4235c7:                                  ; preds = %block_42359b, %block_.L_423585
  %434 = phi i64 [ %381, %block_.L_423585 ], [ %.pre31, %block_42359b ]
  %435 = phi i64 [ %364, %block_.L_423585 ], [ %.pre30, %block_42359b ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_423585 ], [ %427, %block_42359b ]
  %436 = add i64 %435, -16
  %437 = add i64 %434, 4
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX.i130, align 8
  %440 = add i64 %439, 456
  %441 = add i64 %434, 10
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = and i32 %443, 256
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RCX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %446 = icmp eq i32 %444, 0
  %.lobit48 = lshr exact i32 %444, 8
  %447 = trunc i32 %.lobit48 to i8
  %448 = xor i8 %447, 1
  store i8 %448, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v55 = select i1 %446, i64 80, i64 25
  %449 = add i64 %434, %.v55
  store i64 %449, i64* %3, align 8
  br i1 %446, label %block_.L_423617, label %block_4235e0

block_4235e0:                                     ; preds = %block_.L_4235c7
  store i64 4, i64* %RAX.i130, align 8
  store i64 4, i64* %RSI.i367, align 8
  %450 = add i64 %449, 11
  store i64 %450, i64* %3, align 8
  %451 = load i64, i64* %438, align 8
  store i64 %451, i64* %RCX.i178, align 8
  %452 = add i64 %451, 72
  %453 = add i64 %449, 15
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %RCX.i178, align 8
  %456 = add i64 %449, 19
  store i64 %456, i64* %3, align 8
  %457 = load i64, i64* %438, align 8
  store i64 %457, i64* %RDX.i216, align 8
  %458 = add i64 %457, 136
  %459 = add i64 %449, 25
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i130, align 8
  %464 = icmp eq i32 %461, -1
  %465 = icmp eq i32 %462, 0
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %14, align 1
  %468 = and i32 %462, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i32 %462, %461
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %30, align 1
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %33, align 1
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %39, align 1
  %485 = sext i32 %462 to i64
  store i64 %485, i64* %RDX.i216, align 8
  %486 = add i64 %435, -8
  %487 = add i64 %449, 35
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i64*
  %489 = load i64, i64* %488, align 8
  %490 = add i64 %435, -104
  %491 = add i64 %449, 39
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i64*
  store i64 %489, i64* %492, align 8
  %493 = load i64, i64* %RCX.i178, align 8
  %494 = load i64, i64* %3, align 8
  store i64 %493, i64* %RDI.i322, align 8
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -104
  %497 = add i64 %494, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RCX.i178, align 8
  %500 = add i64 %494, -139047
  %501 = add i64 %494, 12
  %502 = load i64, i64* %6, align 8
  %503 = add i64 %502, -8
  %504 = inttoptr i64 %503 to i64*
  store i64 %501, i64* %504, align 8
  store i64 %503, i64* %6, align 8
  store i64 %500, i64* %3, align 8
  %505 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.3)
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -112
  %508 = load i64, i64* %RAX.i130, align 8
  %509 = load i64, i64* %3, align 8
  %510 = add i64 %509, 4
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %507 to i64*
  store i64 %508, i64* %511, align 8
  %.pre32 = load i64, i64* %RBP.i, align 8
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_423617

block_.L_423617:                                  ; preds = %block_4235e0, %block_.L_4235c7
  %512 = phi i64 [ %449, %block_.L_4235c7 ], [ %.pre33, %block_4235e0 ]
  %513 = phi i64 [ %435, %block_.L_4235c7 ], [ %.pre32, %block_4235e0 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_4235c7 ], [ %505, %block_4235e0 ]
  %514 = add i64 %513, -8
  %515 = add i64 %512, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RDI.i322, align 8
  %518 = add i64 %513, -16
  %519 = add i64 %512, 8
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RAX.i130, align 8
  %522 = add i64 %521, 48
  %523 = add i64 %512, 12
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RSI.i367, align 8
  %526 = add i64 %512, 1449
  %527 = add i64 %512, 17
  %528 = load i64, i64* %6, align 8
  %529 = add i64 %528, -8
  %530 = inttoptr i64 %529 to i64*
  store i64 %527, i64* %530, align 8
  store i64 %529, i64* %6, align 8
  store i64 %526, i64* %3, align 8
  %call2_423623 = tail call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* nonnull %0, i64 %526, %struct.Memory* %MEMORY.4)
  %531 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RCX.i178, align 8
  store i64 1, i64* %RDX.i216, align 8
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -16
  %534 = add i64 %531, 18
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  %537 = add i64 %536, 56
  store i64 %537, i64* %RAX.i130, align 8
  %538 = icmp ugt i64 %536, -57
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %14, align 1
  %540 = trunc i64 %537 to i32
  %541 = and i32 %540, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %21, align 1
  %546 = xor i64 %536, 16
  %547 = xor i64 %546, %537
  %548 = lshr i64 %547, 4
  %549 = trunc i64 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %27, align 1
  %551 = icmp eq i64 %537, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %30, align 1
  %553 = lshr i64 %537, 63
  %554 = trunc i64 %553 to i8
  store i8 %554, i8* %33, align 1
  %555 = lshr i64 %536, 63
  %556 = xor i64 %553, %555
  %557 = add nuw nsw i64 %556, %553
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %39, align 1
  %560 = add i64 %532, -8
  %561 = add i64 %531, 26
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RCX.i178, align 8
  store i64 %537, i64* %RDI.i322, align 8
  %564 = add i64 %531, -139080
  %565 = add i64 %531, 34
  %566 = load i64, i64* %6, align 8
  %567 = add i64 %566, -8
  %568 = inttoptr i64 %567 to i64*
  store i64 %565, i64* %568, align 8
  store i64 %567, i64* %6, align 8
  store i64 %564, i64* %3, align 8
  %569 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %call2_423623)
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -8
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 4
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RDI.i322, align 8
  %576 = add i64 %570, -16
  %577 = add i64 %572, 8
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RCX.i178, align 8
  %580 = add i64 %579, 64
  %581 = add i64 %572, 12
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RSI.i367, align 8
  %584 = add i64 %570, -120
  %585 = load i64, i64* %RAX.i130, align 8
  %586 = add i64 %572, 16
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %584 to i64*
  store i64 %585, i64* %587, align 8
  %588 = load i64, i64* %3, align 8
  %589 = add i64 %588, 1382
  %590 = add i64 %588, 5
  %591 = load i64, i64* %6, align 8
  %592 = add i64 %591, -8
  %593 = inttoptr i64 %592 to i64*
  store i64 %590, i64* %593, align 8
  store i64 %592, i64* %6, align 8
  store i64 %589, i64* %3, align 8
  %call2_42365a = tail call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* nonnull %0, i64 %589, %struct.Memory* %569)
  %594 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -16
  %597 = add i64 %594, 22
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  %600 = add i64 %599, 80
  store i64 %600, i64* %RAX.i130, align 8
  %601 = icmp ugt i64 %599, -81
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %14, align 1
  %603 = trunc i64 %600 to i32
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %21, align 1
  %609 = xor i64 %599, 16
  %610 = xor i64 %609, %600
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %27, align 1
  %614 = icmp eq i64 %600, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %30, align 1
  %616 = lshr i64 %600, 63
  %617 = trunc i64 %616 to i8
  store i8 %617, i8* %33, align 1
  %618 = lshr i64 %599, 63
  %619 = xor i64 %616, %618
  %620 = add nuw nsw i64 %619, %616
  %621 = icmp eq i64 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %39, align 1
  %623 = add i64 %595, -8
  %624 = add i64 %594, 30
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RCX.i178, align 8
  store i64 %600, i64* %RDI.i322, align 8
  %627 = add i64 %594, -139135
  %628 = add i64 %594, 38
  %629 = load i64, i64* %6, align 8
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %628, i64* %631, align 8
  store i64 %630, i64* %6, align 8
  store i64 %627, i64* %3, align 8
  %632 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %call2_42365a)
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -16
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 4
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %634 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RCX.i178, align 8
  %639 = add i64 %638, 456
  %640 = add i64 %635, 11
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = and i32 %642, 1024
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %40, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit49 = lshr exact i32 %643, 10
  %645 = trunc i32 %.lobit49 to i8
  %646 = xor i8 %645, 1
  store i8 %646, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %647 = add i64 %633, -128
  %648 = load i64, i64* %RAX.i130, align 8
  %649 = add i64 %635, 26
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %647 to i64*
  store i64 %648, i64* %650, align 8
  %651 = load i64, i64* %3, align 8
  %652 = load i8, i8* %30, align 1
  %653 = icmp ne i8 %652, 0
  %.v69 = select i1 %653, i64 120, i64 6
  %654 = add i64 %651, %.v69
  store i64 %654, i64* %3, align 8
  %cmpBr_42369f = icmp eq i8 %652, 1
  br i1 %cmpBr_42369f, label %block_.L_423717, label %block_4236a5

block_4236a5:                                     ; preds = %block_.L_423617
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -16
  %657 = add i64 %654, 18
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i64*
  %659 = load i64, i64* %658, align 8
  %660 = add i64 %659, 112
  store i64 %660, i64* %RCX.i178, align 8
  %661 = icmp ugt i64 %659, -113
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %14, align 1
  %663 = trunc i64 %660 to i32
  %664 = and i32 %663, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %21, align 1
  %669 = xor i64 %659, 16
  %670 = xor i64 %669, %660
  %671 = lshr i64 %670, 4
  %672 = trunc i64 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %27, align 1
  %674 = icmp eq i64 %660, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %30, align 1
  %676 = lshr i64 %660, 63
  %677 = trunc i64 %676 to i8
  store i8 %677, i8* %33, align 1
  %678 = lshr i64 %659, 63
  %679 = xor i64 %676, %678
  %680 = add nuw nsw i64 %679, %676
  %681 = icmp eq i64 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %39, align 1
  %683 = add i64 %655, -8
  %684 = add i64 %654, 26
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  %687 = add i64 %655, -136
  %688 = add i64 %654, 33
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  store i64 %686, i64* %689, align 8
  %690 = load i64, i64* %RCX.i178, align 8
  %691 = load i64, i64* %3, align 8
  store i64 %690, i64* %RDI.i322, align 8
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -136
  %694 = add i64 %691, 10
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RCX.i178, align 8
  %697 = add i64 %691, -139238
  %698 = add i64 %691, 15
  %699 = load i64, i64* %6, align 8
  %700 = add i64 %699, -8
  %701 = inttoptr i64 %700 to i64*
  store i64 %698, i64* %701, align 8
  store i64 %700, i64* %6, align 8
  store i64 %697, i64* %3, align 8
  %702 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %632)
  %703 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -16
  %706 = add i64 %703, 22
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  %709 = add i64 %708, 116
  store i64 %709, i64* %RCX.i178, align 8
  %710 = icmp ugt i64 %708, -117
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %14, align 1
  %712 = trunc i64 %709 to i32
  %713 = and i32 %712, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %21, align 1
  %718 = xor i64 %708, 16
  %719 = xor i64 %718, %709
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %27, align 1
  %723 = icmp eq i64 %709, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %30, align 1
  %725 = lshr i64 %709, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %33, align 1
  %727 = lshr i64 %708, 63
  %728 = xor i64 %725, %727
  %729 = add nuw nsw i64 %728, %725
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %39, align 1
  %732 = add i64 %704, -8
  %733 = add i64 %703, 30
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  %736 = add i64 %704, -144
  %737 = add i64 %703, 37
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i64*
  store i64 %735, i64* %738, align 8
  %739 = load i64, i64* %RCX.i178, align 8
  %740 = load i64, i64* %3, align 8
  store i64 %739, i64* %RDI.i322, align 8
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -144
  %743 = add i64 %740, 10
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RCX.i178, align 8
  %746 = add i64 %741, -152
  %747 = load i64, i64* %RAX.i130, align 8
  %748 = add i64 %740, 17
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %746 to i64*
  store i64 %747, i64* %749, align 8
  %750 = load i64, i64* %3, align 8
  %751 = add i64 %750, -139307
  %752 = add i64 %750, 5
  %753 = load i64, i64* %6, align 8
  %754 = add i64 %753, -8
  %755 = inttoptr i64 %754 to i64*
  store i64 %752, i64* %755, align 8
  store i64 %754, i64* %6, align 8
  store i64 %751, i64* %3, align 8
  %756 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %702)
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -160
  %759 = load i64, i64* %RAX.i130, align 8
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, 7
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %758 to i64*
  store i64 %759, i64* %762, align 8
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_423717

block_.L_423717:                                  ; preds = %block_4236a5, %block_.L_423617
  %763 = phi i64 [ %654, %block_.L_423617 ], [ %.pre34, %block_4236a5 ]
  %MEMORY.5 = phi %struct.Memory* [ %632, %block_.L_423617 ], [ %756, %block_4236a5 ]
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -16
  %766 = add i64 %763, 4
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i130, align 8
  %769 = add i64 %768, 456
  %770 = add i64 %763, 10
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = and i32 %772, 2048
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RCX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %775 = icmp eq i32 %773, 0
  %.lobit50 = lshr exact i32 %773, 11
  %776 = trunc i32 %.lobit50 to i8
  %777 = xor i8 %776, 1
  store i8 %777, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v56 = select i1 %775, i64 139, i64 25
  %778 = add i64 %763, %.v56
  store i64 %778, i64* %3, align 8
  br i1 %775, label %block_.L_4237a2, label %block_423730

block_423730:                                     ; preds = %block_.L_423717
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %779 = add i64 %778, 18
  store i64 %779, i64* %3, align 8
  %780 = load i64, i64* %767, align 8
  %781 = add i64 %780, 120
  store i64 %781, i64* %RCX.i178, align 8
  %782 = icmp ugt i64 %780, -121
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %14, align 1
  %784 = trunc i64 %781 to i32
  %785 = and i32 %784, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  %790 = xor i64 %780, 16
  %791 = xor i64 %790, %781
  %792 = lshr i64 %791, 4
  %793 = trunc i64 %792 to i8
  %794 = and i8 %793, 1
  store i8 %794, i8* %27, align 1
  %795 = icmp eq i64 %781, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %30, align 1
  %797 = lshr i64 %781, 63
  %798 = trunc i64 %797 to i8
  store i8 %798, i8* %33, align 1
  %799 = lshr i64 %780, 63
  %800 = xor i64 %797, %799
  %801 = add nuw nsw i64 %800, %797
  %802 = icmp eq i64 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %39, align 1
  %804 = add i64 %764, -8
  %805 = add i64 %778, 26
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  %807 = load i64, i64* %806, align 8
  %808 = add i64 %764, -168
  %809 = add i64 %778, 33
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i64*
  store i64 %807, i64* %810, align 8
  %811 = load i64, i64* %RCX.i178, align 8
  %812 = load i64, i64* %3, align 8
  store i64 %811, i64* %RDI.i322, align 8
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -168
  %815 = add i64 %812, 10
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RCX.i178, align 8
  %818 = add i64 %812, -139377
  %819 = add i64 %812, 15
  %820 = load i64, i64* %6, align 8
  %821 = add i64 %820, -8
  %822 = inttoptr i64 %821 to i64*
  store i64 %819, i64* %822, align 8
  store i64 %821, i64* %6, align 8
  store i64 %818, i64* %3, align 8
  %823 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.5)
  %824 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -16
  %827 = add i64 %824, 22
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i64*
  %829 = load i64, i64* %828, align 8
  %830 = add i64 %829, 124
  store i64 %830, i64* %RCX.i178, align 8
  %831 = icmp ugt i64 %829, -125
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %14, align 1
  %833 = trunc i64 %830 to i32
  %834 = and i32 %833, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i64 %829, 16
  %840 = xor i64 %839, %830
  %841 = lshr i64 %840, 4
  %842 = trunc i64 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %27, align 1
  %844 = icmp eq i64 %830, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %30, align 1
  %846 = lshr i64 %830, 63
  %847 = trunc i64 %846 to i8
  store i8 %847, i8* %33, align 1
  %848 = lshr i64 %829, 63
  %849 = xor i64 %846, %848
  %850 = add nuw nsw i64 %849, %846
  %851 = icmp eq i64 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %39, align 1
  %853 = add i64 %825, -8
  %854 = add i64 %824, 30
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  %857 = add i64 %825, -176
  %858 = add i64 %824, 37
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  store i64 %856, i64* %859, align 8
  %860 = load i64, i64* %RCX.i178, align 8
  %861 = load i64, i64* %3, align 8
  store i64 %860, i64* %RDI.i322, align 8
  %862 = load i64, i64* %RBP.i, align 8
  %863 = add i64 %862, -176
  %864 = add i64 %861, 10
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RCX.i178, align 8
  %867 = add i64 %862, -184
  %868 = load i64, i64* %RAX.i130, align 8
  %869 = add i64 %861, 17
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %867 to i64*
  store i64 %868, i64* %870, align 8
  %871 = load i64, i64* %3, align 8
  %872 = add i64 %871, -139446
  %873 = add i64 %871, 5
  %874 = load i64, i64* %6, align 8
  %875 = add i64 %874, -8
  %876 = inttoptr i64 %875 to i64*
  store i64 %873, i64* %876, align 8
  store i64 %875, i64* %6, align 8
  store i64 %872, i64* %3, align 8
  %877 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %823)
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -192
  %880 = load i64, i64* %RAX.i130, align 8
  %881 = load i64, i64* %3, align 8
  %882 = add i64 %881, 7
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %879 to i64*
  store i64 %880, i64* %883, align 8
  %.pre35 = load i64, i64* %RBP.i, align 8
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4237a2

block_.L_4237a2:                                  ; preds = %block_423730, %block_.L_423717
  %884 = phi i64 [ %778, %block_.L_423717 ], [ %.pre36, %block_423730 ]
  %885 = phi i64 [ %764, %block_.L_423717 ], [ %.pre35, %block_423730 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_423717 ], [ %877, %block_423730 ]
  %886 = add i64 %885, -16
  %887 = add i64 %884, 4
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %RAX.i130, align 8
  %890 = add i64 %889, 456
  %891 = add i64 %884, 10
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = and i32 %893, 4096
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RCX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %896 = icmp eq i32 %894, 0
  %.lobit51 = lshr exact i32 %894, 12
  %897 = trunc i32 %.lobit51 to i8
  %898 = xor i8 %897, 1
  store i8 %898, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v57 = select i1 %896, i64 145, i64 25
  %899 = add i64 %884, %.v57
  store i64 %899, i64* %3, align 8
  br i1 %896, label %block_.L_423833, label %block_4237bb

block_4237bb:                                     ; preds = %block_.L_4237a2
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %900 = add i64 %899, 18
  store i64 %900, i64* %3, align 8
  %901 = load i64, i64* %888, align 8
  %902 = add i64 %901, 128
  store i64 %902, i64* %RCX.i178, align 8
  %903 = icmp ugt i64 %901, -129
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %14, align 1
  %905 = trunc i64 %902 to i32
  %906 = and i32 %905, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i64 %902, %901
  %912 = lshr i64 %911, 4
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %27, align 1
  %915 = icmp eq i64 %902, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %30, align 1
  %917 = lshr i64 %902, 63
  %918 = trunc i64 %917 to i8
  store i8 %918, i8* %33, align 1
  %919 = lshr i64 %901, 63
  %920 = xor i64 %917, %919
  %921 = add nuw nsw i64 %920, %917
  %922 = icmp eq i64 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %39, align 1
  %924 = add i64 %885, -8
  %925 = add i64 %899, 29
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i64*
  %927 = load i64, i64* %926, align 8
  %928 = add i64 %885, -200
  %929 = add i64 %899, 36
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i64*
  store i64 %927, i64* %930, align 8
  %931 = load i64, i64* %RCX.i178, align 8
  %932 = load i64, i64* %3, align 8
  store i64 %931, i64* %RDI.i322, align 8
  %933 = load i64, i64* %RBP.i, align 8
  %934 = add i64 %933, -200
  %935 = add i64 %932, 10
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %RCX.i178, align 8
  %938 = add i64 %932, -139519
  %939 = add i64 %932, 15
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %6, align 8
  store i64 %938, i64* %3, align 8
  %943 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.6)
  %944 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -16
  %947 = add i64 %944, 22
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i64*
  %949 = load i64, i64* %948, align 8
  %950 = add i64 %949, 132
  store i64 %950, i64* %RCX.i178, align 8
  %951 = icmp ugt i64 %949, -133
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %14, align 1
  %953 = trunc i64 %950 to i32
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i64 %950, %949
  %960 = lshr i64 %959, 4
  %961 = trunc i64 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %27, align 1
  %963 = icmp eq i64 %950, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %30, align 1
  %965 = lshr i64 %950, 63
  %966 = trunc i64 %965 to i8
  store i8 %966, i8* %33, align 1
  %967 = lshr i64 %949, 63
  %968 = xor i64 %965, %967
  %969 = add nuw nsw i64 %968, %965
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %39, align 1
  %972 = add i64 %945, -8
  %973 = add i64 %944, 33
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  %976 = add i64 %945, -208
  %977 = add i64 %944, 40
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  store i64 %975, i64* %978, align 8
  %979 = load i64, i64* %RCX.i178, align 8
  %980 = load i64, i64* %3, align 8
  store i64 %979, i64* %RDI.i322, align 8
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -208
  %983 = add i64 %980, 10
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RCX.i178, align 8
  %986 = add i64 %981, -216
  %987 = load i64, i64* %RAX.i130, align 8
  %988 = add i64 %980, 17
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %986 to i64*
  store i64 %987, i64* %989, align 8
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, -139591
  %992 = add i64 %990, 5
  %993 = load i64, i64* %6, align 8
  %994 = add i64 %993, -8
  %995 = inttoptr i64 %994 to i64*
  store i64 %992, i64* %995, align 8
  store i64 %994, i64* %6, align 8
  store i64 %991, i64* %3, align 8
  %996 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %943)
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -224
  %999 = load i64, i64* %RAX.i130, align 8
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 7
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %998 to i64*
  store i64 %999, i64* %1002, align 8
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_423833

block_.L_423833:                                  ; preds = %block_4237bb, %block_.L_4237a2
  %1003 = phi i64 [ %899, %block_.L_4237a2 ], [ %.pre38, %block_4237bb ]
  %1004 = phi i64 [ %885, %block_.L_4237a2 ], [ %.pre37, %block_4237bb ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4237a2 ], [ %996, %block_4237bb ]
  %1005 = add i64 %1004, -20
  %1006 = add i64 %1003, 7
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  store i32 0, i32* %1007, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_42383a

block_.L_42383a:                                  ; preds = %block_423844, %block_.L_423833
  %1008 = phi i64 [ %.pre39, %block_.L_423833 ], [ %1154, %block_423844 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_423833 ], [ %1116, %block_423844 ]
  %1009 = load i64, i64* %RBP.i, align 8
  %1010 = add i64 %1009, -20
  %1011 = add i64 %1008, 4
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = add i32 %1013, -4
  %1015 = icmp ult i32 %1013, 4
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %14, align 1
  %1017 = and i32 %1014, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i32 %1014, %1013
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %27, align 1
  %1026 = icmp eq i32 %1014, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %30, align 1
  %1028 = lshr i32 %1014, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %33, align 1
  %1030 = lshr i32 %1013, 31
  %1031 = xor i32 %1028, %1030
  %1032 = add nuw nsw i32 %1031, %1030
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %39, align 1
  %1035 = icmp ne i8 %1029, 0
  %1036 = xor i1 %1035, %1033
  %.v58 = select i1 %1036, i64 10, i64 93
  %1037 = add i64 %1008, %.v58
  store i64 4, i64* %RAX.i130, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1038 = add i64 %1037, 12
  store i64 %1038, i64* %3, align 8
  br i1 %1036, label %block_423844, label %block_.L_423897

block_423844:                                     ; preds = %block_.L_42383a
  store i64 2, i64* %RAX.i130, align 8
  store i64 2, i64* %RDX.i216, align 8
  %1039 = add i64 %1009, -16
  %1040 = add i64 %1037, 18
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  %1043 = add i64 %1042, 172
  store i64 %1043, i64* %RCX.i178, align 8
  %1044 = icmp ugt i64 %1042, -173
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = trunc i64 %1043 to i32
  %1047 = and i32 %1046, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  %1052 = xor i64 %1043, %1042
  %1053 = lshr i64 %1052, 4
  %1054 = trunc i64 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %27, align 1
  %1056 = icmp eq i64 %1043, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %30, align 1
  %1058 = lshr i64 %1043, 63
  %1059 = trunc i64 %1058 to i8
  store i8 %1059, i8* %33, align 1
  %1060 = lshr i64 %1042, 63
  %1061 = xor i64 %1058, %1060
  %1062 = add nuw nsw i64 %1061, %1058
  %1063 = icmp eq i64 %1062, 2
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %39, align 1
  %1065 = add i64 %1037, 29
  store i64 %1065, i64* %3, align 8
  %1066 = load i32, i32* %1012, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = shl nsw i64 %1067, 3
  store i64 %1068, i64* %RDI.i322, align 8
  %1069 = add i64 %1068, %1043
  store i64 %1069, i64* %RCX.i178, align 8
  %1070 = icmp ult i64 %1069, %1043
  %1071 = icmp ult i64 %1069, %1068
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %14, align 1
  %1074 = trunc i64 %1069 to i32
  %1075 = and i32 %1074, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %21, align 1
  %1080 = xor i64 %1068, %1043
  %1081 = xor i64 %1080, %1069
  %1082 = lshr i64 %1081, 4
  %1083 = trunc i64 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %27, align 1
  %1085 = icmp eq i64 %1069, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %30, align 1
  %1087 = lshr i64 %1069, 63
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %33, align 1
  %1089 = lshr i64 %1067, 60
  %1090 = and i64 %1089, 1
  %1091 = xor i64 %1087, %1058
  %1092 = xor i64 %1087, %1090
  %1093 = add nuw nsw i64 %1091, %1092
  %1094 = icmp eq i64 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %39, align 1
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -8
  %1098 = add i64 %1037, 40
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  %1101 = add i64 %1096, -232
  %1102 = add i64 %1037, 47
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  store i64 %1100, i64* %1103, align 8
  %1104 = load i64, i64* %RCX.i178, align 8
  %1105 = load i64, i64* %3, align 8
  store i64 %1104, i64* %RDI.i322, align 8
  %1106 = load i64, i64* %RBP.i, align 8
  %1107 = add i64 %1106, -232
  %1108 = add i64 %1105, 10
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %RCX.i178, align 8
  %1111 = add i64 %1105, -139667
  %1112 = add i64 %1105, 15
  %1113 = load i64, i64* %6, align 8
  %1114 = add i64 %1113, -8
  %1115 = inttoptr i64 %1114 to i64*
  store i64 %1112, i64* %1115, align 8
  store i64 %1114, i64* %6, align 8
  store i64 %1111, i64* %3, align 8
  %1116 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.8)
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -240
  %1119 = load i64, i64* %RAX.i130, align 8
  %1120 = load i64, i64* %3, align 8
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1118 to i64*
  store i64 %1119, i64* %1122, align 8
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -20
  %1125 = load i64, i64* %3, align 8
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1124 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, 1
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i130, align 8
  %1131 = icmp eq i32 %1128, -1
  %1132 = icmp eq i32 %1129, 0
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1129, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1129, %1128
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %27, align 1
  %1144 = zext i1 %1132 to i8
  store i8 %1144, i8* %30, align 1
  %1145 = lshr i32 %1129, 31
  %1146 = trunc i32 %1145 to i8
  store i8 %1146, i8* %33, align 1
  %1147 = lshr i32 %1128, 31
  %1148 = xor i32 %1145, %1147
  %1149 = add nuw nsw i32 %1148, %1145
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %39, align 1
  %1152 = add i64 %1125, 9
  store i64 %1152, i64* %3, align 8
  store i32 %1129, i32* %1127, align 4
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, -88
  store i64 %1154, i64* %3, align 8
  br label %block_.L_42383a

block_.L_423897:                                  ; preds = %block_.L_42383a
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %1155 = add i64 %1009, -16
  %1156 = add i64 %1037, 18
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  %1159 = add i64 %1158, 304
  store i64 %1159, i64* %RCX.i178, align 8
  %1160 = icmp ugt i64 %1158, -305
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = trunc i64 %1159 to i32
  %1163 = and i32 %1162, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i64 %1158, 16
  %1169 = xor i64 %1168, %1159
  %1170 = lshr i64 %1169, 4
  %1171 = trunc i64 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %27, align 1
  %1173 = icmp eq i64 %1159, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = lshr i64 %1159, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %33, align 1
  %1177 = lshr i64 %1158, 63
  %1178 = xor i64 %1175, %1177
  %1179 = add nuw nsw i64 %1178, %1175
  %1180 = icmp eq i64 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %39, align 1
  %1182 = add i64 %1009, -8
  %1183 = add i64 %1037, 29
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  %1186 = add i64 %1009, -248
  %1187 = add i64 %1037, 36
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  store i64 %1185, i64* %1188, align 8
  %1189 = load i64, i64* %RCX.i178, align 8
  %1190 = load i64, i64* %3, align 8
  store i64 %1189, i64* %RDI.i322, align 8
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -248
  %1193 = add i64 %1190, 10
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RCX.i178, align 8
  %1196 = add i64 %1190, -139739
  %1197 = add i64 %1190, 15
  %1198 = load i64, i64* %6, align 8
  %1199 = add i64 %1198, -8
  %1200 = inttoptr i64 %1199 to i64*
  store i64 %1197, i64* %1200, align 8
  store i64 %1199, i64* %6, align 8
  store i64 %1196, i64* %3, align 8
  %1201 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.8)
  %1202 = load i64, i64* %3, align 8
  store i64 4, i64* %40, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -16
  %1205 = add i64 %1202, 13
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  %1208 = add i64 %1207, 224
  store i64 %1208, i64* %RCX.i178, align 8
  %1209 = icmp ugt i64 %1207, -225
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1
  %1211 = trunc i64 %1208 to i32
  %1212 = and i32 %1211, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i64 %1208, %1207
  %1218 = lshr i64 %1217, 4
  %1219 = trunc i64 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %27, align 1
  %1221 = icmp eq i64 %1208, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %30, align 1
  %1223 = lshr i64 %1208, 63
  %1224 = trunc i64 %1223 to i8
  store i8 %1224, i8* %33, align 1
  %1225 = lshr i64 %1207, 63
  %1226 = xor i64 %1223, %1225
  %1227 = add nuw nsw i64 %1226, %1223
  %1228 = icmp eq i64 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %39, align 1
  %1230 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1231 = sext i32 %1230 to i64
  store i64 %1231, i64* %RDX.i216, align 8
  %1232 = add i64 %1203, -8
  %1233 = add i64 %1202, 32
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234, align 8
  %1236 = add i64 %1203, -256
  %1237 = add i64 %1202, 39
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i64*
  store i64 %1235, i64* %1238, align 8
  %1239 = load i64, i64* %RCX.i178, align 8
  %1240 = load i64, i64* %3, align 8
  store i64 %1239, i64* %RDI.i322, align 8
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -256
  %1243 = add i64 %1240, 10
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RCX.i178, align 8
  %1246 = add i64 %1241, -264
  %1247 = load i64, i64* %RAX.i130, align 8
  %1248 = add i64 %1240, 17
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1246 to i64*
  store i64 %1247, i64* %1249, align 8
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, -139810
  %1252 = add i64 %1250, 5
  %1253 = load i64, i64* %6, align 8
  %1254 = add i64 %1253, -8
  %1255 = inttoptr i64 %1254 to i64*
  store i64 %1252, i64* %1255, align 8
  store i64 %1254, i64* %6, align 8
  store i64 %1251, i64* %3, align 8
  %1256 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1201)
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -16
  %1259 = load i64, i64* %3, align 8
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1258 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RCX.i178, align 8
  %1263 = add i64 %1262, 456
  %1264 = add i64 %1259, 11
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = and i32 %1266, 128
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %40, align 8
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1270 = trunc i32 %1269 to i8
  store i8 0, i8* %14, align 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit52 = lshr exact i32 %1267, 7
  %1272 = trunc i32 %.lobit52 to i8
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1274 = add i64 %1257, -272
  %1275 = load i64, i64* %RAX.i130, align 8
  %1276 = add i64 %1259, 29
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i64*
  store i64 %1275, i64* %1277, align 8
  %1278 = load i64, i64* %3, align 8
  %1279 = load i8, i8* %30, align 1
  %1280 = icmp ne i8 %1279, 0
  %.v70 = select i1 %1280, i64 126, i64 6
  %1281 = add i64 %1278, %.v70
  store i64 %1281, i64* %3, align 8
  %cmpBr_423924 = icmp eq i8 %1279, 1
  br i1 %cmpBr_423924, label %block_.L_4239a2, label %block_42392a

block_42392a:                                     ; preds = %block_.L_423897
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %1282 = load i64, i64* %RBP.i, align 8
  %1283 = add i64 %1282, -16
  %1284 = add i64 %1281, 18
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i64*
  %1286 = load i64, i64* %1285, align 8
  %1287 = add i64 %1286, 448
  store i64 %1287, i64* %RCX.i178, align 8
  %1288 = icmp ugt i64 %1286, -449
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %14, align 1
  %1290 = trunc i64 %1287 to i32
  %1291 = and i32 %1290, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i64 %1287, %1286
  %1297 = lshr i64 %1296, 4
  %1298 = trunc i64 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %27, align 1
  %1300 = icmp eq i64 %1287, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %30, align 1
  %1302 = lshr i64 %1287, 63
  %1303 = trunc i64 %1302 to i8
  store i8 %1303, i8* %33, align 1
  %1304 = lshr i64 %1286, 63
  %1305 = xor i64 %1302, %1304
  %1306 = add nuw nsw i64 %1305, %1302
  %1307 = icmp eq i64 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %39, align 1
  %1309 = add i64 %1282, -8
  %1310 = add i64 %1281, 29
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  %1313 = add i64 %1282, -280
  %1314 = add i64 %1281, 36
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i64*
  store i64 %1312, i64* %1315, align 8
  %1316 = load i64, i64* %RCX.i178, align 8
  %1317 = load i64, i64* %3, align 8
  store i64 %1316, i64* %RDI.i322, align 8
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -280
  %1320 = add i64 %1317, 10
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RCX.i178, align 8
  %1323 = add i64 %1317, -139886
  %1324 = add i64 %1317, 15
  %1325 = load i64, i64* %6, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1324, i64* %1327, align 8
  store i64 %1326, i64* %6, align 8
  store i64 %1323, i64* %3, align 8
  %1328 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1256)
  %1329 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %40, align 8
  store i64 1, i64* %RDX.i216, align 8
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -16
  %1332 = add i64 %1329, 22
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  %1335 = add i64 %1334, 452
  store i64 %1335, i64* %RCX.i178, align 8
  %1336 = icmp ugt i64 %1334, -453
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = trunc i64 %1335 to i32
  %1339 = and i32 %1338, 255
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %21, align 1
  %1344 = xor i64 %1335, %1334
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %27, align 1
  %1348 = icmp eq i64 %1335, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %30, align 1
  %1350 = lshr i64 %1335, 63
  %1351 = trunc i64 %1350 to i8
  store i8 %1351, i8* %33, align 1
  %1352 = lshr i64 %1334, 63
  %1353 = xor i64 %1350, %1352
  %1354 = add nuw nsw i64 %1353, %1350
  %1355 = icmp eq i64 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %39, align 1
  %1357 = add i64 %1330, -8
  %1358 = add i64 %1329, 33
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  %1361 = add i64 %1330, -288
  %1362 = add i64 %1329, 40
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  store i64 %1360, i64* %1363, align 8
  %1364 = load i64, i64* %RCX.i178, align 8
  %1365 = load i64, i64* %3, align 8
  store i64 %1364, i64* %RDI.i322, align 8
  %1366 = load i64, i64* %RBP.i, align 8
  %1367 = add i64 %1366, -288
  %1368 = add i64 %1365, 10
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %RCX.i178, align 8
  %1371 = add i64 %1366, -296
  %1372 = load i64, i64* %RAX.i130, align 8
  %1373 = add i64 %1365, 17
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1371 to i64*
  store i64 %1372, i64* %1374, align 8
  %1375 = load i64, i64* %3, align 8
  %1376 = add i64 %1375, -139958
  %1377 = add i64 %1375, 5
  %1378 = load i64, i64* %6, align 8
  %1379 = add i64 %1378, -8
  %1380 = inttoptr i64 %1379 to i64*
  store i64 %1377, i64* %1380, align 8
  store i64 %1379, i64* %6, align 8
  store i64 %1376, i64* %3, align 8
  %1381 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1328)
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -304
  %1384 = load i64, i64* %RAX.i130, align 8
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, 7
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1383 to i64*
  store i64 %1384, i64* %1387, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4239a2

block_.L_4239a2:                                  ; preds = %block_42392a, %block_.L_423897
  %1388 = phi i64 [ %1281, %block_.L_423897 ], [ %.pre40, %block_42392a ]
  %MEMORY.9 = phi %struct.Memory* [ %1256, %block_.L_423897 ], [ %1381, %block_42392a ]
  store i64 4, i64* %RSI.i367, align 8
  store i64 1, i64* %RAX.i130, align 8
  store i64 1, i64* %RDX.i216, align 8
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -16
  %1391 = add i64 %1388, 18
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  %1394 = add i64 %1393, 168
  store i64 %1394, i64* %RCX.i178, align 8
  %1395 = icmp ugt i64 %1393, -169
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = trunc i64 %1394 to i32
  %1398 = and i32 %1397, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i64 %1394, %1393
  %1404 = lshr i64 %1403, 4
  %1405 = trunc i64 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i64 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i64 %1394, 63
  %1410 = trunc i64 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i64 %1393, 63
  %1412 = xor i64 %1409, %1411
  %1413 = add nuw nsw i64 %1412, %1409
  %1414 = icmp eq i64 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %39, align 1
  %1416 = add i64 %1389, -8
  %1417 = add i64 %1388, 29
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  %1420 = add i64 %1389, -312
  %1421 = add i64 %1388, 36
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i64*
  store i64 %1419, i64* %1422, align 8
  %1423 = load i64, i64* %RCX.i178, align 8
  %1424 = load i64, i64* %3, align 8
  store i64 %1423, i64* %RDI.i322, align 8
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -312
  %1427 = add i64 %1424, 10
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RCX.i178, align 8
  %1430 = add i64 %1424, -140006
  %1431 = add i64 %1424, 15
  %1432 = load i64, i64* %6, align 8
  %1433 = add i64 %1432, -8
  %1434 = inttoptr i64 %1433 to i64*
  store i64 %1431, i64* %1434, align 8
  store i64 %1433, i64* %6, align 8
  store i64 %1430, i64* %3, align 8
  %1435 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.9)
  %1436 = load i64, i64* %3, align 8
  store i64 4, i64* %40, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -16
  %1439 = add i64 %1436, 13
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i64*
  %1441 = load i64, i64* %1440, align 8
  store i64 %1441, i64* %RCX.i178, align 8
  %1442 = add i64 %1441, 208
  %1443 = add i64 %1436, 20
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %RCX.i178, align 8
  %1446 = add i64 %1436, 24
  store i64 %1446, i64* %3, align 8
  %1447 = load i64, i64* %1440, align 8
  store i64 %1447, i64* %RDX.i216, align 8
  %1448 = add i64 %1447, 136
  %1449 = add i64 %1436, 31
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = add i32 %1451, 1
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %40, align 8
  %1454 = icmp eq i32 %1451, -1
  %1455 = icmp eq i32 %1452, 0
  %1456 = or i1 %1454, %1455
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %14, align 1
  %1458 = and i32 %1452, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i32 %1452, %1451
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %27, align 1
  %1467 = zext i1 %1455 to i8
  store i8 %1467, i8* %30, align 1
  %1468 = lshr i32 %1452, 31
  %1469 = trunc i32 %1468 to i8
  store i8 %1469, i8* %33, align 1
  %1470 = lshr i32 %1451, 31
  %1471 = xor i32 %1468, %1470
  %1472 = add nuw nsw i32 %1471, %1468
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %39, align 1
  %1475 = sext i32 %1452 to i64
  store i64 %1475, i64* %RDX.i216, align 8
  %1476 = add i64 %1437, -8
  %1477 = add i64 %1436, 42
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i64*
  %1479 = load i64, i64* %1478, align 8
  %1480 = add i64 %1437, -320
  %1481 = add i64 %1436, 49
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  store i64 %1479, i64* %1482, align 8
  %1483 = load i64, i64* %RCX.i178, align 8
  %1484 = load i64, i64* %3, align 8
  store i64 %1483, i64* %RDI.i322, align 8
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -320
  %1487 = add i64 %1484, 10
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RCX.i178, align 8
  %1490 = add i64 %1485, -328
  %1491 = load i64, i64* %RAX.i130, align 8
  %1492 = add i64 %1484, 17
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1490 to i64*
  store i64 %1491, i64* %1493, align 8
  %1494 = load i64, i64* %3, align 8
  %1495 = add i64 %1494, -140087
  %1496 = add i64 %1494, 5
  %1497 = load i64, i64* %6, align 8
  %1498 = add i64 %1497, -8
  %1499 = inttoptr i64 %1498 to i64*
  store i64 %1496, i64* %1499, align 8
  store i64 %1498, i64* %6, align 8
  store i64 %1495, i64* %3, align 8
  %1500 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1435)
  %1501 = load i64, i64* %3, align 8
  store i64 4, i64* %40, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -16
  %1504 = add i64 %1501, 13
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RCX.i178, align 8
  %1507 = add i64 %1506, 216
  %1508 = add i64 %1501, 20
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i64*
  %1510 = load i64, i64* %1509, align 8
  store i64 %1510, i64* %RCX.i178, align 8
  %1511 = add i64 %1501, 24
  store i64 %1511, i64* %3, align 8
  %1512 = load i64, i64* %1505, align 8
  store i64 %1512, i64* %RDX.i216, align 8
  %1513 = add i64 %1512, 136
  %1514 = add i64 %1501, 31
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = add i32 %1516, 1
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %40, align 8
  %1519 = icmp eq i32 %1516, -1
  %1520 = icmp eq i32 %1517, 0
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %14, align 1
  %1523 = and i32 %1517, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %21, align 1
  %1528 = xor i32 %1517, %1516
  %1529 = lshr i32 %1528, 4
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  store i8 %1531, i8* %27, align 1
  %1532 = zext i1 %1520 to i8
  store i8 %1532, i8* %30, align 1
  %1533 = lshr i32 %1517, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %33, align 1
  %1535 = lshr i32 %1516, 31
  %1536 = xor i32 %1533, %1535
  %1537 = add nuw nsw i32 %1536, %1533
  %1538 = icmp eq i32 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %39, align 1
  %1540 = sext i32 %1517 to i64
  store i64 %1540, i64* %RDX.i216, align 8
  %1541 = add i64 %1502, -8
  %1542 = add i64 %1501, 42
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i64*
  %1544 = load i64, i64* %1543, align 8
  %1545 = add i64 %1502, -336
  %1546 = add i64 %1501, 49
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  store i64 %1544, i64* %1547, align 8
  %1548 = load i64, i64* %RCX.i178, align 8
  %1549 = load i64, i64* %3, align 8
  store i64 %1548, i64* %RDI.i322, align 8
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -336
  %1552 = add i64 %1549, 10
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i64*
  %1554 = load i64, i64* %1553, align 8
  store i64 %1554, i64* %RCX.i178, align 8
  %1555 = add i64 %1550, -344
  %1556 = load i64, i64* %RAX.i130, align 8
  %1557 = add i64 %1549, 17
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1555 to i64*
  store i64 %1556, i64* %1558, align 8
  %1559 = load i64, i64* %3, align 8
  %1560 = add i64 %1559, -140158
  %1561 = add i64 %1559, 5
  %1562 = load i64, i64* %6, align 8
  %1563 = add i64 %1562, -8
  %1564 = inttoptr i64 %1563 to i64*
  store i64 %1561, i64* %1564, align 8
  store i64 %1563, i64* %6, align 8
  store i64 %1560, i64* %3, align 8
  %1565 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %1500)
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -20
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 7
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1567 to i32*
  store i32 1, i32* %1570, align 4
  %1571 = load i64, i64* %RBP.i, align 8
  %1572 = add i64 %1571, -352
  %1573 = load i64, i64* %RAX.i130, align 8
  %1574 = load i64, i64* %3, align 8
  %1575 = add i64 %1574, 7
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1572 to i64*
  store i64 %1573, i64* %1576, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_423a71

block_.L_423a71:                                  ; preds = %block_423a84, %block_.L_4239a2
  %1577 = phi i64 [ %.pre41, %block_.L_4239a2 ], [ %1692, %block_423a84 ]
  %MEMORY.10 = phi %struct.Memory* [ %1565, %block_.L_4239a2 ], [ %1654, %block_423a84 ]
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -20
  %1580 = add i64 %1577, 3
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i130, align 8
  %1584 = add i64 %1578, -16
  %1585 = add i64 %1577, 7
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RCX.i178, align 8
  %1588 = add i64 %1587, 136
  %1589 = add i64 %1577, 13
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = sub i32 %1582, %1591
  %1593 = icmp ult i32 %1582, %1591
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %14, align 1
  %1595 = and i32 %1592, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %21, align 1
  %1600 = xor i32 %1591, %1582
  %1601 = xor i32 %1600, %1592
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %27, align 1
  %1605 = icmp eq i32 %1592, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %30, align 1
  %1607 = lshr i32 %1592, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %33, align 1
  %1609 = lshr i32 %1582, 31
  %1610 = lshr i32 %1591, 31
  %1611 = xor i32 %1610, %1609
  %1612 = xor i32 %1607, %1609
  %1613 = add nuw nsw i32 %1612, %1611
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %39, align 1
  %1616 = icmp ne i8 %1608, 0
  %1617 = xor i1 %1616, %1614
  %.demorgan = or i1 %1605, %1617
  %.v59 = select i1 %.demorgan, i64 19, i64 100
  %1618 = add i64 %1577, %.v59
  store i64 %1618, i64* %3, align 8
  br i1 %.demorgan, label %block_423a84, label %block_.L_423ad5

block_423a84:                                     ; preds = %block_.L_423a71
  store i64 4, i64* %RAX.i130, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1619 = add i64 %1618, 11
  store i64 %1619, i64* %3, align 8
  %1620 = load i64, i64* %1586, align 8
  store i64 %1620, i64* %RCX.i178, align 8
  %1621 = add i64 %1620, 152
  %1622 = add i64 %1618, 18
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RCX.i178, align 8
  %1625 = add i64 %1618, 22
  store i64 %1625, i64* %3, align 8
  %1626 = load i32, i32* %1581, align 4
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %RDX.i216, align 8
  %1628 = shl nsw i64 %1627, 3
  %1629 = add i64 %1628, %1624
  %1630 = add i64 %1618, 26
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %RCX.i178, align 8
  %1633 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1634 = sext i32 %1633 to i64
  store i64 %1634, i64* %RDX.i216, align 8
  %1635 = add i64 %1578, -8
  %1636 = add i64 %1618, 38
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  %1638 = load i64, i64* %1637, align 8
  %1639 = add i64 %1578, -360
  %1640 = add i64 %1618, 45
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  store i64 %1638, i64* %1641, align 8
  %1642 = load i64, i64* %RCX.i178, align 8
  %1643 = load i64, i64* %3, align 8
  store i64 %1642, i64* %RDI.i322, align 8
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -360
  %1646 = add i64 %1643, 10
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i64*
  %1648 = load i64, i64* %1647, align 8
  store i64 %1648, i64* %RCX.i178, align 8
  %1649 = add i64 %1643, -140241
  %1650 = add i64 %1643, 15
  %1651 = load i64, i64* %6, align 8
  %1652 = add i64 %1651, -8
  %1653 = inttoptr i64 %1652 to i64*
  store i64 %1650, i64* %1653, align 8
  store i64 %1652, i64* %6, align 8
  store i64 %1649, i64* %3, align 8
  %1654 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.10)
  %1655 = load i64, i64* %RBP.i, align 8
  %1656 = add i64 %1655, -368
  %1657 = load i64, i64* %RAX.i130, align 8
  %1658 = load i64, i64* %3, align 8
  %1659 = add i64 %1658, 7
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1656 to i64*
  store i64 %1657, i64* %1660, align 8
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -20
  %1663 = load i64, i64* %3, align 8
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = add i32 %1666, 1
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RAX.i130, align 8
  %1669 = icmp eq i32 %1666, -1
  %1670 = icmp eq i32 %1667, 0
  %1671 = or i1 %1669, %1670
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %14, align 1
  %1673 = and i32 %1667, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i32 %1667, %1666
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %27, align 1
  %1682 = zext i1 %1670 to i8
  store i8 %1682, i8* %30, align 1
  %1683 = lshr i32 %1667, 31
  %1684 = trunc i32 %1683 to i8
  store i8 %1684, i8* %33, align 1
  %1685 = lshr i32 %1666, 31
  %1686 = xor i32 %1683, %1685
  %1687 = add nuw nsw i32 %1686, %1683
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %39, align 1
  %1690 = add i64 %1663, 9
  store i64 %1690, i64* %3, align 8
  store i32 %1667, i32* %1665, align 4
  %1691 = load i64, i64* %3, align 8
  %1692 = add i64 %1691, -95
  store i64 %1692, i64* %3, align 8
  br label %block_.L_423a71

block_.L_423ad5:                                  ; preds = %block_.L_423a71
  %1693 = add i64 %1618, 7
  store i64 %1693, i64* %3, align 8
  store i32 1, i32* %1581, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_423adc

block_.L_423adc:                                  ; preds = %block_423aef, %block_.L_423ad5
  %1694 = phi i64 [ %.pre42, %block_.L_423ad5 ], [ %1809, %block_423aef ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_.L_423ad5 ], [ %1771, %block_423aef ]
  %1695 = load i64, i64* %RBP.i, align 8
  %1696 = add i64 %1695, -20
  %1697 = add i64 %1694, 3
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RAX.i130, align 8
  %1701 = add i64 %1695, -16
  %1702 = add i64 %1694, 7
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i64*
  %1704 = load i64, i64* %1703, align 8
  store i64 %1704, i64* %RCX.i178, align 8
  %1705 = add i64 %1704, 136
  %1706 = add i64 %1694, 13
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sub i32 %1699, %1708
  %1710 = icmp ult i32 %1699, %1708
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1709, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1708, %1699
  %1718 = xor i32 %1717, %1709
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %27, align 1
  %1722 = icmp eq i32 %1709, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %30, align 1
  %1724 = lshr i32 %1709, 31
  %1725 = trunc i32 %1724 to i8
  store i8 %1725, i8* %33, align 1
  %1726 = lshr i32 %1699, 31
  %1727 = lshr i32 %1708, 31
  %1728 = xor i32 %1727, %1726
  %1729 = xor i32 %1724, %1726
  %1730 = add nuw nsw i32 %1729, %1728
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %39, align 1
  %1733 = icmp ne i8 %1725, 0
  %1734 = xor i1 %1733, %1731
  %.v60 = select i1 %1734, i64 19, i64 100
  %1735 = add i64 %1694, %.v60
  store i64 %1735, i64* %3, align 8
  br i1 %1734, label %block_423aef, label %block_.L_423b40

block_423aef:                                     ; preds = %block_.L_423adc
  store i64 4, i64* %RAX.i130, align 8
  store i64 4, i64* %RSI.i367, align 8
  %1736 = add i64 %1735, 11
  store i64 %1736, i64* %3, align 8
  %1737 = load i64, i64* %1703, align 8
  store i64 %1737, i64* %RCX.i178, align 8
  %1738 = add i64 %1737, 160
  %1739 = add i64 %1735, 18
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i64*
  %1741 = load i64, i64* %1740, align 8
  store i64 %1741, i64* %RCX.i178, align 8
  %1742 = add i64 %1735, 22
  store i64 %1742, i64* %3, align 8
  %1743 = load i32, i32* %1698, align 4
  %1744 = sext i32 %1743 to i64
  store i64 %1744, i64* %RDX.i216, align 8
  %1745 = shl nsw i64 %1744, 3
  %1746 = add i64 %1745, %1741
  %1747 = add i64 %1735, 26
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RCX.i178, align 8
  %1750 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1751 = sext i32 %1750 to i64
  store i64 %1751, i64* %RDX.i216, align 8
  %1752 = add i64 %1695, -8
  %1753 = add i64 %1735, 38
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i64*
  %1755 = load i64, i64* %1754, align 8
  %1756 = add i64 %1695, -376
  %1757 = add i64 %1735, 45
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i64*
  store i64 %1755, i64* %1758, align 8
  %1759 = load i64, i64* %RCX.i178, align 8
  %1760 = load i64, i64* %3, align 8
  store i64 %1759, i64* %RDI.i322, align 8
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -376
  %1763 = add i64 %1760, 10
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RCX.i178, align 8
  %1766 = add i64 %1760, -140348
  %1767 = add i64 %1760, 15
  %1768 = load i64, i64* %6, align 8
  %1769 = add i64 %1768, -8
  %1770 = inttoptr i64 %1769 to i64*
  store i64 %1767, i64* %1770, align 8
  store i64 %1769, i64* %6, align 8
  store i64 %1766, i64* %3, align 8
  %1771 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.11)
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -384
  %1774 = load i64, i64* %RAX.i130, align 8
  %1775 = load i64, i64* %3, align 8
  %1776 = add i64 %1775, 7
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1773 to i64*
  store i64 %1774, i64* %1777, align 8
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -20
  %1780 = load i64, i64* %3, align 8
  %1781 = add i64 %1780, 3
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1779 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = add i32 %1783, 1
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RAX.i130, align 8
  %1786 = icmp eq i32 %1783, -1
  %1787 = icmp eq i32 %1784, 0
  %1788 = or i1 %1786, %1787
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %14, align 1
  %1790 = and i32 %1784, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %21, align 1
  %1795 = xor i32 %1784, %1783
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %27, align 1
  %1799 = zext i1 %1787 to i8
  store i8 %1799, i8* %30, align 1
  %1800 = lshr i32 %1784, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %33, align 1
  %1802 = lshr i32 %1783, 31
  %1803 = xor i32 %1800, %1802
  %1804 = add nuw nsw i32 %1803, %1800
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %39, align 1
  %1807 = add i64 %1780, 9
  store i64 %1807, i64* %3, align 8
  store i32 %1784, i32* %1782, align 4
  %1808 = load i64, i64* %3, align 8
  %1809 = add i64 %1808, -95
  store i64 %1809, i64* %3, align 8
  br label %block_.L_423adc

block_.L_423b40:                                  ; preds = %block_.L_423adc
  %1810 = add i64 %1735, 7
  store i64 %1810, i64* %3, align 8
  store i32 1, i32* %1698, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_423b47

block_.L_423b47:                                  ; preds = %block_423b5a, %block_.L_423b40
  %1811 = phi i64 [ %.pre43, %block_.L_423b40 ], [ %1924, %block_423b5a ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_.L_423b40 ], [ %1886, %block_423b5a ]
  %1812 = load i64, i64* %RBP.i, align 8
  %1813 = add i64 %1812, -20
  %1814 = add i64 %1811, 3
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i32*
  %1816 = load i32, i32* %1815, align 4
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RAX.i130, align 8
  %1818 = add i64 %1812, -16
  %1819 = add i64 %1811, 7
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RCX.i178, align 8
  %1822 = add i64 %1821, 136
  %1823 = add i64 %1811, 13
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = sub i32 %1816, %1825
  %1827 = icmp ult i32 %1816, %1825
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %14, align 1
  %1829 = and i32 %1826, 255
  %1830 = tail call i32 @llvm.ctpop.i32(i32 %1829)
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  %1833 = xor i8 %1832, 1
  store i8 %1833, i8* %21, align 1
  %1834 = xor i32 %1825, %1816
  %1835 = xor i32 %1834, %1826
  %1836 = lshr i32 %1835, 4
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  store i8 %1838, i8* %27, align 1
  %1839 = icmp eq i32 %1826, 0
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %30, align 1
  %1841 = lshr i32 %1826, 31
  %1842 = trunc i32 %1841 to i8
  store i8 %1842, i8* %33, align 1
  %1843 = lshr i32 %1816, 31
  %1844 = lshr i32 %1825, 31
  %1845 = xor i32 %1844, %1843
  %1846 = xor i32 %1841, %1843
  %1847 = add nuw nsw i32 %1846, %1845
  %1848 = icmp eq i32 %1847, 2
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %39, align 1
  %1850 = icmp ne i8 %1842, 0
  %1851 = xor i1 %1850, %1848
  %.v61 = select i1 %1851, i64 19, i64 99
  %1852 = add i64 %1811, %.v61
  store i64 %1852, i64* %3, align 8
  br i1 %1851, label %block_423b5a, label %block_.L_423baa

block_423b5a:                                     ; preds = %block_.L_423b47
  store i64 4, i64* %RSI.i367, align 8
  store i64 7, i64* %RAX.i130, align 8
  store i64 7, i64* %RDX.i216, align 8
  %1853 = add i64 %1852, 18
  store i64 %1853, i64* %3, align 8
  %1854 = load i64, i64* %1820, align 8
  store i64 %1854, i64* %RCX.i178, align 8
  %1855 = add i64 %1854, 144
  %1856 = add i64 %1852, 25
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RCX.i178, align 8
  %1859 = add i64 %1852, 29
  store i64 %1859, i64* %3, align 8
  %1860 = load i32, i32* %1815, align 4
  %1861 = sext i32 %1860 to i64
  store i64 %1861, i64* %RDI.i322, align 8
  %1862 = shl nsw i64 %1861, 3
  %1863 = add i64 %1862, %1858
  %1864 = add i64 %1852, 33
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i64*
  %1866 = load i64, i64* %1865, align 8
  store i64 %1866, i64* %RCX.i178, align 8
  %1867 = add i64 %1812, -8
  %1868 = add i64 %1852, 37
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  %1871 = add i64 %1812, -392
  %1872 = add i64 %1852, 44
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i64*
  store i64 %1870, i64* %1873, align 8
  %1874 = load i64, i64* %RCX.i178, align 8
  %1875 = load i64, i64* %3, align 8
  store i64 %1874, i64* %RDI.i322, align 8
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -392
  %1878 = add i64 %1875, 10
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i64*
  %1880 = load i64, i64* %1879, align 8
  store i64 %1880, i64* %RCX.i178, align 8
  %1881 = add i64 %1875, -140454
  %1882 = add i64 %1875, 15
  %1883 = load i64, i64* %6, align 8
  %1884 = add i64 %1883, -8
  %1885 = inttoptr i64 %1884 to i64*
  store i64 %1882, i64* %1885, align 8
  store i64 %1884, i64* %6, align 8
  store i64 %1881, i64* %3, align 8
  %1886 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %MEMORY.12)
  %1887 = load i64, i64* %RBP.i, align 8
  %1888 = add i64 %1887, -400
  %1889 = load i64, i64* %RAX.i130, align 8
  %1890 = load i64, i64* %3, align 8
  %1891 = add i64 %1890, 7
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1888 to i64*
  store i64 %1889, i64* %1892, align 8
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -20
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 3
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1894 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = add i32 %1898, 1
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RAX.i130, align 8
  %1901 = icmp eq i32 %1898, -1
  %1902 = icmp eq i32 %1899, 0
  %1903 = or i1 %1901, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = and i32 %1899, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %21, align 1
  %1910 = xor i32 %1899, %1898
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %27, align 1
  %1914 = zext i1 %1902 to i8
  store i8 %1914, i8* %30, align 1
  %1915 = lshr i32 %1899, 31
  %1916 = trunc i32 %1915 to i8
  store i8 %1916, i8* %33, align 1
  %1917 = lshr i32 %1898, 31
  %1918 = xor i32 %1915, %1917
  %1919 = add nuw nsw i32 %1918, %1915
  %1920 = icmp eq i32 %1919, 2
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %39, align 1
  %1922 = add i64 %1895, 9
  store i64 %1922, i64* %3, align 8
  store i32 %1899, i32* %1897, align 4
  %1923 = load i64, i64* %3, align 8
  %1924 = add i64 %1923, -94
  store i64 %1924, i64* %3, align 8
  br label %block_.L_423b47

block_.L_423baa:                                  ; preds = %block_.L_423b47
  %1925 = load i64, i64* %6, align 8
  %1926 = add i64 %1925, 400
  store i64 %1926, i64* %6, align 8
  %1927 = icmp ugt i64 %1925, -401
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %14, align 1
  %1929 = trunc i64 %1926 to i32
  %1930 = and i32 %1929, 255
  %1931 = tail call i32 @llvm.ctpop.i32(i32 %1930)
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = xor i8 %1933, 1
  store i8 %1934, i8* %21, align 1
  %1935 = xor i64 %1925, 16
  %1936 = xor i64 %1935, %1926
  %1937 = lshr i64 %1936, 4
  %1938 = trunc i64 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %27, align 1
  %1940 = icmp eq i64 %1926, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %30, align 1
  %1942 = lshr i64 %1926, 63
  %1943 = trunc i64 %1942 to i8
  store i8 %1943, i8* %33, align 1
  %1944 = lshr i64 %1925, 63
  %1945 = xor i64 %1942, %1944
  %1946 = add nuw nsw i64 %1945, %1942
  %1947 = icmp eq i64 %1946, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %39, align 1
  %1949 = add i64 %1852, 8
  store i64 %1949, i64* %3, align 8
  %1950 = add i64 %1925, 408
  %1951 = inttoptr i64 %1926 to i64*
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %RBP.i, align 8
  store i64 %1950, i64* %6, align 8
  %1953 = add i64 %1852, 9
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1950 to i64*
  %1955 = load i64, i64* %1954, align 8
  store i64 %1955, i64* %3, align 8
  %1956 = add i64 %1925, 416
  store i64 %1956, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
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
define %struct.Memory* @routine_subq__0x190___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -400
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 400
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
define %struct.Memory* @routine_movq__0x661538___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661538_type* @G__0x661538 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x4___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 456
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -457
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
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq___rcx____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.write_bin_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c8__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 456
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
define %struct.Memory* @routine_andl__0x200___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 512
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %.lobit = lshr exact i32 %8, 9
  %12 = trunc i32 %.lobit to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_4234b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_4234db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x88___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 136
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -137
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
define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x676d90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x676d90_type* @G__0x676d90 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 456
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %.lobit = lshr exact i32 %8, 2
  %15 = trunc i32 %.lobit to i8
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_423585(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4235c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_andl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 8
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
define %struct.Memory* @routine_je_.L_423617(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x38___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -57
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
define %struct.Memory* @routine_movq_0x40__rcx____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_andl__0x400___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 1024
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %.lobit = lshr exact i32 %8, 10
  %12 = trunc i32 %.lobit to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_423717(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x70___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -113
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
define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x74___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 116
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -117
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
define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
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
define %struct.Memory* @routine_je_.L_4237a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x78___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 120
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -121
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
define %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x7c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 124
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -125
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
define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4096
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 12
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
define %struct.Memory* @routine_je_.L_423833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x80___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x84___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 132
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -133
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
define %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_423897(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xac___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 172
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -173
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jmpq_.L_42383a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x130___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 304
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -305
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
define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -225
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
define %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x80___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 128
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %.lobit = lshr exact i32 %8, 7
  %15 = trunc i32 %.lobit to i8
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4239a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 448
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -449
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
define %struct.Memory* @routine_movq__rdi__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 452
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -453
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
define %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 168
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -169
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
define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x140__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_423ad5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq__rdi__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423a71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_423b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x178__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423adc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_423baa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x188__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423b47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x190___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 400
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -401
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
