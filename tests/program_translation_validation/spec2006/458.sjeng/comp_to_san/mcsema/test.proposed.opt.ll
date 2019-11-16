; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G__0x428998_type = type <{ [8 x i8] }>
%G__0x4294e6_type = type <{ [8 x i8] }>
%G__0x429ae5_type = type <{ [8 x i8] }>
%G__0x429ae8_type = type <{ [8 x i8] }>
%G__0x429aed_type = type <{ [8 x i8] }>
%G__0x429af0_type = type <{ [8 x i8] }>
%G__0x429af8_type = type <{ [8 x i8] }>
%G__0x429afa_type = type <{ [8 x i8] }>
%G__0x429afe_type = type <{ [8 x i8] }>
%G__0x429b00_type = type <{ [8 x i8] }>
%G__0x429b07_type = type <{ [8 x i8] }>
%G__0x429b10_type = type <{ [8 x i8] }>
%G__0x429b12_type = type <{ [8 x i8] }>
%G__0x429b1a_type = type <{ [8 x i8] }>
%G__0x429b24_type = type <{ [4 x i8] }>
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
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G__0x428998 = global %G__0x428998_type zeroinitializer
@G__0x4294e6 = global %G__0x4294e6_type zeroinitializer
@G__0x429ae5 = global %G__0x429ae5_type zeroinitializer
@G__0x429ae8 = global %G__0x429ae8_type zeroinitializer
@G__0x429aed = global %G__0x429aed_type zeroinitializer
@G__0x429af0 = global %G__0x429af0_type zeroinitializer
@G__0x429af8 = global %G__0x429af8_type zeroinitializer
@G__0x429afa = global %G__0x429afa_type zeroinitializer
@G__0x429afe = global %G__0x429afe_type zeroinitializer
@G__0x429b00 = global %G__0x429b00_type zeroinitializer
@G__0x429b07 = global %G__0x429b07_type zeroinitializer
@G__0x429b10 = global %G__0x429b10_type zeroinitializer
@G__0x429b12 = global %G__0x429b12_type zeroinitializer
@G__0x429b1a = global %G__0x429b1a_type zeroinitializer
@G__0x429b24 = global %G__0x429b24_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @comp_to_san(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i117 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 8
  store i64 %41, i64* %RAX.i117, align 8
  %RDI.i163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i163, align 8
  %44 = add i64 %10, 18
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = bitcast %union.anon* %40 to i32**
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = load i32, i32* %47, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %RDI.i163, align 8
  %RCX.i235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %52 = shl nsw i64 %51, 2
  %53 = add nsw i64 %52, 4348048
  %54 = add i64 %48, 10
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RCX.i235, align 8
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24616
  %60 = add i64 %48, 16
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  store i32 %56, i32* %61, align 4
  %62 = load i64, i64* %RAX.i117, align 8
  %63 = add i64 %62, 4
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %RDI.i163, align 8
  %69 = shl nsw i64 %68, 2
  %70 = add nsw i64 %69, 4348048
  %71 = add i64 %64, 11
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RCX.i235, align 8
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -24620
  %77 = add i64 %64, 17
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  store i32 %73, i32* %78, align 4
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -24624
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 10
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i32*
  store i32 97, i32* %83, align 4
  %84 = load i32*, i32** %46, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 3
  store i64 %86, i64* %3, align 8
  %87 = load i32, i32* %84, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %RDI.i163, align 8
  %89 = shl nsw i64 %88, 2
  %90 = add nsw i64 %89, 4347472
  %91 = add i64 %85, 10
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RCX.i235, align 8
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -24624
  %97 = add i64 %85, 16
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %93
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i8
  %103 = lshr i32 %100, 31
  %104 = add i32 %100, -1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RCX.i235, align 8
  store i8 %102, i8* %14, align 1
  %106 = and i32 %104, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %21, align 1
  %111 = xor i32 %104, %100
  %112 = lshr i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %27, align 1
  %115 = icmp eq i32 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %30, align 1
  %117 = lshr i32 %104, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %33, align 1
  %119 = xor i32 %117, %103
  %120 = add nuw nsw i32 %119, %103
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %39, align 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i = bitcast %union.anon* %123 to i8*
  %124 = trunc i32 %104 to i8
  store i8 %124, i8* %DL.i, align 1
  %125 = add i64 %95, -24625
  %126 = add i64 %85, 27
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i8*
  store i8 %124, i8* %127, align 1
  %128 = load i64, i64* %RAX.i117, align 8
  %129 = add i64 %128, 4
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %RDI.i163, align 8
  %135 = shl nsw i64 %134, 2
  %136 = add nsw i64 %135, 4347472
  %137 = add i64 %130, 11
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RCX.i235, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -24624
  %143 = add i64 %130, 17
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, %139
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i8
  %149 = lshr i32 %146, 31
  %150 = add i32 %146, -1
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX.i235, align 8
  store i8 %148, i8* %14, align 1
  %152 = and i32 %150, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  %157 = xor i32 %150, %146
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %27, align 1
  %161 = icmp eq i32 %150, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %30, align 1
  %163 = lshr i32 %150, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %33, align 1
  %165 = xor i32 %163, %149
  %166 = add nuw nsw i32 %165, %149
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %39, align 1
  %169 = trunc i32 %150 to i8
  store i8 %169, i8* %DL.i, align 1
  %170 = add i64 %141, -24626
  %171 = add i64 %130, 28
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i8*
  store i8 %169, i8* %172, align 1
  %173 = load i32*, i32** %46, align 8
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 3
  store i64 %175, i64* %3, align 8
  %176 = load i32, i32* %173, align 4
  store i8 0, i8* %14, align 1
  %177 = and i32 %176, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %182 = icmp eq i32 %176, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %30, align 1
  %184 = lshr i32 %176, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -24640
  %188 = ptrtoint i32* %173 to i64
  %189 = add i64 %174, 10
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %3, align 8
  %192 = load i8, i8* %30, align 1
  %193 = icmp eq i8 %192, 0
  %.v82 = select i1 %193, i64 70, i64 6
  %194 = add i64 %191, %.v82
  store i64 %194, i64* %3, align 8
  br i1 %193, label %block_.L_421a35, label %block_4219f5

block_4219f5:                                     ; preds = %entry
  %RSI.i801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x429ae5_type* @G__0x429ae5 to i64), i64* %RSI.i801, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -8
  %197 = add i64 %194, 14
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDI.i163, align 8
  %200 = add i64 %195, -24640
  %201 = add i64 %194, 21
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX.i117, align 8
  %204 = add i64 %203, 12
  %205 = add i64 %194, 25
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %RCX.i235, align 8
  %RDX.i790 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %209 = shl nsw i64 %208, 2
  %210 = add nsw i64 %209, 4357664
  %211 = add i64 %194, 32
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDX.i790, align 8
  %215 = add i64 %195, -24626
  %216 = add i64 %194, 39
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i8*
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i64
  %220 = and i64 %219, 4294967295
  store i64 %220, i64* %RCX.i235, align 8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %222 = add i64 %195, -24620
  %223 = add i64 %194, 46
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %221, align 8
  %AL.i781 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i781, align 1
  %227 = add i64 %194, -134181
  %228 = add i64 %194, 53
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, -8
  %231 = inttoptr i64 %230 to i64*
  store i64 %228, i64* %231, align 8
  store i64 %230, i64* %6, align 8
  store i64 %227, i64* %3, align 8
  %232 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i776 = bitcast %union.anon* %40 to i32*
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -24644
  %235 = load i32, i32* %EAX.i776, align 4
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 6
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %234 to i32*
  store i32 %235, i32* %238, align 4
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 1475
  br label %block_.L_421ff3

block_.L_421a35:                                  ; preds = %entry
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -24640
  %243 = add i64 %194, 7
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX.i117, align 8
  %246 = add i64 %194, 10
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX.i235, align 8
  %250 = shl nsw i64 %249, 2
  %251 = add nsw i64 %250, 8807744
  %252 = add i64 %194, 18
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, -1
  %256 = icmp eq i32 %254, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %14, align 1
  %258 = and i32 %255, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %21, align 1
  %263 = xor i32 %255, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %27, align 1
  %267 = icmp eq i32 %255, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %30, align 1
  %269 = lshr i32 %255, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %33, align 1
  %271 = lshr i32 %254, 31
  %272 = xor i32 %269, %271
  %273 = add nuw nsw i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %39, align 1
  %.v56 = select i1 %267, i64 48, i64 24
  %276 = add i64 %194, %.v56
  store i64 %276, i64* %3, align 8
  br i1 %267, label %block_.L_421a65, label %block_421a4d

block_421a4d:                                     ; preds = %block_.L_421a35
  %277 = add i64 %276, 7
  store i64 %277, i64* %3, align 8
  %278 = load i64, i64* %244, align 8
  store i64 %278, i64* %RAX.i117, align 8
  %279 = add i64 %276, 10
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX.i235, align 8
  %283 = shl nsw i64 %282, 2
  %284 = add nsw i64 %283, 8807744
  %285 = add i64 %276, 18
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, -2
  %289 = icmp ult i32 %287, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %14, align 1
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %21, align 1
  %296 = xor i32 %288, %287
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %27, align 1
  %300 = icmp eq i32 %288, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %30, align 1
  %302 = lshr i32 %288, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %33, align 1
  %304 = lshr i32 %287, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %304
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %39, align 1
  %.v57 = select i1 %300, i64 24, i64 339
  %309 = add i64 %276, %.v57
  store i64 %309, i64* %3, align 8
  br i1 %300, label %block_.L_421a65, label %block_.L_421ba0

block_.L_421a65:                                  ; preds = %block_421a4d, %block_.L_421a35
  %310 = phi i64 [ %309, %block_421a4d ], [ %276, %block_.L_421a35 ]
  %311 = add i64 %310, 7
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %244, align 8
  store i64 %312, i64* %RAX.i117, align 8
  %313 = add i64 %312, 4
  %314 = add i64 %310, 11
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RCX.i235, align 8
  %318 = shl nsw i64 %317, 2
  %319 = add nsw i64 %318, 8807744
  %320 = add i64 %310, 19
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, -13
  %324 = icmp ult i32 %322, 13
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %14, align 1
  %326 = and i32 %323, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %21, align 1
  %331 = xor i32 %323, %322
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  store i8 %334, i8* %27, align 1
  %335 = icmp eq i32 %323, 0
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %30, align 1
  %337 = lshr i32 %323, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %33, align 1
  %339 = lshr i32 %322, 31
  %340 = xor i32 %337, %339
  %341 = add nuw nsw i32 %340, %339
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %39, align 1
  %.v68 = select i1 %335, i64 25, i64 168
  %344 = add i64 %310, %.v68
  store i64 %344, i64* %3, align 8
  br i1 %335, label %block_421a7e, label %block_.L_421b0d

block_421a7e:                                     ; preds = %block_.L_421a65
  %345 = add i64 %344, 7
  store i64 %345, i64* %3, align 8
  %346 = load i64, i64* %244, align 8
  store i64 %346, i64* %RAX.i117, align 8
  %347 = add i64 %346, 20
  %348 = add i64 %344, 11
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  store i8 0, i8* %14, align 1
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %356 = icmp eq i32 %350, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %30, align 1
  %358 = lshr i32 %350, 31
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v70 = select i1 %356, i64 17, i64 143
  %360 = add i64 %344, %.v70
  store i64 %360, i64* %3, align 8
  br i1 %356, label %block_421a8f, label %block_.L_421b0d

block_421a8f:                                     ; preds = %block_421a7e
  %361 = add i64 %360, 7
  store i64 %361, i64* %3, align 8
  %362 = load i64, i64* %244, align 8
  store i64 %362, i64* %RAX.i117, align 8
  %363 = add i64 %362, 12
  %364 = add i64 %360, 11
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  store i8 0, i8* %14, align 1
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %372 = icmp eq i32 %366, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %30, align 1
  %374 = lshr i32 %366, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v71 = select i1 %372, i64 17, i64 62
  %376 = add i64 %360, %.v71
  %RSI.i714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %377 = add i64 %376, 10
  store i64 %377, i64* %3, align 8
  br i1 %372, label %block_421aa0, label %block_.L_421acd

block_421aa0:                                     ; preds = %block_421a8f
  store i64 ptrtoint (%G__0x429ae8_type* @G__0x429ae8 to i64), i64* %RSI.i714, align 8
  %378 = add i64 %241, -8
  %379 = add i64 %376, 14
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RDI.i163, align 8
  %RDX.i728 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %382 = add i64 %241, -24626
  %383 = add i64 %376, 21
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i8*
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i64
  %387 = and i64 %386, 4294967295
  store i64 %387, i64* %RDX.i728, align 8
  %388 = add i64 %241, -24620
  %389 = add i64 %376, 27
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX.i235, align 8
  %AL.i723 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i723, align 1
  %393 = add i64 %376, -134352
  %394 = add i64 %376, 34
  %395 = load i64, i64* %6, align 8
  %396 = add i64 %395, -8
  %397 = inttoptr i64 %396 to i64*
  store i64 %394, i64* %397, align 8
  store i64 %396, i64* %6, align 8
  store i64 %393, i64* %3, align 8
  %398 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i717 = bitcast %union.anon* %40 to i32*
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -24648
  %401 = load i32, i32* %EAX.i717, align 4
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 6
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %404, align 4
  %405 = load i64, i64* %3, align 8
  %406 = add i64 %405, 64
  store i64 %406, i64* %3, align 8
  br label %block_.L_421b08

block_.L_421acd:                                  ; preds = %block_421a8f
  store i64 ptrtoint (%G__0x429af0_type* @G__0x429af0 to i64), i64* %RSI.i714, align 8
  %407 = add i64 %241, -8
  %408 = add i64 %376, 14
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %RDI.i163, align 8
  %RDX.i708 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %411 = add i64 %241, -24626
  %412 = add i64 %376, 21
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i8*
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i64
  %416 = and i64 %415, 4294967295
  store i64 %416, i64* %RDX.i708, align 8
  %417 = add i64 %241, -24620
  %418 = add i64 %376, 27
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RCX.i235, align 8
  %422 = add i64 %376, 34
  store i64 %422, i64* %3, align 8
  %423 = load i64, i64* %244, align 8
  store i64 %423, i64* %RAX.i117, align 8
  %R8.i700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %424 = add i64 %423, 12
  %425 = add i64 %376, 38
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  store i64 %428, i64* %R8.i700, align 8
  %429 = shl nsw i64 %428, 2
  %430 = add nsw i64 %429, 4357664
  %431 = add i64 %376, 46
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %R8.i700, align 8
  %AL.i695 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i695, align 1
  %435 = add i64 %376, -134397
  %436 = add i64 %376, 53
  %437 = load i64, i64* %6, align 8
  %438 = add i64 %437, -8
  %439 = inttoptr i64 %438 to i64*
  store i64 %436, i64* %439, align 8
  store i64 %438, i64* %6, align 8
  store i64 %435, i64* %3, align 8
  %440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i688 = bitcast %union.anon* %40 to i32*
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -24652
  %443 = load i32, i32* %EAX.i688, align 4
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 6
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %442 to i32*
  store i32 %443, i32* %446, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_421b08

block_.L_421b08:                                  ; preds = %block_.L_421acd, %block_421aa0
  %447 = phi i64 [ %.pre42, %block_.L_421acd ], [ %406, %block_421aa0 ]
  %MEMORY.1 = phi %struct.Memory* [ %440, %block_.L_421acd ], [ %398, %block_421aa0 ]
  %448 = add i64 %447, 147
  br label %block_.L_421b9b

block_.L_421b0d:                                  ; preds = %block_421a7e, %block_.L_421a65
  %449 = phi i64 [ %360, %block_421a7e ], [ %344, %block_.L_421a65 ]
  %450 = add i64 %449, 7
  store i64 %450, i64* %3, align 8
  %451 = load i64, i64* %244, align 8
  store i64 %451, i64* %RAX.i117, align 8
  %452 = add i64 %451, 12
  %453 = add i64 %449, 11
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  store i8 0, i8* %14, align 1
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %461 = icmp eq i32 %455, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %30, align 1
  %463 = lshr i32 %455, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v69 = select i1 %461, i64 17, i64 70
  %465 = add i64 %449, %.v69
  %RSI.i655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %466 = add i64 %465, 10
  store i64 %466, i64* %3, align 8
  br i1 %461, label %block_421b1e, label %block_.L_421b53

block_421b1e:                                     ; preds = %block_.L_421b0d
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI.i655, align 8
  %467 = add i64 %241, -8
  %468 = add i64 %465, 14
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RDI.i163, align 8
  %RDX.i673 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %471 = add i64 %241, -24625
  %472 = add i64 %465, 21
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i8*
  %474 = load i8, i8* %473, align 1
  %475 = sext i8 %474 to i64
  %476 = and i64 %475, 4294967295
  store i64 %476, i64* %RDX.i673, align 8
  %477 = add i64 %241, -24626
  %478 = add i64 %465, 28
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i8*
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i64
  %482 = and i64 %481, 4294967295
  store i64 %482, i64* %RCX.i235, align 8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %484 = add i64 %241, -24620
  %485 = add i64 %465, 35
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %483, align 8
  %AL.i665 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i665, align 1
  %489 = add i64 %465, -134478
  %490 = add i64 %465, 42
  %491 = load i64, i64* %6, align 8
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %6, align 8
  store i64 %489, i64* %3, align 8
  %494 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i658 = bitcast %union.anon* %40 to i32*
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -24656
  %497 = load i32, i32* %EAX.i658, align 4
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 6
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %496 to i32*
  store i32 %497, i32* %500, align 4
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 72
  store i64 %502, i64* %3, align 8
  br label %block_.L_421b96

block_.L_421b53:                                  ; preds = %block_.L_421b0d
  store i64 ptrtoint (%G__0x429aed_type* @G__0x429aed to i64), i64* %RSI.i655, align 8
  %503 = add i64 %241, -8
  %504 = add i64 %465, 14
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RDI.i163, align 8
  %RDX.i649 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %507 = add i64 %241, -24625
  %508 = add i64 %465, 21
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i8*
  %510 = load i8, i8* %509, align 1
  %511 = sext i8 %510 to i64
  %512 = and i64 %511, 4294967295
  store i64 %512, i64* %RDX.i649, align 8
  %513 = add i64 %241, -24626
  %514 = add i64 %465, 28
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i8*
  %516 = load i8, i8* %515, align 1
  %517 = sext i8 %516 to i64
  %518 = and i64 %517, 4294967295
  store i64 %518, i64* %RCX.i235, align 8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %520 = add i64 %241, -24620
  %521 = add i64 %465, 35
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %519, align 8
  %525 = add i64 %465, 42
  store i64 %525, i64* %3, align 8
  %526 = load i64, i64* %244, align 8
  store i64 %526, i64* %RAX.i117, align 8
  %R9.i638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %527 = add i64 %526, 12
  %528 = add i64 %465, 46
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %R9.i638, align 8
  %532 = shl nsw i64 %531, 2
  %533 = add nsw i64 %532, 4357664
  %534 = add i64 %465, 54
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %R9.i638, align 8
  %AL.i633 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i633, align 1
  %538 = add i64 %465, -134531
  %539 = add i64 %465, 61
  %540 = load i64, i64* %6, align 8
  %541 = add i64 %540, -8
  %542 = inttoptr i64 %541 to i64*
  store i64 %539, i64* %542, align 8
  store i64 %541, i64* %6, align 8
  store i64 %538, i64* %3, align 8
  %543 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i626 = bitcast %union.anon* %40 to i32*
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -24660
  %546 = load i32, i32* %EAX.i626, align 4
  %547 = load i64, i64* %3, align 8
  %548 = add i64 %547, 6
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %545 to i32*
  store i32 %546, i32* %549, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_421b96

block_.L_421b96:                                  ; preds = %block_.L_421b53, %block_421b1e
  %550 = phi i64 [ %.pre43, %block_.L_421b53 ], [ %502, %block_421b1e ]
  %MEMORY.3 = phi %struct.Memory* [ %543, %block_.L_421b53 ], [ %494, %block_421b1e ]
  %551 = add i64 %550, 5
  store i64 %551, i64* %3, align 8
  br label %block_.L_421b9b

block_.L_421b9b:                                  ; preds = %block_.L_421b96, %block_.L_421b08
  %storemerge24 = phi i64 [ %448, %block_.L_421b08 ], [ %551, %block_.L_421b96 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_.L_421b08 ], [ %MEMORY.3, %block_.L_421b96 ]
  %552 = add i64 %storemerge24, 1107
  br label %block_.L_421fee

block_.L_421ba0:                                  ; preds = %block_421a4d
  %553 = add i64 %309, 7
  store i64 %553, i64* %3, align 8
  %554 = load i64, i64* %244, align 8
  store i64 %554, i64* %RAX.i117, align 8
  %555 = add i64 %554, 16
  %556 = add i64 %309, 11
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  store i8 0, i8* %14, align 1
  %559 = and i32 %558, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %564 = icmp eq i32 %558, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %30, align 1
  %566 = lshr i32 %558, 31
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v58 = select i1 %564, i64 115, i64 17
  %568 = add i64 %309, %.v58
  store i64 %568, i64* %3, align 8
  br i1 %564, label %block_.L_421c13, label %block_421bb1

block_421bb1:                                     ; preds = %block_.L_421ba0
  %569 = add i64 %568, 7
  store i64 %569, i64* %3, align 8
  %570 = load i64, i64* %244, align 8
  store i64 %570, i64* %RAX.i117, align 8
  %571 = add i64 %570, 16
  %572 = add i64 %568, 11
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
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
  %583 = xor i32 %575, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %27, align 1
  %587 = icmp eq i32 %575, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %30, align 1
  %589 = lshr i32 %575, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %33, align 1
  %591 = lshr i32 %574, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %591
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %39, align 1
  %.v59 = select i1 %587, i64 34, i64 17
  %596 = add i64 %568, %.v59
  store i64 %596, i64* %3, align 8
  br i1 %587, label %block_.L_421bd3, label %block_421bc2

block_421bc2:                                     ; preds = %block_421bb1
  %597 = add i64 %596, 7
  store i64 %597, i64* %3, align 8
  %598 = load i64, i64* %244, align 8
  store i64 %598, i64* %RAX.i117, align 8
  %599 = add i64 %598, 16
  %600 = add i64 %596, 11
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = add i32 %602, -3
  %604 = icmp ult i32 %602, 3
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %14, align 1
  %606 = and i32 %603, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  %611 = xor i32 %603, %602
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %27, align 1
  %615 = icmp eq i32 %603, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %30, align 1
  %617 = lshr i32 %603, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %33, align 1
  %619 = lshr i32 %602, 31
  %620 = xor i32 %617, %619
  %621 = add nuw nsw i32 %620, %619
  %622 = icmp eq i32 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %39, align 1
  %.v60 = select i1 %615, i64 17, i64 49
  %624 = add i64 %596, %.v60
  store i64 %624, i64* %3, align 8
  br i1 %615, label %block_.L_421bd3, label %block_.L_421bf3

block_.L_421bd3:                                  ; preds = %block_421bc2, %block_421bb1
  %625 = phi i64 [ %624, %block_421bc2 ], [ %596, %block_421bb1 ]
  %RSI.i604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x429afa_type* @G__0x429afa to i64), i64* %RSI.i604, align 8
  %626 = add i64 %241, -8
  %627 = add i64 %625, 14
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RDI.i163, align 8
  %AL.i599 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i599, align 1
  %630 = add i64 %625, -134659
  %631 = add i64 %625, 21
  %632 = load i64, i64* %6, align 8
  %633 = add i64 %632, -8
  %634 = inttoptr i64 %633 to i64*
  store i64 %631, i64* %634, align 8
  store i64 %633, i64* %6, align 8
  store i64 %630, i64* %3, align 8
  %635 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i593 = bitcast %union.anon* %40 to i32*
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -24664
  %638 = load i32, i32* %EAX.i593, align 4
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, 6
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %641, align 4
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 32
  store i64 %643, i64* %3, align 8
  br label %block_.L_421c0e

block_.L_421bf3:                                  ; preds = %block_421bc2
  %RSI.i590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x429af8_type* @G__0x429af8 to i64), i64* %RSI.i590, align 8
  %644 = add i64 %241, -8
  %645 = add i64 %624, 14
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RDI.i163, align 8
  %AL.i585 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i585, align 1
  %648 = add i64 %624, -134691
  %649 = add i64 %624, 21
  %650 = load i64, i64* %6, align 8
  %651 = add i64 %650, -8
  %652 = inttoptr i64 %651 to i64*
  store i64 %649, i64* %652, align 8
  store i64 %651, i64* %6, align 8
  store i64 %648, i64* %3, align 8
  %653 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  %EAX.i578 = bitcast %union.anon* %40 to i32*
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -24668
  %656 = load i32, i32* %EAX.i578, align 4
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, 6
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %655 to i32*
  store i32 %656, i32* %659, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_421c0e

block_.L_421c0e:                                  ; preds = %block_.L_421bf3, %block_.L_421bd3
  %660 = phi i64 [ %643, %block_.L_421bd3 ], [ %.pre, %block_.L_421bf3 ]
  %MEMORY.6 = phi %struct.Memory* [ %635, %block_.L_421bd3 ], [ %653, %block_.L_421bf3 ]
  %661 = add i64 %660, 987
  br label %block_.L_421fe9

block_.L_421c13:                                  ; preds = %block_.L_421ba0
  %662 = add i64 %241, -12304
  store i64 %662, i64* %RDI.i163, align 8
  %663 = add i64 %241, -24608
  %664 = add i64 %568, 17
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  store i32 -1, i32* %665, align 4
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -24600
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 10
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i32*
  store i32 0, i32* %670, align 4
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, -105982
  %673 = add i64 %671, 5
  %674 = load i64, i64* %6, align 8
  %675 = add i64 %674, -8
  %676 = inttoptr i64 %675 to i64*
  store i64 %673, i64* %676, align 8
  store i64 %675, i64* %6, align 8
  store i64 %672, i64* %3, align 8
  %call2_421c2e = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %672, %struct.Memory* %2)
  %677 = load i64, i64* %3, align 8
  %678 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RAX.i117, align 8
  %EAX.i564 = bitcast %union.anon* %40 to i32*
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -24600
  %682 = add i64 %677, 13
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  store i32 %678, i32* %683, align 4
  %684 = load i64, i64* %3, align 8
  %685 = add i64 %684, -99168
  %686 = add i64 %684, 5
  %687 = load i64, i64* %6, align 8
  %688 = add i64 %687, -8
  %689 = inttoptr i64 %688 to i64*
  store i64 %686, i64* %689, align 8
  store i64 %688, i64* %6, align 8
  store i64 %685, i64* %3, align 8
  %call2_421c40 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %685, %struct.Memory* %call2_421c2e)
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -24632
  %692 = load i32, i32* %EAX.i564, align 4
  %693 = load i64, i64* %3, align 8
  %694 = add i64 %693, 6
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %691 to i32*
  store i32 %692, i32* %695, align 4
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -24596
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 10
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %697 to i32*
  store i32 0, i32* %700, align 4
  %RDX.i538 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %RSI.i477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_421c55

block_.L_421c55:                                  ; preds = %block_.L_421d53, %block_.L_421c13
  %701 = phi i64 [ %.pre36, %block_.L_421c13 ], [ %1065, %block_.L_421d53 ]
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -24596
  %704 = add i64 %701, 6
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RAX.i117, align 8
  %708 = add i64 %702, -24600
  %709 = add i64 %701, 12
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = sub i32 %706, %711
  %713 = icmp ult i32 %706, %711
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %14, align 1
  %715 = and i32 %712, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %21, align 1
  %720 = xor i32 %711, %706
  %721 = xor i32 %720, %712
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %27, align 1
  %725 = icmp eq i32 %712, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %30, align 1
  %727 = lshr i32 %712, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %33, align 1
  %729 = lshr i32 %706, 31
  %730 = lshr i32 %711, 31
  %731 = xor i32 %730, %729
  %732 = xor i32 %727, %729
  %733 = add nuw nsw i32 %732, %731
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %39, align 1
  %736 = icmp ne i8 %728, 0
  %737 = xor i1 %736, %734
  %.v61 = select i1 %737, i64 18, i64 279
  %738 = add i64 %701, %.v61
  store i64 %738, i64* %3, align 8
  br i1 %737, label %block_421c67, label %block_.L_421d6c.loopexit

block_421c67:                                     ; preds = %block_.L_421c55
  %739 = add i64 %702, -12304
  store i64 %739, i64* %RAX.i117, align 8
  %740 = add i64 %738, 14
  store i64 %740, i64* %3, align 8
  %741 = load i32, i32* %705, align 4
  %742 = sext i32 %741 to i64
  %743 = mul nsw i64 %742, 24
  store i64 %743, i64* %RCX.i235, align 8
  %744 = lshr i64 %743, 63
  %745 = add i64 %743, %739
  store i64 %745, i64* %RAX.i117, align 8
  %746 = icmp ult i64 %745, %739
  %747 = icmp ult i64 %745, %743
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = trunc i64 %745 to i32
  %751 = and i32 %750, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %21, align 1
  %756 = xor i64 %743, %739
  %757 = xor i64 %756, %745
  %758 = lshr i64 %757, 4
  %759 = trunc i64 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %27, align 1
  %761 = icmp eq i64 %745, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %30, align 1
  %763 = lshr i64 %745, 63
  %764 = trunc i64 %763 to i8
  store i8 %764, i8* %33, align 1
  %765 = lshr i64 %739, 63
  %766 = xor i64 %763, %765
  %767 = xor i64 %763, %744
  %768 = add nuw nsw i64 %766, %767
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %39, align 1
  %771 = add i64 %745, 4
  %772 = add i64 %738, 24
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RDX.i538, align 8
  %776 = add i64 %702, -24640
  %777 = add i64 %738, 31
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %RAX.i117, align 8
  %780 = add i64 %779, 4
  %781 = add i64 %738, 34
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = sub i32 %774, %783
  %785 = icmp ult i32 %774, %783
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %14, align 1
  %787 = and i32 %784, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %21, align 1
  %792 = xor i32 %783, %774
  %793 = xor i32 %792, %784
  %794 = lshr i32 %793, 4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  store i8 %796, i8* %27, align 1
  %797 = icmp eq i32 %784, 0
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %30, align 1
  %799 = lshr i32 %784, 31
  %800 = trunc i32 %799 to i8
  store i8 %800, i8* %33, align 1
  %801 = lshr i32 %774, 31
  %802 = lshr i32 %783, 31
  %803 = xor i32 %802, %801
  %804 = xor i32 %799, %801
  %805 = add nuw nsw i32 %804, %803
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %39, align 1
  %.v64 = select i1 %797, i64 40, i64 236
  %808 = add i64 %738, %.v64
  store i64 %808, i64* %3, align 8
  br i1 %797, label %block_421c8f, label %block_.L_421d53

block_421c8f:                                     ; preds = %block_421c67
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -12304
  store i64 %810, i64* %RAX.i117, align 8
  %811 = add i64 %809, -24596
  %812 = add i64 %808, 14
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sext i32 %814 to i64
  %816 = mul nsw i64 %815, 24
  store i64 %816, i64* %RCX.i235, align 8
  %817 = lshr i64 %816, 63
  %818 = add i64 %816, %810
  store i64 %818, i64* %RAX.i117, align 8
  %819 = icmp ult i64 %818, %810
  %820 = icmp ult i64 %818, %816
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = trunc i64 %818 to i32
  %824 = and i32 %823, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %21, align 1
  %829 = xor i64 %816, %810
  %830 = xor i64 %829, %818
  %831 = lshr i64 %830, 4
  %832 = trunc i64 %831 to i8
  %833 = and i8 %832, 1
  store i8 %833, i8* %27, align 1
  %834 = icmp eq i64 %818, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %30, align 1
  %836 = lshr i64 %818, 63
  %837 = trunc i64 %836 to i8
  store i8 %837, i8* %33, align 1
  %838 = lshr i64 %810, 63
  %839 = xor i64 %836, %838
  %840 = xor i64 %836, %817
  %841 = add nuw nsw i64 %839, %840
  %842 = icmp eq i64 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %39, align 1
  %844 = inttoptr i64 %818 to i32*
  %845 = add i64 %808, 24
  store i64 %845, i64* %3, align 8
  %846 = load i32, i32* %844, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RAX.i117, align 8
  %848 = shl nsw i64 %847, 2
  %849 = add nsw i64 %848, 8807744
  %850 = add i64 %808, 31
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RDX.i538, align 8
  %854 = add i64 %809, -24640
  %855 = add i64 %808, 38
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i117, align 8
  %858 = add i64 %808, 41
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RCX.i235, align 8
  %862 = shl nsw i64 %861, 2
  %863 = add nsw i64 %862, 8807744
  %864 = add i64 %808, 48
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sub i32 %852, %866
  %868 = icmp ult i32 %852, %866
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %14, align 1
  %870 = and i32 %867, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %21, align 1
  %875 = xor i32 %866, %852
  %876 = xor i32 %875, %867
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %27, align 1
  %880 = icmp eq i32 %867, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %30, align 1
  %882 = lshr i32 %867, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %33, align 1
  %884 = lshr i32 %852, 31
  %885 = lshr i32 %866, 31
  %886 = xor i32 %885, %884
  %887 = xor i32 %882, %884
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %39, align 1
  %.v65 = select i1 %880, i64 54, i64 196
  %891 = add i64 %808, %.v65
  store i64 %891, i64* %3, align 8
  br i1 %880, label %block_421cc5, label %block_.L_421d53

block_421cc5:                                     ; preds = %block_421c8f
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -12304
  store i64 %893, i64* %RAX.i117, align 8
  %894 = add i64 %892, -24596
  %895 = add i64 %891, 14
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = sext i32 %897 to i64
  %899 = mul nsw i64 %898, 24
  store i64 %899, i64* %RCX.i235, align 8
  %900 = lshr i64 %899, 63
  %901 = add i64 %899, %893
  store i64 %901, i64* %RAX.i117, align 8
  %902 = icmp ult i64 %901, %893
  %903 = icmp ult i64 %901, %899
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = trunc i64 %901 to i32
  %907 = and i32 %906, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %21, align 1
  %912 = xor i64 %899, %893
  %913 = xor i64 %912, %901
  %914 = lshr i64 %913, 4
  %915 = trunc i64 %914 to i8
  %916 = and i8 %915, 1
  store i8 %916, i8* %27, align 1
  %917 = icmp eq i64 %901, 0
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %30, align 1
  %919 = lshr i64 %901, 63
  %920 = trunc i64 %919 to i8
  store i8 %920, i8* %33, align 1
  %921 = lshr i64 %893, 63
  %922 = xor i64 %919, %921
  %923 = xor i64 %919, %900
  %924 = add nuw nsw i64 %922, %923
  %925 = icmp eq i64 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %39, align 1
  %927 = inttoptr i64 %901 to i32*
  %928 = add i64 %891, 23
  store i64 %928, i64* %3, align 8
  %929 = load i32, i32* %927, align 4
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RDX.i538, align 8
  %931 = add i64 %892, -24640
  %932 = add i64 %891, 30
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RAX.i117, align 8
  %935 = add i64 %891, 32
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sub i32 %929, %937
  %939 = icmp ult i32 %929, %937
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %14, align 1
  %941 = and i32 %938, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %21, align 1
  %946 = xor i32 %937, %929
  %947 = xor i32 %946, %938
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %27, align 1
  %951 = icmp eq i32 %938, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %30, align 1
  %953 = lshr i32 %938, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %33, align 1
  %955 = lshr i32 %929, 31
  %956 = lshr i32 %937, 31
  %957 = xor i32 %956, %955
  %958 = xor i32 %953, %955
  %959 = add nuw nsw i32 %958, %957
  %960 = icmp eq i32 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %39, align 1
  %.v66 = select i1 %951, i64 142, i64 38
  %962 = add i64 %891, %.v66
  store i64 %962, i64* %3, align 8
  br i1 %951, label %block_.L_421d53, label %block_421ceb

block_421ceb:                                     ; preds = %block_421cc5
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -12304
  store i64 %964, i64* %RDI.i163, align 8
  %965 = add i64 %963, -24596
  %966 = add i64 %962, 13
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RSI.i477, align 8
  %970 = add i64 %962, -91579
  %971 = add i64 %962, 18
  %972 = load i64, i64* %6, align 8
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %971, i64* %974, align 8
  store i64 %973, i64* %6, align 8
  store i64 %970, i64* %3, align 8
  %call2_421cf8 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %970, %struct.Memory* %call2_421c40)
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -12304
  %977 = load i64, i64* %3, align 8
  store i64 %976, i64* %RDI.i163, align 8
  %978 = add i64 %975, -24596
  %979 = add i64 %977, 13
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RSI.i477, align 8
  %983 = add i64 %975, -24632
  %984 = add i64 %977, 19
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RDX.i538, align 8
  %988 = add i64 %977, -112253
  %989 = add i64 %977, 24
  %990 = load i64, i64* %6, align 8
  %991 = add i64 %990, -8
  %992 = inttoptr i64 %991 to i64*
  store i64 %989, i64* %992, align 8
  store i64 %991, i64* %6, align 8
  store i64 %988, i64* %3, align 8
  %call2_421d10 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %988, %struct.Memory* %call2_421c40)
  %993 = load i32, i32* %EAX.i564, align 4
  %994 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %995 = and i32 %993, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1000 = icmp eq i32 %993, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %30, align 1
  %1002 = lshr i32 %993, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v67 = select i1 %1000, i64 44, i64 9
  %1004 = add i64 %994, %.v67
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -12304
  store i64 %1006, i64* %RDI.i163, align 8
  %1007 = add i64 %1005, -24596
  %1008 = add i64 %1004, 13
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RSI.i477, align 8
  br i1 %1000, label %block_.L_421d41, label %block_421d1e

block_421d1e:                                     ; preds = %block_421ceb
  %1012 = add i64 %1004, -87422
  %1013 = add i64 %1004, 18
  %1014 = load i64, i64* %6, align 8
  %1015 = add i64 %1014, -8
  %1016 = inttoptr i64 %1015 to i64*
  store i64 %1013, i64* %1016, align 8
  store i64 %1015, i64* %6, align 8
  store i64 %1012, i64* %3, align 8
  %call2_421d2b = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1012, %struct.Memory* %call2_421c40)
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -24596
  %1019 = load i64, i64* %3, align 8
  %1020 = add i64 %1019, 6
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1018 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RSI.i477, align 8
  %1024 = add i64 %1017, -24608
  %1025 = add i64 %1019, 12
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  store i32 %1022, i32* %1026, align 4
  %1027 = load i64, i64* %3, align 8
  %1028 = add i64 %1027, 48
  store i64 %1028, i64* %3, align 8
  %.pre37 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421d6c

block_.L_421d41:                                  ; preds = %block_421ceb
  %1029 = add i64 %1004, -87457
  %1030 = add i64 %1004, 18
  %1031 = load i64, i64* %6, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033, align 8
  store i64 %1032, i64* %6, align 8
  store i64 %1029, i64* %3, align 8
  %call2_421d4e = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1029, %struct.Memory* %call2_421c40)
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_421d53

block_.L_421d53:                                  ; preds = %block_421c8f, %block_421c67, %block_.L_421d41, %block_421cc5
  %1034 = phi i64 [ %.pre41, %block_.L_421d41 ], [ %962, %block_421cc5 ], [ %891, %block_421c8f ], [ %808, %block_421c67 ]
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -24596
  %1037 = add i64 %1034, 11
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = add i32 %1039, 1
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i117, align 8
  %1042 = icmp eq i32 %1039, -1
  %1043 = icmp eq i32 %1040, 0
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1040, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1040, %1039
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %27, align 1
  %1055 = zext i1 %1043 to i8
  store i8 %1055, i8* %30, align 1
  %1056 = lshr i32 %1040, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %33, align 1
  %1058 = lshr i32 %1039, 31
  %1059 = xor i32 %1056, %1058
  %1060 = add nuw nsw i32 %1059, %1056
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %39, align 1
  %1063 = add i64 %1034, 20
  store i64 %1063, i64* %3, align 8
  store i32 %1040, i32* %1038, align 4
  %1064 = load i64, i64* %3, align 8
  %1065 = add i64 %1064, -274
  store i64 %1065, i64* %3, align 8
  br label %block_.L_421c55

block_.L_421d6c.loopexit:                         ; preds = %block_.L_421c55
  br label %block_.L_421d6c

block_.L_421d6c:                                  ; preds = %block_.L_421d6c.loopexit, %block_421d1e
  %1066 = phi i64 [ %1028, %block_421d1e ], [ %738, %block_.L_421d6c.loopexit ]
  %1067 = phi i64 [ %.pre37, %block_421d1e ], [ %702, %block_.L_421d6c.loopexit ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_421d2b, %block_421d1e ], [ %call2_421c40, %block_.L_421d6c.loopexit ]
  %1068 = add i64 %1067, -24608
  %1069 = add i64 %1066, 7
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = add i32 %1071, 1
  %1073 = icmp ne i32 %1071, -1
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = and i32 %1072, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %21, align 1
  %1080 = xor i32 %1071, 16
  %1081 = xor i32 %1080, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %27, align 1
  %1085 = icmp eq i32 %1072, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %30, align 1
  %1087 = lshr i32 %1072, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %33, align 1
  %1089 = lshr i32 %1071, 31
  %1090 = xor i32 %1089, 1
  %1091 = xor i32 %1087, %1089
  %1092 = add nuw nsw i32 %1091, %1090
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %39, align 1
  %.v = select i1 %1085, i64 465, i64 13
  %1095 = add i64 %1066, %.v
  %1096 = add i64 %1067, -24640
  %1097 = add i64 %1095, 7
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %RAX.i117, align 8
  %1100 = add i64 %1099, 4
  %1101 = add i64 %1095, 11
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  store i64 %1104, i64* %RCX.i235, align 8
  %1105 = shl nsw i64 %1104, 2
  %1106 = add nsw i64 %1105, 8807744
  %1107 = add i64 %1095, 19
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = add i32 %1109, -13
  %1111 = icmp ult i32 %1109, 13
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1110, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %27, align 1
  %1122 = icmp eq i32 %1110, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1110, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  %1126 = lshr i32 %1109, 31
  %1127 = xor i32 %1124, %1126
  %1128 = add nuw nsw i32 %1127, %1126
  %1129 = icmp eq i32 %1128, 2
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %39, align 1
  br i1 %1085, label %block_.L_421f3d, label %block_421d79

block_421d79:                                     ; preds = %block_.L_421d6c
  %.v50 = select i1 %1122, i64 25, i64 236
  %1131 = add i64 %1095, %.v50
  %1132 = add i64 %1067, -12304
  store i64 %1132, i64* %RAX.i117, align 8
  %1133 = add i64 %1131, 14
  store i64 %1133, i64* %3, align 8
  %1134 = load i32, i32* %1070, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = mul nsw i64 %1135, 24
  store i64 %1136, i64* %RCX.i235, align 8
  %1137 = lshr i64 %1136, 63
  %1138 = add i64 %1136, %1132
  store i64 %1138, i64* %RAX.i117, align 8
  %1139 = icmp ult i64 %1138, %1132
  %1140 = icmp ult i64 %1138, %1136
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %14, align 1
  %1143 = trunc i64 %1138 to i32
  %1144 = and i32 %1143, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  %1149 = xor i64 %1136, %1132
  %1150 = xor i64 %1149, %1138
  %1151 = lshr i64 %1150, 4
  %1152 = trunc i64 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %27, align 1
  %1154 = icmp eq i64 %1138, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %30, align 1
  %1156 = lshr i64 %1138, 63
  %1157 = trunc i64 %1156 to i8
  store i8 %1157, i8* %33, align 1
  %1158 = lshr i64 %1132, 63
  %1159 = xor i64 %1156, %1158
  %1160 = xor i64 %1156, %1137
  %1161 = add nuw nsw i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %39, align 1
  %1164 = inttoptr i64 %1138 to i32*
  %1165 = add i64 %1131, 24
  store i64 %1165, i64* %3, align 8
  %1166 = load i32, i32* %1164, align 4
  %1167 = sext i32 %1166 to i64
  store i64 %1167, i64* %RAX.i117, align 8
  %1168 = shl nsw i64 %1167, 2
  %1169 = add nsw i64 %1168, 4347472
  %1170 = add i64 %1131, 31
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RDX.i538, align 8
  %1174 = add i64 %1131, 38
  store i64 %1174, i64* %3, align 8
  %1175 = load i64, i64* %1098, align 8
  store i64 %1175, i64* %RAX.i117, align 8
  %1176 = add i64 %1131, 41
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sext i32 %1178 to i64
  store i64 %1179, i64* %RCX.i235, align 8
  %1180 = shl nsw i64 %1179, 2
  %1181 = add nsw i64 %1180, 4347472
  %1182 = add i64 %1131, 48
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sub i32 %1172, %1184
  %1186 = icmp ult i32 %1172, %1184
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1
  %1188 = and i32 %1185, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i32 %1184, %1172
  %1194 = xor i32 %1193, %1185
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = icmp eq i32 %1185, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i32 %1185, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %33, align 1
  %1202 = lshr i32 %1172, 31
  %1203 = lshr i32 %1184, 31
  %1204 = xor i32 %1203, %1202
  %1205 = xor i32 %1200, %1202
  %1206 = add nuw nsw i32 %1205, %1204
  %1207 = icmp eq i32 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %39, align 1
  %.v62 = select i1 %1198, i64 133, i64 54
  %1209 = add i64 %1131, %.v62
  %RSI.i263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %1210 = add i64 %1209, 10
  store i64 %1210, i64* %3, align 8
  br i1 %1122, label %block_421d92, label %block_.L_421e65

block_421d92:                                     ; preds = %block_421d79
  br i1 %1198, label %block_.L_421e17, label %block_421dc8

block_421dc8:                                     ; preds = %block_421d92
  store i64 ptrtoint (%G__0x429afe_type* @G__0x429afe to i64), i64* %RSI.i263, align 8
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -8
  %1213 = add i64 %1209, 14
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RDI.i163, align 8
  %1216 = add i64 %1211, -24640
  %1217 = add i64 %1209, 21
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %RAX.i117, align 8
  %1220 = add i64 %1209, 24
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = sext i32 %1222 to i64
  store i64 %1223, i64* %RCX.i235, align 8
  %1224 = shl nsw i64 %1223, 2
  %1225 = add nsw i64 %1224, 8807744
  %1226 = add i64 %1209, 32
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i235, align 8
  %1230 = shl nsw i64 %1229, 2
  %1231 = add nsw i64 %1230, 4357664
  %1232 = add i64 %1209, 39
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RDX.i538, align 8
  %1236 = add i64 %1211, -24625
  %1237 = add i64 %1209, 46
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i8*
  %1239 = load i8, i8* %1238, align 1
  %1240 = sext i8 %1239 to i64
  %1241 = and i64 %1240, 4294967295
  store i64 %1241, i64* %RCX.i235, align 8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1243 = add i64 %1211, -24626
  %1244 = add i64 %1209, 54
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i8*
  %1246 = load i8, i8* %1245, align 1
  %1247 = sext i8 %1246 to i64
  %1248 = and i64 %1247, 4294967295
  store i64 %1248, i64* %1242, align 8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1250 = add i64 %1211, -24620
  %1251 = add i64 %1209, 61
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %1249, align 8
  %AL.i367 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i367, align 1
  %1255 = add i64 %1209, -135160
  %1256 = add i64 %1209, 68
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %1260 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -24672
  %1263 = load i32, i32* %EAX.i564, align 4
  %1264 = load i64, i64* %3, align 8
  %1265 = add i64 %1264, 6
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1262 to i32*
  store i32 %1263, i32* %1266, align 4
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 78
  store i64 %1268, i64* %3, align 8
  br label %block_.L_421e60

block_.L_421e17:                                  ; preds = %block_421d92
  store i64 ptrtoint (%G__0x429b07_type* @G__0x429b07 to i64), i64* %RSI.i263, align 8
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -8
  %1271 = add i64 %1209, 14
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RDI.i163, align 8
  %1274 = add i64 %1269, -24640
  %1275 = add i64 %1209, 21
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RAX.i117, align 8
  %1278 = add i64 %1209, 24
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = sext i32 %1280 to i64
  store i64 %1281, i64* %RCX.i235, align 8
  %1282 = shl nsw i64 %1281, 2
  %1283 = add nsw i64 %1282, 8807744
  %1284 = add i64 %1209, 32
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sext i32 %1286 to i64
  store i64 %1287, i64* %RCX.i235, align 8
  %1288 = shl nsw i64 %1287, 2
  %1289 = add nsw i64 %1288, 4357664
  %1290 = add i64 %1209, 39
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RDX.i538, align 8
  %1294 = add i64 %1269, -24616
  %1295 = add i64 %1209, 45
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i235, align 8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1300 = add i64 %1269, -24626
  %1301 = add i64 %1209, 53
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i8*
  %1303 = load i8, i8* %1302, align 1
  %1304 = sext i8 %1303 to i64
  %1305 = and i64 %1304, 4294967295
  store i64 %1305, i64* %1299, align 8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1307 = add i64 %1269, -24620
  %1308 = add i64 %1209, 60
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %1306, align 8
  %AL.i332 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i332, align 1
  %1312 = add i64 %1209, -135239
  %1313 = add i64 %1209, 67
  %1314 = load i64, i64* %6, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1313, i64* %1316, align 8
  store i64 %1315, i64* %6, align 8
  store i64 %1312, i64* %3, align 8
  %1317 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -24676
  %1320 = load i32, i32* %EAX.i564, align 4
  %1321 = load i64, i64* %3, align 8
  %1322 = add i64 %1321, 6
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1319 to i32*
  store i32 %1320, i32* %1323, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_421e60

block_.L_421e60:                                  ; preds = %block_.L_421e17, %block_421dc8
  %1324 = phi i64 [ %.pre38, %block_.L_421e17 ], [ %1268, %block_421dc8 ]
  %MEMORY.10 = phi %struct.Memory* [ %1317, %block_.L_421e17 ], [ %1260, %block_421dc8 ]
  %1325 = add i64 %1324, 216
  br label %block_.L_421f38

block_.L_421e65:                                  ; preds = %block_421d79
  br i1 %1198, label %block_.L_421eea, label %block_421e9b

block_421e9b:                                     ; preds = %block_.L_421e65
  store i64 ptrtoint (%G__0x429b10_type* @G__0x429b10 to i64), i64* %RSI.i263, align 8
  %1326 = load i64, i64* %RBP.i, align 8
  %1327 = add i64 %1326, -8
  %1328 = add i64 %1209, 14
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RDI.i163, align 8
  %1331 = add i64 %1326, -24640
  %1332 = add i64 %1209, 21
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RAX.i117, align 8
  %1335 = add i64 %1209, 24
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = sext i32 %1337 to i64
  store i64 %1338, i64* %RCX.i235, align 8
  %1339 = shl nsw i64 %1338, 2
  %1340 = add nsw i64 %1339, 8807744
  %1341 = add i64 %1209, 32
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = sext i32 %1343 to i64
  store i64 %1344, i64* %RCX.i235, align 8
  %1345 = shl nsw i64 %1344, 2
  %1346 = add nsw i64 %1345, 4357664
  %1347 = add i64 %1209, 39
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RDX.i538, align 8
  %1351 = add i64 %1326, -24625
  %1352 = add i64 %1209, 46
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i8*
  %1354 = load i8, i8* %1353, align 1
  %1355 = sext i8 %1354 to i64
  %1356 = and i64 %1355, 4294967295
  store i64 %1356, i64* %RCX.i235, align 8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1358 = add i64 %1326, -24626
  %1359 = add i64 %1209, 54
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i8*
  %1361 = load i8, i8* %1360, align 1
  %1362 = sext i8 %1361 to i64
  %1363 = and i64 %1362, 4294967295
  store i64 %1363, i64* %1357, align 8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1365 = add i64 %1326, -24620
  %1366 = add i64 %1209, 61
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %1364, align 8
  %AL.i272 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i272, align 1
  %1370 = add i64 %1209, -135371
  %1371 = add i64 %1209, 68
  %1372 = load i64, i64* %6, align 8
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1371, i64* %1374, align 8
  store i64 %1373, i64* %6, align 8
  store i64 %1370, i64* %3, align 8
  %1375 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -24680
  %1378 = load i32, i32* %EAX.i564, align 4
  %1379 = load i64, i64* %3, align 8
  %1380 = add i64 %1379, 6
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1377 to i32*
  store i32 %1378, i32* %1381, align 4
  %1382 = load i64, i64* %3, align 8
  %1383 = add i64 %1382, 78
  store i64 %1383, i64* %3, align 8
  br label %block_.L_421f33

block_.L_421eea:                                  ; preds = %block_.L_421e65
  store i64 ptrtoint (%G__0x429b1a_type* @G__0x429b1a to i64), i64* %RSI.i263, align 8
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -8
  %1386 = add i64 %1209, 14
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RDI.i163, align 8
  %1389 = add i64 %1384, -24640
  %1390 = add i64 %1209, 21
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RAX.i117, align 8
  %1393 = add i64 %1209, 24
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = sext i32 %1395 to i64
  store i64 %1396, i64* %RCX.i235, align 8
  %1397 = shl nsw i64 %1396, 2
  %1398 = add nsw i64 %1397, 8807744
  %1399 = add i64 %1209, 32
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = sext i32 %1401 to i64
  store i64 %1402, i64* %RCX.i235, align 8
  %1403 = shl nsw i64 %1402, 2
  %1404 = add nsw i64 %1403, 4357664
  %1405 = add i64 %1209, 39
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RDX.i538, align 8
  %1409 = add i64 %1384, -24616
  %1410 = add i64 %1209, 45
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RCX.i235, align 8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1415 = add i64 %1384, -24626
  %1416 = add i64 %1209, 53
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i8*
  %1418 = load i8, i8* %1417, align 1
  %1419 = sext i8 %1418 to i64
  %1420 = and i64 %1419, 4294967295
  store i64 %1420, i64* %1414, align 8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1422 = add i64 %1384, -24620
  %1423 = add i64 %1209, 60
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %1421, align 8
  %AL.i239 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i239, align 1
  %1427 = add i64 %1209, -135450
  %1428 = add i64 %1209, 67
  %1429 = load i64, i64* %6, align 8
  %1430 = add i64 %1429, -8
  %1431 = inttoptr i64 %1430 to i64*
  store i64 %1428, i64* %1431, align 8
  store i64 %1430, i64* %6, align 8
  store i64 %1427, i64* %3, align 8
  %1432 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -24684
  %1435 = load i32, i32* %EAX.i564, align 4
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, 6
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1434 to i32*
  store i32 %1435, i32* %1438, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_421f33

block_.L_421f33:                                  ; preds = %block_.L_421eea, %block_421e9b
  %1439 = phi i64 [ %.pre39, %block_.L_421eea ], [ %1383, %block_421e9b ]
  %MEMORY.11 = phi %struct.Memory* [ %1432, %block_.L_421eea ], [ %1375, %block_421e9b ]
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %3, align 8
  br label %block_.L_421f38

block_.L_421f38:                                  ; preds = %block_.L_421f33, %block_.L_421e60
  %storemerge27 = phi i64 [ %1325, %block_.L_421e60 ], [ %1440, %block_.L_421f33 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.10, %block_.L_421e60 ], [ %MEMORY.11, %block_.L_421f33 ]
  %1441 = add i64 %storemerge27, 172
  br label %block_.L_421fe4

block_.L_421f3d:                                  ; preds = %block_.L_421d6c
  %.v63 = select i1 %1122, i64 25, i64 96
  %1442 = add i64 %1095, %.v63
  %RSI.i187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %1443 = add i64 %1442, 10
  store i64 %1443, i64* %3, align 8
  br i1 %1122, label %block_421f56, label %block_.L_421f9d

block_421f56:                                     ; preds = %block_.L_421f3d
  store i64 ptrtoint (%G__0x429b00_type* @G__0x429b00 to i64), i64* %RSI.i187, align 8
  %1444 = add i64 %1067, -8
  %1445 = add i64 %1442, 14
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i64*
  %1447 = load i64, i64* %1446, align 8
  store i64 %1447, i64* %RDI.i163, align 8
  %1448 = add i64 %1442, 21
  store i64 %1448, i64* %3, align 8
  %1449 = load i64, i64* %1098, align 8
  store i64 %1449, i64* %RAX.i117, align 8
  %1450 = add i64 %1442, 24
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = sext i32 %1452 to i64
  store i64 %1453, i64* %RCX.i235, align 8
  %1454 = shl nsw i64 %1453, 2
  %1455 = add nsw i64 %1454, 8807744
  %1456 = add i64 %1442, 32
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i235, align 8
  %1460 = shl nsw i64 %1459, 2
  %1461 = add nsw i64 %1460, 4357664
  %1462 = add i64 %1442, 39
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RDX.i538, align 8
  %1466 = add i64 %1067, -24626
  %1467 = add i64 %1442, 46
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i8*
  %1469 = load i8, i8* %1468, align 1
  %1470 = sext i8 %1469 to i64
  %1471 = and i64 %1470, 4294967295
  store i64 %1471, i64* %RCX.i235, align 8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1473 = add i64 %1067, -24620
  %1474 = add i64 %1442, 53
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %1472, align 8
  %AL.i197 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i197, align 1
  %1478 = add i64 %1442, -135558
  %1479 = add i64 %1442, 60
  %1480 = load i64, i64* %6, align 8
  %1481 = add i64 %1480, -8
  %1482 = inttoptr i64 %1481 to i64*
  store i64 %1479, i64* %1482, align 8
  store i64 %1481, i64* %6, align 8
  store i64 %1478, i64* %3, align 8
  %1483 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -24688
  %1486 = load i32, i32* %EAX.i564, align 4
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 6
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1485 to i32*
  store i32 %1486, i32* %1489, align 4
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, 71
  store i64 %1491, i64* %3, align 8
  br label %block_.L_421fdf

block_.L_421f9d:                                  ; preds = %block_.L_421f3d
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI.i187, align 8
  %1492 = add i64 %1067, -8
  %1493 = add i64 %1442, 14
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %RDI.i163, align 8
  %1496 = add i64 %1442, 21
  store i64 %1496, i64* %3, align 8
  %1497 = load i64, i64* %1098, align 8
  store i64 %1497, i64* %RAX.i117, align 8
  %1498 = add i64 %1442, 24
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i235, align 8
  %1502 = shl nsw i64 %1501, 2
  %1503 = add nsw i64 %1502, 8807744
  %1504 = add i64 %1442, 32
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i235, align 8
  %1508 = shl nsw i64 %1507, 2
  %1509 = add nsw i64 %1508, 4357664
  %1510 = add i64 %1442, 39
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RDX.i538, align 8
  %1514 = add i64 %1067, -24626
  %1515 = add i64 %1442, 46
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i8*
  %1517 = load i8, i8* %1516, align 1
  %1518 = sext i8 %1517 to i64
  %1519 = and i64 %1518, 4294967295
  store i64 %1519, i64* %RCX.i235, align 8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1521 = add i64 %1067, -24620
  %1522 = add i64 %1442, 53
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %1520, align 8
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i, align 1
  %1526 = add i64 %1442, -135629
  %1527 = add i64 %1442, 60
  %1528 = load i64, i64* %6, align 8
  %1529 = add i64 %1528, -8
  %1530 = inttoptr i64 %1529 to i64*
  store i64 %1527, i64* %1530, align 8
  store i64 %1529, i64* %6, align 8
  store i64 %1526, i64* %3, align 8
  %1531 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.9)
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -24692
  %1534 = load i32, i32* %EAX.i564, align 4
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, 6
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1533 to i32*
  store i32 %1534, i32* %1537, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_421fdf

block_.L_421fdf:                                  ; preds = %block_.L_421f9d, %block_421f56
  %1538 = phi i64 [ %.pre40, %block_.L_421f9d ], [ %1491, %block_421f56 ]
  %MEMORY.13 = phi %struct.Memory* [ %1531, %block_.L_421f9d ], [ %1483, %block_421f56 ]
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %3, align 8
  br label %block_.L_421fe4

block_.L_421fe4:                                  ; preds = %block_.L_421fdf, %block_.L_421f38
  %storemerge28 = phi i64 [ %1441, %block_.L_421f38 ], [ %1539, %block_.L_421fdf ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.12, %block_.L_421f38 ], [ %MEMORY.13, %block_.L_421fdf ]
  %1540 = add i64 %storemerge28, 5
  store i64 %1540, i64* %3, align 8
  br label %block_.L_421fe9

block_.L_421fe9:                                  ; preds = %block_.L_421fe4, %block_.L_421c0e
  %storemerge26 = phi i64 [ %661, %block_.L_421c0e ], [ %1540, %block_.L_421fe4 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.6, %block_.L_421c0e ], [ %MEMORY.14, %block_.L_421fe4 ]
  %1541 = add i64 %storemerge26, 5
  store i64 %1541, i64* %3, align 8
  br label %block_.L_421fee

block_.L_421fee:                                  ; preds = %block_.L_421fe9, %block_.L_421b9b
  %storemerge25 = phi i64 [ %552, %block_.L_421b9b ], [ %1541, %block_.L_421fe9 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.4, %block_.L_421b9b ], [ %MEMORY.15, %block_.L_421fe9 ]
  %1542 = add i64 %storemerge25, 5
  store i64 %1542, i64* %3, align 8
  %.pre48 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0
  %.pre49 = bitcast %union.anon* %40 to i32*
  br label %block_.L_421ff3

block_.L_421ff3:                                  ; preds = %block_.L_421fee, %block_4219f5
  %EAX.i138.pre-phi = phi i32* [ %.pre49, %block_.L_421fee ], [ %EAX.i776, %block_4219f5 ]
  %RDX.i144.pre-phi = phi i64* [ %.pre48, %block_.L_421fee ], [ %RDX.i790, %block_4219f5 ]
  %storemerge = phi i64 [ %1542, %block_.L_421fee ], [ %240, %block_4219f5 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_.L_421fee ], [ %232, %block_4219f5 ]
  %RSI.i154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i154, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -24640
  %1545 = add i64 %storemerge, 9
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RDI.i163, align 8
  %1548 = add i64 %storemerge, -92355
  %1549 = add i64 %storemerge, 14
  %1550 = load i64, i64* %6, align 8
  %1551 = add i64 %1550, -8
  %1552 = inttoptr i64 %1551 to i64*
  store i64 %1549, i64* %1552, align 8
  store i64 %1551, i64* %6, align 8
  store i64 %1548, i64* %3, align 8
  %call2_421ffc = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1548, %struct.Memory* %MEMORY.17)
  %1553 = load i64, i64* %3, align 8
  store i64 0, i64* %RSI.i154, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 1, i64* %RDX.i144.pre-phi, align 8
  %1554 = load i64, i64* %RBP.i, align 8
  %1555 = add i64 %1554, -24640
  %1556 = add i64 %1553, 14
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RDI.i163, align 8
  %1559 = add i64 %1553, -113025
  %1560 = add i64 %1553, 19
  %1561 = load i64, i64* %6, align 8
  %1562 = add i64 %1561, -8
  %1563 = inttoptr i64 %1562 to i64*
  store i64 %1560, i64* %1563, align 8
  store i64 %1562, i64* %6, align 8
  store i64 %1559, i64* %3, align 8
  %call2_42200f = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1559, %struct.Memory* %call2_421ffc)
  %1564 = load i32, i32* %EAX.i138.pre-phi, align 4
  %1565 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1566 = and i32 %1564, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1571 = icmp eq i32 %1564, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %30, align 1
  %1573 = lshr i32 %1564, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v51 = select i1 %1571, i64 9, i64 66
  %1575 = add i64 %1565, %.v51
  store i64 %1575, i64* %3, align 8
  br i1 %1571, label %block_42201d, label %block_.L_422056

block_42201d:                                     ; preds = %block_.L_421ff3
  store i64 0, i64* %RSI.i154, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -8
  %1578 = add i64 %1575, 6
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i64*
  %1580 = load i64, i64* %1579, align 8
  store i64 %1580, i64* %RDI.i163, align 8
  store i64 and (i64 ptrtoint (%G__0x429b24_type* @G__0x429b24 to i64), i64 4294967295), i64* %RAX.i117, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x429b24_type* @G__0x429b24 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i235, align 8
  %1581 = add i64 %1576, -24696
  %1582 = add i64 %1575, 19
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  store i32 0, i32* %1583, align 4
  %1584 = load i64, i64* %RCX.i235, align 8
  %1585 = load i64, i64* %3, align 8
  store i64 %1584, i64* %RSI.i154, align 8
  %1586 = add i64 %1585, -136128
  %1587 = add i64 %1585, 8
  %1588 = load i64, i64* %6, align 8
  %1589 = add i64 %1588, -8
  %1590 = inttoptr i64 %1589 to i64*
  store i64 %1587, i64* %1590, align 8
  store i64 %1589, i64* %6, align 8
  store i64 %1586, i64* %3, align 8
  %1591 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_42200f)
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -24640
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 7
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RDI.i163, align 8
  %1598 = add i64 %1592, -24696
  %1599 = add i64 %1594, 13
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RSI.i154, align 8
  %1603 = add i64 %1592, -24704
  %1604 = load i64, i64* %RAX.i117, align 8
  %1605 = add i64 %1594, 20
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i64*
  store i64 %1604, i64* %1606, align 8
  %1607 = load i64, i64* %3, align 8
  %1608 = add i64 %1607, -88236
  %1609 = add i64 %1607, 5
  %1610 = load i64, i64* %6, align 8
  %1611 = add i64 %1610, -8
  %1612 = inttoptr i64 %1611 to i64*
  store i64 %1609, i64* %1612, align 8
  store i64 %1611, i64* %6, align 8
  store i64 %1608, i64* %3, align 8
  %call2_42204c = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1608, %struct.Memory* %1591)
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 302
  store i64 %1614, i64* %3, align 8
  br label %block_.L_42217f

block_.L_422056:                                  ; preds = %block_.L_421ff3
  %1615 = add i64 %1575, -100214
  %1616 = add i64 %1575, 5
  %1617 = load i64, i64* %6, align 8
  %1618 = add i64 %1617, -8
  %1619 = inttoptr i64 %1618 to i64*
  store i64 %1616, i64* %1619, align 8
  store i64 %1618, i64* %6, align 8
  store i64 %1615, i64* %3, align 8
  %call2_422056 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %1615, %struct.Memory* %call2_42200f)
  %1620 = load i32, i32* %EAX.i138.pre-phi, align 4
  %1621 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1622 = and i32 %1620, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1627 = icmp eq i32 %1620, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %30, align 1
  %1629 = lshr i32 %1620, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v52 = select i1 %1627, i64 278, i64 9
  %1631 = add i64 %1621, %.v52
  store i64 %1631, i64* %3, align 8
  br i1 %1627, label %block_.L_422171, label %block_422064

block_422064:                                     ; preds = %block_.L_422056
  %1632 = load i64, i64* %RBP.i, align 8
  %1633 = add i64 %1632, -24592
  store i64 %1633, i64* %RDI.i163, align 8
  %1634 = add i64 %1632, -24612
  %1635 = add i64 %1631, 17
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  store i32 1, i32* %1636, align 4
  %1637 = load i64, i64* %RBP.i, align 8
  %1638 = add i64 %1637, -24604
  %1639 = load i64, i64* %3, align 8
  %1640 = add i64 %1639, 10
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1638 to i32*
  store i32 0, i32* %1641, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, -107087
  %1644 = add i64 %1642, 5
  %1645 = load i64, i64* %6, align 8
  %1646 = add i64 %1645, -8
  %1647 = inttoptr i64 %1646 to i64*
  store i64 %1644, i64* %1647, align 8
  store i64 %1646, i64* %6, align 8
  store i64 %1643, i64* %3, align 8
  %call2_42207f = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1643, %struct.Memory* %call2_422056)
  %1648 = load i64, i64* %3, align 8
  %1649 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RAX.i117, align 8
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -24604
  %1653 = add i64 %1648, 13
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  store i32 %1649, i32* %1654, align 4
  %1655 = load i64, i64* %RBP.i, align 8
  %1656 = add i64 %1655, -24596
  %1657 = load i64, i64* %3, align 8
  %1658 = add i64 %1657, 10
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1656 to i32*
  store i32 0, i32* %1659, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_42209b

block_.L_42209b:                                  ; preds = %block_.L_422100, %block_422064
  %1660 = phi i64 [ %1793, %block_.L_422100 ], [ %.pre44, %block_422064 ]
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -24596
  %1663 = add i64 %1660, 6
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i117, align 8
  %1667 = add i64 %1661, -24604
  %1668 = add i64 %1660, 12
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = sub i32 %1665, %1670
  %1672 = icmp ult i32 %1665, %1670
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %14, align 1
  %1674 = and i32 %1671, 255
  %1675 = tail call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  store i8 %1678, i8* %21, align 1
  %1679 = xor i32 %1670, %1665
  %1680 = xor i32 %1679, %1671
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  store i8 %1683, i8* %27, align 1
  %1684 = icmp eq i32 %1671, 0
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %30, align 1
  %1686 = lshr i32 %1671, 31
  %1687 = trunc i32 %1686 to i8
  store i8 %1687, i8* %33, align 1
  %1688 = lshr i32 %1665, 31
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1689, %1688
  %1691 = xor i32 %1686, %1688
  %1692 = add nuw nsw i32 %1691, %1690
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %39, align 1
  %1695 = icmp ne i8 %1687, 0
  %1696 = xor i1 %1695, %1693
  %.v53 = select i1 %1696, i64 18, i64 139
  %1697 = add i64 %1660, %.v53
  store i64 %1697, i64* %3, align 8
  br i1 %1696, label %block_4220ad, label %block_.L_422126.loopexit

block_4220ad:                                     ; preds = %block_.L_42209b
  %1698 = add i64 %1661, -24592
  store i64 %1698, i64* %RDI.i163, align 8
  %1699 = add i64 %1697, 13
  store i64 %1699, i64* %3, align 8
  %1700 = load i32, i32* %1664, align 4
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RSI.i154, align 8
  %1702 = add i64 %1697, -92541
  %1703 = add i64 %1697, 18
  %1704 = load i64, i64* %6, align 8
  %1705 = add i64 %1704, -8
  %1706 = inttoptr i64 %1705 to i64*
  store i64 %1703, i64* %1706, align 8
  store i64 %1705, i64* %6, align 8
  store i64 %1702, i64* %3, align 8
  %call2_4220ba = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1702, %struct.Memory* %call2_42207f)
  %1707 = load i64, i64* %3, align 8
  store i64 1, i64* %RDX.i144.pre-phi, align 8
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -24592
  store i64 %1709, i64* %RDI.i163, align 8
  %1710 = add i64 %1708, -24596
  %1711 = add i64 %1707, 18
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RSI.i154, align 8
  %1715 = add i64 %1707, -113215
  %1716 = add i64 %1707, 23
  %1717 = load i64, i64* %6, align 8
  %1718 = add i64 %1717, -8
  %1719 = inttoptr i64 %1718 to i64*
  store i64 %1716, i64* %1719, align 8
  store i64 %1718, i64* %6, align 8
  store i64 %1715, i64* %3, align 8
  %call2_4220d1 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1715, %struct.Memory* %call2_42207f)
  %1720 = load i32, i32* %EAX.i138.pre-phi, align 4
  %1721 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1722 = and i32 %1720, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1727 = icmp eq i32 %1720, 0
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %30, align 1
  %1729 = lshr i32 %1720, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v55 = select i1 %1727, i64 42, i64 9
  %1731 = add i64 %1721, %.v55
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -24592
  %1734 = add i64 %1731, 7
  store i64 %1734, i64* %3, align 8
  store i64 %1733, i64* %RDI.i163, align 8
  br i1 %1727, label %block_.L_422100, label %block_4220df

block_4220df:                                     ; preds = %block_4220ad
  %1735 = add i64 %1732, -24612
  %1736 = add i64 %1731, 17
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  store i32 0, i32* %1737, align 4
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -24596
  %1740 = load i64, i64* %3, align 8
  %1741 = add i64 %1740, 6
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742, align 4
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RSI.i154, align 8
  %1745 = add i64 %1740, -88400
  %1746 = add i64 %1740, 11
  %1747 = load i64, i64* %6, align 8
  %1748 = add i64 %1747, -8
  %1749 = inttoptr i64 %1748 to i64*
  store i64 %1746, i64* %1749, align 8
  store i64 %1748, i64* %6, align 8
  store i64 %1745, i64* %3, align 8
  %call2_4220f6 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1745, %struct.Memory* %call2_42207f)
  %1750 = load i64, i64* %3, align 8
  %1751 = add i64 %1750, 43
  store i64 %1751, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_422126

block_.L_422100:                                  ; preds = %block_4220ad
  %1752 = add i64 %1732, -24596
  %1753 = add i64 %1731, 13
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RSI.i154, align 8
  %1757 = add i64 %1731, -88416
  %1758 = add i64 %1731, 18
  %1759 = load i64, i64* %6, align 8
  %1760 = add i64 %1759, -8
  %1761 = inttoptr i64 %1760 to i64*
  store i64 %1758, i64* %1761, align 8
  store i64 %1760, i64* %6, align 8
  store i64 %1757, i64* %3, align 8
  %call2_42210d = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1757, %struct.Memory* %call2_42207f)
  %1762 = load i64, i64* %RBP.i, align 8
  %1763 = add i64 %1762, -24596
  %1764 = load i64, i64* %3, align 8
  %1765 = add i64 %1764, 6
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = add i32 %1767, 1
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RAX.i117, align 8
  %1770 = icmp eq i32 %1767, -1
  %1771 = icmp eq i32 %1768, 0
  %1772 = or i1 %1770, %1771
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1768, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1768, %1767
  %1780 = lshr i32 %1779, 4
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  store i8 %1782, i8* %27, align 1
  %1783 = zext i1 %1771 to i8
  store i8 %1783, i8* %30, align 1
  %1784 = lshr i32 %1768, 31
  %1785 = trunc i32 %1784 to i8
  store i8 %1785, i8* %33, align 1
  %1786 = lshr i32 %1767, 31
  %1787 = xor i32 %1784, %1786
  %1788 = add nuw nsw i32 %1787, %1784
  %1789 = icmp eq i32 %1788, 2
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %39, align 1
  %1791 = add i64 %1764, 15
  store i64 %1791, i64* %3, align 8
  store i32 %1768, i32* %1766, align 4
  %1792 = load i64, i64* %3, align 8
  %1793 = add i64 %1792, -134
  store i64 %1793, i64* %3, align 8
  br label %block_.L_42209b

block_.L_422126.loopexit:                         ; preds = %block_.L_42209b
  br label %block_.L_422126

block_.L_422126:                                  ; preds = %block_.L_422126.loopexit, %block_4220df
  %1794 = phi i64 [ %1751, %block_4220df ], [ %1697, %block_.L_422126.loopexit ]
  %1795 = phi i64 [ %.pre45, %block_4220df ], [ %1661, %block_.L_422126.loopexit ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_4220f6, %block_4220df ], [ %call2_42207f, %block_.L_422126.loopexit ]
  %1796 = add i64 %1795, -24612
  %1797 = add i64 %1794, 7
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = add i32 %1799, -1
  %1801 = icmp eq i32 %1799, 0
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1800, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1800, %1799
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %27, align 1
  %1812 = icmp eq i32 %1800, 0
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %30, align 1
  %1814 = lshr i32 %1800, 31
  %1815 = trunc i32 %1814 to i8
  store i8 %1815, i8* %33, align 1
  %1816 = lshr i32 %1799, 31
  %1817 = xor i32 %1814, %1816
  %1818 = add nuw nsw i32 %1817, %1816
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %39, align 1
  %.v54 = select i1 %1812, i64 13, i64 44
  %1821 = add i64 %1794, %.v54
  %1822 = add i64 %1821, 10
  store i64 %1822, i64* %3, align 8
  br i1 %1812, label %block_422133, label %block_.L_422152

block_422133:                                     ; preds = %block_.L_422126
  store i64 ptrtoint (%G__0x4294e6_type* @G__0x4294e6 to i64), i64* %RSI.i154, align 8
  %1823 = add i64 %1795, -8
  %1824 = add i64 %1821, 14
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RDI.i163, align 8
  %1827 = add i64 %1821, -136051
  %1828 = add i64 %1821, 19
  %1829 = load i64, i64* %6, align 8
  %1830 = add i64 %1829, -8
  %1831 = inttoptr i64 %1830 to i64*
  store i64 %1828, i64* %1831, align 8
  store i64 %1830, i64* %6, align 8
  store i64 %1827, i64* %3, align 8
  %1832 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %MEMORY.19)
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -24712
  %1835 = load i64, i64* %RAX.i117, align 8
  %1836 = load i64, i64* %3, align 8
  %1837 = add i64 %1836, 7
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1834 to i64*
  store i64 %1835, i64* %1838, align 8
  %1839 = load i64, i64* %3, align 8
  %1840 = add i64 %1839, 31
  store i64 %1840, i64* %3, align 8
  br label %block_.L_42216c

block_.L_422152:                                  ; preds = %block_.L_422126
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI.i154, align 8
  %1841 = add i64 %1795, -8
  %1842 = add i64 %1821, 14
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RDI.i163, align 8
  %1845 = add i64 %1821, -136082
  %1846 = add i64 %1821, 19
  %1847 = load i64, i64* %6, align 8
  %1848 = add i64 %1847, -8
  %1849 = inttoptr i64 %1848 to i64*
  store i64 %1846, i64* %1849, align 8
  store i64 %1848, i64* %6, align 8
  store i64 %1845, i64* %3, align 8
  %1850 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %MEMORY.19)
  %1851 = load i64, i64* %RBP.i, align 8
  %1852 = add i64 %1851, -24720
  %1853 = load i64, i64* %RAX.i117, align 8
  %1854 = load i64, i64* %3, align 8
  %1855 = add i64 %1854, 7
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1852 to i64*
  store i64 %1853, i64* %1856, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_42216c

block_.L_42216c:                                  ; preds = %block_.L_422152, %block_422133
  %1857 = phi i64 [ %.pre46, %block_.L_422152 ], [ %1840, %block_422133 ]
  %MEMORY.20 = phi %struct.Memory* [ %1850, %block_.L_422152 ], [ %1832, %block_422133 ]
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %3, align 8
  br label %block_.L_422171

block_.L_422171:                                  ; preds = %block_.L_42216c, %block_.L_422056
  %1859 = phi i64 [ %1631, %block_.L_422056 ], [ %1858, %block_.L_42216c ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_422056, %block_.L_422056 ], [ %MEMORY.20, %block_.L_42216c ]
  store i64 0, i64* %RSI.i154, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1860 = load i64, i64* %RBP.i, align 8
  %1861 = add i64 %1860, -24640
  %1862 = add i64 %1859, 9
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i64*
  %1864 = load i64, i64* %1863, align 8
  store i64 %1864, i64* %RDI.i163, align 8
  %1865 = add i64 %1859, -88529
  %1866 = add i64 %1859, 14
  %1867 = load i64, i64* %6, align 8
  %1868 = add i64 %1867, -8
  %1869 = inttoptr i64 %1868 to i64*
  store i64 %1866, i64* %1869, align 8
  store i64 %1868, i64* %6, align 8
  store i64 %1865, i64* %3, align 8
  %call2_42217a = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1865, %struct.Memory* %MEMORY.21)
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_42217f

block_.L_42217f:                                  ; preds = %block_.L_422171, %block_42201d
  %1870 = phi i64 [ %.pre47, %block_.L_422171 ], [ %1614, %block_42201d ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_42217a, %block_.L_422171 ], [ %call2_42204c, %block_42201d ]
  %1871 = load i64, i64* %6, align 8
  %1872 = add i64 %1871, 24720
  store i64 %1872, i64* %6, align 8
  %1873 = icmp ugt i64 %1871, -24721
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = trunc i64 %1872 to i32
  %1876 = and i32 %1875, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i64 %1871, 16
  %1882 = xor i64 %1881, %1872
  %1883 = lshr i64 %1882, 4
  %1884 = trunc i64 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %27, align 1
  %1886 = icmp eq i64 %1872, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %30, align 1
  %1888 = lshr i64 %1872, 63
  %1889 = trunc i64 %1888 to i8
  store i8 %1889, i8* %33, align 1
  %1890 = lshr i64 %1871, 63
  %1891 = xor i64 %1888, %1890
  %1892 = add nuw nsw i64 %1891, %1888
  %1893 = icmp eq i64 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %39, align 1
  %1895 = add i64 %1870, 8
  store i64 %1895, i64* %3, align 8
  %1896 = add i64 %1871, 24728
  %1897 = inttoptr i64 %1872 to i64*
  %1898 = load i64, i64* %1897, align 8
  store i64 %1898, i64* %RBP.i, align 8
  store i64 %1896, i64* %6, align 8
  %1899 = add i64 %1870, 9
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1896 to i64*
  %1901 = load i64, i64* %1900, align 8
  store i64 %1901, i64* %3, align 8
  %1902 = add i64 %1871, 24736
  store i64 %1902, i64* %6, align 8
  ret %struct.Memory* %MEMORY.22
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
define %struct.Memory* @routine_leaq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425890___rdi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4348048
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
define %struct.Memory* @routine_movl__ecx__MINUS0x6028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24616
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x602c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24620
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x61__MINUS0x6030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 97, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425650___rdi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347472
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x6030__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24624
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x6031__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24625
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x6032__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24626
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x6040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421a35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429ae5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429ae5_type* @G__0x429ae5 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4357664
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
define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24626
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24620
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
define %struct.Memory* @routine_movl__eax__MINUS0x6044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24644
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421ff3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %9, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -2
  %11 = icmp ult i32 %9, 2
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421ba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -13
  %11 = icmp ult i32 %9, 13
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421b0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_421acd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429ae8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429ae8_type* @G__0x429ae8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24626
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x602c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24620
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
define %struct.Memory* @routine_movl__eax__MINUS0x6048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24648
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421b08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429af0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429af0_type* @G__0x429af0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rax____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_0x427e20___r8_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4357664
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x604c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24652
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421b9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421b53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429b12___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b12_type* @G__0x429b12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24625
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24656
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421b96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429aed___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429aed_type* @G__0x429aed to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rax____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x427e20___r9_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4357664
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24660
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421fee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_je_.L_421c13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_je_.L_421bd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_421bf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429afa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429afa_type* @G__0x429afa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421c0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429af8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429af8_type* @G__0x429af8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x605c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24668
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421fe9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x6020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x6038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24632
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6014__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24596
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
define %struct.Memory* @routine_jge_.L_421d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 24
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_421d53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866540___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x866540___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 8807744
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
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
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421d53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24596
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
define %struct.Memory* @routine_movl_MINUS0x6038__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
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
define %struct.Memory* @routine_je_.L_421d41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x6020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24608
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421d58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_421c55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x6020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_421f3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421e65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x6020__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
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
define %struct.Memory* @routine_movl_0x425650___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347472
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x425650___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 4347472
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
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
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_je_.L_421e17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429afe___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429afe_type* @G__0x429afe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24625
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24626
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24620
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
define %struct.Memory* @routine_movl__eax__MINUS0x6060__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24672
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421e60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429b07___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b07_type* @G__0x429b07 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6028__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24616
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
define %struct.Memory* @routine_jmpq_.L_421f38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421eea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429b10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b10_type* @G__0x429b10 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_421f33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429b1a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b1a_type* @G__0x429b1a to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_421fe4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421f9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429b00___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b00_type* @G__0x429b00 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_421fdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_422056(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x429b24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x429b24_type* @G__0x429b24 to i64), i64 4294967295), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x6078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24696
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x6078__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24696
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
define %struct.Memory* @routine_movq__rax__MINUS0x6080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24704
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42217f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_422171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24612
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x601c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24604
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
define %struct.Memory* @routine_jge_.L_422126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_422100(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x6024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24612
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42209b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x6024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24612
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
define %struct.Memory* @routine_jne_.L_422152(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4294e6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4294e6_type* @G__0x4294e6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcat_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x6088__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24712
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42216c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x6090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24720
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
