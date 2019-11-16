; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x581a3a_type = type <{ [8 x i8] }>
%G__0x581cc1_type = type <{ [8 x i8] }>
%G__0x581cd4_type = type <{ [8 x i8] }>
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
@G__0x581a3a = global %G__0x581a3a_type zeroinitializer
@G__0x581cc1 = global %G__0x581cc1_type zeroinitializer
@G__0x581cd4 = global %G__0x581cd4_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @unconditional_life(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1096
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1088
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
  %RAX.i357 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 3, i64* %RAX.i357, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i373 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -16
  %42 = load i64, i64* %RDI.i373, align 8
  %43 = add i64 %10, 19
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i388 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %ESI.i388, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 1, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RAX.i357, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -12
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 3
  store i64 %66, i64* %3, align 8
  %67 = trunc i64 %62 to i32
  %68 = inttoptr i64 %64 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %67, %69
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RAX.i357, align 8
  %72 = icmp ult i32 %67, %69
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %70, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %69, %67
  %80 = xor i32 %79, %70
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %26, align 1
  %84 = icmp eq i32 %70, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %29, align 1
  %86 = lshr i32 %70, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %32, align 1
  %88 = lshr i32 %67, 31
  %89 = lshr i32 %69, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %86, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %38, align 1
  %EAX.i896 = bitcast %union.anon* %39 to i32*
  %95 = add i64 %63, -1016
  %96 = add i64 %65, 9
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %70, i32* %97, align 4
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i881 = getelementptr inbounds %union.anon, %union.anon* %98, i64 0, i32 0
  %ECX.i877 = bitcast %union.anon* %98 to i32*
  %RSI.i870 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %RDX.i860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_47a66e

block_.L_47a66e:                                  ; preds = %block_.L_47a83f, %entry
  %101 = phi i64 [ %.pre71, %entry ], [ %657, %block_.L_47a83f ]
  %102 = phi i64 [ %.pre, %entry ], [ %124, %block_.L_47a83f ]
  %103 = add i64 %102, -16
  %104 = add i64 %101, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  store i8 0, i8* %14, align 1
  %107 = and i32 %106, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %112 = icmp eq i32 %106, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %29, align 1
  %114 = lshr i32 %106, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %112, i64 470, i64 10
  %116 = add i64 %101, %.v
  store i64 %116, i64* %3, align 8
  br i1 %112, label %block_.L_47a844, label %block_47a678

block_47a678:                                     ; preds = %block_.L_47a66e
  %117 = add i64 %116, 7
  store i64 %117, i64* %3, align 8
  store i32 0, i32* %105, align 4
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -32
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 7
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %119 to i32*
  store i32 21, i32* %122, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_47a686

block_.L_47a686:                                  ; preds = %block_.L_47a831, %block_47a678
  %123 = phi i64 [ %.pre72, %block_47a678 ], [ %656, %block_.L_47a831 ]
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -32
  %126 = add i64 %123, 7
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, -400
  %130 = icmp ult i32 %128, 400
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %14, align 1
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i32 %128, 16
  %138 = xor i32 %137, %129
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %26, align 1
  %142 = icmp eq i32 %129, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %29, align 1
  %144 = lshr i32 %129, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %32, align 1
  %146 = lshr i32 %128, 31
  %147 = xor i32 %144, %146
  %148 = add nuw nsw i32 %147, %146
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %38, align 1
  %151 = icmp ne i8 %145, 0
  %152 = xor i1 %151, %149
  %.v100 = select i1 %152, i64 13, i64 441
  %153 = add i64 %123, %.v100
  store i64 %153, i64* %3, align 8
  br i1 %152, label %block_47a693, label %block_.L_47a83f

block_47a693:                                     ; preds = %block_.L_47a686
  %154 = add i64 %153, 4
  store i64 %154, i64* %3, align 8
  %155 = load i32, i32* %127, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RAX.i357, align 8
  %157 = add nsw i64 %156, 12099168
  %158 = add i64 %153, 12
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i8*
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  store i64 %161, i64* %RCX.i881, align 8
  %162 = zext i8 %160 to i32
  %163 = add i64 %124, -12
  %164 = add i64 %153, 15
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %162, %166
  %168 = icmp ult i32 %162, %166
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %14, align 1
  %170 = and i32 %167, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1
  %175 = xor i32 %166, %162
  %176 = xor i32 %175, %167
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %26, align 1
  %180 = icmp eq i32 %167, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %29, align 1
  %182 = lshr i32 %167, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %32, align 1
  %184 = lshr i32 %166, 31
  %185 = add nuw nsw i32 %182, %184
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %38, align 1
  %.v101 = select i1 %180, i64 21, i64 41
  %188 = add i64 %153, %.v101
  store i64 %188, i64* %3, align 8
  br i1 %180, label %block_47a6a8, label %block_.L_47a6bc

block_47a6a8:                                     ; preds = %block_47a693
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = load i32, i32* %127, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RDI.i373, align 8
  %192 = add i64 %188, 6
  store i64 %192, i64* %3, align 8
  %193 = load i32, i32* %127, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RSI.i870, align 8
  %195 = add i64 %188, 55880
  %196 = add i64 %188, 11
  %197 = load i64, i64* %6, align 8
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %6, align 8
  store i64 %195, i64* %3, align 8
  %call2_47a6ae = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %195, %struct.Memory* %2)
  %200 = load i32, i32* %EAX.i896, align 4
  %201 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %202 = and i32 %200, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %207 = icmp eq i32 %200, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %29, align 1
  %209 = lshr i32 %200, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %207, i64 9, i64 14
  %211 = add i64 %201, %.v102
  store i64 %211, i64* %3, align 8
  br i1 %207, label %block_.L_47a6bc, label %block_.L_47a6c1

block_.L_47a6bc:                                  ; preds = %block_47a6a8, %block_47a693
  %212 = phi i64 [ %211, %block_47a6a8 ], [ %188, %block_47a693 ]
  %213 = add i64 %212, 373
  br label %block_.L_47a831

block_.L_47a6c1:                                  ; preds = %block_47a6a8
  store i64 241, i64* %RSI.i870, align 8
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -1008
  store i64 %215, i64* %RDX.i860, align 8
  %216 = add i64 %214, -32
  %217 = add i64 %211, 15
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RDI.i373, align 8
  %221 = add i64 %211, -437889
  %222 = add i64 %211, 20
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_47a6d0 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %221, %struct.Memory* %2)
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -1012
  %228 = load i32, i32* %EAX.i896, align 4
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 6
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %231, align 4
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -24
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 3
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX.i357, align 8
  %239 = add i64 %232, -28
  %240 = add i64 %234, 6
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 %237, i32* %241, align 4
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -36
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 7
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i32*
  store i32 0, i32* %246, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_47a6e8

block_.L_47a6e8:                                  ; preds = %block_.L_47a734, %block_.L_47a6c1
  %247 = phi i64 [ %382, %block_.L_47a734 ], [ %.pre73, %block_.L_47a6c1 ]
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -36
  %250 = add i64 %247, 3
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX.i357, align 8
  %254 = add i64 %248, -1012
  %255 = add i64 %247, 9
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sub i32 %252, %257
  %259 = icmp ult i32 %252, %257
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %14, align 1
  %261 = and i32 %258, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %21, align 1
  %266 = xor i32 %257, %252
  %267 = xor i32 %266, %258
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %26, align 1
  %271 = icmp eq i32 %258, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %29, align 1
  %273 = lshr i32 %258, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %32, align 1
  %275 = lshr i32 %252, 31
  %276 = lshr i32 %257, 31
  %277 = xor i32 %276, %275
  %278 = xor i32 %273, %275
  %279 = add nuw nsw i32 %278, %277
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %38, align 1
  %282 = icmp ne i8 %274, 0
  %283 = xor i1 %282, %280
  %.v103 = select i1 %283, i64 15, i64 95
  %284 = add i64 %247, %.v103
  store i64 %284, i64* %3, align 8
  br i1 %283, label %block_47a6f7, label %block_.L_47a747

block_47a6f7:                                     ; preds = %block_.L_47a6e8
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i860, align 8
  store i64 0, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %285 = add i64 %284, 16
  store i64 %285, i64* %3, align 8
  %286 = load i32, i32* %251, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RCX.i881, align 8
  %288 = shl nsw i64 %287, 2
  %289 = add i64 %248, -1008
  %290 = add i64 %289, %288
  %291 = add i64 %284, 23
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RDI.i373, align 8
  %295 = add i64 %248, -1016
  %296 = add i64 %284, 29
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RSI.i870, align 8
  %300 = add i64 %248, -32
  %301 = add i64 %284, 32
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RCX.i881, align 8
  store i64 0, i64* %99, align 8
  store i64 0, i64* %100, align 8
  %305 = add i64 %284, -465095
  %306 = add i64 %284, 43
  %307 = load i64, i64* %6, align 8
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %6, align 8
  store i64 %305, i64* %3, align 8
  %call2_47a71d = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %305, %struct.Memory* %2)
  %310 = load i32, i32* %EAX.i896, align 4
  %311 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %312 = and i32 %310, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %317 = icmp eq i32 %310, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %29, align 1
  %319 = lshr i32 %310, 31
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %317, i64 18, i64 9
  %321 = add i64 %311, %.v108
  store i64 %321, i64* %3, align 8
  br i1 %317, label %block_.L_47a734, label %block_47a72b

block_47a72b:                                     ; preds = %block_47a6f7
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -24
  %324 = add i64 %321, 3
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, 1
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX.i357, align 8
  %329 = icmp eq i32 %326, -1
  %330 = icmp eq i32 %327, 0
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %14, align 1
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %21, align 1
  %338 = xor i32 %327, %326
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %26, align 1
  %342 = zext i1 %330 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i32 %327, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %32, align 1
  %345 = lshr i32 %326, 31
  %346 = xor i32 %343, %345
  %347 = add nuw nsw i32 %346, %343
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %38, align 1
  %350 = add i64 %321, 9
  store i64 %350, i64* %3, align 8
  store i32 %327, i32* %325, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_47a734

block_.L_47a734:                                  ; preds = %block_47a72b, %block_47a6f7
  %351 = phi i64 [ %.pre76, %block_47a72b ], [ %321, %block_47a6f7 ]
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -36
  %354 = add i64 %351, 8
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, 1
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RAX.i357, align 8
  %359 = icmp eq i32 %356, -1
  %360 = icmp eq i32 %357, 0
  %361 = or i1 %359, %360
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %357, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %357, %356
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = zext i1 %360 to i8
  store i8 %372, i8* %29, align 1
  %373 = lshr i32 %357, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %32, align 1
  %375 = lshr i32 %356, 31
  %376 = xor i32 %373, %375
  %377 = add nuw nsw i32 %376, %373
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %38, align 1
  %380 = add i64 %351, 14
  store i64 %380, i64* %3, align 8
  store i32 %357, i32* %355, align 4
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, -90
  store i64 %382, i64* %3, align 8
  br label %block_.L_47a6e8

block_.L_47a747:                                  ; preds = %block_.L_47a6e8
  %383 = add i64 %248, -32
  %384 = add i64 %284, 4
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RAX.i357, align 8
  %388 = add nsw i64 %387, 12099168
  %389 = add i64 %284, 12
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i8*
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i64
  store i64 %392, i64* %RCX.i881, align 8
  %393 = zext i8 %391 to i32
  store i8 0, i8* %14, align 1
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393)
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %398 = icmp eq i8 %391, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %398, i64 21, i64 33
  %400 = add i64 %284, %.v104
  store i64 %400, i64* %3, align 8
  br i1 %398, label %block_47a75c, label %block_.L_47a768

block_47a75c:                                     ; preds = %block_.L_47a747
  %401 = add i64 %248, -16
  %402 = add i64 %400, 7
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  store i32 1, i32* %403, align 4
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 201
  br label %block_.L_47a82c

block_.L_47a768:                                  ; preds = %block_.L_47a747
  store i64 2, i64* %RSI.i870, align 8
  %406 = add i64 %248, -1008
  store i64 %406, i64* %RDX.i860, align 8
  %407 = add i64 %400, 15
  store i64 %407, i64* %3, align 8
  %408 = load i32, i32* %385, align 4
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RDI.i373, align 8
  %410 = add i64 %400, -438056
  %411 = add i64 %400, 20
  %412 = load i64, i64* %6, align 8
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414, align 8
  store i64 %413, i64* %6, align 8
  store i64 %410, i64* %3, align 8
  %call2_47a777 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %410, %struct.Memory* %2)
  %415 = load i32, i32* %EAX.i896, align 4
  %416 = load i64, i64* %3, align 8
  %417 = add i32 %415, -1
  %418 = icmp eq i32 %415, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %14, align 1
  %420 = and i32 %417, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %21, align 1
  %425 = xor i32 %417, %415
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %26, align 1
  %429 = icmp eq i32 %417, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %29, align 1
  %431 = lshr i32 %417, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %32, align 1
  %433 = lshr i32 %415, 31
  %434 = xor i32 %431, %433
  %435 = add nuw nsw i32 %434, %433
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %38, align 1
  %.v105 = select i1 %429, i64 9, i64 130
  %438 = add i64 %416, %.v105
  store i64 %438, i64* %3, align 8
  br i1 %429, label %block_47a785, label %block_.L_47a7fe

block_47a785:                                     ; preds = %block_.L_47a768
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i860, align 8
  store i64 0, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -1008
  %441 = add i64 %438, 18
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDI.i373, align 8
  %445 = add i64 %439, -1016
  %446 = add i64 %438, 24
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RSI.i870, align 8
  store i64 0, i64* %RCX.i881, align 8
  store i64 0, i64* %99, align 8
  %450 = add i64 %438, -445573
  %451 = add i64 %438, 34
  %452 = load i64, i64* %6, align 8
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %6, align 8
  store i64 %450, i64* %3, align 8
  %call2_47a7a2 = tail call %struct.Memory* @sub_40db00.tryko(%struct.State* nonnull %0, i64 %450, %struct.Memory* %2)
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -1020
  %457 = load i32, i32* %EAX.i896, align 4
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 6
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %456 to i32*
  store i32 %457, i32* %460, align 4
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -1020
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  store i8 0, i8* %14, align 1
  %467 = and i32 %466, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %472 = icmp eq i32 %466, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %29, align 1
  %474 = lshr i32 %466, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %472, i64 18, i64 13
  %476 = add i64 %463, %.v107
  store i64 %476, i64* %3, align 8
  br i1 %472, label %block_.L_47a7bf, label %block_47a7ba

block_47a7ba:                                     ; preds = %block_47a785
  %477 = add i64 %476, 45
  store i64 %477, i64* %3, align 8
  br label %block_.L_47a7e7

block_.L_47a7bf:                                  ; preds = %block_47a785
  store i64 ptrtoint (%G__0x581a3a_type* @G__0x581a3a to i64), i64* %RDI.i373, align 8
  store i64 1246, i64* %RSI.i870, align 8
  store i64 ptrtoint (%G__0x581cd4_type* @G__0x581cd4 to i64), i64* %RDX.i860, align 8
  store i64 4294967295, i64* %RAX.i357, align 8
  store i64 4294967295, i64* %RCX.i881, align 8
  store i64 4294967295, i64* %99, align 8
  %478 = add i64 %476, -165679
  %479 = add i64 %476, 40
  %480 = load i64, i64* %6, align 8
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %479, i64* %482, align 8
  store i64 %481, i64* %6, align 8
  store i64 %478, i64* %3, align 8
  %call2_47a7e2 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %478, %struct.Memory* %2)
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_47a7e7

block_.L_47a7e7:                                  ; preds = %block_.L_47a7bf, %block_47a7ba
  %483 = phi i64 [ %.pre75, %block_.L_47a7bf ], [ %477, %block_47a7ba ]
  %484 = phi i64 [ %.pre74, %block_.L_47a7bf ], [ %461, %block_47a7ba ]
  %485 = add i64 %484, -24
  %486 = add i64 %483, 3
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, 1
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RAX.i357, align 8
  %491 = icmp eq i32 %488, -1
  %492 = icmp eq i32 %489, 0
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %14, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  %500 = xor i32 %489, %488
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %26, align 1
  %504 = zext i1 %492 to i8
  store i8 %504, i8* %29, align 1
  %505 = lshr i32 %489, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %32, align 1
  %507 = lshr i32 %488, 31
  %508 = xor i32 %505, %507
  %509 = add nuw nsw i32 %508, %505
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %38, align 1
  %512 = add i64 %483, 9
  store i64 %512, i64* %3, align 8
  store i32 %489, i32* %487, align 4
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -16
  %515 = load i64, i64* %3, align 8
  %516 = add i64 %515, 3
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %514 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, 1
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i357, align 8
  %521 = icmp eq i32 %518, -1
  %522 = icmp eq i32 %519, 0
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1
  %525 = and i32 %519, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i32 %519, %518
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %26, align 1
  %534 = zext i1 %522 to i8
  store i8 %534, i8* %29, align 1
  %535 = lshr i32 %519, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %32, align 1
  %537 = lshr i32 %518, 31
  %538 = xor i32 %535, %537
  %539 = add nuw nsw i32 %538, %535
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %38, align 1
  %542 = add i64 %515, 9
  store i64 %542, i64* %3, align 8
  store i32 %519, i32* %517, align 4
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, 46
  br label %block_.L_47a827

block_.L_47a7fe:                                  ; preds = %block_.L_47a768
  %545 = add i64 %438, 5
  br label %block_.L_47a803

block_.L_47a803:                                  ; preds = %block_47a80f, %block_.L_47a7fe
  %storemerge36 = phi i64 [ %545, %block_.L_47a7fe ], [ %621, %block_47a80f ]
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -24
  %548 = add i64 %storemerge36, 3
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RAX.i357, align 8
  %552 = add i64 %546, -28
  %553 = add i64 %storemerge36, 6
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sub i32 %550, %555
  %557 = icmp ult i32 %550, %555
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = and i32 %556, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  %564 = xor i32 %555, %550
  %565 = xor i32 %564, %556
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %26, align 1
  %569 = icmp eq i32 %556, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %29, align 1
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %32, align 1
  %573 = lshr i32 %550, 31
  %574 = lshr i32 %555, 31
  %575 = xor i32 %574, %573
  %576 = xor i32 %571, %573
  %577 = add nuw nsw i32 %576, %575
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %38, align 1
  %580 = icmp ne i8 %572, 0
  %581 = xor i1 %580, %578
  %582 = or i1 %569, %581
  %.v106 = select i1 %582, i64 31, i64 12
  %583 = add i64 %storemerge36, %.v106
  store i64 %583, i64* %3, align 8
  br i1 %582, label %block_.L_47a822, label %block_47a80f

block_47a80f:                                     ; preds = %block_.L_47a803
  %584 = add i64 %583, -445103
  %585 = add i64 %583, 5
  %586 = load i64, i64* %6, align 8
  %587 = add i64 %586, -8
  %588 = inttoptr i64 %587 to i64*
  store i64 %585, i64* %588, align 8
  store i64 %587, i64* %6, align 8
  store i64 %584, i64* %3, align 8
  %call2_47a80f = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %584, %struct.Memory* %2)
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -24
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 3
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, -1
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX.i357, align 8
  %597 = icmp ne i32 %594, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %14, align 1
  %599 = and i32 %595, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %21, align 1
  %604 = xor i32 %594, 16
  %605 = xor i32 %604, %595
  %606 = lshr i32 %605, 4
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %26, align 1
  %609 = icmp eq i32 %595, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %29, align 1
  %611 = lshr i32 %595, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %32, align 1
  %613 = lshr i32 %594, 31
  %614 = xor i32 %611, %613
  %615 = xor i32 %611, 1
  %616 = add nuw nsw i32 %614, %615
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %38, align 1
  %619 = add i64 %591, 9
  store i64 %619, i64* %3, align 8
  store i32 %595, i32* %593, align 4
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, -26
  %622 = add i64 %620, 5
  store i64 %622, i64* %3, align 8
  br label %block_.L_47a803

block_.L_47a822:                                  ; preds = %block_.L_47a803
  %623 = add i64 %583, 5
  store i64 %623, i64* %3, align 8
  br label %block_.L_47a827

block_.L_47a827:                                  ; preds = %block_.L_47a822, %block_.L_47a7e7
  %storemerge35 = phi i64 [ %544, %block_.L_47a7e7 ], [ %623, %block_.L_47a822 ]
  %624 = add i64 %storemerge35, 5
  store i64 %624, i64* %3, align 8
  br label %block_.L_47a82c

block_.L_47a82c:                                  ; preds = %block_.L_47a827, %block_47a75c
  %storemerge34 = phi i64 [ %405, %block_47a75c ], [ %624, %block_.L_47a827 ]
  %625 = add i64 %storemerge34, 5
  store i64 %625, i64* %3, align 8
  br label %block_.L_47a831

block_.L_47a831:                                  ; preds = %block_.L_47a82c, %block_.L_47a6bc
  %storemerge = phi i64 [ %213, %block_.L_47a6bc ], [ %625, %block_.L_47a82c ]
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -32
  %628 = add i64 %storemerge, 3
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = add i32 %630, 1
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX.i357, align 8
  %633 = icmp eq i32 %630, -1
  %634 = icmp eq i32 %631, 0
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %14, align 1
  %637 = and i32 %631, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %21, align 1
  %642 = xor i32 %631, %630
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %26, align 1
  %646 = zext i1 %634 to i8
  store i8 %646, i8* %29, align 1
  %647 = lshr i32 %631, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %32, align 1
  %649 = lshr i32 %630, 31
  %650 = xor i32 %647, %649
  %651 = add nuw nsw i32 %650, %647
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %38, align 1
  %654 = add i64 %storemerge, 9
  store i64 %654, i64* %3, align 8
  store i32 %631, i32* %629, align 4
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, -436
  store i64 %656, i64* %3, align 8
  br label %block_.L_47a686

block_.L_47a83f:                                  ; preds = %block_.L_47a686
  %657 = add i64 %153, -465
  store i64 %657, i64* %3, align 8
  br label %block_.L_47a66e

block_.L_47a844:                                  ; preds = %block_.L_47a66e
  %658 = add i64 %102, -32
  %659 = add i64 %116, 7
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  store i32 21, i32* %660, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_47a84b

block_.L_47a84b:                                  ; preds = %block_.L_47a90b, %block_.L_47a844
  %661 = phi i64 [ %.pre77, %block_.L_47a844 ], [ %942, %block_.L_47a90b ]
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -32
  %664 = add i64 %661, 7
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = add i32 %666, -400
  %668 = icmp ult i32 %666, 400
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %14, align 1
  %670 = and i32 %667, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  %675 = xor i32 %666, 16
  %676 = xor i32 %675, %667
  %677 = lshr i32 %676, 4
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  store i8 %679, i8* %26, align 1
  %680 = icmp eq i32 %667, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = lshr i32 %667, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %32, align 1
  %684 = lshr i32 %666, 31
  %685 = xor i32 %682, %684
  %686 = add nuw nsw i32 %685, %684
  %687 = icmp eq i32 %686, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %38, align 1
  %689 = icmp ne i8 %683, 0
  %690 = xor i1 %689, %687
  %.v109 = select i1 %690, i64 13, i64 206
  %691 = add i64 %661, %.v109
  store i64 %691, i64* %3, align 8
  br i1 %690, label %block_47a858, label %block_.L_47a919

block_47a858:                                     ; preds = %block_.L_47a84b
  %692 = add i64 %691, 4
  store i64 %692, i64* %3, align 8
  %693 = load i32, i32* %665, align 4
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %RAX.i357, align 8
  %695 = add nsw i64 %694, 12099168
  %696 = add i64 %691, 12
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i8*
  %698 = load i8, i8* %697, align 1
  %699 = zext i8 %698 to i64
  store i64 %699, i64* %RCX.i881, align 8
  %700 = zext i8 %698 to i32
  %701 = add i64 %662, -12
  %702 = add i64 %691, 15
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = sub i32 %700, %704
  %706 = icmp ult i32 %700, %704
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %705, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %704, %700
  %714 = xor i32 %713, %705
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %26, align 1
  %718 = icmp eq i32 %705, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %29, align 1
  %720 = lshr i32 %705, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %32, align 1
  %722 = lshr i32 %704, 31
  %723 = add nuw nsw i32 %720, %722
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %38, align 1
  %.v129 = select i1 %718, i64 21, i64 41
  %726 = add i64 %691, %.v129
  store i64 %726, i64* %3, align 8
  br i1 %718, label %block_47a86d, label %block_.L_47a881

block_47a86d:                                     ; preds = %block_47a858
  %727 = add i64 %726, 3
  store i64 %727, i64* %3, align 8
  %728 = load i32, i32* %665, align 4
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RDI.i373, align 8
  %730 = add i64 %726, 6
  store i64 %730, i64* %3, align 8
  %731 = load i32, i32* %665, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RSI.i870, align 8
  %733 = add i64 %726, 55427
  %734 = add i64 %726, 11
  %735 = load i64, i64* %6, align 8
  %736 = add i64 %735, -8
  %737 = inttoptr i64 %736 to i64*
  store i64 %734, i64* %737, align 8
  store i64 %736, i64* %6, align 8
  store i64 %733, i64* %3, align 8
  %call2_47a873 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %733, %struct.Memory* %2)
  %738 = load i32, i32* %EAX.i896, align 4
  %739 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %740 = and i32 %738, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %745 = icmp eq i32 %738, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %29, align 1
  %747 = lshr i32 %738, 31
  %748 = trunc i32 %747 to i8
  store i8 %748, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v130 = select i1 %745, i64 9, i64 14
  %749 = add i64 %739, %.v130
  store i64 %749, i64* %3, align 8
  br i1 %745, label %block_47a86d.block_.L_47a881_crit_edge, label %block_.L_47a886

block_47a86d.block_.L_47a881_crit_edge:           ; preds = %block_47a86d
  %.pre98.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47a881

block_.L_47a881:                                  ; preds = %block_47a858, %block_47a86d.block_.L_47a881_crit_edge
  %.pre98 = phi i64 [ %.pre98.pre, %block_47a86d.block_.L_47a881_crit_edge ], [ %662, %block_47a858 ]
  %750 = phi i64 [ %749, %block_47a86d.block_.L_47a881_crit_edge ], [ %726, %block_47a858 ]
  %751 = add i64 %750, 138
  br label %block_.L_47a90b

block_.L_47a886:                                  ; preds = %block_47a86d
  store i64 241, i64* %RSI.i870, align 8
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -1008
  store i64 %753, i64* %RDX.i860, align 8
  %754 = add i64 %752, -32
  %755 = add i64 %749, 15
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RDI.i373, align 8
  %759 = add i64 %749, -438342
  %760 = add i64 %749, 20
  %761 = load i64, i64* %6, align 8
  %762 = add i64 %761, -8
  %763 = inttoptr i64 %762 to i64*
  store i64 %760, i64* %763, align 8
  store i64 %762, i64* %6, align 8
  store i64 %759, i64* %3, align 8
  %call2_47a895 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %759, %struct.Memory* %2)
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -1012
  %766 = load i32, i32* %EAX.i896, align 4
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 6
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %765 to i32*
  store i32 %766, i32* %769, align 4
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -36
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 7
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i32*
  store i32 0, i32* %774, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_47a8a7

block_.L_47a8a7:                                  ; preds = %block_.L_47a8f3, %block_.L_47a886
  %775 = phi i64 [ %910, %block_.L_47a8f3 ], [ %.pre96, %block_.L_47a886 ]
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -36
  %778 = add i64 %775, 3
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RAX.i357, align 8
  %782 = add i64 %776, -1012
  %783 = add i64 %775, 9
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sub i32 %780, %785
  %787 = icmp ult i32 %780, %785
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %14, align 1
  %789 = and i32 %786, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %21, align 1
  %794 = xor i32 %785, %780
  %795 = xor i32 %794, %786
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %26, align 1
  %799 = icmp eq i32 %786, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %29, align 1
  %801 = lshr i32 %786, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %32, align 1
  %803 = lshr i32 %780, 31
  %804 = lshr i32 %785, 31
  %805 = xor i32 %804, %803
  %806 = xor i32 %801, %803
  %807 = add nuw nsw i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %38, align 1
  %810 = icmp ne i8 %802, 0
  %811 = xor i1 %810, %808
  %.v131 = select i1 %811, i64 15, i64 95
  %812 = add i64 %775, %.v131
  store i64 %812, i64* %3, align 8
  br i1 %811, label %block_47a8b6, label %block_.L_47a906

block_47a8b6:                                     ; preds = %block_.L_47a8a7
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i860, align 8
  store i64 0, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %813 = add i64 %812, 16
  store i64 %813, i64* %3, align 8
  %814 = load i32, i32* %779, align 4
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %RCX.i881, align 8
  %816 = shl nsw i64 %815, 2
  %817 = add i64 %776, -1008
  %818 = add i64 %817, %816
  %819 = add i64 %812, 23
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RDI.i373, align 8
  %823 = add i64 %776, -1016
  %824 = add i64 %812, 29
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RSI.i870, align 8
  %828 = add i64 %776, -32
  %829 = add i64 %812, 32
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i881, align 8
  store i64 0, i64* %99, align 8
  store i64 0, i64* %100, align 8
  %833 = add i64 %812, -465542
  %834 = add i64 %812, 43
  %835 = load i64, i64* %6, align 8
  %836 = add i64 %835, -8
  %837 = inttoptr i64 %836 to i64*
  store i64 %834, i64* %837, align 8
  store i64 %836, i64* %6, align 8
  store i64 %833, i64* %3, align 8
  %call2_47a8dc = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %833, %struct.Memory* %2)
  %838 = load i32, i32* %EAX.i896, align 4
  %839 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %840 = and i32 %838, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %845 = icmp eq i32 %838, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i32 %838, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %845, i64 18, i64 9
  %849 = add i64 %839, %.v132
  store i64 %849, i64* %3, align 8
  br i1 %845, label %block_.L_47a8f3, label %block_47a8ea

block_47a8ea:                                     ; preds = %block_47a8b6
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -24
  %852 = add i64 %849, 3
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = add i32 %854, 1
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX.i357, align 8
  %857 = icmp eq i32 %854, -1
  %858 = icmp eq i32 %855, 0
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %14, align 1
  %861 = and i32 %855, 255
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %21, align 1
  %866 = xor i32 %855, %854
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %26, align 1
  %870 = zext i1 %858 to i8
  store i8 %870, i8* %29, align 1
  %871 = lshr i32 %855, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %32, align 1
  %873 = lshr i32 %854, 31
  %874 = xor i32 %871, %873
  %875 = add nuw nsw i32 %874, %871
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %38, align 1
  %878 = add i64 %849, 9
  store i64 %878, i64* %3, align 8
  store i32 %855, i32* %853, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_47a8f3

block_.L_47a8f3:                                  ; preds = %block_47a8ea, %block_47a8b6
  %879 = phi i64 [ %.pre97, %block_47a8ea ], [ %849, %block_47a8b6 ]
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -36
  %882 = add i64 %879, 8
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = add i32 %884, 1
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RAX.i357, align 8
  %887 = icmp eq i32 %884, -1
  %888 = icmp eq i32 %885, 0
  %889 = or i1 %887, %888
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %14, align 1
  %891 = and i32 %885, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %21, align 1
  %896 = xor i32 %885, %884
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %26, align 1
  %900 = zext i1 %888 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i32 %885, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %32, align 1
  %903 = lshr i32 %884, 31
  %904 = xor i32 %901, %903
  %905 = add nuw nsw i32 %904, %901
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %38, align 1
  %908 = add i64 %879, 14
  store i64 %908, i64* %3, align 8
  store i32 %885, i32* %883, align 4
  %909 = load i64, i64* %3, align 8
  %910 = add i64 %909, -90
  store i64 %910, i64* %3, align 8
  br label %block_.L_47a8a7

block_.L_47a906:                                  ; preds = %block_.L_47a8a7
  %911 = add i64 %812, 5
  store i64 %911, i64* %3, align 8
  br label %block_.L_47a90b

block_.L_47a90b:                                  ; preds = %block_.L_47a906, %block_.L_47a881
  %912 = phi i64 [ %.pre98, %block_.L_47a881 ], [ %776, %block_.L_47a906 ]
  %storemerge37 = phi i64 [ %751, %block_.L_47a881 ], [ %911, %block_.L_47a906 ]
  %913 = add i64 %912, -32
  %914 = add i64 %storemerge37, 3
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, 1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i357, align 8
  %919 = icmp eq i32 %916, -1
  %920 = icmp eq i32 %917, 0
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %917, %916
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1
  %932 = zext i1 %920 to i8
  store i8 %932, i8* %29, align 1
  %933 = lshr i32 %917, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %32, align 1
  %935 = lshr i32 %916, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %933
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %38, align 1
  %940 = add i64 %storemerge37, 9
  store i64 %940, i64* %3, align 8
  store i32 %917, i32* %915, align 4
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, -201
  store i64 %942, i64* %3, align 8
  br label %block_.L_47a84b

block_.L_47a919:                                  ; preds = %block_.L_47a84b
  %943 = add i64 %662, -20
  %944 = add i64 %691, 7
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  store i32 1, i32* %945, align 4
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i524 = bitcast %union.anon* %946 to i32*
  %947 = getelementptr inbounds %union.anon, %union.anon* %946, i64 0, i32 0
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_47a920

block_.L_47a920:                                  ; preds = %block_.L_47a9f3, %block_.L_47a919
  %948 = phi i64 [ %.pre79, %block_.L_47a919 ], [ %1208, %block_.L_47a9f3 ]
  %949 = phi i64 [ %.pre78, %block_.L_47a919 ], [ %971, %block_.L_47a9f3 ]
  %950 = add i64 %949, -20
  %951 = add i64 %948, 4
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  store i8 0, i8* %14, align 1
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %959 = icmp eq i32 %953, 0
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %29, align 1
  %961 = lshr i32 %953, 31
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %959, i64 216, i64 10
  %963 = add i64 %948, %.v110
  store i64 %963, i64* %3, align 8
  br i1 %959, label %block_.L_47a9f8, label %block_47a92a

block_47a92a:                                     ; preds = %block_.L_47a920
  %964 = add i64 %963, 7
  store i64 %964, i64* %3, align 8
  store i32 0, i32* %952, align 4
  %965 = load i64, i64* %RBP.i, align 8
  %966 = add i64 %965, -32
  %967 = load i64, i64* %3, align 8
  %968 = add i64 %967, 7
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %966 to i32*
  store i32 21, i32* %969, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_47a938

block_.L_47a938:                                  ; preds = %block_.L_47a9e5, %block_47a92a
  %970 = phi i64 [ %.pre80, %block_47a92a ], [ %1207, %block_.L_47a9e5 ]
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -32
  %973 = add i64 %970, 7
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = add i32 %975, -400
  %977 = icmp ult i32 %975, 400
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %14, align 1
  %979 = and i32 %976, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %21, align 1
  %984 = xor i32 %975, 16
  %985 = xor i32 %984, %976
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %26, align 1
  %989 = icmp eq i32 %976, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i32 %976, 31
  %992 = trunc i32 %991 to i8
  store i8 %992, i8* %32, align 1
  %993 = lshr i32 %975, 31
  %994 = xor i32 %991, %993
  %995 = add nuw nsw i32 %994, %993
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %38, align 1
  %998 = icmp ne i8 %992, 0
  %999 = xor i1 %998, %996
  %.v111 = select i1 %999, i64 13, i64 187
  %1000 = add i64 %970, %.v111
  store i64 %1000, i64* %3, align 8
  br i1 %999, label %block_47a945, label %block_.L_47a9f3

block_47a945:                                     ; preds = %block_.L_47a938
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %3, align 8
  %1002 = load i32, i32* %974, align 4
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i357, align 8
  %1004 = add nsw i64 %1003, 12099168
  %1005 = add i64 %1000, 12
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i8*
  %1007 = load i8, i8* %1006, align 1
  %1008 = zext i8 %1007 to i64
  store i64 %1008, i64* %RCX.i881, align 8
  %1009 = zext i8 %1007 to i32
  %1010 = add i64 %971, -1016
  %1011 = add i64 %1000, 18
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sub i32 %1009, %1013
  %1015 = icmp ult i32 %1009, %1013
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %14, align 1
  %1017 = and i32 %1014, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i32 %1013, %1009
  %1023 = xor i32 %1022, %1014
  %1024 = lshr i32 %1023, 4
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  store i8 %1026, i8* %26, align 1
  %1027 = icmp eq i32 %1014, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %29, align 1
  %1029 = lshr i32 %1014, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %32, align 1
  %1031 = lshr i32 %1013, 31
  %1032 = add nuw nsw i32 %1029, %1031
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %38, align 1
  %.v112 = select i1 %1027, i64 24, i64 41
  %1035 = add i64 %1000, %.v112
  store i64 %1035, i64* %3, align 8
  br i1 %1027, label %block_47a95d, label %block_.L_47a96e

block_47a95d:                                     ; preds = %block_47a945
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %3, align 8
  %1037 = load i32, i32* %974, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RDI.i373, align 8
  %1039 = add i64 %1035, -438749
  %1040 = add i64 %1035, 8
  %1041 = load i64, i64* %6, align 8
  %1042 = add i64 %1041, -8
  %1043 = inttoptr i64 %1042 to i64*
  store i64 %1040, i64* %1043, align 8
  store i64 %1042, i64* %6, align 8
  store i64 %1039, i64* %3, align 8
  %call2_47a960 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %1039, %struct.Memory* %2)
  %1044 = load i32, i32* %EAX.i896, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = add i32 %1044, -1
  %1047 = icmp eq i32 %1044, 0
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %14, align 1
  %1049 = and i32 %1046, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %21, align 1
  %1054 = xor i32 %1046, %1044
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %26, align 1
  %1058 = icmp eq i32 %1046, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %29, align 1
  %1060 = lshr i32 %1046, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %32, align 1
  %1062 = lshr i32 %1044, 31
  %1063 = xor i32 %1060, %1062
  %1064 = add nuw nsw i32 %1063, %1062
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %38, align 1
  %1067 = icmp ne i8 %1061, 0
  %1068 = xor i1 %1067, %1065
  %1069 = or i1 %1058, %1068
  %.v113 = select i1 %1069, i64 14, i64 9
  %1070 = add i64 %1045, %.v113
  store i64 %1070, i64* %3, align 8
  br i1 %1069, label %block_.L_47a973, label %block_.L_47a96e

block_.L_47a96e:                                  ; preds = %block_47a945, %block_47a95d
  %1071 = phi i64 [ %1070, %block_47a95d ], [ %1035, %block_47a945 ]
  %1072 = add i64 %1071, 119
  br label %block_.L_47a9e5

block_.L_47a973:                                  ; preds = %block_47a95d
  store i64 1, i64* %RSI.i870, align 8
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -1008
  store i64 %1074, i64* %RDX.i860, align 8
  %1075 = add i64 %1073, -32
  %1076 = add i64 %1070, 15
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RDI.i373, align 8
  %1080 = add i64 %1070, -438579
  %1081 = add i64 %1070, 20
  %1082 = load i64, i64* %6, align 8
  %1083 = add i64 %1082, -8
  %1084 = inttoptr i64 %1083 to i64*
  store i64 %1081, i64* %1084, align 8
  store i64 %1083, i64* %6, align 8
  store i64 %1080, i64* %3, align 8
  %call2_47a982 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1080, %struct.Memory* %2)
  %1085 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i860, align 8
  store i64 0, i64* %RSI.i870, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -1008
  %1088 = add i64 %1085, 18
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RDI.i373, align 8
  %1092 = add i64 %1086, -1016
  %1093 = add i64 %1085, 24
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RCX.i881, align 8
  %1097 = add i64 %1086, -32
  %1098 = add i64 %1085, 28
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %947, align 8
  %1102 = add i64 %1086, -1048
  %1103 = add i64 %1085, 34
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  store i32 0, i32* %1104, align 4
  %1105 = load i32, i32* %ECX.i877, align 4
  %1106 = zext i32 %1105 to i64
  %1107 = load i64, i64* %3, align 8
  store i64 %1106, i64* %RSI.i870, align 8
  %1108 = load i32, i32* %R8D.i524, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RCX.i881, align 8
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -1048
  %1112 = add i64 %1107, 12
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %947, align 8
  %1116 = add i64 %1107, 19
  store i64 %1116, i64* %3, align 8
  %1117 = load i32, i32* %1113, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %100, align 8
  %1119 = add i64 %1110, -1052
  %1120 = load i32, i32* %EAX.i896, align 4
  %1121 = add i64 %1107, 25
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i32*
  store i32 %1120, i32* %1122, align 4
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, -465810
  %1125 = add i64 %1123, 5
  %1126 = load i64, i64* %6, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1125, i64* %1128, align 8
  store i64 %1127, i64* %6, align 8
  store i64 %1124, i64* %3, align 8
  %call2_47a9c2 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1124, %struct.Memory* %2)
  %1129 = load i32, i32* %EAX.i896, align 4
  %1130 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1131 = and i32 %1129, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1136 = icmp eq i32 %1129, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1129, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %1136, i64 25, i64 9
  %1140 = add i64 %1130, %.v114
  store i64 %1140, i64* %3, align 8
  br i1 %1136, label %block_.L_47a9e0, label %block_47a9d0

block_47a9d0:                                     ; preds = %block_.L_47a973
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -24
  %1143 = add i64 %1140, 3
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = add i32 %1145, 1
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i357, align 8
  %1148 = icmp eq i32 %1145, -1
  %1149 = icmp eq i32 %1146, 0
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1146, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1146, %1145
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %26, align 1
  %1161 = zext i1 %1149 to i8
  store i8 %1161, i8* %29, align 1
  %1162 = lshr i32 %1146, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %32, align 1
  %1164 = lshr i32 %1145, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1162
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %38, align 1
  %1169 = add i64 %1140, 9
  store i64 %1169, i64* %3, align 8
  store i32 %1146, i32* %1144, align 4
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -20
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 7
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i32*
  store i32 1, i32* %1174, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_47a9e0

block_.L_47a9e0:                                  ; preds = %block_47a9d0, %block_.L_47a973
  %1175 = phi i64 [ %.pre81, %block_47a9d0 ], [ %1140, %block_.L_47a973 ]
  %1176 = add i64 %1175, 5
  store i64 %1176, i64* %3, align 8
  br label %block_.L_47a9e5

block_.L_47a9e5:                                  ; preds = %block_.L_47a9e0, %block_.L_47a96e
  %storemerge38 = phi i64 [ %1072, %block_.L_47a96e ], [ %1176, %block_.L_47a9e0 ]
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -32
  %1179 = add i64 %storemerge38, 3
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = add i32 %1181, 1
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RAX.i357, align 8
  %1184 = icmp eq i32 %1181, -1
  %1185 = icmp eq i32 %1182, 0
  %1186 = or i1 %1184, %1185
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1
  %1188 = and i32 %1182, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i32 %1182, %1181
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  store i8 %1196, i8* %26, align 1
  %1197 = zext i1 %1185 to i8
  store i8 %1197, i8* %29, align 1
  %1198 = lshr i32 %1182, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %32, align 1
  %1200 = lshr i32 %1181, 31
  %1201 = xor i32 %1198, %1200
  %1202 = add nuw nsw i32 %1201, %1198
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %38, align 1
  %1205 = add i64 %storemerge38, 9
  store i64 %1205, i64* %3, align 8
  store i32 %1182, i32* %1180, align 4
  %1206 = load i64, i64* %3, align 8
  %1207 = add i64 %1206, -182
  store i64 %1207, i64* %3, align 8
  br label %block_.L_47a938

block_.L_47a9f3:                                  ; preds = %block_.L_47a938
  %1208 = add i64 %1000, -211
  store i64 %1208, i64* %3, align 8
  br label %block_.L_47a920

block_.L_47a9f8:                                  ; preds = %block_.L_47a920
  %1209 = add i64 %949, -32
  %1210 = add i64 %963, 7
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  store i32 21, i32* %1211, align 4
  %RDX.i453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %EDI.i441 = bitcast %union.anon* %40 to i32*
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_47a9ff

block_.L_47a9ff:                                  ; preds = %block_.L_47ac18, %block_.L_47a9f8
  %1212 = phi i64 [ %.pre82, %block_.L_47a9f8 ], [ %2037, %block_.L_47ac18 ]
  %MEMORY.20 = phi %struct.Memory* [ %2, %block_.L_47a9f8 ], [ %MEMORY.25, %block_.L_47ac18 ]
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -32
  %1215 = add i64 %1212, 7
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = add i32 %1217, -400
  %1219 = icmp ult i32 %1217, 400
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %14, align 1
  %1221 = and i32 %1218, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  %1226 = xor i32 %1217, 16
  %1227 = xor i32 %1226, %1218
  %1228 = lshr i32 %1227, 4
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %26, align 1
  %1231 = icmp eq i32 %1218, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %29, align 1
  %1233 = lshr i32 %1218, 31
  %1234 = trunc i32 %1233 to i8
  store i8 %1234, i8* %32, align 1
  %1235 = lshr i32 %1217, 31
  %1236 = xor i32 %1233, %1235
  %1237 = add nuw nsw i32 %1236, %1235
  %1238 = icmp eq i32 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %38, align 1
  %1240 = icmp ne i8 %1234, 0
  %1241 = xor i1 %1240, %1238
  %.v115 = select i1 %1241, i64 13, i64 551
  %1242 = add i64 %1212, %.v115
  store i64 %1242, i64* %3, align 8
  br i1 %1241, label %block_47aa0c, label %block_.L_47ac26

block_47aa0c:                                     ; preds = %block_.L_47a9ff
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %3, align 8
  %1244 = load i32, i32* %1216, align 4
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RAX.i357, align 8
  %1246 = add nsw i64 %1245, 12099168
  %1247 = add i64 %1242, 12
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i8*
  %1249 = load i8, i8* %1248, align 1
  %1250 = zext i8 %1249 to i64
  store i64 %1250, i64* %RCX.i881, align 8
  %1251 = zext i8 %1249 to i32
  %1252 = add i64 %1213, -1016
  %1253 = add i64 %1242, 18
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = sub i32 %1251, %1255
  %1257 = icmp ult i32 %1251, %1255
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = and i32 %1256, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i32 %1255, %1251
  %1265 = xor i32 %1264, %1256
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %26, align 1
  %1269 = icmp eq i32 %1256, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i32 %1256, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %32, align 1
  %1273 = lshr i32 %1255, 31
  %1274 = add nuw nsw i32 %1271, %1273
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %38, align 1
  %.v123 = select i1 %1269, i64 24, i64 41
  %1277 = add i64 %1242, %.v123
  store i64 %1277, i64* %3, align 8
  br i1 %1269, label %block_47aa24, label %block_.L_47ac18

block_47aa24:                                     ; preds = %block_47aa0c
  %1278 = add i64 %1277, 3
  store i64 %1278, i64* %3, align 8
  %1279 = load i32, i32* %1216, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RDI.i373, align 8
  %1281 = add i64 %1277, -438948
  %1282 = add i64 %1277, 8
  %1283 = load i64, i64* %6, align 8
  %1284 = add i64 %1283, -8
  %1285 = inttoptr i64 %1284 to i64*
  store i64 %1282, i64* %1285, align 8
  store i64 %1284, i64* %6, align 8
  store i64 %1281, i64* %3, align 8
  %call2_47aa27 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %1281, %struct.Memory* %MEMORY.20)
  %1286 = load i32, i32* %EAX.i896, align 4
  %1287 = load i64, i64* %3, align 8
  %1288 = add i32 %1286, -2
  %1289 = icmp ult i32 %1286, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %14, align 1
  %1291 = and i32 %1288, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i32 %1288, %1286
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %26, align 1
  %1300 = icmp eq i32 %1288, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %29, align 1
  %1302 = lshr i32 %1288, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %32, align 1
  %1304 = lshr i32 %1286, 31
  %1305 = xor i32 %1302, %1304
  %1306 = add nuw nsw i32 %1305, %1304
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %38, align 1
  %.v124 = select i1 %1300, i64 14, i64 9
  %1309 = add i64 %1287, %.v124
  store i64 %1309, i64* %3, align 8
  br i1 %1300, label %block_.L_47aa3a, label %block_.L_47ac18

block_.L_47aa3a:                                  ; preds = %block_47aa24
  store i64 2, i64* %RSI.i870, align 8
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -1008
  store i64 %1311, i64* %RDX.i453, align 8
  %1312 = add i64 %1310, -32
  %1313 = add i64 %1309, 15
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  %1315 = load i32, i32* %1314, align 4
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RDI.i373, align 8
  %1317 = add i64 %1309, -438778
  %1318 = add i64 %1309, 20
  %1319 = load i64, i64* %6, align 8
  %1320 = add i64 %1319, -8
  %1321 = inttoptr i64 %1320 to i64*
  store i64 %1318, i64* %1321, align 8
  store i64 %1320, i64* %6, align 8
  store i64 %1317, i64* %3, align 8
  %call2_47aa49 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1317, %struct.Memory* %MEMORY.20)
  %1322 = load i64, i64* %3, align 8
  store i64 20, i64* %RSI.i870, align 8
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -1008
  %1325 = add i64 %1322, 11
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RDI.i373, align 8
  %1329 = add i64 %1323, -1024
  %1330 = add i64 %1322, 17
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  store i32 %1327, i32* %1331, align 4
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -1004
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 6
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1333 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RDI.i373, align 8
  %1339 = add i64 %1332, -1028
  %1340 = add i64 %1334, 12
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  store i32 %1337, i32* %1341, align 4
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -1024
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 6
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RDI.i373, align 8
  %1349 = add i64 %1342, -1056
  %1350 = load i32, i32* %EAX.i896, align 4
  %1351 = add i64 %1344, 12
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1349 to i32*
  store i32 %1350, i32* %1352, align 4
  %1353 = load i32, i32* %EDI.i441, align 4
  %1354 = zext i32 %1353 to i64
  %1355 = load i64, i64* %3, align 8
  store i64 %1354, i64* %RAX.i357, align 8
  %1356 = sext i32 %1353 to i64
  %1357 = lshr i64 %1356, 32
  store i64 %1357, i64* %RDX.i860, align 8
  %1358 = load i32, i32* %ESI.i388, align 4
  %1359 = add i64 %1355, 5
  store i64 %1359, i64* %3, align 8
  %1360 = sext i32 %1358 to i64
  %1361 = shl nuw i64 %1357, 32
  %1362 = or i64 %1361, %1354
  %1363 = sdiv i64 %1362, %1360
  %1364 = shl i64 %1363, 32
  %1365 = ashr exact i64 %1364, 32
  %1366 = icmp eq i64 %1363, %1365
  br i1 %1366, label %1369, label %1367

; <label>:1367:                                   ; preds = %block_.L_47aa3a
  %1368 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1359, %struct.Memory* %MEMORY.20)
  %.pre87 = load i64, i64* %RAX.i357, align 8
  %.pre88 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit421

; <label>:1369:                                   ; preds = %block_.L_47aa3a
  %1370 = srem i64 %1362, %1360
  %1371 = and i64 %1363, 4294967295
  store i64 %1371, i64* %RAX.i357, align 8
  %1372 = and i64 %1370, 4294967295
  store i64 %1372, i64* %RDX.i453, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit421

routine_idivl__esi.exit421:                       ; preds = %1369, %1367
  %1373 = phi i64 [ %.pre88, %1367 ], [ %1359, %1369 ]
  %1374 = phi i64 [ %.pre87, %1367 ], [ %1371, %1369 ]
  %1375 = phi %struct.Memory* [ %1368, %1367 ], [ %MEMORY.20, %1369 ]
  %1376 = trunc i64 %1374 to i32
  %1377 = add i32 %1376, -1
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i357, align 8
  %1379 = icmp eq i32 %1376, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %14, align 1
  %1381 = and i32 %1377, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %21, align 1
  %1386 = xor i32 %1377, %1376
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %26, align 1
  %1390 = icmp eq i32 %1377, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %29, align 1
  %1392 = lshr i32 %1377, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %32, align 1
  %1394 = lshr i32 %1376, 31
  %1395 = xor i32 %1392, %1394
  %1396 = add nuw nsw i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %38, align 1
  %1399 = load i64, i64* %RBP.i, align 8
  %1400 = add i64 %1399, -1028
  %1401 = add i64 %1373, 9
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RDI.i373, align 8
  %1405 = add i64 %1399, -1060
  %1406 = add i64 %1373, 15
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  store i32 %1377, i32* %1407, align 4
  %1408 = load i32, i32* %EDI.i441, align 4
  %1409 = zext i32 %1408 to i64
  %1410 = load i64, i64* %3, align 8
  store i64 %1409, i64* %RAX.i357, align 8
  %1411 = sext i32 %1408 to i64
  %1412 = lshr i64 %1411, 32
  store i64 %1412, i64* %RDX.i860, align 8
  %1413 = load i32, i32* %ESI.i388, align 4
  %1414 = add i64 %1410, 5
  store i64 %1414, i64* %3, align 8
  %1415 = sext i32 %1413 to i64
  %1416 = shl nuw i64 %1412, 32
  %1417 = or i64 %1416, %1409
  %1418 = sdiv i64 %1417, %1415
  %1419 = shl i64 %1418, 32
  %1420 = ashr exact i64 %1419, 32
  %1421 = icmp eq i64 %1418, %1420
  br i1 %1421, label %1424, label %1422

; <label>:1422:                                   ; preds = %routine_idivl__esi.exit421
  %1423 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1414, %struct.Memory* %1375)
  %.pre89 = load i64, i64* %RAX.i357, align 8
  %.pre90 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit404

; <label>:1424:                                   ; preds = %routine_idivl__esi.exit421
  %1425 = srem i64 %1417, %1415
  %1426 = and i64 %1418, 4294967295
  store i64 %1426, i64* %RAX.i357, align 8
  %1427 = and i64 %1425, 4294967295
  store i64 %1427, i64* %RDX.i453, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit404

routine_idivl__esi.exit404:                       ; preds = %1424, %1422
  %1428 = phi i64 [ %.pre90, %1422 ], [ %1414, %1424 ]
  %1429 = phi i64 [ %.pre89, %1422 ], [ %1426, %1424 ]
  %1430 = phi %struct.Memory* [ %1423, %1422 ], [ %1375, %1424 ]
  %1431 = trunc i64 %1429 to i32
  %1432 = add i32 %1431, -1
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i357, align 8
  %1434 = icmp eq i32 %1431, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %14, align 1
  %1436 = and i32 %1432, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %21, align 1
  %1441 = xor i32 %1432, %1431
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %26, align 1
  %1445 = icmp eq i32 %1432, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %29, align 1
  %1447 = lshr i32 %1432, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %32, align 1
  %1449 = lshr i32 %1431, 31
  %1450 = xor i32 %1447, %1449
  %1451 = add nuw nsw i32 %1450, %1449
  %1452 = icmp eq i32 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %38, align 1
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -1060
  %1456 = add i64 %1428, 9
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sub i32 %1458, %1432
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RSI.i870, align 8
  %1461 = icmp ult i32 %1458, %1432
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %14, align 1
  %1463 = and i32 %1459, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  %1468 = xor i32 %1432, %1458
  %1469 = xor i32 %1468, %1459
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %26, align 1
  %1473 = icmp eq i32 %1459, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %29, align 1
  %1475 = lshr i32 %1459, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %32, align 1
  %1477 = lshr i32 %1458, 31
  %1478 = xor i32 %1447, %1477
  %1479 = xor i32 %1475, %1477
  %1480 = add nuw nsw i32 %1479, %1478
  %1481 = icmp eq i32 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %38, align 1
  store i64 %1460, i64* %RDI.i373, align 8
  %1483 = add i64 %1428, -498352
  %1484 = add i64 %1428, 18
  %1485 = load i64, i64* %6, align 8
  %1486 = add i64 %1485, -8
  %1487 = inttoptr i64 %1486 to i64*
  store i64 %1484, i64* %1487, align 8
  store i64 %1486, i64* %6, align 8
  store i64 %1483, i64* %3, align 8
  %1488 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1430)
  %1489 = load i64, i64* %3, align 8
  store i64 20, i64* %RSI.i870, align 8
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -1024
  %1492 = add i64 %1489, 11
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RDI.i373, align 8
  %1496 = add i64 %1490, -1064
  %1497 = load i32, i32* %EAX.i896, align 4
  %1498 = add i64 %1489, 17
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1496 to i32*
  store i32 %1497, i32* %1499, align 4
  %1500 = load i32, i32* %EDI.i441, align 4
  %1501 = zext i32 %1500 to i64
  %1502 = load i64, i64* %3, align 8
  store i64 %1501, i64* %RAX.i357, align 8
  %1503 = sext i32 %1500 to i64
  %1504 = lshr i64 %1503, 32
  store i64 %1504, i64* %RDX.i860, align 8
  %1505 = load i32, i32* %ESI.i388, align 4
  %1506 = add i64 %1502, 5
  store i64 %1506, i64* %3, align 8
  %1507 = sext i32 %1505 to i64
  %1508 = shl nuw i64 %1504, 32
  %1509 = or i64 %1508, %1501
  %1510 = sdiv i64 %1509, %1507
  %1511 = shl i64 %1510, 32
  %1512 = ashr exact i64 %1511, 32
  %1513 = icmp eq i64 %1510, %1512
  br i1 %1513, label %1516, label %1514

; <label>:1514:                                   ; preds = %routine_idivl__esi.exit404
  %1515 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1506, %struct.Memory* %1488)
  %.pre91 = load i64, i64* %RDX.i453, align 8
  %.pre92 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit371

; <label>:1516:                                   ; preds = %routine_idivl__esi.exit404
  %1517 = srem i64 %1509, %1507
  %1518 = and i64 %1510, 4294967295
  store i64 %1518, i64* %RAX.i357, align 8
  %1519 = and i64 %1517, 4294967295
  store i64 %1519, i64* %RDX.i453, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit371

routine_idivl__esi.exit371:                       ; preds = %1516, %1514
  %1520 = phi i64 [ %.pre92, %1514 ], [ %1506, %1516 ]
  %1521 = phi i64 [ %.pre91, %1514 ], [ %1519, %1516 ]
  %1522 = phi %struct.Memory* [ %1515, %1514 ], [ %1488, %1516 ]
  %1523 = trunc i64 %1521 to i32
  %1524 = add i32 %1523, -1
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RDX.i453, align 8
  %1526 = icmp eq i32 %1523, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %14, align 1
  %1528 = and i32 %1524, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %21, align 1
  %1533 = xor i32 %1524, %1523
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  store i8 %1536, i8* %26, align 1
  %1537 = icmp eq i32 %1524, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %29, align 1
  %1539 = lshr i32 %1524, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %32, align 1
  %1541 = lshr i32 %1523, 31
  %1542 = xor i32 %1539, %1541
  %1543 = add nuw nsw i32 %1542, %1541
  %1544 = icmp eq i32 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %38, align 1
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -1028
  %1548 = add i64 %1520, 9
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RDI.i373, align 8
  store i64 %1551, i64* %RAX.i357, align 8
  %1552 = add i64 %1546, -1068
  %1553 = add i64 %1520, 17
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  store i32 %1524, i32* %1554, align 4
  %1555 = load i64, i64* %3, align 8
  %1556 = load i32, i32* %EAX.i896, align 8
  %1557 = sext i32 %1556 to i64
  %1558 = lshr i64 %1557, 32
  store i64 %1558, i64* %RDX.i860, align 8
  %1559 = load i32, i32* %ESI.i388, align 4
  %1560 = add i64 %1555, 3
  store i64 %1560, i64* %3, align 8
  %1561 = zext i32 %1556 to i64
  %1562 = sext i32 %1559 to i64
  %1563 = shl nuw i64 %1558, 32
  %1564 = or i64 %1563, %1561
  %1565 = sdiv i64 %1564, %1562
  %1566 = shl i64 %1565, 32
  %1567 = ashr exact i64 %1566, 32
  %1568 = icmp eq i64 %1565, %1567
  br i1 %1568, label %1571, label %1569

; <label>:1569:                                   ; preds = %routine_idivl__esi.exit371
  %1570 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1560, %struct.Memory* %1522)
  %.pre93 = load i64, i64* %RDX.i453, align 8
  %.pre94 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1571:                                   ; preds = %routine_idivl__esi.exit371
  %1572 = srem i64 %1564, %1562
  %1573 = and i64 %1565, 4294967295
  store i64 %1573, i64* %RAX.i357, align 8
  %1574 = and i64 %1572, 4294967295
  store i64 %1574, i64* %RDX.i453, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1571, %1569
  %1575 = phi i64 [ %.pre94, %1569 ], [ %1560, %1571 ]
  %1576 = phi i64 [ %.pre93, %1569 ], [ %1574, %1571 ]
  %1577 = phi %struct.Memory* [ %1570, %1569 ], [ %1522, %1571 ]
  %1578 = trunc i64 %1576 to i32
  %1579 = add i32 %1578, -1
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RDX.i453, align 8
  %1581 = icmp eq i32 %1578, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1579, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1579, %1578
  %1589 = lshr i32 %1588, 4
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  store i8 %1591, i8* %26, align 1
  %1592 = icmp eq i32 %1579, 0
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %29, align 1
  %1594 = lshr i32 %1579, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %32, align 1
  %1596 = lshr i32 %1578, 31
  %1597 = xor i32 %1594, %1596
  %1598 = add nuw nsw i32 %1597, %1596
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %38, align 1
  %1601 = load i64, i64* %RBP.i, align 8
  %1602 = add i64 %1601, -1068
  %1603 = add i64 %1575, 9
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = sub i32 %1605, %1579
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RSI.i870, align 8
  %1608 = icmp ult i32 %1605, %1579
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = and i32 %1606, 255
  %1611 = tail call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  store i8 %1614, i8* %21, align 1
  %1615 = xor i32 %1579, %1605
  %1616 = xor i32 %1615, %1606
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %26, align 1
  %1620 = icmp eq i32 %1606, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %29, align 1
  %1622 = lshr i32 %1606, 31
  %1623 = trunc i32 %1622 to i8
  store i8 %1623, i8* %32, align 1
  %1624 = lshr i32 %1605, 31
  %1625 = xor i32 %1594, %1624
  %1626 = xor i32 %1622, %1624
  %1627 = add nuw nsw i32 %1626, %1625
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %38, align 1
  store i64 %1607, i64* %RDI.i373, align 8
  %1630 = add i64 %1575, -498412
  %1631 = add i64 %1575, 18
  %1632 = load i64, i64* %6, align 8
  %1633 = add i64 %1632, -8
  %1634 = inttoptr i64 %1633 to i64*
  store i64 %1631, i64* %1634, align 8
  store i64 %1633, i64* %6, align 8
  store i64 %1630, i64* %3, align 8
  %1635 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1577)
  %1636 = load i64, i64* %RBP.i, align 8
  %1637 = add i64 %1636, -1064
  %1638 = load i64, i64* %3, align 8
  %1639 = add i64 %1638, 6
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1637 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = load i32, i32* %EAX.i896, align 4
  %1643 = add i32 %1642, %1641
  %1644 = zext i32 %1643 to i64
  store i64 %1644, i64* %RDX.i453, align 8
  %1645 = icmp eq i32 %1643, 0
  %1646 = zext i1 %1645 to i8
  %1647 = lshr i32 %1643, 31
  %1648 = add i32 %1643, -1
  store i8 %1646, i8* %14, align 1
  %1649 = and i32 %1648, 255
  %1650 = tail call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  store i8 %1653, i8* %21, align 1
  %1654 = xor i32 %1648, %1643
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %26, align 1
  %1658 = icmp eq i32 %1648, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %29, align 1
  %1660 = lshr i32 %1648, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %32, align 1
  %1662 = xor i32 %1660, %1647
  %1663 = add nuw nsw i32 %1662, %1647
  %1664 = icmp eq i32 %1663, 2
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %38, align 1
  %.v125 = select i1 %1658, i64 22, i64 17
  %1666 = add i64 %1638, %.v125
  store i64 %1666, i64* %3, align 8
  br i1 %1658, label %block_.L_47aaf4, label %block_.L_47ac18

block_.L_47aaf4:                                  ; preds = %routine_idivl__esi.exit
  store i64 4, i64* %RDX.i453, align 8
  store i64 0, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i881, align 8
  %1667 = add i64 %1636, -1024
  %1668 = add i64 %1666, 15
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDI.i373, align 8
  %1672 = add i64 %1636, -12
  %1673 = add i64 %1666, 18
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RSI.i870, align 8
  %1677 = add i64 %1666, -431428
  %1678 = add i64 %1666, 23
  %1679 = load i64, i64* %6, align 8
  %1680 = add i64 %1679, -8
  %1681 = inttoptr i64 %1680 to i64*
  store i64 %1678, i64* %1681, align 8
  store i64 %1680, i64* %6, align 8
  store i64 %1677, i64* %3, align 8
  %call2_47ab06 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1677, %struct.Memory* %1635)
  %1682 = load i64, i64* %3, align 8
  store i64 4, i64* %RDX.i453, align 8
  store i64 0, i64* %RSI.i870, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i881, align 8
  %1683 = load i64, i64* %RBP.i, align 8
  %1684 = add i64 %1683, -1032
  %1685 = load i32, i32* %EAX.i896, align 4
  %1686 = add i64 %1682, 15
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1684 to i32*
  store i32 %1685, i32* %1687, align 4
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -1028
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 6
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1689 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RDI.i373, align 8
  %1695 = add i64 %1688, -12
  %1696 = add i64 %1690, 9
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  %1698 = load i32, i32* %1697, align 4
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RSI.i870, align 8
  %1700 = add i64 %1690, -431466
  %1701 = add i64 %1690, 14
  %1702 = load i64, i64* %6, align 8
  %1703 = add i64 %1702, -8
  %1704 = inttoptr i64 %1703 to i64*
  store i64 %1701, i64* %1704, align 8
  store i64 %1703, i64* %6, align 8
  store i64 %1700, i64* %3, align 8
  %call2_47ab23 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1700, %struct.Memory* %call2_47ab06)
  %1705 = load i64, i64* %3, align 8
  store i64 4, i64* %RDX.i453, align 8
  store i64 0, i64* %RSI.i870, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i881, align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -1036
  %1708 = load i32, i32* %EAX.i896, align 4
  %1709 = add i64 %1705, 15
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to i32*
  store i32 %1708, i32* %1710, align 4
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -1024
  %1713 = load i64, i64* %3, align 8
  %1714 = add i64 %1713, 6
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1712 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RDI.i373, align 8
  %1718 = add i64 %1711, -1016
  %1719 = add i64 %1713, 12
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i32*
  %1721 = load i32, i32* %1720, align 4
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RSI.i870, align 8
  %1723 = add i64 %1713, -431495
  %1724 = add i64 %1713, 17
  %1725 = load i64, i64* %6, align 8
  %1726 = add i64 %1725, -8
  %1727 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1727, align 8
  store i64 %1726, i64* %6, align 8
  store i64 %1723, i64* %3, align 8
  %call2_47ab43 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1723, %struct.Memory* %call2_47ab23)
  %1728 = load i64, i64* %3, align 8
  store i64 4, i64* %RDX.i453, align 8
  store i64 0, i64* %RSI.i870, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i881, align 8
  %1729 = load i64, i64* %RBP.i, align 8
  %1730 = add i64 %1729, -1040
  %1731 = load i32, i32* %EAX.i896, align 4
  %1732 = add i64 %1728, 15
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1730 to i32*
  store i32 %1731, i32* %1733, align 4
  %1734 = load i64, i64* %RBP.i, align 8
  %1735 = add i64 %1734, -1028
  %1736 = load i64, i64* %3, align 8
  %1737 = add i64 %1736, 6
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1735 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RDI.i373, align 8
  %1741 = add i64 %1734, -1016
  %1742 = add i64 %1736, 12
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RSI.i870, align 8
  %1746 = add i64 %1736, -431527
  %1747 = add i64 %1736, 17
  %1748 = load i64, i64* %6, align 8
  %1749 = add i64 %1748, -8
  %1750 = inttoptr i64 %1749 to i64*
  store i64 %1747, i64* %1750, align 8
  store i64 %1749, i64* %6, align 8
  store i64 %1746, i64* %3, align 8
  %call2_47ab63 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1746, %struct.Memory* %call2_47ab43)
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -1044
  %1753 = load i32, i32* %EAX.i896, align 4
  %1754 = load i64, i64* %3, align 8
  %1755 = add i64 %1754, 6
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1752 to i32*
  store i32 %1753, i32* %1756, align 4
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -1032
  %1759 = load i64, i64* %3, align 8
  %1760 = add i64 %1759, 6
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1758 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RAX.i357, align 8
  %1764 = add i64 %1757, -1036
  %1765 = add i64 %1759, 12
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = sub i32 %1762, %1767
  %1769 = icmp ult i32 %1762, %1767
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %14, align 1
  %1771 = and i32 %1768, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i32 %1767, %1762
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
  %1785 = lshr i32 %1762, 31
  %1786 = lshr i32 %1767, 31
  %1787 = xor i32 %1786, %1785
  %1788 = xor i32 %1783, %1785
  %1789 = add nuw nsw i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %38, align 1
  %1792 = icmp ne i8 %1784, 0
  %1793 = xor i1 %1792, %1790
  %.demorgan = or i1 %1781, %1793
  %.v126 = select i1 %.demorgan, i64 18, i64 54
  %1794 = add i64 %1759, %.v126
  store i64 %1794, i64* %3, align 8
  br i1 %.demorgan, label %block_47ab80, label %block_.L_47aba4

block_47ab80:                                     ; preds = %block_.L_47aaf4
  %1795 = add i64 %1794, 6
  store i64 %1795, i64* %3, align 8
  %1796 = load i32, i32* %1761, align 4
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RAX.i357, align 8
  %1798 = add i64 %1794, 12
  store i64 %1798, i64* %3, align 8
  %1799 = load i32, i32* %1766, align 4
  %1800 = sub i32 %1796, %1799
  %1801 = icmp ult i32 %1796, %1799
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1800, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1799, %1796
  %1809 = xor i32 %1808, %1800
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %26, align 1
  %1813 = icmp eq i32 %1800, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %29, align 1
  %1815 = lshr i32 %1800, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %32, align 1
  %1817 = lshr i32 %1796, 31
  %1818 = lshr i32 %1799, 31
  %1819 = xor i32 %1818, %1817
  %1820 = xor i32 %1815, %1817
  %1821 = add nuw nsw i32 %1820, %1819
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %38, align 1
  %.v127 = select i1 %1813, i64 18, i64 94
  %1824 = add i64 %1794, %.v127
  store i64 %1824, i64* %3, align 8
  br i1 %1813, label %block_47ab92, label %block_.L_47abde

block_47ab92:                                     ; preds = %block_47ab80
  %1825 = add i64 %1757, -1040
  %1826 = add i64 %1824, 6
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RAX.i357, align 8
  %1830 = add i64 %1757, -1044
  %1831 = add i64 %1824, 12
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sub i32 %1828, %1833
  %1835 = icmp ult i32 %1828, %1833
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %14, align 1
  %1837 = and i32 %1834, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  %1842 = xor i32 %1833, %1828
  %1843 = xor i32 %1842, %1834
  %1844 = lshr i32 %1843, 4
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  store i8 %1846, i8* %26, align 1
  %1847 = icmp eq i32 %1834, 0
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %29, align 1
  %1849 = lshr i32 %1834, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %32, align 1
  %1851 = lshr i32 %1828, 31
  %1852 = lshr i32 %1833, 31
  %1853 = xor i32 %1852, %1851
  %1854 = xor i32 %1849, %1851
  %1855 = add nuw nsw i32 %1854, %1853
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %38, align 1
  %1858 = icmp ne i8 %1850, 0
  %1859 = xor i1 %1858, %1856
  %.v128 = select i1 %1859, i64 76, i64 18
  %1860 = add i64 %1824, %.v128
  store i64 %1860, i64* %3, align 8
  br i1 %1859, label %block_.L_47abde, label %block_.L_47aba4

block_.L_47aba4:                                  ; preds = %block_.L_47aaf4, %block_47ab92
  %1861 = phi i32 [ %1828, %block_47ab92 ], [ %1762, %block_.L_47aaf4 ]
  %1862 = phi i64 [ %1829, %block_47ab92 ], [ %1763, %block_.L_47aaf4 ]
  %1863 = phi i64 [ %1860, %block_47ab92 ], [ %1794, %block_.L_47aaf4 ]
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i453, align 8
  %1864 = zext i32 %1861 to i64
  %1865 = xor i64 %1864, %1862
  %1866 = trunc i64 %1865 to i32
  store i64 %1865, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  %1867 = and i32 %1866, 255
  %1868 = tail call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  store i8 %1871, i8* %21, align 1
  %1872 = icmp eq i32 %1866, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %29, align 1
  %1874 = lshr i32 %1866, 31
  %1875 = trunc i32 %1874 to i8
  store i8 %1875, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1876 = add i64 %1757, -1024
  %1877 = add i64 %1863, 18
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RDI.i373, align 8
  %1881 = add i64 %1757, -1016
  %1882 = add i64 %1863, 24
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RSI.i870, align 8
  %1886 = add i64 %1757, -32
  %1887 = add i64 %1863, 27
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RCX.i881, align 8
  store i64 %1865, i64* %99, align 8
  store i64 %1865, i64* %100, align 8
  %1891 = add i64 %1863, -466292
  %1892 = add i64 %1863, 38
  %1893 = load i64, i64* %6, align 8
  %1894 = add i64 %1893, -8
  %1895 = inttoptr i64 %1894 to i64*
  store i64 %1892, i64* %1895, align 8
  store i64 %1894, i64* %6, align 8
  store i64 %1891, i64* %3, align 8
  %call2_47abc5 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1891, %struct.Memory* %call2_47ab63)
  %1896 = load i64, i64* %RBP.i, align 8
  %1897 = add i64 %1896, -24
  %1898 = load i64, i64* %3, align 8
  %1899 = add i64 %1898, 3
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1897 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, 1
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RCX.i881, align 8
  %1904 = icmp eq i32 %1901, -1
  %1905 = icmp eq i32 %1902, 0
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1902, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1902, %1901
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %26, align 1
  %1917 = zext i1 %1905 to i8
  store i8 %1917, i8* %29, align 1
  %1918 = lshr i32 %1902, 31
  %1919 = trunc i32 %1918 to i8
  store i8 %1919, i8* %32, align 1
  %1920 = lshr i32 %1901, 31
  %1921 = xor i32 %1918, %1920
  %1922 = add nuw nsw i32 %1921, %1918
  %1923 = icmp eq i32 %1922, 2
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %38, align 1
  %1925 = add i64 %1898, 9
  store i64 %1925, i64* %3, align 8
  store i32 %1902, i32* %1900, align 4
  %1926 = load i64, i64* %RBP.i, align 8
  %1927 = add i64 %1926, -1072
  %1928 = load i32, i32* %EAX.i896, align 4
  %1929 = load i64, i64* %3, align 8
  %1930 = add i64 %1929, 6
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1927 to i32*
  store i32 %1928, i32* %1931, align 4
  %1932 = load i64, i64* %3, align 8
  %1933 = add i64 %1932, 58
  store i64 %1933, i64* %3, align 8
  br label %block_.L_47ac18

block_.L_47abde:                                  ; preds = %block_47ab80, %block_47ab92
  %1934 = phi i32 [ %1828, %block_47ab92 ], [ %1796, %block_47ab80 ]
  %1935 = phi i64 [ %1829, %block_47ab92 ], [ %1797, %block_47ab80 ]
  %1936 = phi i64 [ %1860, %block_47ab92 ], [ %1824, %block_47ab80 ]
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX.i453, align 8
  %1937 = zext i32 %1934 to i64
  %1938 = xor i64 %1937, %1935
  %1939 = trunc i64 %1938 to i32
  store i64 %1938, i64* %RAX.i357, align 8
  store i8 0, i8* %14, align 1
  %1940 = and i32 %1939, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940)
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %21, align 1
  %1945 = icmp eq i32 %1939, 0
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %29, align 1
  %1947 = lshr i32 %1939, 31
  %1948 = trunc i32 %1947 to i8
  store i8 %1948, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1949 = add i64 %1757, -1028
  %1950 = add i64 %1936, 18
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RDI.i373, align 8
  %1954 = add i64 %1757, -1016
  %1955 = add i64 %1936, 24
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RSI.i870, align 8
  %1959 = add i64 %1757, -32
  %1960 = add i64 %1936, 27
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RCX.i881, align 8
  store i64 %1938, i64* %99, align 8
  store i64 %1938, i64* %100, align 8
  %1964 = add i64 %1936, -466350
  %1965 = add i64 %1936, 38
  %1966 = load i64, i64* %6, align 8
  %1967 = add i64 %1966, -8
  %1968 = inttoptr i64 %1967 to i64*
  store i64 %1965, i64* %1968, align 8
  store i64 %1967, i64* %6, align 8
  store i64 %1964, i64* %3, align 8
  %call2_47abff = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1964, %struct.Memory* %call2_47ab63)
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -24
  %1971 = load i64, i64* %3, align 8
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1970 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = add i32 %1974, 1
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RCX.i881, align 8
  %1977 = icmp eq i32 %1974, -1
  %1978 = icmp eq i32 %1975, 0
  %1979 = or i1 %1977, %1978
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %14, align 1
  %1981 = and i32 %1975, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %21, align 1
  %1986 = xor i32 %1975, %1974
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  store i8 %1989, i8* %26, align 1
  %1990 = zext i1 %1978 to i8
  store i8 %1990, i8* %29, align 1
  %1991 = lshr i32 %1975, 31
  %1992 = trunc i32 %1991 to i8
  store i8 %1992, i8* %32, align 1
  %1993 = lshr i32 %1974, 31
  %1994 = xor i32 %1991, %1993
  %1995 = add nuw nsw i32 %1994, %1991
  %1996 = icmp eq i32 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %38, align 1
  %1998 = add i64 %1971, 9
  store i64 %1998, i64* %3, align 8
  store i32 %1975, i32* %1973, align 4
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -1076
  %2001 = load i32, i32* %EAX.i896, align 4
  %2002 = load i64, i64* %3, align 8
  %2003 = add i64 %2002, 6
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2000 to i32*
  store i32 %2001, i32* %2004, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_47ac18

block_.L_47ac18:                                  ; preds = %block_47aa0c, %block_47aa24, %block_.L_47aba4, %block_.L_47abde, %routine_idivl__esi.exit
  %2005 = phi i64 [ %1666, %routine_idivl__esi.exit ], [ %.pre95, %block_.L_47abde ], [ %1933, %block_.L_47aba4 ], [ %1309, %block_47aa24 ], [ %1277, %block_47aa0c ]
  %.sink42 = phi i64 [ 297, %routine_idivl__esi.exit ], [ 5, %block_.L_47abde ], [ 5, %block_.L_47aba4 ], [ 483, %block_47aa24 ], [ 483, %block_47aa0c ]
  %MEMORY.25 = phi %struct.Memory* [ %1635, %routine_idivl__esi.exit ], [ %call2_47abff, %block_.L_47abde ], [ %call2_47abc5, %block_.L_47aba4 ], [ %MEMORY.20, %block_47aa24 ], [ %MEMORY.20, %block_47aa0c ]
  %2006 = add i64 %2005, %.sink42
  %2007 = load i64, i64* %RBP.i, align 8
  %2008 = add i64 %2007, -32
  %2009 = add i64 %2006, 3
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = add i32 %2011, 1
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX.i357, align 8
  %2014 = icmp eq i32 %2011, -1
  %2015 = icmp eq i32 %2012, 0
  %2016 = or i1 %2014, %2015
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = and i32 %2012, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i32 %2012, %2011
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %26, align 1
  %2027 = zext i1 %2015 to i8
  store i8 %2027, i8* %29, align 1
  %2028 = lshr i32 %2012, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %32, align 1
  %2030 = lshr i32 %2011, 31
  %2031 = xor i32 %2028, %2030
  %2032 = add nuw nsw i32 %2031, %2028
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %38, align 1
  %2035 = add i64 %2006, 9
  store i64 %2035, i64* %3, align 8
  store i32 %2012, i32* %2010, align 4
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, -546
  store i64 %2037, i64* %3, align 8
  br label %block_.L_47a9ff

block_.L_47ac26:                                  ; preds = %block_.L_47a9ff
  store i64 0, i64* %RSI.i870, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1600, i64* %RAX.i357, align 8
  store i64 1600, i64* %RDX.i860, align 8
  %2038 = add i64 %1213, -8
  %2039 = add i64 %1242, 13
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RCX.i881, align 8
  store i64 %2041, i64* %RDI.i373, align 8
  %2042 = add i64 %1242, -498614
  %2043 = add i64 %1242, 21
  %2044 = load i64, i64* %6, align 8
  %2045 = add i64 %2044, -8
  %2046 = inttoptr i64 %2045 to i64*
  store i64 %2043, i64* %2046, align 8
  store i64 %2045, i64* %6, align 8
  store i64 %2042, i64* %3, align 8
  %2047 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %MEMORY.20)
  %2048 = load i64, i64* %RBP.i, align 8
  %2049 = add i64 %2048, -32
  %2050 = load i64, i64* %3, align 8
  %2051 = add i64 %2050, 7
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2049 to i32*
  store i32 21, i32* %2052, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_47ac42

block_.L_47ac42:                                  ; preds = %block_.L_47ad4f, %block_.L_47ac26
  %2053 = phi i64 [ %.pre83, %block_.L_47ac26 ], [ %2418, %block_.L_47ad4f ]
  %2054 = load i64, i64* %RBP.i, align 8
  %2055 = add i64 %2054, -32
  %2056 = add i64 %2053, 7
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = add i32 %2058, -400
  %2060 = icmp ult i32 %2058, 400
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %14, align 1
  %2062 = and i32 %2059, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  %2067 = xor i32 %2058, 16
  %2068 = xor i32 %2067, %2059
  %2069 = lshr i32 %2068, 4
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %26, align 1
  %2072 = icmp eq i32 %2059, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %29, align 1
  %2074 = lshr i32 %2059, 31
  %2075 = trunc i32 %2074 to i8
  store i8 %2075, i8* %32, align 1
  %2076 = lshr i32 %2058, 31
  %2077 = xor i32 %2074, %2076
  %2078 = add nuw nsw i32 %2077, %2076
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %38, align 1
  %2081 = icmp ne i8 %2075, 0
  %2082 = xor i1 %2081, %2079
  %.v116 = select i1 %2082, i64 13, i64 288
  %2083 = add i64 %2053, %.v116
  store i64 %2083, i64* %3, align 8
  br i1 %2082, label %block_47ac4f, label %block_.L_47ad62

block_47ac4f:                                     ; preds = %block_.L_47ac42
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %3, align 8
  %2085 = load i32, i32* %2057, align 4
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RAX.i357, align 8
  %2087 = add nsw i64 %2086, 12099168
  %2088 = add i64 %2083, 12
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i8*
  %2090 = load i8, i8* %2089, align 1
  %2091 = zext i8 %2090 to i64
  store i64 %2091, i64* %RCX.i881, align 8
  %2092 = zext i8 %2090 to i32
  %2093 = add i64 %2054, -12
  %2094 = add i64 %2083, 15
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = sub i32 %2092, %2096
  %2098 = icmp ult i32 %2092, %2096
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %14, align 1
  %2100 = and i32 %2097, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %21, align 1
  %2105 = xor i32 %2096, %2092
  %2106 = xor i32 %2105, %2097
  %2107 = lshr i32 %2106, 4
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %26, align 1
  %2110 = icmp eq i32 %2097, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %29, align 1
  %2112 = lshr i32 %2097, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %32, align 1
  %2114 = lshr i32 %2096, 31
  %2115 = add nuw nsw i32 %2112, %2114
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %38, align 1
  %.v118 = select i1 %2110, i64 21, i64 151
  %2118 = add i64 %2083, %.v118
  store i64 %2118, i64* %3, align 8
  br i1 %2110, label %block_47ac64, label %block_.L_47ace6

block_47ac64:                                     ; preds = %block_47ac4f
  %2119 = add i64 %2054, -8
  %2120 = add i64 %2118, 4
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  %2122 = load i64, i64* %2121, align 8
  store i64 %2122, i64* %RAX.i357, align 8
  %2123 = add i64 %2118, 8
  store i64 %2123, i64* %3, align 8
  %2124 = load i32, i32* %2057, align 4
  %2125 = sext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i881, align 8
  %2126 = shl nsw i64 %2125, 2
  %2127 = add i64 %2126, %2122
  %2128 = add i64 %2118, 15
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i32*
  store i32 1, i32* %2129, align 4
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -32
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2131 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RDI.i373, align 8
  %2137 = add i64 %2132, 6
  store i64 %2137, i64* %3, align 8
  %2138 = load i32, i32* %2134, align 4
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RSI.i870, align 8
  %2140 = add i64 %2132, 54397
  %2141 = add i64 %2132, 11
  %2142 = load i64, i64* %6, align 8
  %2143 = add i64 %2142, -8
  %2144 = inttoptr i64 %2143 to i64*
  store i64 %2141, i64* %2144, align 8
  store i64 %2143, i64* %6, align 8
  store i64 %2140, i64* %3, align 8
  %call2_47ac79 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %2140, %struct.Memory* %2047)
  %2145 = load i32, i32* %EAX.i896, align 4
  %2146 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2147 = and i32 %2145, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2152 = icmp eq i32 %2145, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %29, align 1
  %2154 = lshr i32 %2145, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %2152, i64 99, i64 9
  %2156 = add i64 %2146, %.v121
  store i64 %2156, i64* %3, align 8
  br i1 %2152, label %block_.L_47ace1, label %block_47ac87

block_47ac87:                                     ; preds = %block_47ac64
  store i64 241, i64* %RSI.i870, align 8
  %2157 = load i64, i64* %RBP.i, align 8
  %2158 = add i64 %2157, -1008
  store i64 %2158, i64* %RDX.i860, align 8
  %2159 = add i64 %2157, -32
  %2160 = add i64 %2156, 15
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RDI.i373, align 8
  %2164 = add i64 %2156, -439367
  %2165 = add i64 %2156, 20
  %2166 = load i64, i64* %6, align 8
  %2167 = add i64 %2166, -8
  %2168 = inttoptr i64 %2167 to i64*
  store i64 %2165, i64* %2168, align 8
  store i64 %2167, i64* %6, align 8
  store i64 %2164, i64* %3, align 8
  %call2_47ac96 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2164, %struct.Memory* %2047)
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -1012
  %2171 = load i32, i32* %EAX.i896, align 4
  %2172 = load i64, i64* %3, align 8
  %2173 = add i64 %2172, 6
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2170 to i32*
  store i32 %2171, i32* %2174, align 4
  %2175 = load i64, i64* %RBP.i, align 8
  %2176 = add i64 %2175, -36
  %2177 = load i64, i64* %3, align 8
  %2178 = add i64 %2177, 7
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2176 to i32*
  store i32 0, i32* %2179, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_47aca8

block_.L_47aca8:                                  ; preds = %block_47acb7, %block_47ac87
  %2180 = phi i64 [ %2267, %block_47acb7 ], [ %.pre85, %block_47ac87 ]
  %2181 = load i64, i64* %RBP.i, align 8
  %2182 = add i64 %2181, -36
  %2183 = add i64 %2180, 3
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RAX.i357, align 8
  %2187 = add i64 %2181, -1012
  %2188 = add i64 %2180, 9
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = sub i32 %2185, %2190
  %2192 = icmp ult i32 %2185, %2190
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %14, align 1
  %2194 = and i32 %2191, 255
  %2195 = tail call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  store i8 %2198, i8* %21, align 1
  %2199 = xor i32 %2190, %2185
  %2200 = xor i32 %2199, %2191
  %2201 = lshr i32 %2200, 4
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  store i8 %2203, i8* %26, align 1
  %2204 = icmp eq i32 %2191, 0
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %29, align 1
  %2206 = lshr i32 %2191, 31
  %2207 = trunc i32 %2206 to i8
  store i8 %2207, i8* %32, align 1
  %2208 = lshr i32 %2185, 31
  %2209 = lshr i32 %2190, 31
  %2210 = xor i32 %2209, %2208
  %2211 = xor i32 %2206, %2208
  %2212 = add nuw nsw i32 %2211, %2210
  %2213 = icmp eq i32 %2212, 2
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %38, align 1
  %2215 = icmp ne i8 %2207, 0
  %2216 = xor i1 %2215, %2213
  %.v122 = select i1 %2216, i64 15, i64 52
  %2217 = add i64 %2180, %.v122
  store i64 %2217, i64* %3, align 8
  br i1 %2216, label %block_47acb7, label %block_.L_47acdc

block_47acb7:                                     ; preds = %block_.L_47aca8
  %2218 = add i64 %2181, -8
  %2219 = add i64 %2217, 4
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i64*
  %2221 = load i64, i64* %2220, align 8
  store i64 %2221, i64* %RAX.i357, align 8
  %2222 = add i64 %2217, 8
  store i64 %2222, i64* %3, align 8
  %2223 = load i32, i32* %2184, align 4
  %2224 = sext i32 %2223 to i64
  store i64 %2224, i64* %RCX.i881, align 8
  %2225 = shl nsw i64 %2224, 2
  %2226 = add i64 %2181, -1008
  %2227 = add i64 %2226, %2225
  %2228 = add i64 %2217, 16
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  %2230 = load i32, i32* %2229, align 4
  %2231 = sext i32 %2230 to i64
  store i64 %2231, i64* %RCX.i881, align 8
  %2232 = shl nsw i64 %2231, 2
  %2233 = add i64 %2232, %2221
  %2234 = add i64 %2217, 23
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  store i32 2, i32* %2235, align 4
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -36
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, 3
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2237 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = add i32 %2241, 1
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX.i357, align 8
  %2244 = icmp eq i32 %2241, -1
  %2245 = icmp eq i32 %2242, 0
  %2246 = or i1 %2244, %2245
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %14, align 1
  %2248 = and i32 %2242, 255
  %2249 = tail call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  store i8 %2252, i8* %21, align 1
  %2253 = xor i32 %2242, %2241
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %26, align 1
  %2257 = zext i1 %2245 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i32 %2242, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2258
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  %2265 = add i64 %2238, 9
  store i64 %2265, i64* %3, align 8
  store i32 %2242, i32* %2240, align 4
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, -47
  store i64 %2267, i64* %3, align 8
  br label %block_.L_47aca8

block_.L_47acdc:                                  ; preds = %block_.L_47aca8
  %2268 = add i64 %2217, 5
  store i64 %2268, i64* %3, align 8
  br label %block_.L_47ace1

block_.L_47ace1:                                  ; preds = %block_.L_47acdc, %block_47ac64
  %2269 = phi i64 [ %2268, %block_.L_47acdc ], [ %2156, %block_47ac64 ]
  %2270 = add i64 %2269, 110
  br label %block_.L_47ad4f

block_.L_47ace6:                                  ; preds = %block_47ac4f
  %2271 = add i64 %2118, 4
  store i64 %2271, i64* %3, align 8
  %2272 = load i32, i32* %2057, align 4
  %2273 = sext i32 %2272 to i64
  store i64 %2273, i64* %RAX.i357, align 8
  %2274 = add nsw i64 %2273, 12099168
  %2275 = add i64 %2118, 12
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i8*
  %2277 = load i8, i8* %2276, align 1
  %2278 = zext i8 %2277 to i64
  store i64 %2278, i64* %RCX.i881, align 8
  %2279 = zext i8 %2277 to i32
  %2280 = add i64 %2054, -1016
  %2281 = add i64 %2118, 18
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  %2283 = load i32, i32* %2282, align 4
  %2284 = sub i32 %2279, %2283
  %2285 = icmp ult i32 %2279, %2283
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %14, align 1
  %2287 = and i32 %2284, 255
  %2288 = tail call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  store i8 %2291, i8* %21, align 1
  %2292 = xor i32 %2283, %2279
  %2293 = xor i32 %2292, %2284
  %2294 = lshr i32 %2293, 4
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  store i8 %2296, i8* %26, align 1
  %2297 = icmp eq i32 %2284, 0
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %29, align 1
  %2299 = lshr i32 %2284, 31
  %2300 = trunc i32 %2299 to i8
  store i8 %2300, i8* %32, align 1
  %2301 = lshr i32 %2283, 31
  %2302 = add nuw nsw i32 %2299, %2301
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %38, align 1
  %.v119 = select i1 %2297, i64 24, i64 100
  %2305 = add i64 %2118, %.v119
  store i64 %2305, i64* %3, align 8
  br i1 %2297, label %block_47acfe, label %block_.L_47ad4a

block_47acfe:                                     ; preds = %block_.L_47ace6
  %2306 = add i64 %2305, 3
  store i64 %2306, i64* %3, align 8
  %2307 = load i32, i32* %2057, align 4
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RDI.i373, align 8
  %2309 = add i64 %2305, -439678
  %2310 = add i64 %2305, 8
  %2311 = load i64, i64* %6, align 8
  %2312 = add i64 %2311, -8
  %2313 = inttoptr i64 %2312 to i64*
  store i64 %2310, i64* %2313, align 8
  store i64 %2312, i64* %6, align 8
  store i64 %2309, i64* %3, align 8
  %call2_47ad01 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %2309, %struct.Memory* %2047)
  %2314 = load i32, i32* %EAX.i896, align 4
  %2315 = load i64, i64* %3, align 8
  %2316 = add i32 %2314, -1
  %2317 = icmp eq i32 %2314, 0
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %14, align 1
  %2319 = and i32 %2316, 255
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %21, align 1
  %2324 = xor i32 %2316, %2314
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  store i8 %2327, i8* %26, align 1
  %2328 = icmp eq i32 %2316, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %29, align 1
  %2330 = lshr i32 %2316, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %32, align 1
  %2332 = lshr i32 %2314, 31
  %2333 = xor i32 %2330, %2332
  %2334 = add nuw nsw i32 %2333, %2332
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %38, align 1
  %.v120 = select i1 %2328, i64 9, i64 68
  %2337 = add i64 %2315, %.v120
  store i64 %2337, i64* %3, align 8
  br i1 %2328, label %block_47ad0f, label %block_.L_47ad4a

block_47ad0f:                                     ; preds = %block_47acfe
  store i64 1, i64* %RSI.i870, align 8
  %2338 = load i64, i64* %RBP.i, align 8
  %2339 = add i64 %2338, -1008
  store i64 %2339, i64* %RDX.i860, align 8
  %2340 = add i64 %2338, -8
  %2341 = add i64 %2337, 16
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i64*
  %2343 = load i64, i64* %2342, align 8
  store i64 %2343, i64* %RAX.i357, align 8
  %2344 = add i64 %2338, -32
  %2345 = add i64 %2337, 20
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i32*
  %2347 = load i32, i32* %2346, align 4
  %2348 = sext i32 %2347 to i64
  store i64 %2348, i64* %RCX.i881, align 8
  %2349 = shl nsw i64 %2348, 2
  %2350 = add i64 %2349, %2343
  %2351 = add i64 %2337, 27
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i32*
  store i32 2, i32* %2352, align 4
  %2353 = load i64, i64* %RBP.i, align 8
  %2354 = add i64 %2353, -32
  %2355 = load i64, i64* %3, align 8
  %2356 = add i64 %2355, 3
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2354 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RDI.i373, align 8
  %2360 = add i64 %2355, -439530
  %2361 = add i64 %2355, 8
  %2362 = load i64, i64* %6, align 8
  %2363 = add i64 %2362, -8
  %2364 = inttoptr i64 %2363 to i64*
  store i64 %2361, i64* %2364, align 8
  store i64 %2363, i64* %6, align 8
  store i64 %2360, i64* %3, align 8
  %call2_47ad2d = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2360, %struct.Memory* %2047)
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -8
  %2367 = load i64, i64* %3, align 8
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RCX.i881, align 8
  %2371 = add i64 %2365, -1008
  %2372 = add i64 %2367, 11
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  store i64 %2375, i64* %RDX.i860, align 8
  %2376 = shl nsw i64 %2375, 2
  %2377 = add i64 %2376, %2370
  %2378 = add i64 %2367, 18
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  store i32 2, i32* %2379, align 4
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -1080
  %2382 = load i32, i32* %EAX.i896, align 4
  %2383 = load i64, i64* %3, align 8
  %2384 = add i64 %2383, 6
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2381 to i32*
  store i32 %2382, i32* %2385, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_47ad4a

block_.L_47ad4a:                                  ; preds = %block_47acfe, %block_.L_47ace6, %block_47ad0f
  %2386 = phi i64 [ %.pre86, %block_47ad0f ], [ %2337, %block_47acfe ], [ %2305, %block_.L_47ace6 ]
  %2387 = add i64 %2386, 5
  store i64 %2387, i64* %3, align 8
  br label %block_.L_47ad4f

block_.L_47ad4f:                                  ; preds = %block_.L_47ad4a, %block_.L_47ace1
  %storemerge39 = phi i64 [ %2270, %block_.L_47ace1 ], [ %2387, %block_.L_47ad4a ]
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = add i64 %2388, -32
  %2390 = add i64 %storemerge39, 8
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i32*
  %2392 = load i32, i32* %2391, align 4
  %2393 = add i32 %2392, 1
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RAX.i357, align 8
  %2395 = icmp eq i32 %2392, -1
  %2396 = icmp eq i32 %2393, 0
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %14, align 1
  %2399 = and i32 %2393, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %21, align 1
  %2404 = xor i32 %2393, %2392
  %2405 = lshr i32 %2404, 4
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %26, align 1
  %2408 = zext i1 %2396 to i8
  store i8 %2408, i8* %29, align 1
  %2409 = lshr i32 %2393, 31
  %2410 = trunc i32 %2409 to i8
  store i8 %2410, i8* %32, align 1
  %2411 = lshr i32 %2392, 31
  %2412 = xor i32 %2409, %2411
  %2413 = add nuw nsw i32 %2412, %2409
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %38, align 1
  %2416 = add i64 %storemerge39, 14
  store i64 %2416, i64* %3, align 8
  store i32 %2393, i32* %2391, align 4
  %2417 = load i64, i64* %3, align 8
  %2418 = add i64 %2417, -283
  store i64 %2418, i64* %3, align 8
  br label %block_.L_47ac42

block_.L_47ad62:                                  ; preds = %block_.L_47ac42
  %2419 = add i64 %2083, 5
  br label %block_.L_47ad67

block_.L_47ad67:                                  ; preds = %block_47ad71, %block_.L_47ad62
  %2420 = phi i64 [ %2054, %block_.L_47ad62 ], [ %.pre84, %block_47ad71 ]
  %storemerge40 = phi i64 [ %2419, %block_.L_47ad62 ], [ %2474, %block_47ad71 ]
  %2421 = add i64 %2420, -24
  %2422 = add i64 %storemerge40, 4
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  %2424 = load i32, i32* %2423, align 4
  store i8 0, i8* %14, align 1
  %2425 = and i32 %2424, 255
  %2426 = tail call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  store i8 %2429, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2430 = icmp eq i32 %2424, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %29, align 1
  %2432 = lshr i32 %2424, 31
  %2433 = trunc i32 %2432 to i8
  store i8 %2433, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2434 = icmp ne i8 %2433, 0
  %2435 = or i1 %2430, %2434
  %.v117 = select i1 %2435, i64 29, i64 10
  %2436 = add i64 %storemerge40, %.v117
  store i64 %2436, i64* %3, align 8
  br i1 %2435, label %block_.L_47ad84, label %block_47ad71

block_47ad71:                                     ; preds = %block_.L_47ad67
  %2437 = add i64 %2436, -446481
  %2438 = add i64 %2436, 5
  %2439 = load i64, i64* %6, align 8
  %2440 = add i64 %2439, -8
  %2441 = inttoptr i64 %2440 to i64*
  store i64 %2438, i64* %2441, align 8
  store i64 %2440, i64* %6, align 8
  store i64 %2437, i64* %3, align 8
  %call2_47ad71 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2437, %struct.Memory* %2047)
  %2442 = load i64, i64* %RBP.i, align 8
  %2443 = add i64 %2442, -24
  %2444 = load i64, i64* %3, align 8
  %2445 = add i64 %2444, 3
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2443 to i32*
  %2447 = load i32, i32* %2446, align 4
  %2448 = add i32 %2447, -1
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i357, align 8
  %2450 = icmp ne i32 %2447, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %14, align 1
  %2452 = and i32 %2448, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %21, align 1
  %2457 = xor i32 %2447, 16
  %2458 = xor i32 %2457, %2448
  %2459 = lshr i32 %2458, 4
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  store i8 %2461, i8* %26, align 1
  %2462 = icmp eq i32 %2448, 0
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %29, align 1
  %2464 = lshr i32 %2448, 31
  %2465 = trunc i32 %2464 to i8
  store i8 %2465, i8* %32, align 1
  %2466 = lshr i32 %2447, 31
  %2467 = xor i32 %2464, %2466
  %2468 = xor i32 %2464, 1
  %2469 = add nuw nsw i32 %2467, %2468
  %2470 = icmp eq i32 %2469, 2
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %38, align 1
  %2472 = add i64 %2444, 9
  store i64 %2472, i64* %3, align 8
  store i32 %2448, i32* %2446, align 4
  %2473 = load i64, i64* %3, align 8
  %2474 = add i64 %2473, -24
  %2475 = add i64 %2473, 5
  store i64 %2475, i64* %3, align 8
  %.pre84 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47ad67

block_.L_47ad84:                                  ; preds = %block_.L_47ad67
  %2476 = load i64, i64* %6, align 8
  %2477 = add i64 %2476, 1088
  store i64 %2477, i64* %6, align 8
  %2478 = icmp ugt i64 %2476, -1089
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %14, align 1
  %2480 = trunc i64 %2477 to i32
  %2481 = and i32 %2480, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %21, align 1
  %2486 = xor i64 %2477, %2476
  %2487 = lshr i64 %2486, 4
  %2488 = trunc i64 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %26, align 1
  %2490 = icmp eq i64 %2477, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %29, align 1
  %2492 = lshr i64 %2477, 63
  %2493 = trunc i64 %2492 to i8
  store i8 %2493, i8* %32, align 1
  %2494 = lshr i64 %2476, 63
  %2495 = xor i64 %2492, %2494
  %2496 = add nuw nsw i64 %2495, %2492
  %2497 = icmp eq i64 %2496, 2
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %38, align 1
  %2499 = add i64 %2436, 8
  store i64 %2499, i64* %3, align 8
  %2500 = add i64 %2476, 1096
  %2501 = inttoptr i64 %2477 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RBP.i, align 8
  store i64 %2500, i64* %6, align 8
  %2503 = add i64 %2436, 9
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2500 to i64*
  %2505 = load i64, i64* %2504, align 8
  store i64 %2505, i64* %3, align 8
  %2506 = add i64 %2476, 1104
  store i64 %2506, i64* %6, align 8
  ret %struct.Memory* %2047
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
define %struct.Memory* @routine_subq__0x440___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1088
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1088
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1016
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_47a844(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_47a83f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jne_.L_47a6bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47a6c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a831(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1012
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1012
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
define %struct.Memory* @routine_jge_.L_47a747(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581cc1_type* @G__0x581cc1 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1008
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_47a734(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a739(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a6e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_47a768(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a82c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_47a7fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
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
define %struct.Memory* @routine_callq_.tryko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1020
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
define %struct.Memory* @routine_je_.L_47a7bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a7e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581a3a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581a3a_type* @G__0x581a3a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4de___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1246, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581cd4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581cd4_type* @G__0x581cd4 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a827(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_47a822(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a686(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a66e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47a919(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47a881(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47a886(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a90b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47a906(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47a8f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a8f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a8a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a84b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_47a9f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47a9f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1016
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
define %struct.Memory* @routine_jne_.L_47a96e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_47a973(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a9e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__esi__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x418__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
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
define %struct.Memory* @routine_movl_MINUS0x418__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
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
define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a938(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a920(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47ac26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47aa35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_47aa3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1024
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
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
define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1028
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
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
define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1056
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1028
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
define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1060
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
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
define %struct.Memory* @routine_subl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1064
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x42c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1068
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x42c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1068
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
define %struct.Memory* @routine_subl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x428__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
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
define %struct.Memory* @routine_addl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_47aaf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1036
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x410__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1040
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1044
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
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
define %struct.Memory* @routine_cmpl_MINUS0x40c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1036
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
define %struct.Memory* @routine_jg_.L_47aba4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47abde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
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
define %struct.Memory* @routine_cmpl_MINUS0x414__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1044
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
define %struct.Memory* @routine_jl_.L_47abde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x430__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1072
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x434__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1076
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a9ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x640___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_47ad62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47ace6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47ace1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47acdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1008
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 2, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47aca8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ace1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ad4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47ad4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 2, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x438__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1080
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ad54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ac42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ad67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_47ad84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x440___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1088
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1089
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
