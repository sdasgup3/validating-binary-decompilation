; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x459d41_type = type <{ [8 x i8] }>
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
@G__0x459d41 = global %G__0x459d41_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @QRNAShuffle(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i25 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i25, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1296 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1296, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i1319, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RCX.i1339, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RCX.i1339, align 8
  %69 = add i64 %63, -24
  %70 = add i64 %65, 8
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %68, %72
  %74 = icmp ult i64 %68, %72
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %14, align 1
  %76 = trunc i64 %73 to i32
  %77 = and i32 %76, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %21, align 1
  %82 = xor i64 %72, %68
  %83 = xor i64 %82, %73
  %84 = lshr i64 %83, 4
  %85 = trunc i64 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %26, align 1
  %87 = icmp eq i64 %73, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %29, align 1
  %89 = lshr i64 %73, 63
  %90 = trunc i64 %89 to i8
  store i8 %90, i8* %32, align 1
  %91 = lshr i64 %68, 63
  %92 = lshr i64 %72, 63
  %93 = xor i64 %92, %91
  %94 = xor i64 %89, %91
  %95 = add nuw nsw i64 %94, %93
  %96 = icmp eq i64 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %38, align 1
  %.v = select i1 %87, i64 31, i64 14
  %98 = add i64 %65, %.v
  store i64 %98, i64* %3, align 8
  br i1 %87, label %block_.L_43e27a, label %block_43e269

block_43e269:                                     ; preds = %entry
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %67, align 8
  store i64 %100, i64* %RDI.i25, align 8
  %101 = add i64 %98, 8
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %71, align 8
  store i64 %102, i64* %RSI.i1296, align 8
  %103 = add i64 %98, -249481
  %104 = add i64 %98, 13
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %108 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  %RAX.i1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -104
  %111 = load i64, i64* %RAX.i1336, align 8
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114, align 8
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_43e27a

block_.L_43e27a:                                  ; preds = %block_43e269, %entry
  %115 = phi i64 [ %98, %entry ], [ %.pre49, %block_43e269 ]
  %116 = phi i64 [ %63, %entry ], [ %.pre, %block_43e269 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %108, %block_43e269 ]
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1333 = getelementptr inbounds %union.anon, %union.anon* %117, i64 0, i32 0
  %118 = add i64 %116, -16
  %119 = add i64 %115, 4
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RAX.i1333, align 8
  %122 = add i64 %116, -32
  %123 = add i64 %115, 8
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %121, %125
  %127 = icmp ult i64 %121, %125
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %14, align 1
  %129 = trunc i64 %126 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1
  %135 = xor i64 %125, %121
  %136 = xor i64 %135, %126
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %26, align 1
  %140 = icmp eq i64 %126, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %29, align 1
  %142 = lshr i64 %126, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %32, align 1
  %144 = lshr i64 %121, 63
  %145 = lshr i64 %125, 63
  %146 = xor i64 %145, %144
  %147 = xor i64 %142, %144
  %148 = add nuw nsw i64 %147, %146
  %149 = icmp eq i64 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %38, align 1
  %.v58 = select i1 %140, i64 31, i64 14
  %151 = add i64 %115, %.v58
  store i64 %151, i64* %3, align 8
  br i1 %140, label %block_.L_43e299, label %block_43e288

block_43e288:                                     ; preds = %block_.L_43e27a
  %152 = add i64 %151, 4
  store i64 %152, i64* %3, align 8
  %153 = load i64, i64* %120, align 8
  store i64 %153, i64* %RDI.i25, align 8
  %154 = add i64 %151, 8
  store i64 %154, i64* %3, align 8
  %155 = load i64, i64* %124, align 8
  store i64 %155, i64* %RSI.i1296, align 8
  %156 = add i64 %151, -249512
  %157 = add i64 %151, 13
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %6, align 8
  store i64 %156, i64* %3, align 8
  %161 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %MEMORY.0)
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -112
  %164 = load i64, i64* %RAX.i1333, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %167, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e299

block_.L_43e299:                                  ; preds = %block_43e288, %block_.L_43e27a
  %168 = phi i64 [ %116, %block_.L_43e27a ], [ %.pre51, %block_43e288 ]
  %169 = phi i64 [ %151, %block_.L_43e27a ], [ %.pre50, %block_43e288 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43e27a ], [ %161, %block_43e288 ]
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i25, align 8
  store i64 572, i64* %RSI.i1296, align 8
  %170 = add i64 %168, -24
  %171 = add i64 %169, 19
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RAX.i1333, align 8
  %174 = add i64 %168, -120
  %175 = add i64 %169, 23
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %176, align 8
  %177 = load i64, i64* %RAX.i1333, align 8
  %178 = load i64, i64* %3, align 8
  store i64 %177, i64* %RDI.i25, align 8
  %ESI.i1300 = bitcast %union.anon* %44 to i32*
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -124
  %181 = load i32, i32* %ESI.i1300, align 4
  %182 = add i64 %178, 6
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %183, align 4
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, -249430
  %186 = add i64 %184, 5
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %190 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.1)
  %EAX.i1293 = bitcast %union.anon* %117 to i32*
  %191 = load i32, i32* %EAX.i1293, align 4
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %3, align 8
  store i64 %192, i64* %RSI.i1296, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -36
  %196 = add i64 %193, 5
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 %191, i32* %197, align 4
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -36
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = shl nsw i64 %204, 2
  store i64 %205, i64* %RAX.i1333, align 8
  %.lobit = lshr i32 %203, 31
  %206 = trunc i32 %.lobit to i8
  store i8 %206, i8* %14, align 1
  %207 = trunc i64 %205 to i32
  %208 = and i32 %207, 252
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %213 = icmp eq i32 %203, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %29, align 1
  %215 = lshr i64 %204, 61
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %218 = add i64 %198, -120
  %219 = add i64 %200, 12
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RDI.i25, align 8
  %222 = add i64 %198, -124
  %223 = add i64 %200, 15
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RSI.i1296, align 8
  store i64 %205, i64* %RDX.i1319, align 8
  %227 = add i64 %200, 32160
  %228 = add i64 %200, 23
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, -8
  %231 = inttoptr i64 %230 to i64*
  store i64 %228, i64* %231, align 8
  store i64 %230, i64* %6, align 8
  store i64 %227, i64* %3, align 8
  %call2_43e2d2 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %227, %struct.Memory* %190)
  %232 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i25, align 8
  store i64 573, i64* %RSI.i1296, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -48
  %235 = load i64, i64* %RAX.i1333, align 8
  %236 = add i64 %232, 19
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %234 to i64*
  store i64 %235, i64* %237, align 8
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -36
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = shl nsw i64 %244, 2
  store i64 %245, i64* %RAX.i1333, align 8
  %.lobit36 = lshr i32 %243, 31
  %246 = trunc i32 %.lobit36 to i8
  store i8 %246, i8* %14, align 1
  %247 = trunc i64 %245 to i32
  %248 = and i32 %247, 252
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %253 = icmp eq i32 %243, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %29, align 1
  %255 = lshr i64 %244, 61
  %256 = trunc i64 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %245, i64* %RDX.i1319, align 8
  %258 = add i64 %240, 32118
  %259 = add i64 %240, 16
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %259, i64* %262, align 8
  store i64 %261, i64* %6, align 8
  store i64 %258, i64* %3, align 8
  %call2_43e2f5 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %258, %struct.Memory* %call2_43e2d2)
  %263 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i25, align 8
  store i64 574, i64* %RSI.i1296, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -56
  %266 = load i64, i64* %RAX.i1333, align 8
  %267 = add i64 %263, 19
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %265 to i64*
  store i64 %266, i64* %268, align 8
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -36
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 4
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = shl nsw i64 %275, 2
  store i64 %276, i64* %RAX.i1333, align 8
  %.lobit37 = lshr i32 %274, 31
  %277 = trunc i32 %.lobit37 to i8
  store i8 %277, i8* %14, align 1
  %278 = trunc i64 %276 to i32
  %279 = and i32 %278, 252
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %284 = icmp eq i32 %274, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %29, align 1
  %286 = lshr i64 %275, 61
  %287 = trunc i64 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %276, i64* %RDX.i1319, align 8
  %289 = add i64 %271, 32083
  %290 = add i64 %271, 16
  %291 = load i64, i64* %6, align 8
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %6, align 8
  store i64 %289, i64* %3, align 8
  %call2_43e318 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %289, %struct.Memory* %call2_43e2f5)
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -64
  %296 = load i64, i64* %RAX.i1333, align 8
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %295 to i64*
  store i64 %296, i64* %299, align 8
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -76
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, 7
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %301 to i32*
  store i32 0, i32* %304, align 4
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -72
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 7
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i32*
  store i32 0, i32* %309, align 4
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -68
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 7
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %311 to i32*
  store i32 0, i32* %314, align 4
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -80
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 7
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i32*
  store i32 0, i32* %319, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_43e33d

block_.L_43e33d:                                  ; preds = %block_.L_43e627, %block_.L_43e299
  %320 = phi i64 [ %1581, %block_.L_43e627 ], [ %.pre52, %block_.L_43e299 ]
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -80
  %323 = add i64 %320, 3
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX.i1333, align 8
  %327 = add i64 %321, -36
  %328 = add i64 %320, 6
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sub i32 %325, %330
  %332 = icmp ult i32 %325, %330
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %14, align 1
  %334 = and i32 %331, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %21, align 1
  %339 = xor i32 %330, %325
  %340 = xor i32 %339, %331
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %26, align 1
  %344 = icmp eq i32 %331, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %29, align 1
  %346 = lshr i32 %331, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %32, align 1
  %348 = lshr i32 %325, 31
  %349 = lshr i32 %330, 31
  %350 = xor i32 %349, %348
  %351 = xor i32 %346, %348
  %352 = add nuw nsw i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %38, align 1
  %355 = icmp ne i8 %347, 0
  %356 = xor i1 %355, %353
  %.v59 = select i1 %356, i64 12, i64 760
  %357 = add i64 %320, %.v59
  store i64 %357, i64* %3, align 8
  br i1 %356, label %block_43e349, label %block_.L_43e635

block_43e349:                                     ; preds = %block_.L_43e33d
  %358 = add i64 %321, -24
  %359 = add i64 %357, 4
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX.i1333, align 8
  %362 = add i64 %357, 8
  store i64 %362, i64* %3, align 8
  %363 = load i32, i32* %324, align 4
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RCX.i1339, align 8
  %365 = add i64 %361, %364
  %366 = add i64 %357, 12
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i8*
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i64
  %370 = and i64 %369, 4294967295
  store i64 %370, i64* %RDX.i1319, align 8
  %371 = sext i8 %368 to i32
  %372 = add nsw i32 %371, -32
  %373 = icmp ult i8 %368, 32
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %14, align 1
  %375 = and i32 %372, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %21, align 1
  %380 = xor i32 %372, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %26, align 1
  %384 = icmp eq i32 %372, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %29, align 1
  %386 = lshr i32 %372, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %32, align 1
  %388 = lshr i32 %371, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %38, align 1
  %.v63 = select i1 %384, i64 105, i64 21
  %393 = add i64 %357, %.v63
  store i64 %393, i64* %3, align 8
  br i1 %384, label %block_.L_43e3b2, label %block_43e35e

block_43e35e:                                     ; preds = %block_43e349
  %394 = add i64 %393, 4
  store i64 %394, i64* %3, align 8
  %395 = load i64, i64* %360, align 8
  store i64 %395, i64* %RAX.i1333, align 8
  %396 = add i64 %393, 8
  store i64 %396, i64* %3, align 8
  %397 = load i32, i32* %324, align 4
  %398 = sext i32 %397 to i64
  store i64 %398, i64* %RCX.i1339, align 8
  %399 = add i64 %395, %398
  %400 = add i64 %393, 12
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i8*
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i64
  %404 = and i64 %403, 4294967295
  store i64 %404, i64* %RDX.i1319, align 8
  %405 = sext i8 %402 to i32
  %406 = add nsw i32 %405, -46
  %407 = icmp ult i8 %402, 46
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = and i32 %406, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %21, align 1
  %414 = xor i32 %406, %405
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %26, align 1
  %418 = icmp eq i32 %406, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %29, align 1
  %420 = lshr i32 %406, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %32, align 1
  %422 = lshr i32 %405, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %38, align 1
  %.v64 = select i1 %418, i64 84, i64 21
  %427 = add i64 %393, %.v64
  store i64 %427, i64* %3, align 8
  br i1 %418, label %block_.L_43e3b2, label %block_43e373

block_43e373:                                     ; preds = %block_43e35e
  %428 = add i64 %427, 4
  store i64 %428, i64* %3, align 8
  %429 = load i64, i64* %360, align 8
  store i64 %429, i64* %RAX.i1333, align 8
  %430 = add i64 %427, 8
  store i64 %430, i64* %3, align 8
  %431 = load i32, i32* %324, align 4
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RCX.i1339, align 8
  %433 = add i64 %429, %432
  %434 = add i64 %427, 12
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i8*
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i64
  %438 = and i64 %437, 4294967295
  store i64 %438, i64* %RDX.i1319, align 8
  %439 = sext i8 %436 to i32
  %440 = add nsw i32 %439, -95
  %441 = icmp ult i8 %436, 95
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %14, align 1
  %443 = and i32 %440, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  %448 = xor i32 %439, 16
  %449 = xor i32 %448, %440
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %26, align 1
  %453 = icmp eq i32 %440, 0
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %29, align 1
  %455 = lshr i32 %440, 31
  %456 = trunc i32 %455 to i8
  store i8 %456, i8* %32, align 1
  %457 = lshr i32 %439, 31
  %458 = xor i32 %455, %457
  %459 = add nuw nsw i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %38, align 1
  %.v65 = select i1 %453, i64 63, i64 21
  %462 = add i64 %427, %.v65
  store i64 %462, i64* %3, align 8
  br i1 %453, label %block_.L_43e3b2, label %block_43e388

block_43e388:                                     ; preds = %block_43e373
  %463 = add i64 %462, 4
  store i64 %463, i64* %3, align 8
  %464 = load i64, i64* %360, align 8
  store i64 %464, i64* %RAX.i1333, align 8
  %465 = add i64 %462, 8
  store i64 %465, i64* %3, align 8
  %466 = load i32, i32* %324, align 4
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %RCX.i1339, align 8
  %468 = add i64 %464, %467
  %469 = add i64 %462, 12
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i8*
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i64
  %473 = and i64 %472, 4294967295
  store i64 %473, i64* %RDX.i1319, align 8
  %474 = sext i8 %471 to i32
  %475 = add nsw i32 %474, -45
  %476 = icmp ult i8 %471, 45
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %14, align 1
  %478 = and i32 %475, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i32 %475, %474
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %26, align 1
  %487 = icmp eq i32 %475, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %29, align 1
  %489 = lshr i32 %475, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %32, align 1
  %491 = lshr i32 %474, 31
  %492 = xor i32 %489, %491
  %493 = add nuw nsw i32 %492, %491
  %494 = icmp eq i32 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %38, align 1
  %.v66 = select i1 %487, i64 42, i64 21
  %496 = add i64 %462, %.v66
  store i64 %496, i64* %3, align 8
  br i1 %487, label %block_.L_43e3b2, label %block_43e39d

block_43e39d:                                     ; preds = %block_43e388
  %497 = add i64 %496, 4
  store i64 %497, i64* %3, align 8
  %498 = load i64, i64* %360, align 8
  store i64 %498, i64* %RAX.i1333, align 8
  %499 = add i64 %496, 8
  store i64 %499, i64* %3, align 8
  %500 = load i32, i32* %324, align 4
  %501 = sext i32 %500 to i64
  store i64 %501, i64* %RCX.i1339, align 8
  %502 = add i64 %498, %501
  %503 = add i64 %496, 12
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i8*
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i64
  %507 = and i64 %506, 4294967295
  store i64 %507, i64* %RDX.i1319, align 8
  %508 = sext i8 %505 to i32
  %509 = add nsw i32 %508, -126
  %510 = icmp ult i8 %505, 126
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %509, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %508, 16
  %518 = xor i32 %517, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %26, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %29, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %32, align 1
  %526 = lshr i32 %508, 31
  %527 = xor i32 %524, %526
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %38, align 1
  %.v67 = select i1 %522, i64 21, i64 131
  %531 = add i64 %496, %.v67
  store i64 %531, i64* %3, align 8
  br i1 %522, label %block_.L_43e3b2, label %block_.L_43e420

block_.L_43e3b2:                                  ; preds = %block_43e39d, %block_43e388, %block_43e373, %block_43e35e, %block_43e349
  %532 = phi i64 [ %531, %block_43e39d ], [ %496, %block_43e388 ], [ %462, %block_43e373 ], [ %427, %block_43e35e ], [ %393, %block_43e349 ]
  %533 = add i64 %321, -32
  %534 = add i64 %532, 4
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RAX.i1333, align 8
  %537 = add i64 %532, 8
  store i64 %537, i64* %3, align 8
  %538 = load i32, i32* %324, align 4
  %539 = sext i32 %538 to i64
  store i64 %539, i64* %RCX.i1339, align 8
  %540 = add i64 %536, %539
  %541 = add i64 %532, 12
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i8*
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i64
  %545 = and i64 %544, 4294967295
  store i64 %545, i64* %RDX.i1319, align 8
  %546 = sext i8 %543 to i32
  %547 = add nsw i32 %546, -32
  %548 = icmp ult i8 %543, 32
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = and i32 %547, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i32 %547, %546
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %26, align 1
  %559 = icmp eq i32 %547, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %29, align 1
  %561 = lshr i32 %547, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %32, align 1
  %563 = lshr i32 %546, 31
  %564 = xor i32 %561, %563
  %565 = add nuw nsw i32 %564, %563
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %38, align 1
  %.v88 = select i1 %559, i64 105, i64 21
  %568 = add i64 %532, %.v88
  store i64 %568, i64* %3, align 8
  br i1 %559, label %block_.L_43e41b, label %block_43e3c7

block_43e3c7:                                     ; preds = %block_.L_43e3b2
  %569 = add i64 %568, 4
  store i64 %569, i64* %3, align 8
  %570 = load i64, i64* %535, align 8
  store i64 %570, i64* %RAX.i1333, align 8
  %571 = add i64 %568, 8
  store i64 %571, i64* %3, align 8
  %572 = load i32, i32* %324, align 4
  %573 = sext i32 %572 to i64
  store i64 %573, i64* %RCX.i1339, align 8
  %574 = add i64 %570, %573
  %575 = add i64 %568, 12
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i8*
  %577 = load i8, i8* %576, align 1
  %578 = sext i8 %577 to i64
  %579 = and i64 %578, 4294967295
  store i64 %579, i64* %RDX.i1319, align 8
  %580 = sext i8 %577 to i32
  %581 = add nsw i32 %580, -46
  %582 = icmp ult i8 %577, 46
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %14, align 1
  %584 = and i32 %581, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %21, align 1
  %589 = xor i32 %581, %580
  %590 = lshr i32 %589, 4
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %26, align 1
  %593 = icmp eq i32 %581, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %29, align 1
  %595 = lshr i32 %581, 31
  %596 = trunc i32 %595 to i8
  store i8 %596, i8* %32, align 1
  %597 = lshr i32 %580, 31
  %598 = xor i32 %595, %597
  %599 = add nuw nsw i32 %598, %597
  %600 = icmp eq i32 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %38, align 1
  %.v89 = select i1 %593, i64 84, i64 21
  %602 = add i64 %568, %.v89
  store i64 %602, i64* %3, align 8
  br i1 %593, label %block_.L_43e41b, label %block_43e3dc

block_43e3dc:                                     ; preds = %block_43e3c7
  %603 = add i64 %602, 4
  store i64 %603, i64* %3, align 8
  %604 = load i64, i64* %535, align 8
  store i64 %604, i64* %RAX.i1333, align 8
  %605 = add i64 %602, 8
  store i64 %605, i64* %3, align 8
  %606 = load i32, i32* %324, align 4
  %607 = sext i32 %606 to i64
  store i64 %607, i64* %RCX.i1339, align 8
  %608 = add i64 %604, %607
  %609 = add i64 %602, 12
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i8*
  %611 = load i8, i8* %610, align 1
  %612 = sext i8 %611 to i64
  %613 = and i64 %612, 4294967295
  store i64 %613, i64* %RDX.i1319, align 8
  %614 = sext i8 %611 to i32
  %615 = add nsw i32 %614, -95
  %616 = icmp ult i8 %611, 95
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %615, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %614, 16
  %624 = xor i32 %623, %615
  %625 = lshr i32 %624, 4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  store i8 %627, i8* %26, align 1
  %628 = icmp eq i32 %615, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %29, align 1
  %630 = lshr i32 %615, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %32, align 1
  %632 = lshr i32 %614, 31
  %633 = xor i32 %630, %632
  %634 = add nuw nsw i32 %633, %632
  %635 = icmp eq i32 %634, 2
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %38, align 1
  %.v90 = select i1 %628, i64 63, i64 21
  %637 = add i64 %602, %.v90
  store i64 %637, i64* %3, align 8
  br i1 %628, label %block_.L_43e41b, label %block_43e3f1

block_43e3f1:                                     ; preds = %block_43e3dc
  %638 = add i64 %637, 4
  store i64 %638, i64* %3, align 8
  %639 = load i64, i64* %535, align 8
  store i64 %639, i64* %RAX.i1333, align 8
  %640 = add i64 %637, 8
  store i64 %640, i64* %3, align 8
  %641 = load i32, i32* %324, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RCX.i1339, align 8
  %643 = add i64 %639, %642
  %644 = add i64 %637, 12
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i8*
  %646 = load i8, i8* %645, align 1
  %647 = sext i8 %646 to i64
  %648 = and i64 %647, 4294967295
  store i64 %648, i64* %RDX.i1319, align 8
  %649 = sext i8 %646 to i32
  %650 = add nsw i32 %649, -45
  %651 = icmp ult i8 %646, 45
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
  %.v91 = select i1 %662, i64 42, i64 21
  %671 = add i64 %637, %.v91
  store i64 %671, i64* %3, align 8
  br i1 %662, label %block_.L_43e41b, label %block_43e406

block_43e406:                                     ; preds = %block_43e3f1
  %672 = add i64 %671, 4
  store i64 %672, i64* %3, align 8
  %673 = load i64, i64* %535, align 8
  store i64 %673, i64* %RAX.i1333, align 8
  %674 = add i64 %671, 8
  store i64 %674, i64* %3, align 8
  %675 = load i32, i32* %324, align 4
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RCX.i1339, align 8
  %677 = add i64 %673, %676
  %678 = add i64 %671, 12
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i8*
  %680 = load i8, i8* %679, align 1
  %681 = sext i8 %680 to i64
  %682 = and i64 %681, 4294967295
  store i64 %682, i64* %RDX.i1319, align 8
  %683 = sext i8 %680 to i32
  %684 = add nsw i32 %683, -126
  %685 = icmp ult i8 %680, 126
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %14, align 1
  %687 = and i32 %684, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %21, align 1
  %692 = xor i32 %683, 16
  %693 = xor i32 %692, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %26, align 1
  %697 = icmp eq i32 %684, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %29, align 1
  %699 = lshr i32 %684, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %32, align 1
  %701 = lshr i32 %683, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %701
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %38, align 1
  %.v92 = select i1 %697, i64 21, i64 26
  %706 = add i64 %671, %.v92
  store i64 %706, i64* %3, align 8
  br i1 %697, label %block_.L_43e41b, label %block_.L_43e420

block_.L_43e41b:                                  ; preds = %block_43e406, %block_43e3f1, %block_43e3dc, %block_43e3c7, %block_.L_43e3b2
  %707 = phi i64 [ %706, %block_43e406 ], [ %671, %block_43e3f1 ], [ %637, %block_43e3dc ], [ %602, %block_43e3c7 ], [ %568, %block_.L_43e3b2 ]
  %708 = add i64 %707, 524
  br label %block_.L_43e627

block_.L_43e420:                                  ; preds = %block_43e406, %block_43e39d
  %709 = phi i64 [ %706, %block_43e406 ], [ %531, %block_43e39d ]
  %710 = add i64 %709, 4
  store i64 %710, i64* %3, align 8
  %711 = load i64, i64* %360, align 8
  store i64 %711, i64* %RAX.i1333, align 8
  %712 = add i64 %709, 8
  store i64 %712, i64* %3, align 8
  %713 = load i32, i32* %324, align 4
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %RCX.i1339, align 8
  %715 = add i64 %711, %714
  %716 = add i64 %709, 12
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i8*
  %718 = load i8, i8* %717, align 1
  %719 = sext i8 %718 to i64
  %720 = and i64 %719, 4294967295
  store i64 %720, i64* %RDX.i1319, align 8
  %721 = sext i8 %718 to i32
  %722 = add nsw i32 %721, -32
  %723 = icmp ult i8 %718, 32
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %14, align 1
  %725 = and i32 %722, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %21, align 1
  %730 = xor i32 %722, %721
  %731 = lshr i32 %730, 4
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  store i8 %733, i8* %26, align 1
  %734 = icmp eq i32 %722, 0
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %29, align 1
  %736 = lshr i32 %722, 31
  %737 = trunc i32 %736 to i8
  store i8 %737, i8* %32, align 1
  %738 = lshr i32 %721, 31
  %739 = xor i32 %736, %738
  %740 = add nuw nsw i32 %739, %738
  %741 = icmp eq i32 %740, 2
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %38, align 1
  %.v68 = select i1 %734, i64 238, i64 21
  %743 = add i64 %709, %.v68
  store i64 %743, i64* %3, align 8
  br i1 %734, label %block_.L_43e50e, label %block_43e435

block_43e435:                                     ; preds = %block_.L_43e420
  %744 = add i64 %743, 4
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %360, align 8
  store i64 %745, i64* %RAX.i1333, align 8
  %746 = add i64 %743, 8
  store i64 %746, i64* %3, align 8
  %747 = load i32, i32* %324, align 4
  %748 = sext i32 %747 to i64
  store i64 %748, i64* %RCX.i1339, align 8
  %749 = add i64 %745, %748
  %750 = add i64 %743, 12
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i8*
  %752 = load i8, i8* %751, align 1
  %753 = sext i8 %752 to i64
  %754 = and i64 %753, 4294967295
  store i64 %754, i64* %RDX.i1319, align 8
  %755 = sext i8 %752 to i32
  %756 = add nsw i32 %755, -46
  %757 = icmp ult i8 %752, 46
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = and i32 %756, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = xor i32 %756, %755
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %26, align 1
  %768 = icmp eq i32 %756, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %29, align 1
  %770 = lshr i32 %756, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %32, align 1
  %772 = lshr i32 %755, 31
  %773 = xor i32 %770, %772
  %774 = add nuw nsw i32 %773, %772
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %38, align 1
  %.v69 = select i1 %768, i64 217, i64 21
  %777 = add i64 %743, %.v69
  store i64 %777, i64* %3, align 8
  br i1 %768, label %block_.L_43e50e, label %block_43e44a

block_43e44a:                                     ; preds = %block_43e435
  %778 = add i64 %777, 4
  store i64 %778, i64* %3, align 8
  %779 = load i64, i64* %360, align 8
  store i64 %779, i64* %RAX.i1333, align 8
  %780 = add i64 %777, 8
  store i64 %780, i64* %3, align 8
  %781 = load i32, i32* %324, align 4
  %782 = sext i32 %781 to i64
  store i64 %782, i64* %RCX.i1339, align 8
  %783 = add i64 %779, %782
  %784 = add i64 %777, 12
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i8*
  %786 = load i8, i8* %785, align 1
  %787 = sext i8 %786 to i64
  %788 = and i64 %787, 4294967295
  store i64 %788, i64* %RDX.i1319, align 8
  %789 = sext i8 %786 to i32
  %790 = add nsw i32 %789, -95
  %791 = icmp ult i8 %786, 95
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = and i32 %790, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  %798 = xor i32 %789, 16
  %799 = xor i32 %798, %790
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %26, align 1
  %803 = icmp eq i32 %790, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %29, align 1
  %805 = lshr i32 %790, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %32, align 1
  %807 = lshr i32 %789, 31
  %808 = xor i32 %805, %807
  %809 = add nuw nsw i32 %808, %807
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %38, align 1
  %.v70 = select i1 %803, i64 196, i64 21
  %812 = add i64 %777, %.v70
  store i64 %812, i64* %3, align 8
  br i1 %803, label %block_.L_43e50e, label %block_43e45f

block_43e45f:                                     ; preds = %block_43e44a
  %813 = add i64 %812, 4
  store i64 %813, i64* %3, align 8
  %814 = load i64, i64* %360, align 8
  store i64 %814, i64* %RAX.i1333, align 8
  %815 = add i64 %812, 8
  store i64 %815, i64* %3, align 8
  %816 = load i32, i32* %324, align 4
  %817 = sext i32 %816 to i64
  store i64 %817, i64* %RCX.i1339, align 8
  %818 = add i64 %814, %817
  %819 = add i64 %812, 12
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i8*
  %821 = load i8, i8* %820, align 1
  %822 = sext i8 %821 to i64
  %823 = and i64 %822, 4294967295
  store i64 %823, i64* %RDX.i1319, align 8
  %824 = sext i8 %821 to i32
  %825 = add nsw i32 %824, -45
  %826 = icmp ult i8 %821, 45
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %14, align 1
  %828 = and i32 %825, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %21, align 1
  %833 = xor i32 %825, %824
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %26, align 1
  %837 = icmp eq i32 %825, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %29, align 1
  %839 = lshr i32 %825, 31
  %840 = trunc i32 %839 to i8
  store i8 %840, i8* %32, align 1
  %841 = lshr i32 %824, 31
  %842 = xor i32 %839, %841
  %843 = add nuw nsw i32 %842, %841
  %844 = icmp eq i32 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %38, align 1
  %.v71 = select i1 %837, i64 175, i64 21
  %846 = add i64 %812, %.v71
  store i64 %846, i64* %3, align 8
  br i1 %837, label %block_.L_43e50e, label %block_43e474

block_43e474:                                     ; preds = %block_43e45f
  %847 = add i64 %846, 4
  store i64 %847, i64* %3, align 8
  %848 = load i64, i64* %360, align 8
  store i64 %848, i64* %RAX.i1333, align 8
  %849 = add i64 %846, 8
  store i64 %849, i64* %3, align 8
  %850 = load i32, i32* %324, align 4
  %851 = sext i32 %850 to i64
  store i64 %851, i64* %RCX.i1339, align 8
  %852 = add i64 %848, %851
  %853 = add i64 %846, 12
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i8*
  %855 = load i8, i8* %854, align 1
  %856 = sext i8 %855 to i64
  %857 = and i64 %856, 4294967295
  store i64 %857, i64* %RDX.i1319, align 8
  %858 = sext i8 %855 to i32
  %859 = add nsw i32 %858, -126
  %860 = icmp ult i8 %855, 126
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %14, align 1
  %862 = and i32 %859, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %21, align 1
  %867 = xor i32 %858, 16
  %868 = xor i32 %867, %859
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  store i8 %871, i8* %26, align 1
  %872 = icmp eq i32 %859, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %29, align 1
  %874 = lshr i32 %859, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %32, align 1
  %876 = lshr i32 %858, 31
  %877 = xor i32 %874, %876
  %878 = add nuw nsw i32 %877, %876
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %38, align 1
  %.v72 = select i1 %872, i64 154, i64 21
  %881 = add i64 %846, %.v72
  store i64 %881, i64* %3, align 8
  br i1 %872, label %block_.L_43e50e, label %block_43e489

block_43e489:                                     ; preds = %block_43e474
  %882 = add i64 %321, -32
  %883 = add i64 %881, 4
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RAX.i1333, align 8
  %886 = add i64 %881, 8
  store i64 %886, i64* %3, align 8
  %887 = load i32, i32* %324, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RCX.i1339, align 8
  %889 = add i64 %885, %888
  %890 = add i64 %881, 12
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i8*
  %892 = load i8, i8* %891, align 1
  %893 = sext i8 %892 to i64
  %894 = and i64 %893, 4294967295
  store i64 %894, i64* %RDX.i1319, align 8
  %895 = sext i8 %892 to i32
  %896 = add nsw i32 %895, -32
  %897 = icmp ult i8 %892, 32
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1
  %899 = and i32 %896, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %21, align 1
  %904 = xor i32 %896, %895
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %26, align 1
  %908 = icmp eq i32 %896, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %29, align 1
  %910 = lshr i32 %896, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %32, align 1
  %912 = lshr i32 %895, 31
  %913 = xor i32 %910, %912
  %914 = add nuw nsw i32 %913, %912
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %38, align 1
  %.v73 = select i1 %908, i64 133, i64 21
  %917 = add i64 %881, %.v73
  store i64 %917, i64* %3, align 8
  br i1 %908, label %block_.L_43e50e, label %block_43e49e

block_43e49e:                                     ; preds = %block_43e489
  %918 = add i64 %917, 4
  store i64 %918, i64* %3, align 8
  %919 = load i64, i64* %884, align 8
  store i64 %919, i64* %RAX.i1333, align 8
  %920 = add i64 %917, 8
  store i64 %920, i64* %3, align 8
  %921 = load i32, i32* %324, align 4
  %922 = sext i32 %921 to i64
  store i64 %922, i64* %RCX.i1339, align 8
  %923 = add i64 %919, %922
  %924 = add i64 %917, 12
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i8*
  %926 = load i8, i8* %925, align 1
  %927 = sext i8 %926 to i64
  %928 = and i64 %927, 4294967295
  store i64 %928, i64* %RDX.i1319, align 8
  %929 = sext i8 %926 to i32
  %930 = add nsw i32 %929, -46
  %931 = icmp ult i8 %926, 46
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %14, align 1
  %933 = and i32 %930, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  %938 = xor i32 %930, %929
  %939 = lshr i32 %938, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  store i8 %941, i8* %26, align 1
  %942 = icmp eq i32 %930, 0
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %29, align 1
  %944 = lshr i32 %930, 31
  %945 = trunc i32 %944 to i8
  store i8 %945, i8* %32, align 1
  %946 = lshr i32 %929, 31
  %947 = xor i32 %944, %946
  %948 = add nuw nsw i32 %947, %946
  %949 = icmp eq i32 %948, 2
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %38, align 1
  %.v74 = select i1 %942, i64 112, i64 21
  %951 = add i64 %917, %.v74
  store i64 %951, i64* %3, align 8
  br i1 %942, label %block_.L_43e50e, label %block_43e4b3

block_43e4b3:                                     ; preds = %block_43e49e
  %952 = add i64 %951, 4
  store i64 %952, i64* %3, align 8
  %953 = load i64, i64* %884, align 8
  store i64 %953, i64* %RAX.i1333, align 8
  %954 = add i64 %951, 8
  store i64 %954, i64* %3, align 8
  %955 = load i32, i32* %324, align 4
  %956 = sext i32 %955 to i64
  store i64 %956, i64* %RCX.i1339, align 8
  %957 = add i64 %953, %956
  %958 = add i64 %951, 12
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i8*
  %960 = load i8, i8* %959, align 1
  %961 = sext i8 %960 to i64
  %962 = and i64 %961, 4294967295
  store i64 %962, i64* %RDX.i1319, align 8
  %963 = sext i8 %960 to i32
  %964 = add nsw i32 %963, -95
  %965 = icmp ult i8 %960, 95
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %14, align 1
  %967 = and i32 %964, 255
  %968 = tail call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %21, align 1
  %972 = xor i32 %963, 16
  %973 = xor i32 %972, %964
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %26, align 1
  %977 = icmp eq i32 %964, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %29, align 1
  %979 = lshr i32 %964, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %32, align 1
  %981 = lshr i32 %963, 31
  %982 = xor i32 %979, %981
  %983 = add nuw nsw i32 %982, %981
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %38, align 1
  %.v75 = select i1 %977, i64 91, i64 21
  %986 = add i64 %951, %.v75
  store i64 %986, i64* %3, align 8
  br i1 %977, label %block_.L_43e50e, label %block_43e4c8

block_43e4c8:                                     ; preds = %block_43e4b3
  %987 = add i64 %986, 4
  store i64 %987, i64* %3, align 8
  %988 = load i64, i64* %884, align 8
  store i64 %988, i64* %RAX.i1333, align 8
  %989 = add i64 %986, 8
  store i64 %989, i64* %3, align 8
  %990 = load i32, i32* %324, align 4
  %991 = sext i32 %990 to i64
  store i64 %991, i64* %RCX.i1339, align 8
  %992 = add i64 %988, %991
  %993 = add i64 %986, 12
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i8*
  %995 = load i8, i8* %994, align 1
  %996 = sext i8 %995 to i64
  %997 = and i64 %996, 4294967295
  store i64 %997, i64* %RDX.i1319, align 8
  %998 = sext i8 %995 to i32
  %999 = add nsw i32 %998, -45
  %1000 = icmp ult i8 %995, 45
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = and i32 %999, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i32 %999, %998
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %26, align 1
  %1011 = icmp eq i32 %999, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %29, align 1
  %1013 = lshr i32 %999, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %32, align 1
  %1015 = lshr i32 %998, 31
  %1016 = xor i32 %1013, %1015
  %1017 = add nuw nsw i32 %1016, %1015
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %38, align 1
  %.v76 = select i1 %1011, i64 70, i64 21
  %1020 = add i64 %986, %.v76
  store i64 %1020, i64* %3, align 8
  br i1 %1011, label %block_.L_43e50e, label %block_43e4dd

block_43e4dd:                                     ; preds = %block_43e4c8
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %3, align 8
  %1022 = load i64, i64* %884, align 8
  store i64 %1022, i64* %RAX.i1333, align 8
  %1023 = add i64 %1020, 8
  store i64 %1023, i64* %3, align 8
  %1024 = load i32, i32* %324, align 4
  %1025 = sext i32 %1024 to i64
  store i64 %1025, i64* %RCX.i1339, align 8
  %1026 = add i64 %1022, %1025
  %1027 = add i64 %1020, 12
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i8*
  %1029 = load i8, i8* %1028, align 1
  %1030 = sext i8 %1029 to i64
  %1031 = and i64 %1030, 4294967295
  store i64 %1031, i64* %RDX.i1319, align 8
  %1032 = sext i8 %1029 to i32
  %1033 = add nsw i32 %1032, -126
  %1034 = icmp ult i8 %1029, 126
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %14, align 1
  %1036 = and i32 %1033, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %21, align 1
  %1041 = xor i32 %1032, 16
  %1042 = xor i32 %1041, %1033
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %26, align 1
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %29, align 1
  %1048 = lshr i32 %1033, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %32, align 1
  %1050 = lshr i32 %1032, 31
  %1051 = xor i32 %1048, %1050
  %1052 = add nuw nsw i32 %1051, %1050
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %38, align 1
  %.v77 = select i1 %1046, i64 49, i64 21
  %1055 = add i64 %1020, %.v77
  store i64 %1055, i64* %3, align 8
  br i1 %1046, label %block_.L_43e50e, label %block_43e4f2

block_43e4f2:                                     ; preds = %block_43e4dd
  %1056 = add i64 %1055, 3
  store i64 %1056, i64* %3, align 8
  %1057 = load i32, i32* %324, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i1333, align 8
  %1059 = add i64 %321, -48
  %1060 = add i64 %1055, 7
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %RCX.i1339, align 8
  %1063 = add i64 %321, -68
  %1064 = add i64 %1055, 11
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i1319, align 8
  %1068 = shl nsw i64 %1067, 2
  %1069 = add i64 %1068, %1062
  %1070 = add i64 %1055, 14
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 %1057, i32* %1071, align 4
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -68
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1077, 1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i1333, align 8
  %1080 = icmp eq i32 %1077, -1
  %1081 = icmp eq i32 %1078, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %21, align 1
  %1089 = xor i32 %1078, %1077
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %26, align 1
  %1093 = zext i1 %1081 to i8
  store i8 %1093, i8* %29, align 1
  %1094 = lshr i32 %1078, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %32, align 1
  %1096 = lshr i32 %1077, 31
  %1097 = xor i32 %1094, %1096
  %1098 = add nuw nsw i32 %1097, %1094
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %38, align 1
  %1101 = add i64 %1074, 9
  store i64 %1101, i64* %3, align 8
  store i32 %1078, i32* %1076, align 4
  %1102 = load i64, i64* %3, align 8
  %1103 = add i64 %1102, 276
  br label %block_.L_43e61d

block_.L_43e50e:                                  ; preds = %block_43e4dd, %block_43e4c8, %block_43e4b3, %block_43e49e, %block_43e489, %block_43e474, %block_43e45f, %block_43e44a, %block_43e435, %block_.L_43e420
  %1104 = phi i64 [ %1055, %block_43e4dd ], [ %1020, %block_43e4c8 ], [ %986, %block_43e4b3 ], [ %951, %block_43e49e ], [ %917, %block_43e489 ], [ %881, %block_43e474 ], [ %846, %block_43e45f ], [ %812, %block_43e44a ], [ %777, %block_43e435 ], [ %743, %block_.L_43e420 ]
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %3, align 8
  %1106 = load i64, i64* %360, align 8
  store i64 %1106, i64* %RAX.i1333, align 8
  %1107 = add i64 %1104, 8
  store i64 %1107, i64* %3, align 8
  %1108 = load i32, i32* %324, align 4
  %1109 = sext i32 %1108 to i64
  store i64 %1109, i64* %RCX.i1339, align 8
  %1110 = add i64 %1106, %1109
  %1111 = add i64 %1104, 12
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i8*
  %1113 = load i8, i8* %1112, align 1
  %1114 = sext i8 %1113 to i64
  %1115 = and i64 %1114, 4294967295
  store i64 %1115, i64* %RDX.i1319, align 8
  %1116 = sext i8 %1113 to i32
  %1117 = add nsw i32 %1116, -32
  %1118 = icmp ult i8 %1113, 32
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %14, align 1
  %1120 = and i32 %1117, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %21, align 1
  %1125 = xor i32 %1117, %1116
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %26, align 1
  %1129 = icmp eq i32 %1117, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %29, align 1
  %1131 = lshr i32 %1117, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %32, align 1
  %1133 = lshr i32 %1116, 31
  %1134 = xor i32 %1131, %1133
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %38, align 1
  %.v78 = select i1 %1129, i64 105, i64 21
  %1138 = add i64 %1104, %.v78
  store i64 %1138, i64* %3, align 8
  br i1 %1129, label %block_.L_43e577, label %block_43e523

block_43e523:                                     ; preds = %block_.L_43e50e
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %3, align 8
  %1140 = load i64, i64* %360, align 8
  store i64 %1140, i64* %RAX.i1333, align 8
  %1141 = add i64 %1138, 8
  store i64 %1141, i64* %3, align 8
  %1142 = load i32, i32* %324, align 4
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RCX.i1339, align 8
  %1144 = add i64 %1140, %1143
  %1145 = add i64 %1138, 12
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i8*
  %1147 = load i8, i8* %1146, align 1
  %1148 = sext i8 %1147 to i64
  %1149 = and i64 %1148, 4294967295
  store i64 %1149, i64* %RDX.i1319, align 8
  %1150 = sext i8 %1147 to i32
  %1151 = add nsw i32 %1150, -46
  %1152 = icmp ult i8 %1147, 46
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1151, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1151, %1150
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %26, align 1
  %1163 = icmp eq i32 %1151, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %29, align 1
  %1165 = lshr i32 %1151, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %32, align 1
  %1167 = lshr i32 %1150, 31
  %1168 = xor i32 %1165, %1167
  %1169 = add nuw nsw i32 %1168, %1167
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %38, align 1
  %.v79 = select i1 %1163, i64 84, i64 21
  %1172 = add i64 %1138, %.v79
  store i64 %1172, i64* %3, align 8
  br i1 %1163, label %block_.L_43e577, label %block_43e538

block_43e538:                                     ; preds = %block_43e523
  %1173 = add i64 %1172, 4
  store i64 %1173, i64* %3, align 8
  %1174 = load i64, i64* %360, align 8
  store i64 %1174, i64* %RAX.i1333, align 8
  %1175 = add i64 %1172, 8
  store i64 %1175, i64* %3, align 8
  %1176 = load i32, i32* %324, align 4
  %1177 = sext i32 %1176 to i64
  store i64 %1177, i64* %RCX.i1339, align 8
  %1178 = add i64 %1174, %1177
  %1179 = add i64 %1172, 12
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i8*
  %1181 = load i8, i8* %1180, align 1
  %1182 = sext i8 %1181 to i64
  %1183 = and i64 %1182, 4294967295
  store i64 %1183, i64* %RDX.i1319, align 8
  %1184 = sext i8 %1181 to i32
  %1185 = add nsw i32 %1184, -95
  %1186 = icmp ult i8 %1181, 95
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1
  %1188 = and i32 %1185, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i32 %1184, 16
  %1194 = xor i32 %1193, %1185
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %26, align 1
  %1198 = icmp eq i32 %1185, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %29, align 1
  %1200 = lshr i32 %1185, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %32, align 1
  %1202 = lshr i32 %1184, 31
  %1203 = xor i32 %1200, %1202
  %1204 = add nuw nsw i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %38, align 1
  %.v80 = select i1 %1198, i64 63, i64 21
  %1207 = add i64 %1172, %.v80
  store i64 %1207, i64* %3, align 8
  br i1 %1198, label %block_.L_43e577, label %block_43e54d

block_43e54d:                                     ; preds = %block_43e538
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %3, align 8
  %1209 = load i64, i64* %360, align 8
  store i64 %1209, i64* %RAX.i1333, align 8
  %1210 = add i64 %1207, 8
  store i64 %1210, i64* %3, align 8
  %1211 = load i32, i32* %324, align 4
  %1212 = sext i32 %1211 to i64
  store i64 %1212, i64* %RCX.i1339, align 8
  %1213 = add i64 %1209, %1212
  %1214 = add i64 %1207, 12
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i8*
  %1216 = load i8, i8* %1215, align 1
  %1217 = sext i8 %1216 to i64
  %1218 = and i64 %1217, 4294967295
  store i64 %1218, i64* %RDX.i1319, align 8
  %1219 = sext i8 %1216 to i32
  %1220 = add nsw i32 %1219, -45
  %1221 = icmp ult i8 %1216, 45
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %14, align 1
  %1223 = and i32 %1220, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %21, align 1
  %1228 = xor i32 %1220, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %26, align 1
  %1232 = icmp eq i32 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1220, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1219, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %38, align 1
  %.v81 = select i1 %1232, i64 42, i64 21
  %1241 = add i64 %1207, %.v81
  store i64 %1241, i64* %3, align 8
  br i1 %1232, label %block_.L_43e577, label %block_43e562

block_43e562:                                     ; preds = %block_43e54d
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %3, align 8
  %1243 = load i64, i64* %360, align 8
  store i64 %1243, i64* %RAX.i1333, align 8
  %1244 = add i64 %1241, 8
  store i64 %1244, i64* %3, align 8
  %1245 = load i32, i32* %324, align 4
  %1246 = sext i32 %1245 to i64
  store i64 %1246, i64* %RCX.i1339, align 8
  %1247 = add i64 %1243, %1246
  %1248 = add i64 %1241, 12
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i8*
  %1250 = load i8, i8* %1249, align 1
  %1251 = sext i8 %1250 to i64
  %1252 = and i64 %1251, 4294967295
  store i64 %1252, i64* %RDX.i1319, align 8
  %1253 = sext i8 %1250 to i32
  %1254 = add nsw i32 %1253, -126
  %1255 = icmp ult i8 %1250, 126
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %14, align 1
  %1257 = and i32 %1254, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i32 %1253, 16
  %1263 = xor i32 %1262, %1254
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %26, align 1
  %1267 = icmp eq i32 %1254, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %29, align 1
  %1269 = lshr i32 %1254, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %32, align 1
  %1271 = lshr i32 %1253, 31
  %1272 = xor i32 %1269, %1271
  %1273 = add nuw nsw i32 %1272, %1271
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %38, align 1
  %.v82 = select i1 %1267, i64 21, i64 49
  %1276 = add i64 %1241, %.v82
  store i64 %1276, i64* %3, align 8
  br i1 %1267, label %block_.L_43e577, label %block_.L_43e593

block_.L_43e577:                                  ; preds = %block_43e562, %block_43e54d, %block_43e538, %block_43e523, %block_.L_43e50e
  %1277 = phi i64 [ %1276, %block_43e562 ], [ %1241, %block_43e54d ], [ %1207, %block_43e538 ], [ %1172, %block_43e523 ], [ %1138, %block_.L_43e50e ]
  %1278 = add i64 %1277, 3
  store i64 %1278, i64* %3, align 8
  %1279 = load i32, i32* %324, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i1333, align 8
  %1281 = add i64 %321, -64
  %1282 = add i64 %1277, 7
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i64*
  %1284 = load i64, i64* %1283, align 8
  store i64 %1284, i64* %RCX.i1339, align 8
  %1285 = add i64 %321, -76
  %1286 = add i64 %1277, 11
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = sext i32 %1288 to i64
  store i64 %1289, i64* %RDX.i1319, align 8
  %1290 = shl nsw i64 %1289, 2
  %1291 = add i64 %1290, %1284
  %1292 = add i64 %1277, 14
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  store i32 %1279, i32* %1293, align 4
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -76
  %1296 = load i64, i64* %3, align 8
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1295 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = add i32 %1299, 1
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RAX.i1333, align 8
  %1302 = icmp eq i32 %1299, -1
  %1303 = icmp eq i32 %1300, 0
  %1304 = or i1 %1302, %1303
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1300, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1300, %1299
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %26, align 1
  %1315 = zext i1 %1303 to i8
  store i8 %1315, i8* %29, align 1
  %1316 = lshr i32 %1300, 31
  %1317 = trunc i32 %1316 to i8
  store i8 %1317, i8* %32, align 1
  %1318 = lshr i32 %1299, 31
  %1319 = xor i32 %1316, %1318
  %1320 = add nuw nsw i32 %1319, %1316
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %38, align 1
  %1323 = add i64 %1296, 9
  store i64 %1323, i64* %3, align 8
  store i32 %1300, i32* %1298, align 4
  %1324 = load i64, i64* %3, align 8
  %1325 = add i64 %1324, 138
  br label %block_.L_43e618

block_.L_43e593:                                  ; preds = %block_43e562
  %1326 = add i64 %321, -32
  %1327 = add i64 %1276, 4
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RAX.i1333, align 8
  %1330 = add i64 %1276, 8
  store i64 %1330, i64* %3, align 8
  %1331 = load i32, i32* %324, align 4
  %1332 = sext i32 %1331 to i64
  store i64 %1332, i64* %RCX.i1339, align 8
  %1333 = add i64 %1329, %1332
  %1334 = add i64 %1276, 12
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i8*
  %1336 = load i8, i8* %1335, align 1
  %1337 = sext i8 %1336 to i64
  %1338 = and i64 %1337, 4294967295
  store i64 %1338, i64* %RDX.i1319, align 8
  %1339 = sext i8 %1336 to i32
  %1340 = add nsw i32 %1339, -32
  %1341 = icmp ult i8 %1336, 32
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1340, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1340, %1339
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %26, align 1
  %1352 = icmp eq i32 %1340, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %29, align 1
  %1354 = lshr i32 %1340, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %32, align 1
  %1356 = lshr i32 %1339, 31
  %1357 = xor i32 %1354, %1356
  %1358 = add nuw nsw i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %38, align 1
  %.v83 = select i1 %1352, i64 105, i64 21
  %1361 = add i64 %1276, %.v83
  store i64 %1361, i64* %3, align 8
  br i1 %1352, label %block_.L_43e5fc, label %block_43e5a8

block_43e5a8:                                     ; preds = %block_.L_43e593
  %1362 = add i64 %1361, 4
  store i64 %1362, i64* %3, align 8
  %1363 = load i64, i64* %1328, align 8
  store i64 %1363, i64* %RAX.i1333, align 8
  %1364 = add i64 %1361, 8
  store i64 %1364, i64* %3, align 8
  %1365 = load i32, i32* %324, align 4
  %1366 = sext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i1339, align 8
  %1367 = add i64 %1363, %1366
  %1368 = add i64 %1361, 12
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i8*
  %1370 = load i8, i8* %1369, align 1
  %1371 = sext i8 %1370 to i64
  %1372 = and i64 %1371, 4294967295
  store i64 %1372, i64* %RDX.i1319, align 8
  %1373 = sext i8 %1370 to i32
  %1374 = add nsw i32 %1373, -46
  %1375 = icmp ult i8 %1370, 46
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %14, align 1
  %1377 = and i32 %1374, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377)
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %21, align 1
  %1382 = xor i32 %1374, %1373
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  store i8 %1385, i8* %26, align 1
  %1386 = icmp eq i32 %1374, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %29, align 1
  %1388 = lshr i32 %1374, 31
  %1389 = trunc i32 %1388 to i8
  store i8 %1389, i8* %32, align 1
  %1390 = lshr i32 %1373, 31
  %1391 = xor i32 %1388, %1390
  %1392 = add nuw nsw i32 %1391, %1390
  %1393 = icmp eq i32 %1392, 2
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %38, align 1
  %.v84 = select i1 %1386, i64 84, i64 21
  %1395 = add i64 %1361, %.v84
  store i64 %1395, i64* %3, align 8
  br i1 %1386, label %block_.L_43e5fc, label %block_43e5bd

block_43e5bd:                                     ; preds = %block_43e5a8
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %3, align 8
  %1397 = load i64, i64* %1328, align 8
  store i64 %1397, i64* %RAX.i1333, align 8
  %1398 = add i64 %1395, 8
  store i64 %1398, i64* %3, align 8
  %1399 = load i32, i32* %324, align 4
  %1400 = sext i32 %1399 to i64
  store i64 %1400, i64* %RCX.i1339, align 8
  %1401 = add i64 %1397, %1400
  %1402 = add i64 %1395, 12
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i8*
  %1404 = load i8, i8* %1403, align 1
  %1405 = sext i8 %1404 to i64
  %1406 = and i64 %1405, 4294967295
  store i64 %1406, i64* %RDX.i1319, align 8
  %1407 = sext i8 %1404 to i32
  %1408 = add nsw i32 %1407, -95
  %1409 = icmp ult i8 %1404, 95
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %14, align 1
  %1411 = and i32 %1408, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  %1416 = xor i32 %1407, 16
  %1417 = xor i32 %1416, %1408
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %26, align 1
  %1421 = icmp eq i32 %1408, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %29, align 1
  %1423 = lshr i32 %1408, 31
  %1424 = trunc i32 %1423 to i8
  store i8 %1424, i8* %32, align 1
  %1425 = lshr i32 %1407, 31
  %1426 = xor i32 %1423, %1425
  %1427 = add nuw nsw i32 %1426, %1425
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %38, align 1
  %.v85 = select i1 %1421, i64 63, i64 21
  %1430 = add i64 %1395, %.v85
  store i64 %1430, i64* %3, align 8
  br i1 %1421, label %block_.L_43e5fc, label %block_43e5d2

block_43e5d2:                                     ; preds = %block_43e5bd
  %1431 = add i64 %1430, 4
  store i64 %1431, i64* %3, align 8
  %1432 = load i64, i64* %1328, align 8
  store i64 %1432, i64* %RAX.i1333, align 8
  %1433 = add i64 %1430, 8
  store i64 %1433, i64* %3, align 8
  %1434 = load i32, i32* %324, align 4
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i1339, align 8
  %1436 = add i64 %1432, %1435
  %1437 = add i64 %1430, 12
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i8*
  %1439 = load i8, i8* %1438, align 1
  %1440 = sext i8 %1439 to i64
  %1441 = and i64 %1440, 4294967295
  store i64 %1441, i64* %RDX.i1319, align 8
  %1442 = sext i8 %1439 to i32
  %1443 = add nsw i32 %1442, -45
  %1444 = icmp ult i8 %1439, 45
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %14, align 1
  %1446 = and i32 %1443, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %21, align 1
  %1451 = xor i32 %1443, %1442
  %1452 = lshr i32 %1451, 4
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  store i8 %1454, i8* %26, align 1
  %1455 = icmp eq i32 %1443, 0
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %29, align 1
  %1457 = lshr i32 %1443, 31
  %1458 = trunc i32 %1457 to i8
  store i8 %1458, i8* %32, align 1
  %1459 = lshr i32 %1442, 31
  %1460 = xor i32 %1457, %1459
  %1461 = add nuw nsw i32 %1460, %1459
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %38, align 1
  %.v86 = select i1 %1455, i64 42, i64 21
  %1464 = add i64 %1430, %.v86
  store i64 %1464, i64* %3, align 8
  br i1 %1455, label %block_.L_43e5fc, label %block_43e5e7

block_43e5e7:                                     ; preds = %block_43e5d2
  %1465 = add i64 %1464, 4
  store i64 %1465, i64* %3, align 8
  %1466 = load i64, i64* %1328, align 8
  store i64 %1466, i64* %RAX.i1333, align 8
  %1467 = add i64 %1464, 8
  store i64 %1467, i64* %3, align 8
  %1468 = load i32, i32* %324, align 4
  %1469 = sext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i1339, align 8
  %1470 = add i64 %1466, %1469
  %1471 = add i64 %1464, 12
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i8*
  %1473 = load i8, i8* %1472, align 1
  %1474 = sext i8 %1473 to i64
  %1475 = and i64 %1474, 4294967295
  store i64 %1475, i64* %RDX.i1319, align 8
  %1476 = sext i8 %1473 to i32
  %1477 = add nsw i32 %1476, -126
  %1478 = icmp ult i8 %1473, 126
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = and i32 %1477, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1
  %1485 = xor i32 %1476, 16
  %1486 = xor i32 %1485, %1477
  %1487 = lshr i32 %1486, 4
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  store i8 %1489, i8* %26, align 1
  %1490 = icmp eq i32 %1477, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %29, align 1
  %1492 = lshr i32 %1477, 31
  %1493 = trunc i32 %1492 to i8
  store i8 %1493, i8* %32, align 1
  %1494 = lshr i32 %1476, 31
  %1495 = xor i32 %1492, %1494
  %1496 = add nuw nsw i32 %1495, %1494
  %1497 = icmp eq i32 %1496, 2
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %38, align 1
  %.v87 = select i1 %1490, i64 21, i64 44
  %1499 = add i64 %1464, %.v87
  store i64 %1499, i64* %3, align 8
  br i1 %1490, label %block_.L_43e5fc, label %block_.L_43e613

block_.L_43e5fc:                                  ; preds = %block_43e5e7, %block_43e5d2, %block_43e5bd, %block_43e5a8, %block_.L_43e593
  %1500 = phi i64 [ %1499, %block_43e5e7 ], [ %1464, %block_43e5d2 ], [ %1430, %block_43e5bd ], [ %1395, %block_43e5a8 ], [ %1361, %block_.L_43e593 ]
  %1501 = add i64 %1500, 3
  store i64 %1501, i64* %3, align 8
  %1502 = load i32, i32* %324, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i1333, align 8
  %1504 = add i64 %321, -56
  %1505 = add i64 %1500, 7
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i64*
  %1507 = load i64, i64* %1506, align 8
  store i64 %1507, i64* %RCX.i1339, align 8
  %1508 = add i64 %321, -72
  %1509 = add i64 %1500, 11
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = sext i32 %1511 to i64
  store i64 %1512, i64* %RDX.i1319, align 8
  %1513 = shl nsw i64 %1512, 2
  %1514 = add i64 %1513, %1507
  %1515 = add i64 %1500, 14
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  store i32 %1502, i32* %1516, align 4
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -72
  %1519 = load i64, i64* %3, align 8
  %1520 = add i64 %1519, 3
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1518 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = add i32 %1522, 1
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RAX.i1333, align 8
  %1525 = icmp eq i32 %1522, -1
  %1526 = icmp eq i32 %1523, 0
  %1527 = or i1 %1525, %1526
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %14, align 1
  %1529 = and i32 %1523, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %21, align 1
  %1534 = xor i32 %1523, %1522
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %26, align 1
  %1538 = zext i1 %1526 to i8
  store i8 %1538, i8* %29, align 1
  %1539 = lshr i32 %1523, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %32, align 1
  %1541 = lshr i32 %1522, 31
  %1542 = xor i32 %1539, %1541
  %1543 = add nuw nsw i32 %1542, %1539
  %1544 = icmp eq i32 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %38, align 1
  %1546 = add i64 %1519, 9
  store i64 %1546, i64* %3, align 8
  store i32 %1523, i32* %1521, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_43e613

block_.L_43e613:                                  ; preds = %block_43e5e7, %block_.L_43e5fc
  %1547 = phi i64 [ %.pre56, %block_.L_43e5fc ], [ %1499, %block_43e5e7 ]
  %1548 = add i64 %1547, 5
  store i64 %1548, i64* %3, align 8
  br label %block_.L_43e618

block_.L_43e618:                                  ; preds = %block_.L_43e613, %block_.L_43e577
  %storemerge39 = phi i64 [ %1325, %block_.L_43e577 ], [ %1548, %block_.L_43e613 ]
  %1549 = add i64 %storemerge39, 5
  store i64 %1549, i64* %3, align 8
  br label %block_.L_43e61d

block_.L_43e61d:                                  ; preds = %block_.L_43e618, %block_43e4f2
  %storemerge38 = phi i64 [ %1103, %block_43e4f2 ], [ %1549, %block_.L_43e618 ]
  %1550 = add i64 %storemerge38, 10
  store i64 %1550, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e627

block_.L_43e627:                                  ; preds = %block_.L_43e61d, %block_.L_43e41b
  %1551 = phi i64 [ %321, %block_.L_43e41b ], [ %.pre57, %block_.L_43e61d ]
  %storemerge = phi i64 [ %708, %block_.L_43e41b ], [ %1550, %block_.L_43e61d ]
  %1552 = add i64 %1551, -80
  %1553 = add i64 %storemerge, 3
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = add i32 %1555, 1
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RAX.i1333, align 8
  %1558 = icmp eq i32 %1555, -1
  %1559 = icmp eq i32 %1556, 0
  %1560 = or i1 %1558, %1559
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %14, align 1
  %1562 = and i32 %1556, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  %1567 = xor i32 %1556, %1555
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %26, align 1
  %1571 = zext i1 %1559 to i8
  store i8 %1571, i8* %29, align 1
  %1572 = lshr i32 %1556, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %32, align 1
  %1574 = lshr i32 %1555, 31
  %1575 = xor i32 %1572, %1574
  %1576 = add nuw nsw i32 %1575, %1572
  %1577 = icmp eq i32 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %38, align 1
  %1579 = add i64 %storemerge, 9
  store i64 %1579, i64* %3, align 8
  store i32 %1556, i32* %1554, align 4
  %1580 = load i64, i64* %3, align 8
  %1581 = add i64 %1580, -755
  store i64 %1581, i64* %3, align 8
  br label %block_.L_43e33d

block_.L_43e635:                                  ; preds = %block_.L_43e33d
  %1582 = add i64 %357, 5
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1584 = bitcast %union.VectorReg* %1583 to double*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1586 = bitcast %union.VectorReg* %1585 to double*
  %DIL.i725 = bitcast %union.anon* %39 to i8*
  br label %block_.L_43e63a

block_.L_43e63a:                                  ; preds = %block_43e644, %block_.L_43e635
  %1587 = phi i64 [ %321, %block_.L_43e635 ], [ %.pre53, %block_43e644 ]
  %storemerge40 = phi i64 [ %1582, %block_.L_43e635 ], [ %2079, %block_43e644 ]
  %1588 = add i64 %1587, -68
  %1589 = add i64 %storemerge40, 4
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = add i32 %1591, -1
  %1593 = icmp eq i32 %1591, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %14, align 1
  %1595 = and i32 %1592, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %21, align 1
  %1600 = xor i32 %1592, %1591
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %26, align 1
  %1604 = icmp eq i32 %1592, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %29, align 1
  %1606 = lshr i32 %1592, 31
  %1607 = trunc i32 %1606 to i8
  store i8 %1607, i8* %32, align 1
  %1608 = lshr i32 %1591, 31
  %1609 = xor i32 %1606, %1608
  %1610 = add nuw nsw i32 %1609, %1608
  %1611 = icmp eq i32 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %38, align 1
  %1613 = icmp ne i8 %1607, 0
  %1614 = xor i1 %1613, %1611
  %1615 = or i1 %1604, %1614
  %.v60 = select i1 %1615, i64 309, i64 10
  %1616 = add i64 %storemerge40, %.v60
  store i64 %1616, i64* %3, align 8
  br i1 %1615, label %block_.L_43e76f, label %block_43e644

block_43e644:                                     ; preds = %block_.L_43e63a
  %1617 = add i64 %1616, 28092
  %1618 = add i64 %1616, 5
  %1619 = load i64, i64* %6, align 8
  %1620 = add i64 %1619, -8
  %1621 = inttoptr i64 %1620 to i64*
  store i64 %1618, i64* %1621, align 8
  store i64 %1620, i64* %6, align 8
  store i64 %1617, i64* %3, align 8
  %call2_43e644 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %1617, %struct.Memory* %call2_43e318)
  %1622 = load i64, i64* %RBP.i, align 8
  %1623 = add i64 %1622, -68
  %1624 = load i64, i64* %3, align 8
  %1625 = add i64 %1624, 5
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1623 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = sitofp i32 %1627 to double
  store double %1628, double* %1584, align 1
  %1629 = load double, double* %1586, align 1
  %1630 = fmul double %1629, %1628
  store double %1630, double* %1586, align 1
  %1631 = tail call double @llvm.trunc.f64(double %1630)
  %1632 = tail call double @llvm.fabs.f64(double %1631)
  %1633 = fcmp ogt double %1632, 0x41DFFFFFFFC00000
  %1634 = fptosi double %1631 to i32
  %1635 = zext i32 %1634 to i64
  %1636 = select i1 %1633, i64 2147483648, i64 %1635
  store i64 %1636, i64* %RAX.i1333, align 8
  %1637 = add i64 %1622, -84
  %1638 = trunc i64 %1636 to i32
  %1639 = add i64 %1624, 16
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1637 to i32*
  store i32 %1638, i32* %1640, align 4
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -8
  %1643 = load i64, i64* %3, align 8
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1642 to i64*
  %1646 = load i64, i64* %1645, align 8
  store i64 %1646, i64* %RCX.i1339, align 8
  %1647 = add i64 %1641, -48
  %1648 = add i64 %1643, 8
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %RDX.i1319, align 8
  %1651 = add i64 %1641, -84
  %1652 = add i64 %1643, 12
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RSI.i1296, align 8
  %1656 = shl nsw i64 %1655, 2
  %1657 = add i64 %1656, %1650
  %1658 = add i64 %1643, 16
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = sext i32 %1660 to i64
  store i64 %1661, i64* %RDX.i1319, align 8
  %1662 = add i64 %1646, %1661
  %1663 = add i64 %1643, 20
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i8*
  %1665 = load i8, i8* %1664, align 1
  store i8 %1665, i8* %DIL.i725, align 1
  %1666 = add i64 %1641, -89
  %1667 = add i64 %1643, 24
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i8*
  store i8 %1665, i8* %1668, align 1
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -16
  %1671 = load i64, i64* %3, align 8
  %1672 = add i64 %1671, 4
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1670 to i64*
  %1674 = load i64, i64* %1673, align 8
  store i64 %1674, i64* %RCX.i1339, align 8
  %1675 = add i64 %1669, -48
  %1676 = add i64 %1671, 8
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i64*
  %1678 = load i64, i64* %1677, align 8
  store i64 %1678, i64* %RDX.i1319, align 8
  %1679 = add i64 %1669, -84
  %1680 = add i64 %1671, 12
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sext i32 %1682 to i64
  store i64 %1683, i64* %RSI.i1296, align 8
  %1684 = shl nsw i64 %1683, 2
  %1685 = add i64 %1684, %1678
  %1686 = add i64 %1671, 16
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  %1688 = load i32, i32* %1687, align 4
  %1689 = sext i32 %1688 to i64
  store i64 %1689, i64* %RDX.i1319, align 8
  %1690 = add i64 %1674, %1689
  %1691 = add i64 %1671, 20
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i8*
  %1693 = load i8, i8* %1692, align 1
  store i8 %1693, i8* %DIL.i725, align 1
  %1694 = add i64 %1669, -90
  %1695 = add i64 %1671, 24
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i8*
  store i8 %1693, i8* %1696, align 1
  %1697 = load i64, i64* %RBP.i, align 8
  %1698 = add i64 %1697, -48
  %1699 = load i64, i64* %3, align 8
  %1700 = add i64 %1699, 4
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1698 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %RCX.i1339, align 8
  %1703 = add i64 %1697, -84
  %1704 = add i64 %1699, 8
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = sext i32 %1706 to i64
  store i64 %1707, i64* %RDX.i1319, align 8
  %1708 = shl nsw i64 %1707, 2
  %1709 = add i64 %1708, %1702
  %1710 = add i64 %1699, 11
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RAX.i1333, align 8
  %1714 = add i64 %1697, -88
  %1715 = add i64 %1699, 14
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  store i32 %1712, i32* %1716, align 4
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -8
  %1719 = load i64, i64* %3, align 8
  %1720 = add i64 %1719, 4
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1718 to i64*
  %1722 = load i64, i64* %1721, align 8
  store i64 %1722, i64* %RCX.i1339, align 8
  %1723 = add i64 %1717, -48
  %1724 = add i64 %1719, 8
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RDX.i1319, align 8
  %1727 = add i64 %1717, -68
  %1728 = add i64 %1719, 11
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = add i32 %1730, -1
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RAX.i1333, align 8
  %1733 = icmp eq i32 %1730, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = and i32 %1731, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  %1740 = xor i32 %1731, %1730
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  store i8 %1743, i8* %26, align 1
  %1744 = icmp eq i32 %1731, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %29, align 1
  %1746 = lshr i32 %1731, 31
  %1747 = trunc i32 %1746 to i8
  store i8 %1747, i8* %32, align 1
  %1748 = lshr i32 %1730, 31
  %1749 = xor i32 %1746, %1748
  %1750 = add nuw nsw i32 %1749, %1748
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %38, align 1
  %1753 = sext i32 %1731 to i64
  store i64 %1753, i64* %RSI.i1296, align 8
  %1754 = shl nsw i64 %1753, 2
  %1755 = add i64 %1726, %1754
  %1756 = add i64 %1719, 21
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RDX.i1319, align 8
  %1760 = add i64 %1722, %1759
  %1761 = add i64 %1719, 25
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i8*
  %1763 = load i8, i8* %1762, align 1
  store i8 %1763, i8* %DIL.i725, align 1
  %1764 = add i64 %1719, 29
  store i64 %1764, i64* %3, align 8
  %1765 = load i64, i64* %1721, align 8
  store i64 %1765, i64* %RCX.i1339, align 8
  %1766 = add i64 %1719, 33
  store i64 %1766, i64* %3, align 8
  %1767 = load i64, i64* %1725, align 8
  store i64 %1767, i64* %RDX.i1319, align 8
  %1768 = add i64 %1717, -84
  %1769 = add i64 %1719, 37
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RSI.i1296, align 8
  %1773 = shl nsw i64 %1772, 2
  %1774 = add i64 %1773, %1767
  %1775 = add i64 %1719, 41
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = sext i32 %1777 to i64
  store i64 %1778, i64* %RDX.i1319, align 8
  %1779 = add i64 %1765, %1778
  %1780 = add i64 %1719, 45
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i8*
  store i8 %1763, i8* %1781, align 1
  %1782 = load i64, i64* %RBP.i, align 8
  %1783 = add i64 %1782, -16
  %1784 = load i64, i64* %3, align 8
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1783 to i64*
  %1787 = load i64, i64* %1786, align 8
  store i64 %1787, i64* %RCX.i1339, align 8
  %1788 = add i64 %1782, -48
  %1789 = add i64 %1784, 8
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i64*
  %1791 = load i64, i64* %1790, align 8
  store i64 %1791, i64* %RDX.i1319, align 8
  %1792 = add i64 %1782, -68
  %1793 = add i64 %1784, 11
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i32*
  %1795 = load i32, i32* %1794, align 4
  %1796 = add i32 %1795, -1
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RAX.i1333, align 8
  %1798 = icmp eq i32 %1795, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %14, align 1
  %1800 = and i32 %1796, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i32 %1796, %1795
  %1806 = lshr i32 %1805, 4
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %26, align 1
  %1809 = icmp eq i32 %1796, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %29, align 1
  %1811 = lshr i32 %1796, 31
  %1812 = trunc i32 %1811 to i8
  store i8 %1812, i8* %32, align 1
  %1813 = lshr i32 %1795, 31
  %1814 = xor i32 %1811, %1813
  %1815 = add nuw nsw i32 %1814, %1813
  %1816 = icmp eq i32 %1815, 2
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %38, align 1
  %1818 = sext i32 %1796 to i64
  store i64 %1818, i64* %RSI.i1296, align 8
  %1819 = shl nsw i64 %1818, 2
  %1820 = add i64 %1791, %1819
  %1821 = add i64 %1784, 21
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  store i64 %1824, i64* %RDX.i1319, align 8
  %1825 = add i64 %1787, %1824
  %1826 = add i64 %1784, 25
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i8*
  %1828 = load i8, i8* %1827, align 1
  store i8 %1828, i8* %DIL.i725, align 1
  %1829 = add i64 %1784, 29
  store i64 %1829, i64* %3, align 8
  %1830 = load i64, i64* %1786, align 8
  store i64 %1830, i64* %RCX.i1339, align 8
  %1831 = add i64 %1784, 33
  store i64 %1831, i64* %3, align 8
  %1832 = load i64, i64* %1790, align 8
  store i64 %1832, i64* %RDX.i1319, align 8
  %1833 = add i64 %1782, -84
  %1834 = add i64 %1784, 37
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RSI.i1296, align 8
  %1838 = shl nsw i64 %1837, 2
  %1839 = add i64 %1838, %1832
  %1840 = add i64 %1784, 41
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = sext i32 %1842 to i64
  store i64 %1843, i64* %RDX.i1319, align 8
  %1844 = add i64 %1830, %1843
  %1845 = add i64 %1784, 45
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i8*
  store i8 %1828, i8* %1846, align 1
  %1847 = load i64, i64* %RBP.i, align 8
  %1848 = add i64 %1847, -48
  %1849 = load i64, i64* %3, align 8
  %1850 = add i64 %1849, 4
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1848 to i64*
  %1852 = load i64, i64* %1851, align 8
  store i64 %1852, i64* %RCX.i1339, align 8
  %1853 = add i64 %1847, -68
  %1854 = add i64 %1849, 7
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i32*
  %1856 = load i32, i32* %1855, align 4
  %1857 = add i32 %1856, -1
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RAX.i1333, align 8
  %1859 = icmp eq i32 %1856, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %14, align 1
  %1861 = and i32 %1857, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  %1866 = xor i32 %1857, %1856
  %1867 = lshr i32 %1866, 4
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %26, align 1
  %1870 = icmp eq i32 %1857, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %29, align 1
  %1872 = lshr i32 %1857, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %32, align 1
  %1874 = lshr i32 %1856, 31
  %1875 = xor i32 %1872, %1874
  %1876 = add nuw nsw i32 %1875, %1874
  %1877 = icmp eq i32 %1876, 2
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %38, align 1
  %1879 = sext i32 %1857 to i64
  store i64 %1879, i64* %RDX.i1319, align 8
  %1880 = shl nsw i64 %1879, 2
  %1881 = add i64 %1852, %1880
  %1882 = add i64 %1849, 16
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RAX.i1333, align 8
  %1886 = add i64 %1849, 20
  store i64 %1886, i64* %3, align 8
  %1887 = load i64, i64* %1851, align 8
  store i64 %1887, i64* %RCX.i1339, align 8
  %1888 = add i64 %1847, -84
  %1889 = add i64 %1849, 24
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i32*
  %1891 = load i32, i32* %1890, align 4
  %1892 = sext i32 %1891 to i64
  store i64 %1892, i64* %RDX.i1319, align 8
  %1893 = shl nsw i64 %1892, 2
  %1894 = add i64 %1893, %1887
  %1895 = add i64 %1849, 27
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  store i32 %1884, i32* %1896, align 4
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -89
  %1899 = load i64, i64* %3, align 8
  %1900 = add i64 %1899, 4
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1898 to i8*
  %1902 = load i8, i8* %1901, align 1
  store i8 %1902, i8* %DIL.i725, align 1
  %1903 = add i64 %1897, -8
  %1904 = add i64 %1899, 8
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i64*
  %1906 = load i64, i64* %1905, align 8
  store i64 %1906, i64* %RCX.i1339, align 8
  %1907 = add i64 %1897, -48
  %1908 = add i64 %1899, 12
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %RDX.i1319, align 8
  %1911 = add i64 %1897, -68
  %1912 = add i64 %1899, 15
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = add i32 %1914, -1
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RAX.i1333, align 8
  %1917 = icmp eq i32 %1914, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %14, align 1
  %1919 = and i32 %1915, 255
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %21, align 1
  %1924 = xor i32 %1915, %1914
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %26, align 1
  %1928 = icmp eq i32 %1915, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %29, align 1
  %1930 = lshr i32 %1915, 31
  %1931 = trunc i32 %1930 to i8
  store i8 %1931, i8* %32, align 1
  %1932 = lshr i32 %1914, 31
  %1933 = xor i32 %1930, %1932
  %1934 = add nuw nsw i32 %1933, %1932
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %38, align 1
  %1937 = sext i32 %1915 to i64
  store i64 %1937, i64* %RSI.i1296, align 8
  %1938 = shl nsw i64 %1937, 2
  %1939 = add i64 %1910, %1938
  %1940 = add i64 %1899, 25
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = sext i32 %1942 to i64
  store i64 %1943, i64* %RDX.i1319, align 8
  %1944 = add i64 %1906, %1943
  %1945 = add i64 %1899, 29
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i8*
  store i8 %1902, i8* %1946, align 1
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -90
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 4
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1948 to i8*
  %1952 = load i8, i8* %1951, align 1
  store i8 %1952, i8* %DIL.i725, align 1
  %1953 = add i64 %1947, -16
  %1954 = add i64 %1949, 8
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i64*
  %1956 = load i64, i64* %1955, align 8
  store i64 %1956, i64* %RCX.i1339, align 8
  %1957 = add i64 %1947, -48
  %1958 = add i64 %1949, 12
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RDX.i1319, align 8
  %1961 = add i64 %1947, -68
  %1962 = add i64 %1949, 15
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = add i32 %1964, -1
  %1966 = zext i32 %1965 to i64
  store i64 %1966, i64* %RAX.i1333, align 8
  %1967 = icmp eq i32 %1964, 0
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = and i32 %1965, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %21, align 1
  %1974 = xor i32 %1965, %1964
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  store i8 %1977, i8* %26, align 1
  %1978 = icmp eq i32 %1965, 0
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %29, align 1
  %1980 = lshr i32 %1965, 31
  %1981 = trunc i32 %1980 to i8
  store i8 %1981, i8* %32, align 1
  %1982 = lshr i32 %1964, 31
  %1983 = xor i32 %1980, %1982
  %1984 = add nuw nsw i32 %1983, %1982
  %1985 = icmp eq i32 %1984, 2
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %38, align 1
  %1987 = sext i32 %1965 to i64
  store i64 %1987, i64* %RSI.i1296, align 8
  %1988 = shl nsw i64 %1987, 2
  %1989 = add i64 %1960, %1988
  %1990 = add i64 %1949, 25
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = sext i32 %1992 to i64
  store i64 %1993, i64* %RDX.i1319, align 8
  %1994 = add i64 %1956, %1993
  %1995 = add i64 %1949, 29
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i8*
  store i8 %1952, i8* %1996, align 1
  %1997 = load i64, i64* %RBP.i, align 8
  %1998 = add i64 %1997, -48
  %1999 = load i64, i64* %3, align 8
  %2000 = add i64 %1999, 4
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1998 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RCX.i1339, align 8
  %2003 = add i64 %1997, -68
  %2004 = add i64 %1999, 7
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = add i32 %2006, -1
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RAX.i1333, align 8
  %2009 = icmp eq i32 %2006, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %14, align 1
  %2011 = and i32 %2007, 255
  %2012 = tail call i32 @llvm.ctpop.i32(i32 %2011)
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  %2015 = xor i8 %2014, 1
  store i8 %2015, i8* %21, align 1
  %2016 = xor i32 %2007, %2006
  %2017 = lshr i32 %2016, 4
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  store i8 %2019, i8* %26, align 1
  %2020 = icmp eq i32 %2007, 0
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %29, align 1
  %2022 = lshr i32 %2007, 31
  %2023 = trunc i32 %2022 to i8
  store i8 %2023, i8* %32, align 1
  %2024 = lshr i32 %2006, 31
  %2025 = xor i32 %2022, %2024
  %2026 = add nuw nsw i32 %2025, %2024
  %2027 = icmp eq i32 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %38, align 1
  %2029 = sext i32 %2007 to i64
  store i64 %2029, i64* %RDX.i1319, align 8
  %2030 = shl nsw i64 %2029, 2
  %2031 = add i64 %2002, %2030
  %2032 = add i64 %1999, 16
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RAX.i1333, align 8
  %2036 = add i64 %1999, 20
  store i64 %2036, i64* %3, align 8
  %2037 = load i64, i64* %2001, align 8
  store i64 %2037, i64* %RCX.i1339, align 8
  %2038 = add i64 %1997, -84
  %2039 = add i64 %1999, 24
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = sext i32 %2041 to i64
  store i64 %2042, i64* %RDX.i1319, align 8
  %2043 = shl nsw i64 %2042, 2
  %2044 = add i64 %2043, %2037
  %2045 = add i64 %1999, 27
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  store i32 %2034, i32* %2046, align 4
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -68
  %2049 = load i64, i64* %3, align 8
  %2050 = add i64 %2049, 3
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2048 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = add i32 %2052, -1
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RAX.i1333, align 8
  %2055 = icmp ne i32 %2052, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %14, align 1
  %2057 = and i32 %2053, 255
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %21, align 1
  %2062 = xor i32 %2052, 16
  %2063 = xor i32 %2062, %2053
  %2064 = lshr i32 %2063, 4
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  store i8 %2066, i8* %26, align 1
  %2067 = icmp eq i32 %2053, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %29, align 1
  %2069 = lshr i32 %2053, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %32, align 1
  %2071 = lshr i32 %2052, 31
  %2072 = xor i32 %2069, %2071
  %2073 = xor i32 %2069, 1
  %2074 = add nuw nsw i32 %2072, %2073
  %2075 = icmp eq i32 %2074, 2
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %38, align 1
  %2077 = add i64 %2049, 9
  store i64 %2077, i64* %3, align 8
  store i32 %2053, i32* %2051, align 4
  %2078 = load i64, i64* %3, align 8
  %2079 = add i64 %2078, -304
  %2080 = add i64 %2078, 5
  store i64 %2080, i64* %3, align 8
  %.pre53 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e63a

block_.L_43e76f:                                  ; preds = %block_.L_43e63a
  %2081 = add i64 %1616, 5
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  br label %block_.L_43e774

block_.L_43e774:                                  ; preds = %block_43e77e, %block_.L_43e76f
  %2083 = phi i64 [ %1587, %block_.L_43e76f ], [ %.pre54, %block_43e77e ]
  %storemerge41 = phi i64 [ %2081, %block_.L_43e76f ], [ %2567, %block_43e77e ]
  %2084 = add i64 %2083, -72
  %2085 = add i64 %storemerge41, 4
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = add i32 %2087, -1
  %2089 = icmp eq i32 %2087, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %14, align 1
  %2091 = and i32 %2088, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %21, align 1
  %2096 = xor i32 %2088, %2087
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %26, align 1
  %2100 = icmp eq i32 %2088, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %29, align 1
  %2102 = lshr i32 %2088, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %32, align 1
  %2104 = lshr i32 %2087, 31
  %2105 = xor i32 %2102, %2104
  %2106 = add nuw nsw i32 %2105, %2104
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %38, align 1
  %2109 = icmp ne i8 %2103, 0
  %2110 = xor i1 %2109, %2107
  %2111 = or i1 %2100, %2110
  %.v61 = select i1 %2111, i64 303, i64 10
  %2112 = add i64 %storemerge41, %.v61
  store i64 %2112, i64* %3, align 8
  br i1 %2111, label %block_.L_43e8a3, label %block_43e77e

block_43e77e:                                     ; preds = %block_.L_43e774
  %2113 = add i64 %2112, 27778
  %2114 = add i64 %2112, 5
  %2115 = load i64, i64* %6, align 8
  %2116 = add i64 %2115, -8
  %2117 = inttoptr i64 %2116 to i64*
  store i64 %2114, i64* %2117, align 8
  store i64 %2116, i64* %6, align 8
  store i64 %2113, i64* %3, align 8
  %call2_43e77e = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %2113, %struct.Memory* %call2_43e318)
  %2118 = load i64, i64* %RBP.i, align 8
  %2119 = add i64 %2118, -72
  %2120 = load i64, i64* %3, align 8
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2119 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = sitofp i32 %2123 to double
  store double %2124, double* %1584, align 1
  %2125 = load double, double* %1586, align 1
  %2126 = fmul double %2125, %2124
  store double %2126, double* %1586, align 1
  %2127 = tail call double @llvm.trunc.f64(double %2126)
  %2128 = tail call double @llvm.fabs.f64(double %2127)
  %2129 = fcmp ogt double %2128, 0x41DFFFFFFFC00000
  %2130 = fptosi double %2127 to i32
  %2131 = zext i32 %2130 to i64
  %2132 = select i1 %2129, i64 2147483648, i64 %2131
  store i64 %2132, i64* %RAX.i1333, align 8
  %2133 = add i64 %2118, -84
  %2134 = trunc i64 %2132 to i32
  %2135 = add i64 %2120, 16
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2133 to i32*
  store i32 %2134, i32* %2136, align 4
  %2137 = load i64, i64* %RBP.i, align 8
  %2138 = add i64 %2137, -8
  %2139 = load i64, i64* %3, align 8
  %2140 = add i64 %2139, 4
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2138 to i64*
  %2142 = load i64, i64* %2141, align 8
  store i64 %2142, i64* %RCX.i1339, align 8
  %2143 = add i64 %2137, -56
  %2144 = add i64 %2139, 8
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i64*
  %2146 = load i64, i64* %2145, align 8
  store i64 %2146, i64* %RDX.i1319, align 8
  %2147 = add i64 %2137, -84
  %2148 = add i64 %2139, 12
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = sext i32 %2150 to i64
  store i64 %2151, i64* %RSI.i1296, align 8
  %2152 = shl nsw i64 %2151, 2
  %2153 = add i64 %2152, %2146
  %2154 = add i64 %2139, 16
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = sext i32 %2156 to i64
  store i64 %2157, i64* %RDX.i1319, align 8
  %2158 = add i64 %2142, %2157
  %2159 = add i64 %2139, 20
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i8*
  %2161 = load i8, i8* %2160, align 1
  store i8 %2161, i8* %DIL.i725, align 1
  %2162 = add i64 %2137, -89
  %2163 = add i64 %2139, 24
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i8*
  store i8 %2161, i8* %2164, align 1
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -16
  %2167 = load i64, i64* %3, align 8
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2166 to i64*
  %2170 = load i64, i64* %2169, align 8
  store i64 %2170, i64* %RCX.i1339, align 8
  %2171 = add i64 %2165, -56
  %2172 = add i64 %2167, 8
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i64*
  %2174 = load i64, i64* %2173, align 8
  store i64 %2174, i64* %RDX.i1319, align 8
  %2175 = add i64 %2165, -84
  %2176 = add i64 %2167, 12
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i32*
  %2178 = load i32, i32* %2177, align 4
  %2179 = sext i32 %2178 to i64
  store i64 %2179, i64* %RSI.i1296, align 8
  %2180 = shl nsw i64 %2179, 2
  %2181 = add i64 %2180, %2174
  %2182 = add i64 %2167, 16
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i32*
  %2184 = load i32, i32* %2183, align 4
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %RDX.i1319, align 8
  %2186 = add i64 %2170, %2185
  %2187 = add i64 %2167, 20
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i8*
  %2189 = load i8, i8* %2188, align 1
  store i8 %2189, i8* %DIL.i725, align 1
  %2190 = add i64 %2165, -90
  %2191 = add i64 %2167, 24
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i8*
  store i8 %2189, i8* %2192, align 1
  %2193 = load i64, i64* %RBP.i, align 8
  %2194 = add i64 %2193, -56
  %2195 = load i64, i64* %3, align 8
  %2196 = add i64 %2195, 4
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2194 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RCX.i1339, align 8
  %2199 = add i64 %2193, -84
  %2200 = add i64 %2195, 8
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = sext i32 %2202 to i64
  store i64 %2203, i64* %RDX.i1319, align 8
  %2204 = shl nsw i64 %2203, 2
  %2205 = add i64 %2204, %2198
  %2206 = add i64 %2195, 11
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1333, align 8
  %2210 = add i64 %2193, -88
  %2211 = add i64 %2195, 14
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  store i32 %2208, i32* %2212, align 4
  %2213 = load i64, i64* %RBP.i, align 8
  %2214 = add i64 %2213, -8
  %2215 = load i64, i64* %3, align 8
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2214 to i64*
  %2218 = load i64, i64* %2217, align 8
  store i64 %2218, i64* %RCX.i1339, align 8
  %2219 = add i64 %2213, -56
  %2220 = add i64 %2215, 8
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i64*
  %2222 = load i64, i64* %2221, align 8
  store i64 %2222, i64* %RDX.i1319, align 8
  %2223 = add i64 %2213, -72
  %2224 = add i64 %2215, 11
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = add i32 %2226, -1
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RAX.i1333, align 8
  %2229 = icmp eq i32 %2226, 0
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %14, align 1
  %2231 = and i32 %2227, 255
  %2232 = tail call i32 @llvm.ctpop.i32(i32 %2231)
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = xor i8 %2234, 1
  store i8 %2235, i8* %21, align 1
  %2236 = xor i32 %2227, %2226
  %2237 = lshr i32 %2236, 4
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  store i8 %2239, i8* %26, align 1
  %2240 = icmp eq i32 %2227, 0
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %29, align 1
  %2242 = lshr i32 %2227, 31
  %2243 = trunc i32 %2242 to i8
  store i8 %2243, i8* %32, align 1
  %2244 = lshr i32 %2226, 31
  %2245 = xor i32 %2242, %2244
  %2246 = add nuw nsw i32 %2245, %2244
  %2247 = icmp eq i32 %2246, 2
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %38, align 1
  %2249 = sext i32 %2227 to i64
  store i64 %2249, i64* %RSI.i1296, align 8
  %2250 = shl nsw i64 %2249, 2
  %2251 = add i64 %2222, %2250
  %2252 = add i64 %2215, 21
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = sext i32 %2254 to i64
  store i64 %2255, i64* %RDX.i1319, align 8
  %2256 = add i64 %2218, %2255
  %2257 = add i64 %2215, 25
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i8*
  %2259 = load i8, i8* %2258, align 1
  store i8 %2259, i8* %DIL.i725, align 1
  %2260 = add i64 %2215, 29
  store i64 %2260, i64* %3, align 8
  %2261 = load i64, i64* %2217, align 8
  store i64 %2261, i64* %RCX.i1339, align 8
  %2262 = add i64 %2215, 33
  store i64 %2262, i64* %3, align 8
  %2263 = load i64, i64* %2221, align 8
  store i64 %2263, i64* %RDX.i1319, align 8
  %2264 = add i64 %2213, -84
  %2265 = add i64 %2215, 37
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = sext i32 %2267 to i64
  store i64 %2268, i64* %RSI.i1296, align 8
  %2269 = shl nsw i64 %2268, 2
  %2270 = add i64 %2269, %2263
  %2271 = add i64 %2215, 41
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  %2274 = sext i32 %2273 to i64
  store i64 %2274, i64* %RDX.i1319, align 8
  %2275 = add i64 %2261, %2274
  %2276 = add i64 %2215, 45
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i8*
  store i8 %2259, i8* %2277, align 1
  %2278 = load i64, i64* %RBP.i, align 8
  %2279 = add i64 %2278, -16
  %2280 = load i64, i64* %3, align 8
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2279 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %RCX.i1339, align 8
  %2284 = add i64 %2278, -56
  %2285 = add i64 %2280, 8
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RDX.i1319, align 8
  %2288 = add i64 %2278, -72
  %2289 = add i64 %2280, 11
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = add i32 %2291, -1
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RAX.i1333, align 8
  %2294 = icmp eq i32 %2291, 0
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = and i32 %2292, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %21, align 1
  %2301 = xor i32 %2292, %2291
  %2302 = lshr i32 %2301, 4
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  store i8 %2304, i8* %26, align 1
  %2305 = icmp eq i32 %2292, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %29, align 1
  %2307 = lshr i32 %2292, 31
  %2308 = trunc i32 %2307 to i8
  store i8 %2308, i8* %32, align 1
  %2309 = lshr i32 %2291, 31
  %2310 = xor i32 %2307, %2309
  %2311 = add nuw nsw i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %38, align 1
  %2314 = sext i32 %2292 to i64
  store i64 %2314, i64* %RSI.i1296, align 8
  %2315 = shl nsw i64 %2314, 2
  %2316 = add i64 %2287, %2315
  %2317 = add i64 %2280, 21
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RDX.i1319, align 8
  %2321 = add i64 %2283, %2320
  %2322 = add i64 %2280, 25
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i8*
  %2324 = load i8, i8* %2323, align 1
  store i8 %2324, i8* %DIL.i725, align 1
  %2325 = add i64 %2280, 29
  store i64 %2325, i64* %3, align 8
  %2326 = load i64, i64* %2282, align 8
  store i64 %2326, i64* %RCX.i1339, align 8
  %2327 = add i64 %2280, 33
  store i64 %2327, i64* %3, align 8
  %2328 = load i64, i64* %2286, align 8
  store i64 %2328, i64* %RDX.i1319, align 8
  %2329 = add i64 %2278, -84
  %2330 = add i64 %2280, 37
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = sext i32 %2332 to i64
  store i64 %2333, i64* %RSI.i1296, align 8
  %2334 = shl nsw i64 %2333, 2
  %2335 = add i64 %2334, %2328
  %2336 = add i64 %2280, 41
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RDX.i1319, align 8
  %2340 = add i64 %2326, %2339
  %2341 = add i64 %2280, 45
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i8*
  store i8 %2324, i8* %2342, align 1
  %2343 = load i64, i64* %RBP.i, align 8
  %2344 = add i64 %2343, -56
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2344 to i64*
  %2348 = load i64, i64* %2347, align 8
  store i64 %2348, i64* %RCX.i1339, align 8
  %2349 = add i64 %2343, -72
  %2350 = add i64 %2345, 7
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = add i32 %2352, -1
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i1333, align 8
  %2355 = icmp eq i32 %2352, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %14, align 1
  %2357 = and i32 %2353, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  %2362 = xor i32 %2353, %2352
  %2363 = lshr i32 %2362, 4
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  store i8 %2365, i8* %26, align 1
  %2366 = icmp eq i32 %2353, 0
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %29, align 1
  %2368 = lshr i32 %2353, 31
  %2369 = trunc i32 %2368 to i8
  store i8 %2369, i8* %32, align 1
  %2370 = lshr i32 %2352, 31
  %2371 = xor i32 %2368, %2370
  %2372 = add nuw nsw i32 %2371, %2370
  %2373 = icmp eq i32 %2372, 2
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %38, align 1
  %2375 = sext i32 %2353 to i64
  store i64 %2375, i64* %RDX.i1319, align 8
  %2376 = shl nsw i64 %2375, 2
  %2377 = add i64 %2348, %2376
  %2378 = add i64 %2345, 16
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i1333, align 8
  %2382 = add i64 %2345, 20
  store i64 %2382, i64* %3, align 8
  %2383 = load i64, i64* %2347, align 8
  store i64 %2383, i64* %RCX.i1339, align 8
  %2384 = add i64 %2343, -84
  %2385 = add i64 %2345, 24
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = sext i32 %2387 to i64
  store i64 %2388, i64* %RDX.i1319, align 8
  %2389 = shl nsw i64 %2388, 2
  %2390 = add i64 %2389, %2383
  %2391 = add i64 %2345, 27
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  store i32 %2380, i32* %2392, align 4
  %2393 = load i64, i64* %RBP.i, align 8
  %2394 = add i64 %2393, -89
  %2395 = load i64, i64* %3, align 8
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2394 to i8*
  %2398 = load i8, i8* %2397, align 1
  store i8 %2398, i8* %DIL.i725, align 1
  %2399 = add i64 %2393, -8
  %2400 = add i64 %2395, 8
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i64*
  %2402 = load i64, i64* %2401, align 8
  store i64 %2402, i64* %RCX.i1339, align 8
  %2403 = add i64 %2393, -56
  %2404 = add i64 %2395, 12
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i64*
  %2406 = load i64, i64* %2405, align 8
  store i64 %2406, i64* %RDX.i1319, align 8
  %2407 = add i64 %2393, -72
  %2408 = add i64 %2395, 15
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = add i32 %2410, -1
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RAX.i1333, align 8
  %2413 = icmp eq i32 %2410, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %14, align 1
  %2415 = and i32 %2411, 255
  %2416 = tail call i32 @llvm.ctpop.i32(i32 %2415)
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = xor i8 %2418, 1
  store i8 %2419, i8* %21, align 1
  %2420 = xor i32 %2411, %2410
  %2421 = lshr i32 %2420, 4
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  store i8 %2423, i8* %26, align 1
  %2424 = icmp eq i32 %2411, 0
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %29, align 1
  %2426 = lshr i32 %2411, 31
  %2427 = trunc i32 %2426 to i8
  store i8 %2427, i8* %32, align 1
  %2428 = lshr i32 %2410, 31
  %2429 = xor i32 %2426, %2428
  %2430 = add nuw nsw i32 %2429, %2428
  %2431 = icmp eq i32 %2430, 2
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %38, align 1
  %2433 = sext i32 %2411 to i64
  store i64 %2433, i64* %RSI.i1296, align 8
  %2434 = shl nsw i64 %2433, 2
  %2435 = add i64 %2406, %2434
  %2436 = add i64 %2395, 25
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = sext i32 %2438 to i64
  store i64 %2439, i64* %RDX.i1319, align 8
  %2440 = add i64 %2402, %2439
  %2441 = add i64 %2395, 29
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i8*
  store i8 %2398, i8* %2442, align 1
  %2443 = load i64, i64* %RBP.i, align 8
  %2444 = add i64 %2443, -90
  %2445 = load i64, i64* %3, align 8
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2444 to i8*
  %2448 = load i8, i8* %2447, align 1
  store i8 %2448, i8* %DIL.i725, align 1
  %2449 = add i64 %2443, -16
  %2450 = add i64 %2445, 8
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i64*
  %2452 = load i64, i64* %2451, align 8
  store i64 %2452, i64* %RCX.i1339, align 8
  %2453 = add i64 %2443, -56
  %2454 = add i64 %2445, 12
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i64*
  %2456 = load i64, i64* %2455, align 8
  store i64 %2456, i64* %RDX.i1319, align 8
  %2457 = add i64 %2443, -72
  %2458 = add i64 %2445, 15
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = add i32 %2460, -1
  %2462 = zext i32 %2461 to i64
  store i64 %2462, i64* %RAX.i1333, align 8
  %2463 = icmp eq i32 %2460, 0
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %14, align 1
  %2465 = and i32 %2461, 255
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  store i8 %2469, i8* %21, align 1
  %2470 = xor i32 %2461, %2460
  %2471 = lshr i32 %2470, 4
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  store i8 %2473, i8* %26, align 1
  %2474 = icmp eq i32 %2461, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %29, align 1
  %2476 = lshr i32 %2461, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %32, align 1
  %2478 = lshr i32 %2460, 31
  %2479 = xor i32 %2476, %2478
  %2480 = add nuw nsw i32 %2479, %2478
  %2481 = icmp eq i32 %2480, 2
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %38, align 1
  %2483 = sext i32 %2461 to i64
  store i64 %2483, i64* %RSI.i1296, align 8
  %2484 = shl nsw i64 %2483, 2
  %2485 = add i64 %2456, %2484
  %2486 = add i64 %2445, 25
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = sext i32 %2488 to i64
  store i64 %2489, i64* %RDX.i1319, align 8
  %2490 = add i64 %2452, %2489
  %2491 = add i64 %2445, 29
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i8*
  store i8 %2448, i8* %2492, align 1
  %2493 = load i64, i64* %RBP.i, align 8
  %2494 = add i64 %2493, -88
  %2495 = load i64, i64* %3, align 8
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2494 to i32*
  %2498 = load i32, i32* %2497, align 4
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RAX.i1333, align 8
  %2500 = add i64 %2493, -56
  %2501 = add i64 %2495, 7
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i64*
  %2503 = load i64, i64* %2502, align 8
  store i64 %2503, i64* %RCX.i1339, align 8
  %2504 = add i64 %2493, -72
  %2505 = add i64 %2495, 11
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = add i32 %2507, -1
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %2082, align 8
  %2510 = icmp eq i32 %2507, 0
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %14, align 1
  %2512 = and i32 %2508, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %21, align 1
  %2517 = xor i32 %2508, %2507
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %26, align 1
  %2521 = icmp eq i32 %2508, 0
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %29, align 1
  %2523 = lshr i32 %2508, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %32, align 1
  %2525 = lshr i32 %2507, 31
  %2526 = xor i32 %2523, %2525
  %2527 = add nuw nsw i32 %2526, %2525
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %38, align 1
  %2530 = sext i32 %2508 to i64
  store i64 %2530, i64* %RDX.i1319, align 8
  %2531 = shl nsw i64 %2530, 2
  %2532 = add i64 %2503, %2531
  %2533 = add i64 %2495, 21
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  store i32 %2498, i32* %2534, align 4
  %2535 = load i64, i64* %RBP.i, align 8
  %2536 = add i64 %2535, -72
  %2537 = load i64, i64* %3, align 8
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2536 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = add i32 %2540, -1
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RAX.i1333, align 8
  %2543 = icmp ne i32 %2540, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %14, align 1
  %2545 = and i32 %2541, 255
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %21, align 1
  %2550 = xor i32 %2540, 16
  %2551 = xor i32 %2550, %2541
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %26, align 1
  %2555 = icmp eq i32 %2541, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %29, align 1
  %2557 = lshr i32 %2541, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %32, align 1
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2557, %2559
  %2561 = xor i32 %2557, 1
  %2562 = add nuw nsw i32 %2560, %2561
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %38, align 1
  %2565 = add i64 %2537, 9
  store i64 %2565, i64* %3, align 8
  store i32 %2541, i32* %2539, align 4
  %2566 = load i64, i64* %3, align 8
  %2567 = add i64 %2566, -298
  %2568 = add i64 %2566, 5
  store i64 %2568, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e774

block_.L_43e8a3:                                  ; preds = %block_.L_43e774
  %2569 = add i64 %2112, 5
  br label %block_.L_43e8a8

block_.L_43e8a8:                                  ; preds = %block_43e8b2, %block_.L_43e8a3
  %2570 = phi i64 [ %2083, %block_.L_43e8a3 ], [ %.pre55, %block_43e8b2 ]
  %storemerge42 = phi i64 [ %2569, %block_.L_43e8a3 ], [ %3054, %block_43e8b2 ]
  %2571 = add i64 %2570, -76
  %2572 = add i64 %storemerge42, 4
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = add i32 %2574, -1
  %2576 = icmp eq i32 %2574, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %14, align 1
  %2578 = and i32 %2575, 255
  %2579 = tail call i32 @llvm.ctpop.i32(i32 %2578)
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %21, align 1
  %2583 = xor i32 %2575, %2574
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  store i8 %2586, i8* %26, align 1
  %2587 = icmp eq i32 %2575, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %29, align 1
  %2589 = lshr i32 %2575, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %32, align 1
  %2591 = lshr i32 %2574, 31
  %2592 = xor i32 %2589, %2591
  %2593 = add nuw nsw i32 %2592, %2591
  %2594 = icmp eq i32 %2593, 2
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %38, align 1
  %2596 = icmp ne i8 %2590, 0
  %2597 = xor i1 %2596, %2594
  %2598 = or i1 %2587, %2597
  %.v62 = select i1 %2598, i64 303, i64 10
  %2599 = add i64 %storemerge42, %.v62
  store i64 %2599, i64* %3, align 8
  br i1 %2598, label %block_.L_43e9d7, label %block_43e8b2

block_43e8b2:                                     ; preds = %block_.L_43e8a8
  %2600 = add i64 %2599, 27470
  %2601 = add i64 %2599, 5
  %2602 = load i64, i64* %6, align 8
  %2603 = add i64 %2602, -8
  %2604 = inttoptr i64 %2603 to i64*
  store i64 %2601, i64* %2604, align 8
  store i64 %2603, i64* %6, align 8
  store i64 %2600, i64* %3, align 8
  %call2_43e8b2 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %2600, %struct.Memory* %call2_43e318)
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -76
  %2607 = load i64, i64* %3, align 8
  %2608 = add i64 %2607, 5
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2606 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = sitofp i32 %2610 to double
  store double %2611, double* %1584, align 1
  %2612 = load double, double* %1586, align 1
  %2613 = fmul double %2612, %2611
  store double %2613, double* %1586, align 1
  %2614 = tail call double @llvm.trunc.f64(double %2613)
  %2615 = tail call double @llvm.fabs.f64(double %2614)
  %2616 = fcmp ogt double %2615, 0x41DFFFFFFFC00000
  %2617 = fptosi double %2614 to i32
  %2618 = zext i32 %2617 to i64
  %2619 = select i1 %2616, i64 2147483648, i64 %2618
  store i64 %2619, i64* %RAX.i1333, align 8
  %2620 = add i64 %2605, -84
  %2621 = trunc i64 %2619 to i32
  %2622 = add i64 %2607, 16
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2620 to i32*
  store i32 %2621, i32* %2623, align 4
  %2624 = load i64, i64* %RBP.i, align 8
  %2625 = add i64 %2624, -8
  %2626 = load i64, i64* %3, align 8
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %3, align 8
  %2628 = inttoptr i64 %2625 to i64*
  %2629 = load i64, i64* %2628, align 8
  store i64 %2629, i64* %RCX.i1339, align 8
  %2630 = add i64 %2624, -64
  %2631 = add i64 %2626, 8
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i64*
  %2633 = load i64, i64* %2632, align 8
  store i64 %2633, i64* %RDX.i1319, align 8
  %2634 = add i64 %2624, -84
  %2635 = add i64 %2626, 12
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = sext i32 %2637 to i64
  store i64 %2638, i64* %RSI.i1296, align 8
  %2639 = shl nsw i64 %2638, 2
  %2640 = add i64 %2639, %2633
  %2641 = add i64 %2626, 16
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = sext i32 %2643 to i64
  store i64 %2644, i64* %RDX.i1319, align 8
  %2645 = add i64 %2629, %2644
  %2646 = add i64 %2626, 20
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i8*
  %2648 = load i8, i8* %2647, align 1
  store i8 %2648, i8* %DIL.i725, align 1
  %2649 = add i64 %2624, -89
  %2650 = add i64 %2626, 24
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2649 to i8*
  store i8 %2648, i8* %2651, align 1
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -16
  %2654 = load i64, i64* %3, align 8
  %2655 = add i64 %2654, 4
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2653 to i64*
  %2657 = load i64, i64* %2656, align 8
  store i64 %2657, i64* %RCX.i1339, align 8
  %2658 = add i64 %2652, -64
  %2659 = add i64 %2654, 8
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i64*
  %2661 = load i64, i64* %2660, align 8
  store i64 %2661, i64* %RDX.i1319, align 8
  %2662 = add i64 %2652, -84
  %2663 = add i64 %2654, 12
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = sext i32 %2665 to i64
  store i64 %2666, i64* %RSI.i1296, align 8
  %2667 = shl nsw i64 %2666, 2
  %2668 = add i64 %2667, %2661
  %2669 = add i64 %2654, 16
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i32*
  %2671 = load i32, i32* %2670, align 4
  %2672 = sext i32 %2671 to i64
  store i64 %2672, i64* %RDX.i1319, align 8
  %2673 = add i64 %2657, %2672
  %2674 = add i64 %2654, 20
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i8*
  %2676 = load i8, i8* %2675, align 1
  store i8 %2676, i8* %DIL.i725, align 1
  %2677 = add i64 %2652, -90
  %2678 = add i64 %2654, 24
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i8*
  store i8 %2676, i8* %2679, align 1
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -64
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %RCX.i1339, align 8
  %2686 = add i64 %2680, -84
  %2687 = add i64 %2682, 8
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = sext i32 %2689 to i64
  store i64 %2690, i64* %RDX.i1319, align 8
  %2691 = shl nsw i64 %2690, 2
  %2692 = add i64 %2691, %2685
  %2693 = add i64 %2682, 11
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RAX.i1333, align 8
  %2697 = add i64 %2680, -88
  %2698 = add i64 %2682, 14
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  store i32 %2695, i32* %2699, align 4
  %2700 = load i64, i64* %RBP.i, align 8
  %2701 = add i64 %2700, -8
  %2702 = load i64, i64* %3, align 8
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2701 to i64*
  %2705 = load i64, i64* %2704, align 8
  store i64 %2705, i64* %RCX.i1339, align 8
  %2706 = add i64 %2700, -64
  %2707 = add i64 %2702, 8
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RDX.i1319, align 8
  %2710 = add i64 %2700, -76
  %2711 = add i64 %2702, 11
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  %2713 = load i32, i32* %2712, align 4
  %2714 = add i32 %2713, -1
  %2715 = zext i32 %2714 to i64
  store i64 %2715, i64* %RAX.i1333, align 8
  %2716 = icmp eq i32 %2713, 0
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %14, align 1
  %2718 = and i32 %2714, 255
  %2719 = tail call i32 @llvm.ctpop.i32(i32 %2718)
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %21, align 1
  %2723 = xor i32 %2714, %2713
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %26, align 1
  %2727 = icmp eq i32 %2714, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %29, align 1
  %2729 = lshr i32 %2714, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %32, align 1
  %2731 = lshr i32 %2713, 31
  %2732 = xor i32 %2729, %2731
  %2733 = add nuw nsw i32 %2732, %2731
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %38, align 1
  %2736 = sext i32 %2714 to i64
  store i64 %2736, i64* %RSI.i1296, align 8
  %2737 = shl nsw i64 %2736, 2
  %2738 = add i64 %2709, %2737
  %2739 = add i64 %2702, 21
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i32*
  %2741 = load i32, i32* %2740, align 4
  %2742 = sext i32 %2741 to i64
  store i64 %2742, i64* %RDX.i1319, align 8
  %2743 = add i64 %2705, %2742
  %2744 = add i64 %2702, 25
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i8*
  %2746 = load i8, i8* %2745, align 1
  store i8 %2746, i8* %DIL.i725, align 1
  %2747 = add i64 %2702, 29
  store i64 %2747, i64* %3, align 8
  %2748 = load i64, i64* %2704, align 8
  store i64 %2748, i64* %RCX.i1339, align 8
  %2749 = add i64 %2702, 33
  store i64 %2749, i64* %3, align 8
  %2750 = load i64, i64* %2708, align 8
  store i64 %2750, i64* %RDX.i1319, align 8
  %2751 = add i64 %2700, -84
  %2752 = add i64 %2702, 37
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = sext i32 %2754 to i64
  store i64 %2755, i64* %RSI.i1296, align 8
  %2756 = shl nsw i64 %2755, 2
  %2757 = add i64 %2756, %2750
  %2758 = add i64 %2702, 41
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = sext i32 %2760 to i64
  store i64 %2761, i64* %RDX.i1319, align 8
  %2762 = add i64 %2748, %2761
  %2763 = add i64 %2702, 45
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i8*
  store i8 %2746, i8* %2764, align 1
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -16
  %2767 = load i64, i64* %3, align 8
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %3, align 8
  %2769 = inttoptr i64 %2766 to i64*
  %2770 = load i64, i64* %2769, align 8
  store i64 %2770, i64* %RCX.i1339, align 8
  %2771 = add i64 %2765, -64
  %2772 = add i64 %2767, 8
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i64*
  %2774 = load i64, i64* %2773, align 8
  store i64 %2774, i64* %RDX.i1319, align 8
  %2775 = add i64 %2765, -76
  %2776 = add i64 %2767, 11
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = add i32 %2778, -1
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i1333, align 8
  %2781 = icmp eq i32 %2778, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %14, align 1
  %2783 = and i32 %2779, 255
  %2784 = tail call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  store i8 %2787, i8* %21, align 1
  %2788 = xor i32 %2779, %2778
  %2789 = lshr i32 %2788, 4
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %26, align 1
  %2792 = icmp eq i32 %2779, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %29, align 1
  %2794 = lshr i32 %2779, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %32, align 1
  %2796 = lshr i32 %2778, 31
  %2797 = xor i32 %2794, %2796
  %2798 = add nuw nsw i32 %2797, %2796
  %2799 = icmp eq i32 %2798, 2
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %38, align 1
  %2801 = sext i32 %2779 to i64
  store i64 %2801, i64* %RSI.i1296, align 8
  %2802 = shl nsw i64 %2801, 2
  %2803 = add i64 %2774, %2802
  %2804 = add i64 %2767, 21
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = sext i32 %2806 to i64
  store i64 %2807, i64* %RDX.i1319, align 8
  %2808 = add i64 %2770, %2807
  %2809 = add i64 %2767, 25
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i8*
  %2811 = load i8, i8* %2810, align 1
  store i8 %2811, i8* %DIL.i725, align 1
  %2812 = add i64 %2767, 29
  store i64 %2812, i64* %3, align 8
  %2813 = load i64, i64* %2769, align 8
  store i64 %2813, i64* %RCX.i1339, align 8
  %2814 = add i64 %2767, 33
  store i64 %2814, i64* %3, align 8
  %2815 = load i64, i64* %2773, align 8
  store i64 %2815, i64* %RDX.i1319, align 8
  %2816 = add i64 %2765, -84
  %2817 = add i64 %2767, 37
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = sext i32 %2819 to i64
  store i64 %2820, i64* %RSI.i1296, align 8
  %2821 = shl nsw i64 %2820, 2
  %2822 = add i64 %2821, %2815
  %2823 = add i64 %2767, 41
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i1319, align 8
  %2827 = add i64 %2813, %2826
  %2828 = add i64 %2767, 45
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i8*
  store i8 %2811, i8* %2829, align 1
  %2830 = load i64, i64* %RBP.i, align 8
  %2831 = add i64 %2830, -64
  %2832 = load i64, i64* %3, align 8
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2831 to i64*
  %2835 = load i64, i64* %2834, align 8
  store i64 %2835, i64* %RCX.i1339, align 8
  %2836 = add i64 %2830, -76
  %2837 = add i64 %2832, 7
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = add i32 %2839, -1
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RAX.i1333, align 8
  %2842 = icmp eq i32 %2839, 0
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %14, align 1
  %2844 = and i32 %2840, 255
  %2845 = tail call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  store i8 %2848, i8* %21, align 1
  %2849 = xor i32 %2840, %2839
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %26, align 1
  %2853 = icmp eq i32 %2840, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %29, align 1
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %32, align 1
  %2857 = lshr i32 %2839, 31
  %2858 = xor i32 %2855, %2857
  %2859 = add nuw nsw i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %38, align 1
  %2862 = sext i32 %2840 to i64
  store i64 %2862, i64* %RDX.i1319, align 8
  %2863 = shl nsw i64 %2862, 2
  %2864 = add i64 %2835, %2863
  %2865 = add i64 %2832, 16
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RAX.i1333, align 8
  %2869 = add i64 %2832, 20
  store i64 %2869, i64* %3, align 8
  %2870 = load i64, i64* %2834, align 8
  store i64 %2870, i64* %RCX.i1339, align 8
  %2871 = add i64 %2830, -84
  %2872 = add i64 %2832, 24
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = sext i32 %2874 to i64
  store i64 %2875, i64* %RDX.i1319, align 8
  %2876 = shl nsw i64 %2875, 2
  %2877 = add i64 %2876, %2870
  %2878 = add i64 %2832, 27
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  store i32 %2867, i32* %2879, align 4
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -89
  %2882 = load i64, i64* %3, align 8
  %2883 = add i64 %2882, 4
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2881 to i8*
  %2885 = load i8, i8* %2884, align 1
  store i8 %2885, i8* %DIL.i725, align 1
  %2886 = add i64 %2880, -8
  %2887 = add i64 %2882, 8
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i64*
  %2889 = load i64, i64* %2888, align 8
  store i64 %2889, i64* %RCX.i1339, align 8
  %2890 = add i64 %2880, -64
  %2891 = add i64 %2882, 12
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i64*
  %2893 = load i64, i64* %2892, align 8
  store i64 %2893, i64* %RDX.i1319, align 8
  %2894 = add i64 %2880, -76
  %2895 = add i64 %2882, 15
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i32*
  %2897 = load i32, i32* %2896, align 4
  %2898 = add i32 %2897, -1
  %2899 = zext i32 %2898 to i64
  store i64 %2899, i64* %RAX.i1333, align 8
  %2900 = icmp eq i32 %2897, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %14, align 1
  %2902 = and i32 %2898, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %21, align 1
  %2907 = xor i32 %2898, %2897
  %2908 = lshr i32 %2907, 4
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  store i8 %2910, i8* %26, align 1
  %2911 = icmp eq i32 %2898, 0
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %29, align 1
  %2913 = lshr i32 %2898, 31
  %2914 = trunc i32 %2913 to i8
  store i8 %2914, i8* %32, align 1
  %2915 = lshr i32 %2897, 31
  %2916 = xor i32 %2913, %2915
  %2917 = add nuw nsw i32 %2916, %2915
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %38, align 1
  %2920 = sext i32 %2898 to i64
  store i64 %2920, i64* %RSI.i1296, align 8
  %2921 = shl nsw i64 %2920, 2
  %2922 = add i64 %2893, %2921
  %2923 = add i64 %2882, 25
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i32*
  %2925 = load i32, i32* %2924, align 4
  %2926 = sext i32 %2925 to i64
  store i64 %2926, i64* %RDX.i1319, align 8
  %2927 = add i64 %2889, %2926
  %2928 = add i64 %2882, 29
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i8*
  store i8 %2885, i8* %2929, align 1
  %2930 = load i64, i64* %RBP.i, align 8
  %2931 = add i64 %2930, -90
  %2932 = load i64, i64* %3, align 8
  %2933 = add i64 %2932, 4
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2931 to i8*
  %2935 = load i8, i8* %2934, align 1
  store i8 %2935, i8* %DIL.i725, align 1
  %2936 = add i64 %2930, -16
  %2937 = add i64 %2932, 8
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RCX.i1339, align 8
  %2940 = add i64 %2930, -64
  %2941 = add i64 %2932, 12
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i64*
  %2943 = load i64, i64* %2942, align 8
  store i64 %2943, i64* %RDX.i1319, align 8
  %2944 = add i64 %2930, -76
  %2945 = add i64 %2932, 15
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i32*
  %2947 = load i32, i32* %2946, align 4
  %2948 = add i32 %2947, -1
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RAX.i1333, align 8
  %2950 = icmp eq i32 %2947, 0
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %14, align 1
  %2952 = and i32 %2948, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %21, align 1
  %2957 = xor i32 %2948, %2947
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %26, align 1
  %2961 = icmp eq i32 %2948, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %29, align 1
  %2963 = lshr i32 %2948, 31
  %2964 = trunc i32 %2963 to i8
  store i8 %2964, i8* %32, align 1
  %2965 = lshr i32 %2947, 31
  %2966 = xor i32 %2963, %2965
  %2967 = add nuw nsw i32 %2966, %2965
  %2968 = icmp eq i32 %2967, 2
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %38, align 1
  %2970 = sext i32 %2948 to i64
  store i64 %2970, i64* %RSI.i1296, align 8
  %2971 = shl nsw i64 %2970, 2
  %2972 = add i64 %2943, %2971
  %2973 = add i64 %2932, 25
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = sext i32 %2975 to i64
  store i64 %2976, i64* %RDX.i1319, align 8
  %2977 = add i64 %2939, %2976
  %2978 = add i64 %2932, 29
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i8*
  store i8 %2935, i8* %2979, align 1
  %2980 = load i64, i64* %RBP.i, align 8
  %2981 = add i64 %2980, -88
  %2982 = load i64, i64* %3, align 8
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2981 to i32*
  %2985 = load i32, i32* %2984, align 4
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RAX.i1333, align 8
  %2987 = add i64 %2980, -64
  %2988 = add i64 %2982, 7
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i64*
  %2990 = load i64, i64* %2989, align 8
  store i64 %2990, i64* %RCX.i1339, align 8
  %2991 = add i64 %2980, -76
  %2992 = add i64 %2982, 11
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = add i32 %2994, -1
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %2082, align 8
  %2997 = icmp eq i32 %2994, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %14, align 1
  %2999 = and i32 %2995, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %21, align 1
  %3004 = xor i32 %2995, %2994
  %3005 = lshr i32 %3004, 4
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  store i8 %3007, i8* %26, align 1
  %3008 = icmp eq i32 %2995, 0
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %29, align 1
  %3010 = lshr i32 %2995, 31
  %3011 = trunc i32 %3010 to i8
  store i8 %3011, i8* %32, align 1
  %3012 = lshr i32 %2994, 31
  %3013 = xor i32 %3010, %3012
  %3014 = add nuw nsw i32 %3013, %3012
  %3015 = icmp eq i32 %3014, 2
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %38, align 1
  %3017 = sext i32 %2995 to i64
  store i64 %3017, i64* %RDX.i1319, align 8
  %3018 = shl nsw i64 %3017, 2
  %3019 = add i64 %2990, %3018
  %3020 = add i64 %2982, 21
  store i64 %3020, i64* %3, align 8
  %3021 = inttoptr i64 %3019 to i32*
  store i32 %2985, i32* %3021, align 4
  %3022 = load i64, i64* %RBP.i, align 8
  %3023 = add i64 %3022, -76
  %3024 = load i64, i64* %3, align 8
  %3025 = add i64 %3024, 3
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3023 to i32*
  %3027 = load i32, i32* %3026, align 4
  %3028 = add i32 %3027, -1
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RAX.i1333, align 8
  %3030 = icmp ne i32 %3027, 0
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %14, align 1
  %3032 = and i32 %3028, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %21, align 1
  %3037 = xor i32 %3027, 16
  %3038 = xor i32 %3037, %3028
  %3039 = lshr i32 %3038, 4
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  store i8 %3041, i8* %26, align 1
  %3042 = icmp eq i32 %3028, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %29, align 1
  %3044 = lshr i32 %3028, 31
  %3045 = trunc i32 %3044 to i8
  store i8 %3045, i8* %32, align 1
  %3046 = lshr i32 %3027, 31
  %3047 = xor i32 %3044, %3046
  %3048 = xor i32 %3044, 1
  %3049 = add nuw nsw i32 %3047, %3048
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %38, align 1
  %3052 = add i64 %3024, 9
  store i64 %3052, i64* %3, align 8
  store i32 %3028, i32* %3026, align 4
  %3053 = load i64, i64* %3, align 8
  %3054 = add i64 %3053, -298
  %3055 = add i64 %3053, 5
  store i64 %3055, i64* %3, align 8
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e8a8

block_.L_43e9d7:                                  ; preds = %block_.L_43e8a8
  %3056 = add i64 %2570, -48
  %3057 = add i64 %2599, 4
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i64*
  %3059 = load i64, i64* %3058, align 8
  store i64 %3059, i64* %RAX.i1333, align 8
  store i64 %3059, i64* %RDI.i25, align 8
  %3060 = add i64 %2599, -251479
  %3061 = add i64 %2599, 12
  %3062 = load i64, i64* %6, align 8
  %3063 = add i64 %3062, -8
  %3064 = inttoptr i64 %3063 to i64*
  store i64 %3061, i64* %3064, align 8
  store i64 %3063, i64* %6, align 8
  store i64 %3060, i64* %3, align 8
  %3065 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_43e318)
  %3066 = load i64, i64* %RBP.i, align 8
  %3067 = add i64 %3066, -56
  %3068 = load i64, i64* %3, align 8
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3067 to i64*
  %3071 = load i64, i64* %3070, align 8
  store i64 %3071, i64* %RAX.i1333, align 8
  store i64 %3071, i64* %RDI.i25, align 8
  %3072 = add i64 %3068, -251491
  %3073 = add i64 %3068, 12
  %3074 = load i64, i64* %6, align 8
  %3075 = add i64 %3074, -8
  %3076 = inttoptr i64 %3075 to i64*
  store i64 %3073, i64* %3076, align 8
  store i64 %3075, i64* %6, align 8
  store i64 %3072, i64* %3, align 8
  %3077 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %3065)
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -64
  %3080 = load i64, i64* %3, align 8
  %3081 = add i64 %3080, 4
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3079 to i64*
  %3083 = load i64, i64* %3082, align 8
  store i64 %3083, i64* %RAX.i1333, align 8
  store i64 %3083, i64* %RDI.i25, align 8
  %3084 = add i64 %3080, -251503
  %3085 = add i64 %3080, 12
  %3086 = load i64, i64* %6, align 8
  %3087 = add i64 %3086, -8
  %3088 = inttoptr i64 %3087 to i64*
  store i64 %3085, i64* %3088, align 8
  store i64 %3087, i64* %6, align 8
  store i64 %3084, i64* %3, align 8
  %3089 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %3077)
  %3090 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i1333, align 8
  %3091 = load i64, i64* %6, align 8
  %3092 = add i64 %3091, 128
  store i64 %3092, i64* %6, align 8
  %3093 = icmp ugt i64 %3091, -129
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %14, align 1
  %3095 = trunc i64 %3092 to i32
  %3096 = and i32 %3095, 255
  %3097 = tail call i32 @llvm.ctpop.i32(i32 %3096)
  %3098 = trunc i32 %3097 to i8
  %3099 = and i8 %3098, 1
  %3100 = xor i8 %3099, 1
  store i8 %3100, i8* %21, align 1
  %3101 = xor i64 %3092, %3091
  %3102 = lshr i64 %3101, 4
  %3103 = trunc i64 %3102 to i8
  %3104 = and i8 %3103, 1
  store i8 %3104, i8* %26, align 1
  %3105 = icmp eq i64 %3092, 0
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %29, align 1
  %3107 = lshr i64 %3092, 63
  %3108 = trunc i64 %3107 to i8
  store i8 %3108, i8* %32, align 1
  %3109 = lshr i64 %3091, 63
  %3110 = xor i64 %3107, %3109
  %3111 = add nuw nsw i64 %3110, %3107
  %3112 = icmp eq i64 %3111, 2
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %38, align 1
  %3114 = add i64 %3090, 13
  store i64 %3114, i64* %3, align 8
  %3115 = add i64 %3091, 136
  %3116 = inttoptr i64 %3092 to i64*
  %3117 = load i64, i64* %3116, align 8
  store i64 %3117, i64* %RBP.i, align 8
  store i64 %3115, i64* %6, align 8
  %3118 = add i64 %3090, 14
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3115 to i64*
  %3120 = load i64, i64* %3119, align 8
  store i64 %3120, i64* %3, align 8
  %3121 = add i64 %3091, 144
  store i64 %3121, i64* %6, align 8
  ret %struct.Memory* %3089
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e27a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e299(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x23c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 572, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x23d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 573, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x23e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 574, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jge_.L_43e635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_je_.L_43e3b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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
define %struct.Memory* @routine_jne_.L_43e420(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e41b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43e627(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e50e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e61d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jmpq_.L_43e618(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e5fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e613(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e622(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e33d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e63a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jle_.L_43e76f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sre_random(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -89
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -90
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
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
define %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -89
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -90
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e774(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jle_.L_43e8a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
define %struct.Memory* @routine_jmpq_.L_43e8a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jle_.L_43e9d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
