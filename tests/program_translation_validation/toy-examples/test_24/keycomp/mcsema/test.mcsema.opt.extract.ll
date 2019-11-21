; ModuleID = '../binary/test.mcsema.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

declare %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400660_read_bytes_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline
define %struct.Memory* @sub_400770_keycomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 {
block_400770:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %5 to i8*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %CX = bitcast %union.anon* %4 to i16*
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !1261
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !1261
  %13 = add i64 %9, -88
  store i64 %13, i64* %RSP, align 8, !tbaa !1261
  %14 = icmp ult i64 %10, 80
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !1265
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !1279
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !1280
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !1281
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !1282
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !1283
  %42 = add i64 %9, -24
  %43 = load i64, i64* %RDI, align 8
  %44 = add i64 %12, 11
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RDI, align 8, !tbaa !1261
  %52 = add i64 %48, -684
  %53 = add i64 %48, 9
  %54 = load i64, i64* %RSP, align 8, !tbaa !1261
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %53, i64* %56, align 8
  store i64 %55, i64* %RSP, align 8, !tbaa !1261
  store i64 %52, i64* %PC, align 8, !tbaa !1261
  %57 = tail call fastcc %struct.Memory* @ext_602070_strlen(%struct.State* nonnull %0, %struct.Memory* %2)
  %58 = load i32, i32* %EAX, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %PC, align 8
  store i64 %59, i64* %RCX, align 8, !tbaa !1261
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -32
  %63 = add i64 %60, 5
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 %58, i32* %64, align 4
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -37
  %72 = icmp ult i32 %70, 37
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %16, align 1, !tbaa !1265
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %23, align 1, !tbaa !1279
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %29, align 1, !tbaa !1280
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %32, align 1, !tbaa !1281
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %35, align 1, !tbaa !1282
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %41, align 1, !tbaa !1283
  %.v = select i1 %83, i64 21, i64 10
  %92 = add i64 %67, %.v
  store i64 %92, i64* %PC, align 8, !tbaa !1261
  br i1 %83, label %block_40079f, label %block_400794

block_400afe:                                     ; preds = %block_400ab3, %block_400adf
  %93 = phi i64 [ %1461, %block_400ab3 ], [ %782, %block_400adf ]
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC, align 8
  %95 = load i64, i64* %1431, align 8
  store i64 %95, i64* %RAX, align 8, !tbaa !1261
  %96 = add i64 %95, 28
  %97 = add i64 %93, 8
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i8*
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i64
  %101 = and i64 %100, 4294967295
  store i64 %101, i64* %RCX, align 8, !tbaa !1261
  %102 = add i64 %93, 12
  store i64 %102, i64* %PC, align 8
  %103 = load i64, i64* %1431, align 8
  store i64 %103, i64* %RAX, align 8, !tbaa !1261
  %104 = add i64 %103, 29
  %105 = add i64 %93, 16
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i8*
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i64
  %109 = and i64 %108, 4294967295
  store i64 %109, i64* %RDX, align 8, !tbaa !1261
  %110 = sext i8 %99 to i32
  %111 = sext i8 %107 to i32
  %112 = sub nsw i32 %110, %111
  %113 = icmp ult i8 %99, %107
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %16, align 1, !tbaa !1265
  %115 = and i32 %112, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115) #4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %23, align 1, !tbaa !1279
  %120 = xor i8 %107, %99
  %121 = zext i8 %120 to i32
  %122 = xor i32 %121, %112
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %29, align 1, !tbaa !1280
  %126 = icmp eq i32 %112, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %32, align 1, !tbaa !1281
  %128 = lshr i32 %112, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %35, align 1, !tbaa !1282
  %130 = lshr i32 %110, 31
  %131 = lshr i32 %111, 31
  %132 = xor i32 %131, %130
  %133 = xor i32 %128, %130
  %134 = add nuw nsw i32 %133, %132
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %41, align 1, !tbaa !1283
  %.v60 = select i1 %126, i64 24, i64 120
  %137 = add i64 %93, %.v60
  store i64 %137, i64* %PC, align 8, !tbaa !1261
  br i1 %126, label %block_400b16, label %block_400b76

block_400b71:                                     ; preds = %block_400b16, %block_400b54, %block_400b6a
  %138 = phi i64 [ %1163, %block_400b16 ], [ %280, %block_400b54 ], [ %.pre41, %block_400b6a ]
  %MEMORY.1 = phi %struct.Memory* [ %1114, %block_400b16 ], [ %256, %block_400b54 ], [ %256, %block_400b6a ]
  %139 = add i64 %138, 11
  store i64 %139, i64* %PC, align 8, !tbaa !1261
  br label %block_400b81

block_400b6a:                                     ; preds = %block_400b54
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -20
  %142 = add i64 %280, 7
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i32*
  store i32 -32, i32* %143, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400b71

block_40097a:                                     ; preds = %block_400948
  %144 = add i64 %364, 4
  store i64 %144, i64* %PC, align 8
  %145 = load i16, i16* %344, align 2
  %146 = or i16 %145, -21846
  %147 = zext i16 %146 to i64
  %148 = zext i16 %146 to i32
  store i64 %147, i64* %RAX, align 8, !tbaa !1261
  %149 = add nsw i32 %148, -65211
  %150 = icmp ult i16 %146, -325
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %16, align 1, !tbaa !1265
  %152 = and i32 %149, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %23, align 1, !tbaa !1279
  %157 = xor i32 %148, 16
  %158 = xor i32 %157, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %29, align 1, !tbaa !1280
  %162 = icmp eq i32 %149, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %32, align 1, !tbaa !1281
  %164 = lshr i32 %149, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v65 = select i1 %162, i64 20, i64 32
  %166 = add i64 %364, %.v65
  store i64 %166, i64* %PC, align 8, !tbaa !1261
  br i1 %162, label %block_40098e, label %block_40099a

block_4009e4:                                     ; preds = %block_4009a1
  %167 = add i64 %885, -56
  %168 = add i64 %912, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RAX, align 8, !tbaa !1261
  %172 = add i64 %885, -20
  %173 = add i64 %912, 6
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sub i32 %170, %175
  %177 = icmp ult i32 %170, %175
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %16, align 1, !tbaa !1265
  %179 = and i32 %176, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179) #4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %23, align 1, !tbaa !1279
  %184 = xor i32 %175, %170
  %185 = xor i32 %184, %176
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %29, align 1, !tbaa !1280
  %189 = icmp eq i32 %176, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %32, align 1, !tbaa !1281
  %191 = lshr i32 %176, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %35, align 1, !tbaa !1282
  %193 = lshr i32 %170, 31
  %194 = lshr i32 %175, 31
  %195 = xor i32 %194, %193
  %196 = xor i32 %191, %193
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %41, align 1, !tbaa !1283
  %.v64 = select i1 %189, i64 12, i64 24
  %200 = add i64 %912, %.v64
  store i64 %200, i64* %PC, align 8, !tbaa !1261
  br i1 %189, label %block_4009f0, label %block_4009fc

block_4007bb:                                     ; preds = %block_40079f
  %201 = add i64 %940, -4
  %202 = add i64 %973, 7
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 -2, i32* %203, align 4
  %204 = load i64, i64* %PC, align 8
  %205 = add i64 %204, 965
  store i64 %205, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_4009f0:                                     ; preds = %block_4009e4
  %206 = add i64 %200, 7
  store i64 %206, i64* %PC, align 8
  store i32 0, i32* %174, align 4
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, 12
  store i64 %208, i64* %PC, align 8, !tbaa !1261
  br label %block_400a03

block_400a5a:                                     ; preds = %block_400a42
  %209 = add i64 %993, -4
  %210 = add i64 %1022, 7
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  store i32 -22, i32* %211, align 4
  %212 = load i64, i64* %PC, align 8
  %213 = add i64 %212, 294
  store i64 %213, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_4008d5:                                     ; preds = %block_400872, %block_4008ba
  %214 = phi i64 [ %1377, %block_400872 ], [ %1199, %block_4008ba ]
  %215 = add i64 %1353, -20
  %216 = add i64 %214, 3
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, 5
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !1261
  %221 = icmp ugt i32 %218, -6
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %16, align 1, !tbaa !1265
  %223 = and i32 %219, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %23, align 1, !tbaa !1279
  %228 = xor i32 %219, %218
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %29, align 1, !tbaa !1280
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %32, align 1, !tbaa !1281
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %35, align 1, !tbaa !1282
  %236 = lshr i32 %218, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %41, align 1, !tbaa !1283
  %241 = add i64 %214, 9
  store i64 %241, i64* %PC, align 8
  store i32 %219, i32* %217, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400927

block_400b54:                                     ; preds = %block_400b16
  %242 = add i64 %1148, -16
  %243 = add i64 %1163, 4
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX, align 8, !tbaa !1261
  %246 = add i64 %245, 31
  %247 = add i64 %1163, 8
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i8*
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i64
  store i64 %250, i64* %RDI, align 8, !tbaa !1261
  %251 = add i64 %1163, -1380
  %252 = add i64 %1163, 13
  %253 = load i64, i64* %RSP, align 8, !tbaa !1261
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %252, i64* %255, align 8
  store i64 %254, i64* %RSP, align 8, !tbaa !1261
  store i64 %251, i64* %PC, align 8, !tbaa !1261
  %256 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %251, %struct.Memory* %1114)
  %257 = load i32, i32* %EAX, align 4
  %258 = load i64, i64* %PC, align 8
  %259 = add i32 %257, -4
  %260 = icmp ult i32 %257, 4
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %16, align 1, !tbaa !1265
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %23, align 1, !tbaa !1279
  %267 = xor i32 %259, %257
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %29, align 1, !tbaa !1280
  %271 = icmp eq i32 %259, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %32, align 1, !tbaa !1281
  %273 = lshr i32 %259, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %35, align 1, !tbaa !1282
  %275 = lshr i32 %257, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %41, align 1, !tbaa !1283
  %.v62 = select i1 %271, i64 16, i64 9
  %280 = add i64 %258, %.v62
  store i64 %280, i64* %PC, align 8, !tbaa !1261
  br i1 %271, label %block_400b71, label %block_400b6a

block_400af0:                                     ; preds = %block_400adf
  %281 = add i64 %1427, -64
  %282 = add i64 %782, 3
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX, align 8, !tbaa !1261
  %286 = add i64 %1427, -20
  %287 = add i64 %782, 6
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = xor i32 %289, %284
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %292 = and i32 %290, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %23, align 1, !tbaa !1279
  %297 = icmp eq i32 %290, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %32, align 1, !tbaa !1281
  %299 = lshr i32 %290, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %301 = add i64 %782, 9
  store i64 %301, i64* %PC, align 8
  store i32 %290, i32* %288, align 4
  br label %block_400b81

block_400948:                                     ; preds = %block_400932
  store i64 0, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i64 4, i64* %RDX, align 8, !tbaa !1261
  %302 = add i64 %.pre34, -16
  %303 = add i64 %421, 11
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 8
  store i64 %306, i64* %RAX, align 8, !tbaa !1261
  %307 = icmp ugt i64 %305, -9
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %16, align 1, !tbaa !1265
  %309 = trunc i64 %306 to i32
  %310 = and i32 %309, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310) #4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %23, align 1, !tbaa !1279
  %315 = xor i64 %306, %305
  %316 = lshr i64 %315, 4
  %317 = trunc i64 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %29, align 1, !tbaa !1280
  %319 = icmp eq i64 %306, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %32, align 1, !tbaa !1281
  %321 = lshr i64 %306, 63
  %322 = trunc i64 %321 to i8
  store i8 %322, i8* %35, align 1, !tbaa !1282
  %323 = lshr i64 %305, 63
  %324 = xor i64 %321, %323
  %325 = add nuw nsw i64 %324, %321
  %326 = icmp eq i64 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %41, align 1, !tbaa !1283
  store i64 %306, i64* %RSI, align 8, !tbaa !1261
  %328 = add i64 %421, -744
  %329 = add i64 %421, 23
  %330 = load i64, i64* %RSP, align 8, !tbaa !1261
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %329, i64* %332, align 8
  store i64 %331, i64* %RSP, align 8, !tbaa !1261
  store i64 %328, i64* %PC, align 8, !tbaa !1261
  %333 = tail call %struct.Memory* @sub_400660_read_bytes_renamed_(%struct.State* nonnull %0, i64 %328, %struct.Memory* %551)
  %334 = load i16, i16* %AX, align 2
  %335 = load i64, i64* %PC, align 8
  store i16 %334, i16* %CX, align 2, !tbaa !1284
  %336 = load i64, i64* %RBP, align 8
  %337 = add i64 %336, -38
  %338 = add i64 %335, 7
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i16*
  store i16 %334, i16* %339, align 2
  %340 = load i64, i64* %RBP, align 8
  %341 = add i64 %340, -38
  %342 = load i64, i64* %PC, align 8
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %341 to i16*
  %345 = load i16, i16* %344, align 2
  %346 = or i16 %345, 21845
  %347 = zext i16 %346 to i64
  %348 = zext i16 %346 to i32
  store i64 %347, i64* %RAX, align 8, !tbaa !1261
  %349 = add nsw i32 %348, -56663
  %350 = icmp ult i16 %346, -8873
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %16, align 1, !tbaa !1265
  %352 = and i32 %349, 254
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %23, align 1, !tbaa !1279
  %357 = lshr i32 %349, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %29, align 1, !tbaa !1280
  %360 = icmp eq i32 %349, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %32, align 1, !tbaa !1281
  %362 = lshr i32 %349, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v54 = select i1 %360, i64 20, i64 52
  %364 = add i64 %342, %.v54
  store i64 %364, i64* %PC, align 8, !tbaa !1261
  br i1 %360, label %block_40097a, label %block_40099a

block_4007dd:                                     ; preds = %block_4007c7
  %365 = add i64 %1663, -4
  %366 = add i64 %1662, 7
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 -3, i32* %367, align 4
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, 931
  store i64 %369, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400847:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %370 = add i64 %1274, -16
  %371 = add i64 %1299, 4
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %RAX, align 8, !tbaa !1261
  %374 = add i64 %373, 4
  %375 = add i64 %1299, 8
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i8*
  %377 = load i8, i8* %376, align 1
  %378 = and i8 %377, 15
  %379 = zext i8 %378 to i64
  %380 = zext i8 %378 to i32
  store i64 %379, i64* %RCX, align 8, !tbaa !1261
  %381 = icmp eq i8 %378, 0
  %382 = zext i1 %381 to i8
  %383 = add nsw i32 %380, -1
  store i8 %382, i8* %16, align 1, !tbaa !1265
  %384 = and i32 %383, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384) #4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %23, align 1, !tbaa !1279
  %389 = lshr i32 %383, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %29, align 1, !tbaa !1280
  %392 = icmp eq i32 %383, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %32, align 1, !tbaa !1281
  %394 = lshr i32 %383, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v50 = select i1 %392, i64 20, i64 55
  %396 = add i64 %1299, %.v50
  store i64 %396, i64* %PC, align 8, !tbaa !1261
  br i1 %392, label %block_40085b, label %block_40087e

block_40083b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %397 = add i64 %1274, -4
  %398 = add i64 %1299, 7
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to i32*
  store i32 -5, i32* %399, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 837
  store i64 %401, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400a36:                                     ; preds = %block_400a03
  %402 = add i64 %1611, -4
  %403 = add i64 %1625, 7
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  store i32 -21, i32* %404, align 4
  %405 = load i64, i64* %PC, align 8
  %406 = add i64 %405, 330
  store i64 %406, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400932:                                     ; preds = %618, %block_400927
  %407 = phi i32 [ %621, %618 ], [ %600, %block_400927 ]
  %408 = add i64 %576, 41
  store i64 %408, i64* %PC, align 8
  store i32 %407, i32* %596, align 4
  %.pre34 = load i64, i64* %RBP, align 8
  %.pre35 = load i64, i64* %PC, align 8
  %phitmp = add i64 %.pre35, 4
  %409 = add i64 %.pre34, -20
  store i64 %phitmp, i64* %PC, align 8
  %410 = inttoptr i64 %409 to i32*
  %411 = load i32, i32* %410, align 4
  store i8 0, i8* %16, align 1, !tbaa !1265
  %412 = and i32 %411, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412) #4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %417 = icmp eq i32 %411, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %32, align 1, !tbaa !1281
  %419 = lshr i32 %411, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v53 = select i1 %417, i64 18, i64 6
  %421 = add i64 %phitmp, %.v53
  store i64 %421, i64* %PC, align 8, !tbaa !1261
  br i1 %417, label %block_400948, label %block_40093c

block_4008c7:                                     ; preds = %block_4008ba
  %422 = add i64 %1353, -20
  %423 = add i64 %1199, 3
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %425, 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !1261
  %428 = icmp ugt i32 %425, -5
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %16, align 1, !tbaa !1265
  %430 = and i32 %426, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %23, align 1, !tbaa !1279
  %435 = xor i32 %426, %425
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %29, align 1, !tbaa !1280
  %439 = icmp eq i32 %426, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %32, align 1, !tbaa !1281
  %441 = lshr i32 %426, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %35, align 1, !tbaa !1282
  %443 = lshr i32 %425, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %441
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %41, align 1, !tbaa !1283
  %448 = add i64 %1199, 9
  store i64 %448, i64* %PC, align 8
  store i32 %426, i32* %424, align 4
  %449 = load i64, i64* %PC, align 8
  %450 = add i64 %449, 14
  store i64 %450, i64* %PC, align 8, !tbaa !1261
  br label %block_400927

block_400aa8:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %451 = add i64 %749, 3
  store i64 %451, i64* %PC, align 8
  %452 = load i32, i32* %726, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX, align 8, !tbaa !1261
  %454 = add i64 %722, -4
  %455 = add i64 %749, 6
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 %452, i32* %456, align 4
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %457, 217
  store i64 %458, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_4007e9:                                     ; preds = %block_4007c7
  %459 = add i64 %1663, -16
  %460 = add i64 %1662, 4
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RAX, align 8, !tbaa !1261
  %463 = add i64 %462, 2
  %464 = add i64 %1662, 8
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i8*
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i64
  store i64 %467, i64* %RDI, align 8, !tbaa !1261
  %468 = add i64 %1662, -505
  %469 = add i64 %1662, 13
  %470 = load i64, i64* %RSP, align 8, !tbaa !1261
  %471 = add i64 %470, -8
  %472 = inttoptr i64 %471 to i64*
  store i64 %469, i64* %472, align 8
  store i64 %471, i64* %RSP, align 8, !tbaa !1261
  store i64 %468, i64* %PC, align 8, !tbaa !1261
  %473 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %468, %struct.Memory* %1638)
  %474 = load i64, i64* %RBP, align 8
  %475 = add i64 %474, -24
  %476 = load i32, i32* %EAX, align 4
  %477 = load i64, i64* %PC, align 8
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %475 to i32*
  store i32 %476, i32* %479, align 4
  %480 = load i64, i64* %RBP, align 8
  %481 = add i64 %480, -24
  %482 = load i64, i64* %PC, align 8
  %483 = add i64 %482, 3
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %481 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = shl i32 %485, 1
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RAX, align 8, !tbaa !1261
  %488 = add i32 %486, -26
  %489 = icmp ult i32 %486, 26
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %16, align 1, !tbaa !1265
  %491 = and i32 %488, 254
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %23, align 1, !tbaa !1279
  %496 = xor i32 %486, 16
  %497 = xor i32 %496, %488
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %29, align 1, !tbaa !1280
  %501 = icmp eq i32 %488, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %32, align 1, !tbaa !1281
  %503 = lshr i32 %488, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %35, align 1, !tbaa !1282
  %505 = lshr i32 %485, 30
  %506 = and i32 %505, 1
  %507 = xor i32 %503, %506
  %508 = add nuw nsw i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %41, align 1, !tbaa !1283
  %.v48 = select i1 %501, i64 27, i64 15
  %511 = add i64 %482, %.v48
  store i64 %511, i64* %PC, align 8, !tbaa !1261
  br i1 %501, label %block_400814, label %block_400808

block_400927:                                     ; preds = %block_4008c7, %block_4008d5
  %512 = phi i64 [ %450, %block_4008c7 ], [ %.pre33, %block_4008d5 ]
  %513 = load i64, i64* %RBP, align 8
  %514 = add i64 %513, -16
  %515 = add i64 %512, 4
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RAX, align 8, !tbaa !1261
  %518 = add i64 %517, 6
  %519 = add i64 %512, 8
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to i8*
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i64
  store i64 %522, i64* %RDI, align 8, !tbaa !1261
  %523 = add i64 %512, -750
  %524 = add i64 %512, 13
  %525 = load i64, i64* %RSP, align 8, !tbaa !1261
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %RSP, align 8, !tbaa !1261
  store i64 %523, i64* %PC, align 8, !tbaa !1261
  %528 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %523, %struct.Memory* %1277)
  %529 = load i8, i8* %AL, align 1
  %530 = load i64, i64* %PC, align 8
  store i8 %529, i8* %CL, align 1, !tbaa !1285
  %531 = load i64, i64* %RBP, align 8
  %532 = add i64 %531, -35
  %533 = add i64 %530, 5
  store i64 %533, i64* %PC, align 8
  %534 = inttoptr i64 %532 to i8*
  store i8 %529, i8* %534, align 1
  %535 = load i64, i64* %RBP, align 8
  %536 = add i64 %535, -16
  %537 = load i64, i64* %PC, align 8
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RDX, align 8, !tbaa !1261
  %541 = add i64 %540, 7
  %542 = add i64 %537, 8
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i8*
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i64
  store i64 %545, i64* %RDI, align 8, !tbaa !1261
  %546 = add i64 %537, -768
  %547 = add i64 %537, 13
  %548 = load i64, i64* %RSP, align 8, !tbaa !1261
  %549 = add i64 %548, -8
  %550 = inttoptr i64 %549 to i64*
  store i64 %547, i64* %550, align 8
  store i64 %549, i64* %RSP, align 8, !tbaa !1261
  store i64 %546, i64* %PC, align 8, !tbaa !1261
  %551 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %546, %struct.Memory* %528)
  %552 = load i64, i64* %RBP, align 8
  %553 = add i64 %552, -35
  %554 = load i64, i64* %PC, align 8
  %555 = add i64 %554, 4
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %553 to i8*
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i64
  %559 = load i32, i32* %EAX, align 4
  %560 = zext i32 %559 to i64
  %561 = or i64 %560, %558
  %562 = trunc i64 %561 to i32
  store i64 %561, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %563 = and i32 %562, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #4
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %23, align 1, !tbaa !1279
  %568 = icmp eq i32 %562, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %32, align 1, !tbaa !1281
  %570 = lshr i32 %562, 31
  %571 = trunc i32 %570 to i8
  store i8 %571, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %572 = trunc i64 %561 to i8
  store i8 %572, i8* %CL, align 1, !tbaa !1285
  %573 = add i64 %554, 12
  store i64 %573, i64* %PC, align 8
  store i8 %572, i8* %556, align 1
  %574 = load i64, i64* %RBP, align 8
  %575 = add i64 %574, -35
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %575 to i8*
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i64
  %581 = xor i64 %580, -1
  %582 = and i64 %581, 4294967295
  store i64 %582, i64* %RAX, align 8, !tbaa !1261
  %583 = trunc i64 %581 to i32
  %584 = add nsw i32 %583, -70
  store i8 0, i8* %16, align 1, !tbaa !1265
  %585 = and i32 %584, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585) #4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %23, align 1, !tbaa !1279
  %590 = xor i32 %584, %583
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 1, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %594 = add i64 %574, -20
  %595 = add i64 %576, 33
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RCX, align 8, !tbaa !1261
  %599 = add i64 %576, 36
  store i64 %599, i64* %PC, align 8
  %600 = load i32, i32* %596, align 4
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RAX, align 8, !tbaa !1261
  %602 = add i64 %576, 38
  store i64 %602, i64* %PC, align 8
  %603 = trunc i32 %597 to i5
  switch i5 %603, label %609 [
    i5 0, label %block_400932
    i5 1, label %604
  ]

; <label>:604:                                    ; preds = %block_400927
  %605 = shl i32 %600, 1
  %606 = icmp slt i32 %600, 0
  %607 = icmp slt i32 %605, 0
  %608 = xor i1 %606, %607
  br label %618

; <label>:609:                                    ; preds = %block_400927
  %610 = and i32 %597, 31
  %611 = zext i32 %610 to i64
  %612 = add nuw nsw i64 %611, 4294967295
  %613 = and i64 %612, 4294967295
  %614 = shl i64 %601, %613
  %615 = trunc i64 %614 to i32
  %616 = icmp slt i32 %615, 0
  %617 = shl i32 %615, 1
  br label %618

; <label>:618:                                    ; preds = %609, %604
  %619 = phi i1 [ %606, %604 ], [ %616, %609 ]
  %620 = phi i1 [ %608, %604 ], [ false, %609 ]
  %621 = phi i32 [ %605, %604 ], [ %617, %609 ]
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX, align 8, !tbaa !1261
  %623 = zext i1 %619 to i8
  store i8 %623, i8* %16, align 1, !tbaa !1285
  %624 = and i32 %621, 254
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624) #4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %23, align 1, !tbaa !1285
  store i8 0, i8* %29, align 1, !tbaa !1285
  %629 = icmp eq i32 %621, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %32, align 1, !tbaa !1285
  %631 = lshr i32 %621, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %35, align 1, !tbaa !1285
  %633 = zext i1 %620 to i8
  store i8 %633, i8* %41, align 1, !tbaa !1285
  br label %block_400932

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %block_400a42
  store i64 10000, i64* %RAX, align 8, !tbaa !1261
  %634 = add i64 %1022, 8
  store i64 %634, i64* %PC, align 8
  %635 = load i32, i32* %997, align 4
  %636 = xor i32 %635, 13631488
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %638 = and i32 %635, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638) #4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %23, align 1, !tbaa !1279
  %643 = icmp eq i32 %636, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %32, align 1, !tbaa !1281
  %645 = lshr i32 %635, 31
  %646 = trunc i32 %645 to i8
  store i8 %646, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %647 = add i64 %1022, 17
  store i64 %647, i64* %PC, align 8
  store i32 %636, i32* %997, align 4
  %648 = load i64, i64* %RBP, align 8
  %649 = add i64 %648, -60
  %650 = load i64, i64* %PC, align 8
  %651 = add i64 %650, 3
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = lshr i32 %653, 3
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = lshr i32 %653, 4
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RCX, align 8, !tbaa !1261
  store i8 %656, i8* %16, align 1, !tbaa !1285
  %659 = and i32 %657, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659) #4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %23, align 1, !tbaa !1285
  store i8 0, i8* %29, align 1, !tbaa !1285
  %664 = icmp eq i32 %657, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %32, align 1, !tbaa !1285
  store i8 0, i8* %35, align 1, !tbaa !1285
  store i8 0, i8* %41, align 1, !tbaa !1285
  %666 = add i64 %650, 9
  store i64 %666, i64* %PC, align 8
  store i32 %657, i32* %652, align 4
  %667 = load i64, i64* %RBP, align 8
  %668 = add i64 %667, -60
  %669 = load i64, i64* %PC, align 8
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC, align 8
  %671 = inttoptr i64 %668 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = add i32 %672, -226
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RCX, align 8, !tbaa !1261
  %675 = icmp ult i32 %672, 226
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %16, align 1, !tbaa !1265
  %677 = and i32 %673, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677) #4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %23, align 1, !tbaa !1279
  %682 = xor i32 %673, %672
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %29, align 1, !tbaa !1280
  %686 = icmp eq i32 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %32, align 1, !tbaa !1281
  %688 = lshr i32 %673, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %35, align 1, !tbaa !1282
  %690 = lshr i32 %672, 31
  %691 = xor i32 %688, %690
  %692 = add nuw nsw i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %41, align 1, !tbaa !1283
  %695 = add i64 %669, 12
  store i64 %695, i64* %PC, align 8
  store i32 %673, i32* %671, align 4
  %696 = load i64, i64* %RBP, align 8
  %697 = add i64 %696, -60
  %698 = load i64, i64* %PC, align 8
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC, align 8
  %700 = inttoptr i64 %697 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RCX, align 8, !tbaa !1261
  %703 = add i64 %696, -68
  %704 = load i32, i32* %EAX, align 4
  %705 = add i64 %698, 6
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %703 to i32*
  store i32 %704, i32* %706, align 4
  %707 = load i32, i32* %ECX, align 4
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC, align 8
  store i64 %708, i64* %RAX, align 8, !tbaa !1261
  store i64 0, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %710 = load i64, i64* %RBP, align 8
  %711 = add i64 %710, -68
  %712 = add i64 %709, 7
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RCX, align 8, !tbaa !1261
  %div = udiv i32 %707, %714
  %716 = zext i32 %div to i64
  %717 = urem i32 %707, %714
  %718 = zext i32 %717 to i64
  store i64 %716, i64* %RAX, align 8, !tbaa !1261
  store i64 %718, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 0, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %719 = add i64 %710, -60
  %720 = add i64 %709, 12
  store i64 %720, i64* %PC, align 8
  %721 = inttoptr i64 %719 to i32*
  store i32 %div, i32* %721, align 4
  %722 = load i64, i64* %RBP, align 8
  %723 = add i64 %722, -60
  %724 = load i64, i64* %PC, align 8
  %725 = add i64 %724, 4
  store i64 %725, i64* %PC, align 8
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = add i32 %727, -3
  %729 = icmp ult i32 %727, 3
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %16, align 1, !tbaa !1265
  %731 = and i32 %728, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #4
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %23, align 1, !tbaa !1279
  %736 = xor i32 %728, %727
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %29, align 1, !tbaa !1280
  %740 = icmp eq i32 %728, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %32, align 1, !tbaa !1281
  %742 = lshr i32 %728, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %35, align 1, !tbaa !1282
  %744 = lshr i32 %727, 31
  %745 = xor i32 %742, %744
  %746 = add nuw nsw i32 %745, %744
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %41, align 1, !tbaa !1283
  %.v58 = select i1 %740, i64 21, i64 10
  %749 = add i64 %724, %.v58
  store i64 %749, i64* %PC, align 8, !tbaa !1261
  br i1 %740, label %block_400ab3, label %block_400aa8

block_4009fc:                                     ; preds = %block_4009a1.block_4009fc_crit_edge, %block_4009e4
  %.pre-phi45 = phi i32* [ %.pre44, %block_4009a1.block_4009fc_crit_edge ], [ %174, %block_4009e4 ]
  %750 = phi i64 [ %912, %block_4009a1.block_4009fc_crit_edge ], [ %200, %block_4009e4 ]
  %751 = add i64 %750, 7
  store i64 %751, i64* %PC, align 8
  store i32 48351, i32* %.pre-phi45, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_400a03

block_400adf:                                     ; preds = %block_400ab3
  %752 = add i64 %1461, 4
  store i64 %752, i64* %PC, align 8
  %753 = load i64, i64* %1431, align 8
  store i64 %753, i64* %RAX, align 8, !tbaa !1261
  %754 = add i64 %753, 29
  %755 = add i64 %1461, 8
  store i64 %755, i64* %PC, align 8
  %756 = inttoptr i64 %754 to i8*
  %757 = load i8, i8* %756, align 1
  %758 = sext i8 %757 to i64
  %759 = and i64 %758, 4294967295
  store i64 %759, i64* %RCX, align 8, !tbaa !1261
  %760 = sext i8 %757 to i32
  %761 = add nsw i32 %760, -100
  %762 = icmp ult i8 %757, 100
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %16, align 1, !tbaa !1265
  %764 = and i32 %761, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764) #4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %23, align 1, !tbaa !1279
  %769 = xor i32 %761, %760
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %29, align 1, !tbaa !1280
  %773 = icmp eq i32 %761, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %32, align 1, !tbaa !1281
  %775 = lshr i32 %761, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %35, align 1, !tbaa !1282
  %777 = lshr i32 %760, 31
  %778 = xor i32 %775, %777
  %779 = add nuw nsw i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %41, align 1, !tbaa !1283
  %.v63 = select i1 %773, i64 17, i64 31
  %782 = add i64 %1461, %.v63
  store i64 %782, i64* %PC, align 8, !tbaa !1261
  br i1 %773, label %block_400af0, label %block_400afe

block_4009a1:                                     ; preds = %block_40098e, %block_40099a
  %783 = phi i64 [ %1204, %block_40098e ], [ %.pre36, %block_40099a ]
  store i64 0, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i64 8, i64* %RDX, align 8, !tbaa !1261
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -16
  %786 = add i64 %783, 11
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  %789 = add i64 %788, 12
  store i64 %789, i64* %RAX, align 8, !tbaa !1261
  %790 = icmp ugt i64 %788, -13
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %16, align 1, !tbaa !1265
  %792 = trunc i64 %789 to i32
  %793 = and i32 %792, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793) #4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %23, align 1, !tbaa !1279
  %798 = xor i64 %789, %788
  %799 = lshr i64 %798, 4
  %800 = trunc i64 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %29, align 1, !tbaa !1280
  %802 = icmp eq i64 %789, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %32, align 1, !tbaa !1281
  %804 = lshr i64 %789, 63
  %805 = trunc i64 %804 to i8
  store i8 %805, i8* %35, align 1, !tbaa !1282
  %806 = lshr i64 %788, 63
  %807 = xor i64 %804, %806
  %808 = add nuw nsw i64 %807, %804
  %809 = icmp eq i64 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %41, align 1, !tbaa !1283
  store i64 %789, i64* %RSI, align 8, !tbaa !1261
  %811 = add i64 %783, -833
  %812 = add i64 %783, 23
  %813 = load i64, i64* %RSP, align 8, !tbaa !1261
  %814 = add i64 %813, -8
  %815 = inttoptr i64 %814 to i64*
  store i64 %812, i64* %815, align 8
  store i64 %814, i64* %RSP, align 8, !tbaa !1261
  store i64 %811, i64* %PC, align 8, !tbaa !1261
  %816 = tail call %struct.Memory* @sub_400660_read_bytes_renamed_(%struct.State* nonnull %0, i64 %811, %struct.Memory* %333)
  %817 = load i64, i64* %RBP, align 8
  %818 = add i64 %817, -44
  %819 = load i32, i32* %EAX, align 4
  %820 = load i64, i64* %PC, align 8
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC, align 8
  %822 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %822, align 4
  %823 = load i64, i64* %RBP, align 8
  %824 = add i64 %823, -44
  %825 = load i64, i64* %PC, align 8
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC, align 8
  %827 = inttoptr i64 %824 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  %830 = xor i64 %829, -1534560611
  %831 = trunc i64 %830 to i32
  %832 = and i64 %830, 4294967295
  store i64 %832, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %833 = and i32 %831, 255
  %834 = tail call i32 @llvm.ctpop.i32(i32 %833) #4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  store i8 %837, i8* %23, align 1, !tbaa !1279
  %838 = icmp eq i32 %831, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %32, align 1, !tbaa !1281
  %840 = lshr i32 %831, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %842 = add i64 %823, -48
  %843 = trunc i64 %830 to i32
  %844 = add i64 %825, 11
  store i64 %844, i64* %PC, align 8
  %845 = inttoptr i64 %842 to i32*
  store i32 %843, i32* %845, align 4
  %846 = load i64, i64* %RBP, align 8
  %847 = add i64 %846, -48
  %848 = load i64, i64* %PC, align 8
  %849 = add i64 %848, 3
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %847 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = lshr i32 %851, 15
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = lshr i32 %851, 16
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX, align 8, !tbaa !1261
  store i8 %854, i8* %16, align 1, !tbaa !1285
  %857 = and i32 %855, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857) #4
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %23, align 1, !tbaa !1285
  store i8 0, i8* %29, align 1, !tbaa !1285
  %862 = icmp eq i32 %855, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %32, align 1, !tbaa !1285
  store i8 0, i8* %35, align 1, !tbaa !1285
  store i8 0, i8* %41, align 1, !tbaa !1285
  %864 = add i64 %846, -52
  %865 = add i64 %848, 9
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %864 to i32*
  store i32 %855, i32* %866, align 4
  %867 = load i64, i64* %RBP, align 8
  %868 = add i64 %867, -48
  %869 = load i64, i64* %PC, align 8
  %870 = add i64 %869, 3
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %868 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = and i32 %872, 65535
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %875 = and i32 %872, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875) #4
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %23, align 1, !tbaa !1279
  %880 = icmp eq i32 %873, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %882 = add i64 %867, -56
  %883 = add i64 %869, 11
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 %873, i32* %884, align 4
  %885 = load i64, i64* %RBP, align 8
  %886 = add i64 %885, -52
  %887 = load i64, i64* %PC, align 8
  %888 = add i64 %887, 4
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, -79
  %892 = icmp ult i32 %890, 79
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %16, align 1, !tbaa !1265
  %894 = and i32 %891, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894) #4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %23, align 1, !tbaa !1279
  %899 = xor i32 %891, %890
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %29, align 1, !tbaa !1280
  %903 = icmp eq i32 %891, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %32, align 1, !tbaa !1281
  %905 = lshr i32 %891, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %35, align 1, !tbaa !1282
  %907 = lshr i32 %890, 31
  %908 = xor i32 %905, %907
  %909 = add nuw nsw i32 %908, %907
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %41, align 1, !tbaa !1283
  %.v55 = select i1 %903, i64 10, i64 34
  %912 = add i64 %887, %.v55
  store i64 %912, i64* %PC, align 8, !tbaa !1261
  br i1 %903, label %block_4009e4, label %block_4009a1.block_4009fc_crit_edge

block_4009a1.block_4009fc_crit_edge:              ; preds = %block_4009a1
  %.pre43 = add i64 %885, -20
  %.pre44 = inttoptr i64 %.pre43 to i32*
  br label %block_4009fc

block_40079f:                                     ; preds = %block_400770
  %913 = add i64 %65, -16
  %914 = add i64 %92, 4
  store i64 %914, i64* %PC, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  %917 = add i64 %916, 4
  store i64 %917, i64* %RAX, align 8, !tbaa !1261
  %918 = icmp ugt i64 %916, -5
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %16, align 1, !tbaa !1265
  %920 = trunc i64 %917 to i32
  %921 = and i32 %920, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921) #4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %23, align 1, !tbaa !1279
  %926 = xor i64 %917, %916
  %927 = lshr i64 %926, 4
  %928 = trunc i64 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %29, align 1, !tbaa !1280
  %930 = icmp eq i64 %917, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %32, align 1, !tbaa !1281
  %932 = lshr i64 %917, 63
  %933 = trunc i64 %932 to i8
  store i8 %933, i8* %35, align 1, !tbaa !1282
  %934 = lshr i64 %916, 63
  %935 = xor i64 %932, %934
  %936 = add nuw nsw i64 %935, %932
  %937 = icmp eq i64 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %41, align 1, !tbaa !1283
  %939 = add i64 %92, 12
  store i64 %939, i64* %PC, align 8
  store i64 %917, i64* %915, align 8
  %940 = load i64, i64* %RBP, align 8
  %941 = add i64 %940, -16
  %942 = load i64, i64* %PC, align 8
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC, align 8
  %944 = inttoptr i64 %941 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX, align 8, !tbaa !1261
  %946 = add i64 %942, 7
  store i64 %946, i64* %PC, align 8
  %947 = inttoptr i64 %945 to i8*
  %948 = load i8, i8* %947, align 1
  %949 = sext i8 %948 to i64
  %950 = and i64 %949, 4294967295
  store i64 %950, i64* %RCX, align 8, !tbaa !1261
  %951 = sext i8 %948 to i32
  %952 = add nsw i32 %951, -100
  %953 = icmp ult i8 %948, 100
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %16, align 1, !tbaa !1265
  %955 = and i32 %952, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955) #4
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %23, align 1, !tbaa !1279
  %960 = xor i32 %952, %951
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %29, align 1, !tbaa !1280
  %964 = icmp eq i32 %952, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %32, align 1, !tbaa !1281
  %966 = lshr i32 %952, 31
  %967 = trunc i32 %966 to i8
  store i8 %967, i8* %35, align 1, !tbaa !1282
  %968 = lshr i32 %951, 31
  %969 = xor i32 %966, %968
  %970 = add nuw nsw i32 %969, %968
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %41, align 1, !tbaa !1283
  %.v46 = select i1 %964, i64 28, i64 16
  %973 = add i64 %942, %.v46
  store i64 %973, i64* %PC, align 8, !tbaa !1261
  br i1 %964, label %block_4007c7, label %block_4007bb

block_40099a:                                     ; preds = %block_400948, %block_40097a
  %974 = phi i64 [ %364, %block_400948 ], [ %166, %block_40097a ]
  %975 = add i64 %340, -20
  %976 = add i64 %974, 7
  store i64 %976, i64* %PC, align 8
  %977 = inttoptr i64 %975 to i32*
  store i32 48059, i32* %977, align 4
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_4009a1

block_400a42:                                     ; preds = %block_400a03
  %978 = add i64 %1625, 3
  store i64 %978, i64* %PC, align 8
  %979 = load i32, i32* %1615, align 4
  %980 = xor i32 %979, -2147483648
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX, align 8, !tbaa !1261
  %.lobit28 = lshr i32 %979, 31
  %982 = trunc i32 %.lobit28 to i8
  %.not = xor i8 %982, 1
  store i8 %.not, i8* %16, align 1, !tbaa !1265
  %983 = and i32 %979, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983) #4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %988 = icmp eq i32 %980, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %32, align 1, !tbaa !1281
  %990 = lshr i32 %980, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %35, align 1, !tbaa !1282
  store i8 %.not, i8* %41, align 1, !tbaa !1283
  %992 = add i64 %1625, 11
  store i64 %992, i64* %PC, align 8
  store i32 %980, i32* %1615, align 4
  %993 = load i64, i64* %RBP, align 8
  %994 = add i64 %993, -60
  %995 = load i64, i64* %PC, align 8
  %996 = add i64 %995, 7
  store i64 %996, i64* %PC, align 8
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = add i32 %998, -268435455
  %1000 = icmp ult i32 %998, 268435455
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %16, align 1, !tbaa !1265
  %1002 = and i32 %999, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002) #4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %23, align 1, !tbaa !1279
  %1007 = xor i32 %998, 16
  %1008 = xor i32 %1007, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %29, align 1, !tbaa !1280
  %1012 = icmp eq i32 %999, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %32, align 1, !tbaa !1281
  %1014 = lshr i32 %999, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %35, align 1, !tbaa !1282
  %1016 = lshr i32 %998, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %41, align 1, !tbaa !1283
  %1021 = or i1 %1012, %1000
  %.v57 = select i1 %1021, i64 25, i64 13
  %1022 = add i64 %995, %.v57
  store i64 %1022, i64* %PC, align 8, !tbaa !1261
  br i1 %1021, label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, label %block_400a5a

block_400b16:                                     ; preds = %block_400afe
  store i64 15, i64* %RAX, align 8, !tbaa !1261
  %1023 = add i64 %137, 9
  store i64 %1023, i64* %PC, align 8
  %1024 = load i64, i64* %1431, align 8
  store i64 %1024, i64* %RCX, align 8, !tbaa !1261
  %1025 = add i64 %1024, 31
  %1026 = add i64 %137, 13
  store i64 %1026, i64* %PC, align 8
  %1027 = inttoptr i64 %1025 to i8*
  %1028 = load i8, i8* %1027, align 1
  %1029 = sext i8 %1028 to i64
  %1030 = and i64 %1029, 4294967295
  store i64 %1030, i64* %RDX, align 8, !tbaa !1261
  %1031 = add i64 %137, 17
  store i64 %1031, i64* %PC, align 8
  %1032 = load i64, i64* %1431, align 8
  store i64 %1032, i64* %RCX, align 8, !tbaa !1261
  %1033 = add i64 %1032, 30
  %1034 = add i64 %137, 21
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i8*
  %1036 = load i8, i8* %1035, align 1
  %1037 = sext i8 %1036 to i64
  %1038 = and i64 %1037, 4294967295
  store i64 %1038, i64* %RSI, align 8, !tbaa !1261
  %1039 = sext i8 %1036 to i32
  %1040 = sext i8 %1028 to i32
  %1041 = sub nsw i32 %1040, %1039
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RDX, align 8, !tbaa !1261
  %1043 = lshr i32 %1041, 31
  %1044 = sub nsw i32 15, %1041
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX, align 8, !tbaa !1261
  %1046 = icmp ugt i32 %1041, 15
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %16, align 1, !tbaa !1265
  %1048 = and i32 %1044, 255
  %1049 = tail call i32 @llvm.ctpop.i32(i32 %1048) #4
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %23, align 1, !tbaa !1279
  %1053 = xor i32 %1041, %1044
  %1054 = lshr i32 %1053, 4
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %29, align 1, !tbaa !1280
  %1057 = icmp eq i32 %1044, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %32, align 1, !tbaa !1281
  %1059 = lshr i32 %1044, 31
  %1060 = trunc i32 %1059 to i8
  store i8 %1060, i8* %35, align 1, !tbaa !1282
  %1061 = add nuw nsw i32 %1059, %1043
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %41, align 1, !tbaa !1283
  %1064 = add i64 %1427, -20
  %1065 = add i64 %137, 28
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, %1044
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX, align 8, !tbaa !1261
  %1070 = icmp ult i32 %1068, %1044
  %1071 = icmp ult i32 %1068, %1067
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %16, align 1, !tbaa !1265
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074) #4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %23, align 1, !tbaa !1279
  %1079 = xor i32 %1067, %1044
  %1080 = xor i32 %1079, %1068
  %1081 = lshr i32 %1080, 4
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  store i8 %1083, i8* %29, align 1, !tbaa !1280
  %1084 = icmp eq i32 %1068, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %32, align 1, !tbaa !1281
  %1086 = lshr i32 %1068, 31
  %1087 = trunc i32 %1086 to i8
  store i8 %1087, i8* %35, align 1, !tbaa !1282
  %1088 = lshr i32 %1067, 31
  %1089 = xor i32 %1086, %1059
  %1090 = xor i32 %1086, %1088
  %1091 = add nuw nsw i32 %1089, %1090
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %41, align 1, !tbaa !1283
  %1094 = load i64, i64* %RBP, align 8
  %1095 = add i64 %1094, -20
  %1096 = add i64 %137, 31
  store i64 %1096, i64* %PC, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 %1068, i32* %1097, align 4
  %1098 = load i64, i64* %RBP, align 8
  %1099 = add i64 %1098, -16
  %1100 = load i64, i64* %PC, align 8
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC, align 8
  %1102 = inttoptr i64 %1099 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %RCX, align 8, !tbaa !1261
  %1104 = add i64 %1103, 28
  %1105 = add i64 %1100, 8
  store i64 %1105, i64* %PC, align 8
  %1106 = inttoptr i64 %1104 to i8*
  %1107 = load i8, i8* %1106, align 1
  %1108 = zext i8 %1107 to i64
  store i64 %1108, i64* %RDI, align 8, !tbaa !1261
  %1109 = add i64 %1100, -1349
  %1110 = add i64 %1100, 13
  %1111 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1112 = add i64 %1111, -8
  %1113 = inttoptr i64 %1112 to i64*
  store i64 %1110, i64* %1113, align 8
  store i64 %1112, i64* %RSP, align 8, !tbaa !1261
  store i64 %1109, i64* %PC, align 8, !tbaa !1261
  %1114 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1109, %struct.Memory* %1420)
  %1115 = load i64, i64* %RBP, align 8
  %1116 = add i64 %1115, -20
  %1117 = load i64, i64* %PC, align 8
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC, align 8
  %1119 = inttoptr i64 %1116 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = load i32, i32* %EAX, align 4
  %1122 = sub i32 %1120, %1121
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RDX, align 8, !tbaa !1261
  %1124 = icmp ult i32 %1120, %1121
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %16, align 1, !tbaa !1265
  %1126 = and i32 %1122, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126) #4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %23, align 1, !tbaa !1279
  %1131 = xor i32 %1121, %1120
  %1132 = xor i32 %1131, %1122
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %29, align 1, !tbaa !1280
  %1136 = icmp eq i32 %1122, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %32, align 1, !tbaa !1281
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %35, align 1, !tbaa !1282
  %1140 = lshr i32 %1120, 31
  %1141 = lshr i32 %1121, 31
  %1142 = xor i32 %1141, %1140
  %1143 = xor i32 %1138, %1140
  %1144 = add nuw nsw i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %41, align 1, !tbaa !1283
  %1147 = add i64 %1117, 8
  store i64 %1147, i64* %PC, align 8
  store i32 %1122, i32* %1119, align 4
  %1148 = load i64, i64* %RBP, align 8
  %1149 = add i64 %1148, -20
  %1150 = load i64, i64* %PC, align 8
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154) #4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %1159 = icmp eq i32 %1153, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %32, align 1, !tbaa !1281
  %1161 = lshr i32 %1153, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v61 = select i1 %1159, i64 10, i64 39
  %1163 = add i64 %1150, %.v61
  store i64 %1163, i64* %PC, align 8, !tbaa !1261
  br i1 %1159, label %block_400b54, label %block_400b71

block_40093c:                                     ; preds = %block_400932
  %1164 = add i64 %.pre34, -4
  %1165 = add i64 %421, 7
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i32*
  store i32 -7, i32* %1166, align 4
  %1167 = load i64, i64* %PC, align 8
  %1168 = add i64 %1167, 580
  store i64 %1168, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400794:                                     ; preds = %block_400770
  %1169 = add i64 %92, 3
  store i64 %1169, i64* %PC, align 8
  %1170 = load i32, i32* %69, align 4
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RAX, align 8, !tbaa !1261
  %1172 = add i64 %65, -4
  %1173 = add i64 %92, 6
  store i64 %1173, i64* %PC, align 8
  %1174 = inttoptr i64 %1172 to i32*
  store i32 %1170, i32* %1174, align 4
  %1175 = load i64, i64* %PC, align 8
  %1176 = add i64 %1175, 1005
  store i64 %1176, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_4008ba:                                     ; preds = %block_400872
  %1177 = add i64 %1353, -34
  %1178 = add i64 %1377, 4
  store i64 %1178, i64* %PC, align 8
  %1179 = inttoptr i64 %1177 to i8*
  %1180 = load i8, i8* %1179, align 1
  %1181 = zext i8 %1180 to i64
  store i64 %1181, i64* %RAX, align 8, !tbaa !1261
  %1182 = zext i8 %1180 to i32
  %1183 = add nsw i32 %1182, -96
  %1184 = icmp ult i8 %1180, 96
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %16, align 1, !tbaa !1265
  %1186 = and i32 %1183, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186) #4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %23, align 1, !tbaa !1279
  %1191 = xor i32 %1183, %1182
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %29, align 1, !tbaa !1280
  %1195 = icmp eq i32 %1183, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %32, align 1, !tbaa !1281
  %1197 = lshr i32 %1183, 31
  %1198 = trunc i32 %1197 to i8
  store i8 %1198, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v66 = select i1 %1195, i64 13, i64 27
  %1199 = add i64 %1377, %.v66
  store i64 %1199, i64* %PC, align 8, !tbaa !1261
  br i1 %1195, label %block_4008c7, label %block_4008d5

block_40098e:                                     ; preds = %block_40097a
  %1200 = add i64 %340, -20
  %1201 = add i64 %166, 7
  store i64 %1201, i64* %PC, align 8
  %1202 = inttoptr i64 %1200 to i32*
  store i32 43690, i32* %1202, align 4
  %1203 = load i64, i64* %PC, align 8
  %1204 = add i64 %1203, 12
  store i64 %1204, i64* %PC, align 8, !tbaa !1261
  br label %block_4009a1

block_400814:                                     ; preds = %block_4007e9
  %1205 = add i64 %480, -16
  %1206 = add i64 %511, 4
  store i64 %1206, i64* %PC, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %RAX, align 8, !tbaa !1261
  %1209 = add i64 %1208, 3
  %1210 = add i64 %511, 8
  store i64 %1210, i64* %PC, align 8
  %1211 = inttoptr i64 %1209 to i8*
  %1212 = load i8, i8* %1211, align 1
  %1213 = zext i8 %1212 to i64
  store i64 %1213, i64* %RDI, align 8, !tbaa !1261
  %1214 = add i64 %511, -548
  %1215 = add i64 %511, 13
  %1216 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1215, i64* %1218, align 8
  store i64 %1217, i64* %RSP, align 8, !tbaa !1261
  store i64 %1214, i64* %PC, align 8, !tbaa !1261
  %1219 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1214, %struct.Memory* %473)
  %1220 = load i64, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8, !tbaa !1261
  %1221 = load i64, i64* %RBP, align 8
  %1222 = add i64 %1221, -28
  %1223 = load i32, i32* %EAX, align 4
  %1224 = add i64 %1220, 8
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1222 to i32*
  store i32 %1223, i32* %1225, align 4
  %1226 = load i64, i64* %RBP, align 8
  %1227 = add i64 %1226, -28
  %1228 = load i64, i64* %PC, align 8
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = add i32 %1231, 1
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX, align 8, !tbaa !1261
  %1234 = icmp eq i32 %1231, -1
  %1235 = icmp eq i32 %1232, 0
  %1236 = or i1 %1234, %1235
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %16, align 1, !tbaa !1265
  %1238 = and i32 %1232, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238) #4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %23, align 1, !tbaa !1279
  %1243 = xor i32 %1232, %1231
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %29, align 1, !tbaa !1280
  %1247 = zext i1 %1235 to i8
  store i8 %1247, i8* %32, align 1, !tbaa !1281
  %1248 = lshr i32 %1232, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %35, align 1, !tbaa !1282
  %1250 = lshr i32 %1231, 31
  %1251 = xor i32 %1248, %1250
  %1252 = add nuw nsw i32 %1251, %1248
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %41, align 1, !tbaa !1283
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1256 = sext i32 %1232 to i64
  %1257 = lshr i64 %1256, 32
  store i64 %1257, i64* %1255, align 8, !tbaa !1261
  %1258 = load i32, i32* %EDI, align 4
  %1259 = add i64 %1228, 9
  store i64 %1259, i64* %PC, align 8
  %1260 = sext i32 %1258 to i64
  %1261 = shl nuw i64 %1257, 32
  %1262 = or i64 %1261, %1233
  %1263 = sdiv i64 %1262, %1260
  %1264 = shl i64 %1263, 32
  %1265 = ashr exact i64 %1264, 32
  %1266 = icmp eq i64 %1263, %1265
  br i1 %1266, label %1269, label %1267

; <label>:1267:                                   ; preds = %block_400814
  %1268 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1259, %struct.Memory* %1219) #5
  %.pre = load i32, i32* %EAX, align 4
  %.pre31 = load i64, i64* %PC, align 8
  %.pre32 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1269:                                   ; preds = %block_400814
  %1270 = srem i64 %1262, %1260
  %1271 = and i64 %1263, 4294967295
  store i64 %1271, i64* %RAX, align 8, !tbaa !1261
  %1272 = and i64 %1270, 4294967295
  store i64 %1272, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 0, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %1273 = trunc i64 %1263 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1269, %1267
  %1274 = phi i64 [ %.pre32, %1267 ], [ %1226, %1269 ]
  %1275 = phi i64 [ %.pre31, %1267 ], [ %1259, %1269 ]
  %1276 = phi i32 [ %.pre, %1267 ], [ %1273, %1269 ]
  %1277 = phi %struct.Memory* [ %1268, %1267 ], [ %1219, %1269 ]
  %1278 = add i32 %1276, -7
  %1279 = icmp ult i32 %1276, 7
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %16, align 1, !tbaa !1265
  %1281 = and i32 %1278, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281) #4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %23, align 1, !tbaa !1279
  %1286 = xor i32 %1278, %1276
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %29, align 1, !tbaa !1280
  %1290 = icmp eq i32 %1278, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %32, align 1, !tbaa !1281
  %1292 = lshr i32 %1278, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %35, align 1, !tbaa !1282
  %1294 = lshr i32 %1276, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1294
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %41, align 1, !tbaa !1283
  %.v49 = select i1 %1290, i64 21, i64 9
  %1299 = add i64 %1275, %.v49
  store i64 %1299, i64* %PC, align 8, !tbaa !1261
  br i1 %1290, label %block_400847, label %block_40083b

block_40087e:                                     ; preds = %block_40085b, %block_400847
  %1300 = phi i64 [ %1535, %block_40085b ], [ %396, %block_400847 ]
  %1301 = add i64 %1274, -4
  %1302 = add i64 %1300, 7
  store i64 %1302, i64* %PC, align 8
  %1303 = inttoptr i64 %1301 to i32*
  store i32 -6, i32* %1303, align 4
  %1304 = load i64, i64* %PC, align 8
  %1305 = add i64 %1304, 770
  store i64 %1305, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400872:                                     ; preds = %block_40085b
  %1306 = add i64 %1274, -20
  %1307 = add i64 %1535, 7
  store i64 %1307, i64* %PC, align 8
  %1308 = inttoptr i64 %1306 to i32*
  store i32 -4, i32* %1308, align 4
  %1309 = load i64, i64* %PC, align 8
  %1310 = load i64, i64* %RBP, align 8
  %1311 = add i64 %1310, -16
  %1312 = add i64 %1309, 21
  store i64 %1312, i64* %PC, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RAX, align 8, !tbaa !1261
  %1315 = add i64 %1314, 5
  %1316 = add i64 %1309, 25
  store i64 %1316, i64* %PC, align 8
  %1317 = inttoptr i64 %1315 to i8*
  %1318 = load i8, i8* %1317, align 1
  %1319 = and i8 %1318, 15
  %1320 = zext i8 %1319 to i64
  %1321 = zext i8 %1319 to i32
  store i64 %1320, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321) #4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %23, align 1, !tbaa !1279
  %1326 = icmp eq i8 %1319, 0
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %1319, i8* %DL, align 1, !tbaa !1285
  %1328 = add i64 %1310, -33
  %1329 = add i64 %1309, 33
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i8*
  store i8 %1319, i8* %1330, align 1
  %1331 = load i64, i64* %RBP, align 8
  %1332 = add i64 %1331, -16
  %1333 = load i64, i64* %PC, align 8
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %PC, align 8
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335, align 8
  store i64 %1336, i64* %RAX, align 8, !tbaa !1261
  %1337 = add i64 %1336, 5
  %1338 = add i64 %1333, 8
  store i64 %1338, i64* %PC, align 8
  %1339 = inttoptr i64 %1337 to i8*
  %1340 = load i8, i8* %1339, align 1
  %1341 = and i8 %1340, -16
  %1342 = zext i8 %1341 to i64
  %1343 = zext i8 %1341 to i32
  store i64 %1342, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343) #4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %23, align 1, !tbaa !1279
  %1348 = icmp eq i8 %1341, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %1341, i8* %DL, align 1, !tbaa !1285
  %1350 = add i64 %1331, -34
  %1351 = add i64 %1333, 19
  store i64 %1351, i64* %PC, align 8
  %1352 = inttoptr i64 %1350 to i8*
  store i8 %1341, i8* %1352, align 1
  %1353 = load i64, i64* %RBP, align 8
  %1354 = add i64 %1353, -33
  %1355 = load i64, i64* %PC, align 8
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %PC, align 8
  %1357 = inttoptr i64 %1354 to i8*
  %1358 = load i8, i8* %1357, align 1
  %1359 = zext i8 %1358 to i64
  store i64 %1359, i64* %RCX, align 8, !tbaa !1261
  %1360 = zext i8 %1358 to i32
  %1361 = add nsw i32 %1360, -3
  %1362 = icmp ult i8 %1358, 3
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %16, align 1, !tbaa !1265
  %1364 = and i32 %1361, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364) #4
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %23, align 1, !tbaa !1279
  %1369 = xor i32 %1361, %1360
  %1370 = lshr i32 %1369, 4
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %29, align 1, !tbaa !1280
  %1373 = icmp eq i32 %1361, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %32, align 1, !tbaa !1281
  %1375 = lshr i32 %1361, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v52 = select i1 %1373, i64 13, i64 40
  %1377 = add i64 %1355, %.v52
  store i64 %1377, i64* %PC, align 8, !tbaa !1261
  br i1 %1373, label %block_4008ba, label %block_4008d5

block_400808:                                     ; preds = %block_4007e9
  %1378 = add i64 %480, -4
  %1379 = add i64 %511, 7
  store i64 %1379, i64* %PC, align 8
  %1380 = inttoptr i64 %1378 to i32*
  store i32 -4, i32* %1380, align 4
  %1381 = load i64, i64* %PC, align 8
  %1382 = add i64 %1381, 888
  store i64 %1382, i64* %PC, align 8, !tbaa !1261
  br label %block_400b87

block_400ab3:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 4, i64* %RDX, align 8, !tbaa !1261
  %1383 = add i64 %722, -20
  %1384 = add i64 %749, 8
  store i64 %1384, i64* %PC, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RDI, align 8, !tbaa !1261
  %1388 = add i64 %722, -16
  %1389 = add i64 %749, 12
  store i64 %1389, i64* %PC, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  %1392 = add i64 %1391, 28
  store i64 %1392, i64* %RAX, align 8, !tbaa !1261
  %1393 = icmp ugt i64 %1391, -29
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %16, align 1, !tbaa !1265
  %1395 = trunc i64 %1392 to i32
  %1396 = and i32 %1395, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396) #4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %23, align 1, !tbaa !1279
  %1401 = xor i64 %1391, 16
  %1402 = xor i64 %1401, %1392
  %1403 = lshr i64 %1402, 4
  %1404 = trunc i64 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %29, align 1, !tbaa !1280
  %1406 = icmp eq i64 %1392, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %32, align 1, !tbaa !1281
  %1408 = lshr i64 %1392, 63
  %1409 = trunc i64 %1408 to i8
  store i8 %1409, i8* %35, align 1, !tbaa !1282
  %1410 = lshr i64 %1391, 63
  %1411 = xor i64 %1408, %1410
  %1412 = add nuw nsw i64 %1411, %1408
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %41, align 1, !tbaa !1283
  store i64 %1392, i64* %RSI, align 8, !tbaa !1261
  %1415 = add i64 %749, -1107
  %1416 = add i64 %749, 24
  %1417 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1418 = add i64 %1417, -8
  %1419 = inttoptr i64 %1418 to i64*
  store i64 %1416, i64* %1419, align 8
  store i64 %1418, i64* %RSP, align 8, !tbaa !1261
  store i64 %1415, i64* %PC, align 8, !tbaa !1261
  %1420 = tail call %struct.Memory* @sub_400660_read_bytes_renamed_(%struct.State* nonnull %0, i64 %1415, %struct.Memory* %1575)
  %1421 = load i64, i64* %RBP, align 8
  %1422 = add i64 %1421, -64
  %1423 = load i32, i32* %EAX, align 4
  %1424 = load i64, i64* %PC, align 8
  %1425 = add i64 %1424, 3
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1422 to i32*
  store i32 %1423, i32* %1426, align 4
  %1427 = load i64, i64* %RBP, align 8
  %1428 = add i64 %1427, -16
  %1429 = load i64, i64* %PC, align 8
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC, align 8
  %1431 = inttoptr i64 %1428 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RSI, align 8, !tbaa !1261
  %1433 = add i64 %1432, 28
  %1434 = add i64 %1429, 8
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i8*
  %1436 = load i8, i8* %1435, align 1
  %1437 = sext i8 %1436 to i64
  %1438 = and i64 %1437, 4294967295
  store i64 %1438, i64* %RAX, align 8, !tbaa !1261
  %1439 = sext i8 %1436 to i32
  %1440 = add nsw i32 %1439, -100
  %1441 = icmp ult i8 %1436, 100
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %16, align 1, !tbaa !1265
  %1443 = and i32 %1440, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443) #4
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %23, align 1, !tbaa !1279
  %1448 = xor i32 %1440, %1439
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %29, align 1, !tbaa !1280
  %1452 = icmp eq i32 %1440, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %32, align 1, !tbaa !1281
  %1454 = lshr i32 %1440, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %35, align 1, !tbaa !1282
  %1456 = lshr i32 %1439, 31
  %1457 = xor i32 %1454, %1456
  %1458 = add nuw nsw i32 %1457, %1456
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %41, align 1, !tbaa !1283
  %.v59 = select i1 %1452, i64 17, i64 48
  %1461 = add i64 %1429, %.v59
  store i64 %1461, i64* %PC, align 8, !tbaa !1261
  br i1 %1452, label %block_400adf, label %block_400afe

block_400b87:                                     ; preds = %block_400b81, %block_400808, %block_40087e, %block_400794, %block_40093c, %block_400aa8, %block_400a36, %block_40083b, %block_4007dd, %block_400a5a, %block_4007bb
  %1462 = phi i64 [ %1305, %block_40087e ], [ %.pre42, %block_400b81 ], [ %458, %block_400aa8 ], [ %213, %block_400a5a ], [ %406, %block_400a36 ], [ %1168, %block_40093c ], [ %401, %block_40083b ], [ %1382, %block_400808 ], [ %369, %block_4007dd ], [ %205, %block_4007bb ], [ %1176, %block_400794 ]
  %MEMORY.10 = phi %struct.Memory* [ %1277, %block_40087e ], [ %MEMORY.12, %block_400b81 ], [ %1575, %block_400aa8 ], [ %1575, %block_400a5a ], [ %1575, %block_400a36 ], [ %551, %block_40093c ], [ %1277, %block_40083b ], [ %473, %block_400808 ], [ %1638, %block_4007dd ], [ %57, %block_4007bb ], [ %57, %block_400794 ]
  %1463 = load i64, i64* %RBP, align 8
  %1464 = add i64 %1463, -4
  %1465 = add i64 %1462, 3
  store i64 %1465, i64* %PC, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX, align 8, !tbaa !1261
  %1469 = load i64, i64* %RSP, align 8
  %1470 = add i64 %1469, 80
  store i64 %1470, i64* %RSP, align 8, !tbaa !1261
  %1471 = icmp ugt i64 %1469, -81
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %16, align 1, !tbaa !1265
  %1473 = trunc i64 %1470 to i32
  %1474 = and i32 %1473, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474) #4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %23, align 1, !tbaa !1279
  %1479 = xor i64 %1469, 16
  %1480 = xor i64 %1479, %1470
  %1481 = lshr i64 %1480, 4
  %1482 = trunc i64 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %29, align 1, !tbaa !1280
  %1484 = icmp eq i64 %1470, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %32, align 1, !tbaa !1281
  %1486 = lshr i64 %1470, 63
  %1487 = trunc i64 %1486 to i8
  store i8 %1487, i8* %35, align 1, !tbaa !1282
  %1488 = lshr i64 %1469, 63
  %1489 = xor i64 %1486, %1488
  %1490 = add nuw nsw i64 %1489, %1486
  %1491 = icmp eq i64 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %41, align 1, !tbaa !1283
  %1493 = add i64 %1462, 8
  store i64 %1493, i64* %PC, align 8
  %1494 = add i64 %1469, 88
  %1495 = inttoptr i64 %1470 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RBP, align 8, !tbaa !1261
  store i64 %1494, i64* %RSP, align 8, !tbaa !1261
  %1497 = add i64 %1462, 9
  store i64 %1497, i64* %PC, align 8
  %1498 = inttoptr i64 %1494 to i64*
  %1499 = load i64, i64* %1498, align 8
  store i64 %1499, i64* %PC, align 8, !tbaa !1261
  %1500 = add i64 %1469, 96
  store i64 %1500, i64* %RSP, align 8, !tbaa !1261
  ret %struct.Memory* %MEMORY.10

block_400b76:                                     ; preds = %block_400afe
  %1501 = add i64 %1427, -64
  %1502 = add i64 %137, 3
  store i64 %1502, i64* %PC, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX, align 8, !tbaa !1261
  %1506 = add i64 %1427, -20
  %1507 = add i64 %137, 6
  store i64 %1507, i64* %PC, align 8
  %1508 = inttoptr i64 %1506 to i32*
  store i32 %1504, i32* %1508, align 4
  br label %block_400b81

block_40085b:                                     ; preds = %block_400847
  %1509 = add i64 %396, 4
  store i64 %1509, i64* %PC, align 8
  %1510 = load i64, i64* %372, align 8
  store i64 %1510, i64* %RAX, align 8, !tbaa !1261
  %1511 = add i64 %1510, 4
  %1512 = add i64 %396, 8
  store i64 %1512, i64* %PC, align 8
  %1513 = inttoptr i64 %1511 to i8*
  %1514 = load i8, i8* %1513, align 1
  %1515 = and i8 %1514, -16
  %1516 = zext i8 %1515 to i64
  %1517 = zext i8 %1515 to i32
  store i64 %1516, i64* %RCX, align 8, !tbaa !1261
  %1518 = add nsw i32 %1517, -48
  %1519 = icmp ult i8 %1515, 48
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %16, align 1, !tbaa !1265
  %1521 = and i32 %1518, 240
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521) #4
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %23, align 1, !tbaa !1279
  %1526 = xor i32 %1517, 16
  %1527 = xor i32 %1526, %1518
  %1528 = lshr exact i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %29, align 1, !tbaa !1280
  %1531 = icmp eq i32 %1518, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %32, align 1, !tbaa !1281
  %1533 = lshr i32 %1518, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v51 = select i1 %1531, i64 23, i64 35
  %1535 = add i64 %396, %.v51
  store i64 %1535, i64* %PC, align 8, !tbaa !1261
  br i1 %1531, label %block_400872, label %block_40087e

block_400a03:                                     ; preds = %block_4009fc, %block_4009f0
  %1536 = phi i64 [ %.pre37, %block_4009fc ], [ %208, %block_4009f0 ]
  store i64 8, i64* %RDX, align 8, !tbaa !1261
  %1537 = load i64, i64* %RBP, align 8
  %1538 = add i64 %1537, -20
  %1539 = add i64 %1536, 8
  store i64 %1539, i64* %PC, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RDI, align 8, !tbaa !1261
  %1543 = add i64 %1537, -16
  %1544 = add i64 %1536, 12
  store i64 %1544, i64* %PC, align 8
  %1545 = inttoptr i64 %1543 to i64*
  %1546 = load i64, i64* %1545, align 8
  %1547 = add i64 %1546, 20
  store i64 %1547, i64* %RAX, align 8, !tbaa !1261
  %1548 = icmp ugt i64 %1546, -21
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %16, align 1, !tbaa !1265
  %1550 = trunc i64 %1547 to i32
  %1551 = and i32 %1550, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551) #4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %23, align 1, !tbaa !1279
  %1556 = xor i64 %1546, 16
  %1557 = xor i64 %1556, %1547
  %1558 = lshr i64 %1557, 4
  %1559 = trunc i64 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %29, align 1, !tbaa !1280
  %1561 = icmp eq i64 %1547, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %32, align 1, !tbaa !1281
  %1563 = lshr i64 %1547, 63
  %1564 = trunc i64 %1563 to i8
  store i8 %1564, i8* %35, align 1, !tbaa !1282
  %1565 = lshr i64 %1546, 63
  %1566 = xor i64 %1563, %1565
  %1567 = add nuw nsw i64 %1566, %1563
  %1568 = icmp eq i64 %1567, 2
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %41, align 1, !tbaa !1283
  store i64 %1547, i64* %RSI, align 8, !tbaa !1261
  %1570 = add i64 %1536, -931
  %1571 = add i64 %1536, 24
  %1572 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1573 = add i64 %1572, -8
  %1574 = inttoptr i64 %1573 to i64*
  store i64 %1571, i64* %1574, align 8
  store i64 %1573, i64* %RSP, align 8, !tbaa !1261
  store i64 %1570, i64* %PC, align 8, !tbaa !1261
  %1575 = tail call %struct.Memory* @sub_400660_read_bytes_renamed_(%struct.State* nonnull %0, i64 %1570, %struct.Memory* %816)
  %1576 = load i64, i64* %RBP, align 8
  %1577 = add i64 %1576, -60
  %1578 = load i32, i32* %EAX, align 4
  %1579 = load i64, i64* %PC, align 8
  %1580 = add i64 %1579, 3
  store i64 %1580, i64* %PC, align 8
  %1581 = inttoptr i64 %1577 to i32*
  store i32 %1578, i32* %1581, align 4
  %1582 = load i64, i64* %RBP, align 8
  %1583 = add i64 %1582, -60
  %1584 = load i64, i64* %PC, align 8
  %1585 = add i64 %1584, 3
  store i64 %1585, i64* %PC, align 8
  %1586 = inttoptr i64 %1583 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = add i32 %1587, -3
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX, align 8, !tbaa !1261
  %1590 = icmp ult i32 %1587, 3
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %16, align 1, !tbaa !1265
  %1592 = and i32 %1588, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592) #4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %23, align 1, !tbaa !1279
  %1597 = xor i32 %1588, %1587
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %29, align 1, !tbaa !1280
  %1601 = icmp eq i32 %1588, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %32, align 1, !tbaa !1281
  %1603 = lshr i32 %1588, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %35, align 1, !tbaa !1282
  %1605 = lshr i32 %1587, 31
  %1606 = xor i32 %1603, %1605
  %1607 = add nuw nsw i32 %1606, %1605
  %1608 = icmp eq i32 %1607, 2
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %41, align 1, !tbaa !1283
  %1610 = add i64 %1584, 9
  store i64 %1610, i64* %PC, align 8
  store i32 %1588, i32* %1586, align 4
  %1611 = load i64, i64* %RBP, align 8
  %1612 = add i64 %1611, -60
  %1613 = load i64, i64* %PC, align 8
  %1614 = add i64 %1613, 3
  store i64 %1614, i64* %PC, align 8
  %1615 = inttoptr i64 %1612 to i32*
  %1616 = load i32, i32* %1615, align 4
  %1617 = and i32 %1616, 7
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX, align 8, !tbaa !1261
  %1619 = icmp eq i32 %1617, 0
  %1620 = zext i1 %1619 to i8
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1617) #4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %1620, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v56 = select i1 %1619, i64 27, i64 15
  %1625 = add i64 %1613, %.v56
  store i64 %1625, i64* %PC, align 8, !tbaa !1261
  br i1 %1619, label %block_400a42, label %block_400a36

block_4007c7:                                     ; preds = %block_40079f
  %1626 = add i64 %973, 4
  store i64 %1626, i64* %PC, align 8
  %1627 = load i64, i64* %944, align 8
  store i64 %1627, i64* %RAX, align 8, !tbaa !1261
  %1628 = add i64 %1627, 1
  %1629 = add i64 %973, 8
  store i64 %1629, i64* %PC, align 8
  %1630 = inttoptr i64 %1628 to i8*
  %1631 = load i8, i8* %1630, align 1
  %1632 = zext i8 %1631 to i64
  store i64 %1632, i64* %RDI, align 8, !tbaa !1261
  %1633 = add i64 %973, -471
  %1634 = add i64 %973, 13
  %1635 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1636 = add i64 %1635, -8
  %1637 = inttoptr i64 %1636 to i64*
  store i64 %1634, i64* %1637, align 8
  store i64 %1636, i64* %RSP, align 8, !tbaa !1261
  store i64 %1633, i64* %PC, align 8, !tbaa !1261
  %1638 = tail call %struct.Memory* @sub_4005f0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1633, %struct.Memory* %57)
  %1639 = load i32, i32* %EAX, align 4
  %1640 = load i64, i64* %PC, align 8
  %1641 = add i32 %1639, -9
  %1642 = icmp ult i32 %1639, 9
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %16, align 1, !tbaa !1265
  %1644 = and i32 %1641, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644) #4
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %23, align 1, !tbaa !1279
  %1649 = xor i32 %1641, %1639
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %29, align 1, !tbaa !1280
  %1653 = icmp eq i32 %1641, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %32, align 1, !tbaa !1281
  %1655 = lshr i32 %1641, 31
  %1656 = trunc i32 %1655 to i8
  store i8 %1656, i8* %35, align 1, !tbaa !1282
  %1657 = lshr i32 %1639, 31
  %1658 = xor i32 %1655, %1657
  %1659 = add nuw nsw i32 %1658, %1657
  %1660 = icmp eq i32 %1659, 2
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %41, align 1, !tbaa !1283
  %.v47 = select i1 %1653, i64 21, i64 9
  %1662 = add i64 %1640, %.v47
  store i64 %1662, i64* %PC, align 8, !tbaa !1261
  %1663 = load i64, i64* %RBP, align 8
  br i1 %1653, label %block_4007e9, label %block_4007dd

block_400b81:                                     ; preds = %block_400b76, %block_400af0, %block_400b71
  %.sink5 = phi i64 [ 136, %block_400af0 ], [ 5, %block_400b76 ], [ 5, %block_400b71 ]
  %MEMORY.12 = phi %struct.Memory* [ %1420, %block_400af0 ], [ %1420, %block_400b76 ], [ %MEMORY.1, %block_400b71 ]
  %1664 = load i64, i64* %PC, align 8
  %1665 = add i64 %1664, %.sink5
  %1666 = load i64, i64* %RBP, align 8
  %1667 = add i64 %1666, -20
  %1668 = add i64 %1665, 3
  store i64 %1668, i64* %PC, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RAX, align 8, !tbaa !1261
  %1672 = add i64 %1666, -4
  %1673 = add i64 %1665, 6
  store i64 %1673, i64* %PC, align 8
  %1674 = inttoptr i64 %1672 to i32*
  store i32 %1670, i32* %1674, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_400b87
}

; Function Attrs: noinline nounwind
declare hidden fastcc %struct.Memory* @ext_602070_strlen(%struct.State*, %struct.Memory*) unnamed_addr #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind }
attributes #4 = { nounwind }
attributes #5 = { alwaysinline nobuiltin nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1259, !1260}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !355, !358, !363, !371, !376, !380, !384, !388, !392, !394, !396, !400, !406, !410, !416, !422, !424, !428, !432, !436, !440, !451, !453, !457, !461, !465, !467, !471, !475, !479, !481, !483, !487, !495, !499, !503, !507, !509, !515, !517, !523, !527, !531, !535, !539, !543, !547, !549, !551, !555, !559, !563, !565, !569, !573, !575, !577, !581, !585, !589, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !606, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !634, !635, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !665, !669, !674, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !706, !712, !717, !721, !723, !725, !727, !729, !736, !740, !744, !748, !752, !756, !761, !765, !767, !771, !777, !781, !786, !788, !790, !794, !798, !802, !804, !806, !808, !810, !814, !816, !818, !822, !826, !830, !834, !838, !840, !842, !846, !850, !854, !858, !860, !862, !866, !870, !871, !872, !873, !874, !875, !880, !882, !884, !888, !890, !892, !894, !896, !898, !900, !902, !907, !911, !913, !915, !920, !922, !924, !926, !928, !930, !932, !935, !937, !939, !943, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !971, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1009, !1013, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1057, !1061, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1093, !1097, !1101, !1103, !1105, !1107, !1109, !1113, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1133, !1137, !1139, !1141, !1143, !1145, !1149, !1153, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1173, !1177, !1181, !1183, !1187, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1207, !1209, !1212, !1217, !1219, !1225, !1227, !1229, !1231, !1236, !1238, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/debug/debug.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/x86_64-linux-gnu/c++/7.4.0/bits/c++config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 837, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 127)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 130)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 588, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 134)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 592, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 137)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 597, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 140)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 101, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 141)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 104, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 142)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 107, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 143)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 817, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 805, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 144)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 541, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 145)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 849, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 146)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 614, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 147)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 563, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 148)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 631, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 149)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 838, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 150)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 851, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 151)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 539, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 153)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 919, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 154)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 930, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 155)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 922, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 157)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 827, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 160)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 620, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 163)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 453, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 164)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 549, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 165)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 455, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 166)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 117, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 167)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 176, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 168)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 180, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 169)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 781, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 171)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 933, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 172)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 926, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 200)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 80, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 76, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 78, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 79, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 206)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 626, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 210)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 841, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 216)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 855, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 227)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 112, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 228)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 200, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 229)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 205, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 231)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 123, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 232)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 126, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 240)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 242)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 244)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 245)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 213, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdlib", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 246)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 249)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 250)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 251)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 252)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/exception_ptr.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!283 = !DINamespace(name: "__exception_ptr", scope: !75, file: !282, line: 52)
!284 = !{!285, !286, !290, !293, !294, !299, !300, !304, !309, !313, !317, !320, !321, !324, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !281, file: !282, line: 81, baseType: !124, size: 64)
!286 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 83, type: !287, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !124}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !281, file: !282, line: 85, type: !291, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !289}
!293 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !281, file: !282, line: 86, type: !291, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !281, file: !282, line: 88, type: !295, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!124, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!299 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 96, type: !291, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 98, type: !301, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !289, !303}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!304 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 101, type: !305, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !75, file: !76, line: 235, baseType: !308)
!308 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!309 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 105, type: !310, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !289, !312}
!312 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !281, size: 64)
!313 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !281, file: !282, line: 118, type: !314, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !289, !303}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !281, file: !282, line: 122, type: !318, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!316, !289, !312}
!320 = !DISubprogram(name: "~exception_ptr", scope: !281, file: !282, line: 129, type: !291, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !281, file: !282, line: 132, type: !322, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !289, !316}
!324 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !281, file: !282, line: 144, type: !325, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !297}
!327 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !281, file: !282, line: 153, type: !329, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !297}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !75, file: !334, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/typeinfo", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 6, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !343, line: 21, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 64, elements: !345, identifier: "_ZTS11__mbstate_t")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !343, line: 15, baseType: !82, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !344, file: !343, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 16, size: 32, elements: !349, identifier: "_ZTSN11__mbstate_tUt_E")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !343, line: 18, baseType: !10, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !343, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !356, line: 139)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !357, line: 20, baseType: !10)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !359, line: 141)
!359 = !DISubprogram(name: "btowc", scope: !360, file: !360, line: 284, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!361 = !DISubroutineType(types: !362)
!362 = !{!356, !82}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !364, line: 142)
!364 = !DISubprogram(name: "fgetwc", scope: !360, file: !360, line: 727, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!356, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !369, line: 5, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !372, line: 143)
!372 = !DISubprogram(name: "fgetws", scope: !360, file: !360, line: 756, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!174, !173, !82, !375}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !367)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !377, line: 144)
!377 = !DISubprogram(name: "fputwc", scope: !360, file: !360, line: 741, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!356, !175, !367}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !381, line: 145)
!381 = !DISubprogram(name: "fputws", scope: !360, file: !360, line: 763, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!82, !220, !375}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !385, line: 146)
!385 = !DISubprogram(name: "fwide", scope: !360, file: !360, line: 573, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!82, !367, !82}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !389, line: 147)
!389 = !DISubprogram(name: "fwprintf", scope: !360, file: !360, line: 580, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!82, !375, !220, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !393, line: 148)
!393 = !DISubprogram(name: "fwscanf", scope: !360, file: !360, line: 621, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !395, line: 149)
!395 = !DISubprogram(name: "getwc", scope: !360, file: !360, line: 728, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !397, line: 150)
!397 = !DISubprogram(name: "getwchar", scope: !360, file: !360, line: 734, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!356}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !401, line: 151)
!401 = !DISubprogram(name: "mbrlen", scope: !360, file: !360, line: 307, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!125, !176, !125, !404}
!404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, line: 152)
!407 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!125, !173, !176, !125, !404}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !411, line: 153)
!411 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!82, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !417, line: 154)
!417 = !DISubprogram(name: "mbsrtowcs", scope: !360, file: !360, line: 337, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{!125, !173, !420, !125, !404}
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !423, line: 155)
!423 = !DISubprogram(name: "putwc", scope: !360, file: !360, line: 742, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !425, line: 156)
!425 = !DISubprogram(name: "putwchar", scope: !360, file: !360, line: 748, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!356, !175}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !429, line: 158)
!429 = !DISubprogram(name: "swprintf", scope: !360, file: !360, line: 590, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!82, !173, !125, !220, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !433, line: 160)
!433 = !DISubprogram(name: "swscanf", scope: !360, file: !360, line: 631, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!82, !220, !220, null}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !437, line: 161)
!437 = !DISubprogram(name: "ungetwc", scope: !360, file: !360, line: 771, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!356, !356, !367}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !441, line: 162)
!441 = !DISubprogram(name: "vfwprintf", scope: !360, file: !360, line: 598, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{!82, !375, !220, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !446, identifier: "_ZTS13__va_list_tag")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !445, file: !2, baseType: !10, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !445, file: !2, baseType: !10, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 128)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 164)
!452 = !DISubprogram(name: "vfwscanf", scope: !360, file: !360, line: 673, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 167)
!454 = !DISubprogram(name: "vswprintf", scope: !360, file: !360, line: 611, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!82, !173, !125, !220, !444}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 170)
!458 = !DISubprogram(name: "vswscanf", scope: !360, file: !360, line: 685, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!82, !220, !220, !444}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 172)
!462 = !DISubprogram(name: "vwprintf", scope: !360, file: !360, line: 606, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!82, !220, !444}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 174)
!466 = !DISubprogram(name: "vwscanf", scope: !360, file: !360, line: 681, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, line: 176)
!468 = !DISubprogram(name: "wcrtomb", scope: !360, file: !360, line: 301, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!125, !219, !175, !404}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, line: 177)
!472 = !DISubprogram(name: "wcscat", scope: !360, file: !360, line: 97, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!174, !173, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, line: 178)
!476 = !DISubprogram(name: "wcscmp", scope: !360, file: !360, line: 106, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!82, !221, !221}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, line: 179)
!480 = !DISubprogram(name: "wcscoll", scope: !360, file: !360, line: 131, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !482, line: 180)
!482 = !DISubprogram(name: "wcscpy", scope: !360, file: !360, line: 87, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, line: 181)
!484 = !DISubprogram(name: "wcscspn", scope: !360, file: !360, line: 187, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!125, !221, !221}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !488, line: 182)
!488 = !DISubprogram(name: "wcsftime", scope: !360, file: !360, line: 835, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!125, !173, !125, !220, !491}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !360, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, line: 183)
!496 = !DISubprogram(name: "wcslen", scope: !360, file: !360, line: 222, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!125, !221}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, line: 184)
!500 = !DISubprogram(name: "wcsncat", scope: !360, file: !360, line: 101, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!174, !173, !220, !125}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, line: 185)
!504 = !DISubprogram(name: "wcsncmp", scope: !360, file: !360, line: 109, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!82, !221, !221, !125}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !508, line: 186)
!508 = !DISubprogram(name: "wcsncpy", scope: !360, file: !360, line: 92, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !510, line: 187)
!510 = !DISubprogram(name: "wcsrtombs", scope: !360, file: !360, line: 343, type: !511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!125, !219, !513, !125, !404}
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !516, line: 188)
!516 = !DISubprogram(name: "wcsspn", scope: !360, file: !360, line: 191, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !518, line: 189)
!518 = !DISubprogram(name: "wcstod", scope: !360, file: !360, line: 377, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!108, !220, !521}
!521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 191)
!524 = !DISubprogram(name: "wcstof", scope: !360, file: !360, line: 382, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!262, !220, !521}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !528, line: 193)
!528 = !DISubprogram(name: "wcstok", scope: !360, file: !360, line: 217, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!174, !173, !220, !521}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !532, line: 194)
!532 = !DISubprogram(name: "wcstol", scope: !360, file: !360, line: 428, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!91, !220, !521, !82}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, line: 195)
!536 = !DISubprogram(name: "wcstoul", scope: !360, file: !360, line: 433, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!127, !220, !521, !82}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, line: 196)
!540 = !DISubprogram(name: "wcsxfrm", scope: !360, file: !360, line: 135, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!125, !173, !220, !125}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !544, line: 197)
!544 = !DISubprogram(name: "wctob", scope: !360, file: !360, line: 288, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!82, !356}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !548, line: 198)
!548 = !DISubprogram(name: "wmemcmp", scope: !360, file: !360, line: 258, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !550, line: 199)
!550 = !DISubprogram(name: "wmemcpy", scope: !360, file: !360, line: 262, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !552, line: 200)
!552 = !DISubprogram(name: "wmemmove", scope: !360, file: !360, line: 267, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!174, !174, !221, !125}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !556, line: 201)
!556 = !DISubprogram(name: "wmemset", scope: !360, file: !360, line: 271, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!174, !174, !175, !125}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !560, line: 202)
!560 = !DISubprogram(name: "wprintf", scope: !360, file: !360, line: 587, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!82, !220, null}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !564, line: 203)
!564 = !DISubprogram(name: "wscanf", scope: !360, file: !360, line: 628, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !566, line: 204)
!566 = !DISubprogram(name: "wcschr", scope: !360, file: !360, line: 164, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !221, !175}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !570, line: 205)
!570 = !DISubprogram(name: "wcspbrk", scope: !360, file: !360, line: 201, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!174, !221, !221}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !574, line: 206)
!574 = !DISubprogram(name: "wcsrchr", scope: !360, file: !360, line: 174, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !576, line: 207)
!576 = !DISubprogram(name: "wcsstr", scope: !360, file: !360, line: 212, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 208)
!578 = !DISubprogram(name: "wmemchr", scope: !360, file: !360, line: 253, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!174, !221, !175, !125}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !582, line: 248)
!582 = !DISubprogram(name: "wcstold", scope: !360, file: !360, line: 384, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!267, !220, !521}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !586, line: 257)
!586 = !DISubprogram(name: "wcstoll", scope: !360, file: !360, line: 441, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!233, !220, !521, !82}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !590, line: 258)
!590 = !DISubprogram(name: "wcstoull", scope: !360, file: !360, line: 448, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!257, !220, !521, !82}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 264)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 265)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 266)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 280)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 283)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 286)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 289)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 293)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 294)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 295)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, line: 48)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !605)
!605 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !607, line: 49)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !608)
!608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 50)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !82)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 51)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !91)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 53)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !604)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 54)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !607)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 55)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 56)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !612)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 58)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !604)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 59)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !607)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 60)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 61)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !612)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 63)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !632, line: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !612)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 69)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 71)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 72)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 73)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 74)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !637)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 76)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 77)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 78)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 79)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !637)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 81)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !657, line: 82)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !637)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 44)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !661, line: 45)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !663, line: 53)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !664, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!664 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !666, line: 54)
!666 = !DISubprogram(name: "setlocale", scope: !664, file: !664, line: 122, type: !667, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!152, !82, !109}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !670, line: 55)
!670 = !DISubprogram(name: "localeconv", scope: !664, file: !664, line: 125, type: !671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, line: 64)
!675 = !DISubprogram(name: "isalnum", scope: !676, file: !676, line: 108, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 65)
!678 = !DISubprogram(name: "isalpha", scope: !676, file: !676, line: 109, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 66)
!680 = !DISubprogram(name: "iscntrl", scope: !676, file: !676, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 67)
!682 = !DISubprogram(name: "isdigit", scope: !676, file: !676, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 68)
!684 = !DISubprogram(name: "isgraph", scope: !676, file: !676, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 69)
!686 = !DISubprogram(name: "islower", scope: !676, file: !676, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 70)
!688 = !DISubprogram(name: "isprint", scope: !676, file: !676, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 71)
!690 = !DISubprogram(name: "ispunct", scope: !676, file: !676, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 72)
!692 = !DISubprogram(name: "isspace", scope: !676, file: !676, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 73)
!694 = !DISubprogram(name: "isupper", scope: !676, file: !676, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 74)
!696 = !DISubprogram(name: "isxdigit", scope: !676, file: !676, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 75)
!698 = !DISubprogram(name: "tolower", scope: !676, file: !676, line: 122, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 76)
!700 = !DISubprogram(name: "toupper", scope: !676, file: !676, line: 125, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 87)
!702 = !DISubprogram(name: "isblank", scope: !676, file: !676, line: 130, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 98)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !705, line: 7, baseType: !370)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !707, line: 99)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !708, line: 78, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !710, line: 30, baseType: !711)
!710 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !713, line: 101)
!713 = !DISubprogram(name: "clearerr", scope: !708, file: !708, line: 757, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 102)
!718 = !DISubprogram(name: "fclose", scope: !708, file: !708, line: 199, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!82, !716}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 103)
!722 = !DISubprogram(name: "feof", scope: !708, file: !708, line: 759, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 104)
!724 = !DISubprogram(name: "ferror", scope: !708, file: !708, line: 761, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 105)
!726 = !DISubprogram(name: "fflush", scope: !708, file: !708, line: 204, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !728, line: 106)
!728 = !DISubprogram(name: "fgetc", scope: !708, file: !708, line: 477, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !730, line: 107)
!730 = !DISubprogram(name: "fgetpos", scope: !708, file: !708, line: 731, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!82, !733, !734}
!733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 108)
!737 = !DISubprogram(name: "fgets", scope: !708, file: !708, line: 564, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!152, !219, !82, !733}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 109)
!741 = !DISubprogram(name: "fopen", scope: !708, file: !708, line: 232, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!716, !176, !176}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 110)
!745 = !DISubprogram(name: "fprintf", scope: !708, file: !708, line: 312, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !733, !176, null}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 111)
!749 = !DISubprogram(name: "fputc", scope: !708, file: !708, line: 517, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !82, !716}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 112)
!753 = !DISubprogram(name: "fputs", scope: !708, file: !708, line: 626, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!82, !176, !733}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !757, line: 113)
!757 = !DISubprogram(name: "fread", scope: !708, file: !708, line: 646, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!125, !760, !125, !125, !733}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 114)
!762 = !DISubprogram(name: "freopen", scope: !708, file: !708, line: 238, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!716, !176, !176, !733}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !766, line: 115)
!766 = !DISubprogram(name: "fscanf", scope: !708, file: !708, line: 377, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 116)
!768 = !DISubprogram(name: "fseek", scope: !708, file: !708, line: 684, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !716, !91, !82}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !772, line: 117)
!772 = !DISubprogram(name: "fsetpos", scope: !708, file: !708, line: 736, type: !773, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{!82, !716, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 118)
!778 = !DISubprogram(name: "ftell", scope: !708, file: !708, line: 689, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!91, !716}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !782, line: 119)
!782 = !DISubprogram(name: "fwrite", scope: !708, file: !708, line: 652, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!125, !785, !125, !125, !733}
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 120)
!787 = !DISubprogram(name: "getc", scope: !708, file: !708, line: 478, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !789, line: 121)
!789 = !DISubprogram(name: "getchar", scope: !708, file: !708, line: 484, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 124)
!791 = !DISubprogram(name: "gets", scope: !708, file: !708, line: 577, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{!152, !152}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 126)
!795 = !DISubprogram(name: "perror", scope: !708, file: !708, line: 775, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !109}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 127)
!799 = !DISubprogram(name: "printf", scope: !708, file: !708, line: 318, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!82, !176, null}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 128)
!803 = !DISubprogram(name: "putc", scope: !708, file: !708, line: 518, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 129)
!805 = !DISubprogram(name: "putchar", scope: !708, file: !708, line: 524, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 130)
!807 = !DISubprogram(name: "puts", scope: !708, file: !708, line: 632, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !809, line: 131)
!809 = !DISubprogram(name: "remove", scope: !708, file: !708, line: 144, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 132)
!811 = !DISubprogram(name: "rename", scope: !708, file: !708, line: 146, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!82, !109, !109}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 133)
!815 = !DISubprogram(name: "rewind", scope: !708, file: !708, line: 694, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !817, line: 134)
!817 = !DISubprogram(name: "scanf", scope: !708, file: !708, line: 383, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 135)
!819 = !DISubprogram(name: "setbuf", scope: !708, file: !708, line: 290, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !733, !219}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 136)
!823 = !DISubprogram(name: "setvbuf", scope: !708, file: !708, line: 294, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !733, !219, !82, !125}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 137)
!827 = !DISubprogram(name: "sprintf", scope: !708, file: !708, line: 320, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !219, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 138)
!831 = !DISubprogram(name: "sscanf", scope: !708, file: !708, line: 385, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !176, !176, null}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 139)
!835 = !DISubprogram(name: "tmpfile", scope: !708, file: !708, line: 159, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!716}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 141)
!839 = !DISubprogram(name: "tmpnam", scope: !708, file: !708, line: 173, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !841, line: 143)
!841 = !DISubprogram(name: "ungetc", scope: !708, file: !708, line: 639, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 144)
!843 = !DISubprogram(name: "vfprintf", scope: !708, file: !708, line: 327, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !733, !176, !444}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 145)
!847 = !DISubprogram(name: "vprintf", scope: !708, file: !708, line: 333, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !176, !444}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 146)
!851 = !DISubprogram(name: "vsprintf", scope: !708, file: !708, line: 335, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !176, !444}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 175)
!855 = !DISubprogram(name: "snprintf", scope: !708, file: !708, line: 340, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!82, !219, !125, !176, null}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 176)
!859 = !DISubprogram(name: "vfscanf", scope: !708, file: !708, line: 420, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !861, line: 177)
!861 = !DISubprogram(name: "vscanf", scope: !708, file: !708, line: 428, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 178)
!863 = !DISubprogram(name: "vsnprintf", scope: !708, file: !708, line: 344, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !219, !125, !176, !444}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !867, line: 179)
!867 = !DISubprogram(name: "vsscanf", scope: !708, file: !708, line: 432, type: !868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!82, !176, !176, !444}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 185)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 186)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !861, line: 187)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 188)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !867, line: 189)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !876, line: 83)
!876 = !DISubprogram(name: "acos", scope: !877, file: !877, line: 53, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!878 = !DISubroutineType(types: !879)
!879 = !{!108, !108}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 102)
!881 = !DISubprogram(name: "asin", scope: !877, file: !877, line: 55, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !883, line: 121)
!883 = !DISubprogram(name: "atan", scope: !877, file: !877, line: 57, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 140)
!885 = !DISubprogram(name: "atan2", scope: !877, file: !877, line: 59, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{!108, !108, !108}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 161)
!889 = !DISubprogram(name: "ceil", scope: !877, file: !877, line: 159, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 180)
!891 = !DISubprogram(name: "cos", scope: !877, file: !877, line: 62, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 199)
!893 = !DISubprogram(name: "cosh", scope: !877, file: !877, line: 71, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 218)
!895 = !DISubprogram(name: "exp", scope: !877, file: !877, line: 95, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 237)
!897 = !DISubprogram(name: "fabs", scope: !877, file: !877, line: 162, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 256)
!899 = !DISubprogram(name: "floor", scope: !877, file: !877, line: 165, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !901, line: 275)
!901 = !DISubprogram(name: "fmod", scope: !877, file: !877, line: 168, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !903, line: 296)
!903 = !DISubprogram(name: "frexp", scope: !877, file: !877, line: 98, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!108, !108, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 315)
!908 = !DISubprogram(name: "ldexp", scope: !877, file: !877, line: 101, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{!108, !108, !82}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 334)
!912 = !DISubprogram(name: "log", scope: !877, file: !877, line: 104, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !914, line: 353)
!914 = !DISubprogram(name: "log10", scope: !877, file: !877, line: 107, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !916, line: 372)
!916 = !DISubprogram(name: "modf", scope: !877, file: !877, line: 110, type: !917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!108, !108, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 384)
!921 = !DISubprogram(name: "pow", scope: !877, file: !877, line: 140, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 421)
!923 = !DISubprogram(name: "sin", scope: !877, file: !877, line: 64, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 440)
!925 = !DISubprogram(name: "sinh", scope: !877, file: !877, line: 73, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 459)
!927 = !DISubprogram(name: "sqrt", scope: !877, file: !877, line: 143, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 478)
!929 = !DISubprogram(name: "tan", scope: !877, file: !877, line: 66, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !931, line: 497)
!931 = !DISubprogram(name: "tanh", scope: !877, file: !877, line: 75, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !933, line: 1080)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !934, line: 150, baseType: !108)
!934 = !DIFile(filename: "/usr/include/math.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1081)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !934, line: 149, baseType: !262)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !938, line: 1084)
!938 = !DISubprogram(name: "acosh", scope: !877, file: !877, line: 85, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1085)
!940 = !DISubprogram(name: "acoshf", scope: !877, file: !877, line: 85, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!262, !262}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1086)
!944 = !DISubprogram(name: "acoshl", scope: !877, file: !877, line: 85, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{!267, !267}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1088)
!948 = !DISubprogram(name: "asinh", scope: !877, file: !877, line: 87, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1089)
!950 = !DISubprogram(name: "asinhf", scope: !877, file: !877, line: 87, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1090)
!952 = !DISubprogram(name: "asinhl", scope: !877, file: !877, line: 87, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1092)
!954 = !DISubprogram(name: "atanh", scope: !877, file: !877, line: 89, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1093)
!956 = !DISubprogram(name: "atanhf", scope: !877, file: !877, line: 89, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1094)
!958 = !DISubprogram(name: "atanhl", scope: !877, file: !877, line: 89, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1096)
!960 = !DISubprogram(name: "cbrt", scope: !877, file: !877, line: 152, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1097)
!962 = !DISubprogram(name: "cbrtf", scope: !877, file: !877, line: 152, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1098)
!964 = !DISubprogram(name: "cbrtl", scope: !877, file: !877, line: 152, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !966, line: 1100)
!966 = !DISubprogram(name: "copysign", scope: !877, file: !877, line: 196, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1101)
!968 = !DISubprogram(name: "copysignf", scope: !877, file: !877, line: 196, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!262, !262, !262}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1102)
!972 = !DISubprogram(name: "copysignl", scope: !877, file: !877, line: 196, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!267, !267, !267}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1104)
!976 = !DISubprogram(name: "erf", scope: !877, file: !877, line: 228, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1105)
!978 = !DISubprogram(name: "erff", scope: !877, file: !877, line: 228, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1106)
!980 = !DISubprogram(name: "erfl", scope: !877, file: !877, line: 228, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1108)
!982 = !DISubprogram(name: "erfc", scope: !877, file: !877, line: 229, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1109)
!984 = !DISubprogram(name: "erfcf", scope: !877, file: !877, line: 229, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1110)
!986 = !DISubprogram(name: "erfcl", scope: !877, file: !877, line: 229, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1112)
!988 = !DISubprogram(name: "exp2", scope: !877, file: !877, line: 130, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1113)
!990 = !DISubprogram(name: "exp2f", scope: !877, file: !877, line: 130, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1114)
!992 = !DISubprogram(name: "exp2l", scope: !877, file: !877, line: 130, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1116)
!994 = !DISubprogram(name: "expm1", scope: !877, file: !877, line: 119, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1117)
!996 = !DISubprogram(name: "expm1f", scope: !877, file: !877, line: 119, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1118)
!998 = !DISubprogram(name: "expm1l", scope: !877, file: !877, line: 119, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1120)
!1000 = !DISubprogram(name: "fdim", scope: !877, file: !877, line: 326, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1121)
!1002 = !DISubprogram(name: "fdimf", scope: !877, file: !877, line: 326, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1004, line: 1122)
!1004 = !DISubprogram(name: "fdiml", scope: !877, file: !877, line: 326, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1124)
!1006 = !DISubprogram(name: "fma", scope: !877, file: !877, line: 335, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !108, !108, !108}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1125)
!1010 = !DISubprogram(name: "fmaf", scope: !877, file: !877, line: 335, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!262, !262, !262, !262}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1126)
!1014 = !DISubprogram(name: "fmal", scope: !877, file: !877, line: 335, type: !1015, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!267, !267, !267, !267}
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1128)
!1018 = !DISubprogram(name: "fmax", scope: !877, file: !877, line: 329, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1129)
!1020 = !DISubprogram(name: "fmaxf", scope: !877, file: !877, line: 329, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1130)
!1022 = !DISubprogram(name: "fmaxl", scope: !877, file: !877, line: 329, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1132)
!1024 = !DISubprogram(name: "fmin", scope: !877, file: !877, line: 332, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1133)
!1026 = !DISubprogram(name: "fminf", scope: !877, file: !877, line: 332, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1134)
!1028 = !DISubprogram(name: "fminl", scope: !877, file: !877, line: 332, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1136)
!1030 = !DISubprogram(name: "hypot", scope: !877, file: !877, line: 147, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1137)
!1032 = !DISubprogram(name: "hypotf", scope: !877, file: !877, line: 147, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1034, line: 1138)
!1034 = !DISubprogram(name: "hypotl", scope: !877, file: !877, line: 147, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1140)
!1036 = !DISubprogram(name: "ilogb", scope: !877, file: !877, line: 280, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !108}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1141)
!1040 = !DISubprogram(name: "ilogbf", scope: !877, file: !877, line: 280, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !262}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1142)
!1044 = !DISubprogram(name: "ilogbl", scope: !877, file: !877, line: 280, type: !1045, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!82, !267}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1144)
!1048 = !DISubprogram(name: "lgamma", scope: !877, file: !877, line: 230, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1145)
!1050 = !DISubprogram(name: "lgammaf", scope: !877, file: !877, line: 230, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1052, line: 1146)
!1052 = !DISubprogram(name: "lgammal", scope: !877, file: !877, line: 230, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1149)
!1054 = !DISubprogram(name: "llrint", scope: !877, file: !877, line: 316, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !108}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1150)
!1058 = !DISubprogram(name: "llrintf", scope: !877, file: !877, line: 316, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !262}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1151)
!1062 = !DISubprogram(name: "llrintl", scope: !877, file: !877, line: 316, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!233, !267}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1153)
!1066 = !DISubprogram(name: "llround", scope: !877, file: !877, line: 322, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1154)
!1068 = !DISubprogram(name: "llroundf", scope: !877, file: !877, line: 322, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1155)
!1070 = !DISubprogram(name: "llroundl", scope: !877, file: !877, line: 322, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1158)
!1072 = !DISubprogram(name: "log1p", scope: !877, file: !877, line: 122, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1159)
!1074 = !DISubprogram(name: "log1pf", scope: !877, file: !877, line: 122, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1160)
!1076 = !DISubprogram(name: "log1pl", scope: !877, file: !877, line: 122, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1162)
!1078 = !DISubprogram(name: "log2", scope: !877, file: !877, line: 133, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1163)
!1080 = !DISubprogram(name: "log2f", scope: !877, file: !877, line: 133, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1164)
!1082 = !DISubprogram(name: "log2l", scope: !877, file: !877, line: 133, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1166)
!1084 = !DISubprogram(name: "logb", scope: !877, file: !877, line: 125, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1167)
!1086 = !DISubprogram(name: "logbf", scope: !877, file: !877, line: 125, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1088, line: 1168)
!1088 = !DISubprogram(name: "logbl", scope: !877, file: !877, line: 125, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1170)
!1090 = !DISubprogram(name: "lrint", scope: !877, file: !877, line: 314, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !108}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1171)
!1094 = !DISubprogram(name: "lrintf", scope: !877, file: !877, line: 314, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !262}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1172)
!1098 = !DISubprogram(name: "lrintl", scope: !877, file: !877, line: 314, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!91, !267}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1174)
!1102 = !DISubprogram(name: "lround", scope: !877, file: !877, line: 320, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1175)
!1104 = !DISubprogram(name: "lroundf", scope: !877, file: !877, line: 320, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1176)
!1106 = !DISubprogram(name: "lroundl", scope: !877, file: !877, line: 320, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1108, line: 1178)
!1108 = !DISubprogram(name: "nan", scope: !877, file: !877, line: 201, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1179)
!1110 = !DISubprogram(name: "nanf", scope: !877, file: !877, line: 201, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!262, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1180)
!1114 = !DISubprogram(name: "nanl", scope: !877, file: !877, line: 201, type: !1115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!267, !109}
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1182)
!1118 = !DISubprogram(name: "nearbyint", scope: !877, file: !877, line: 294, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1183)
!1120 = !DISubprogram(name: "nearbyintf", scope: !877, file: !877, line: 294, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1184)
!1122 = !DISubprogram(name: "nearbyintl", scope: !877, file: !877, line: 294, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1186)
!1124 = !DISubprogram(name: "nextafter", scope: !877, file: !877, line: 259, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1187)
!1126 = !DISubprogram(name: "nextafterf", scope: !877, file: !877, line: 259, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1128, line: 1188)
!1128 = !DISubprogram(name: "nextafterl", scope: !877, file: !877, line: 259, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1190)
!1130 = !DISubprogram(name: "nexttoward", scope: !877, file: !877, line: 261, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!108, !108, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1191)
!1134 = !DISubprogram(name: "nexttowardf", scope: !877, file: !877, line: 261, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!262, !262, !267}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1192)
!1138 = !DISubprogram(name: "nexttowardl", scope: !877, file: !877, line: 261, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1194)
!1140 = !DISubprogram(name: "remainder", scope: !877, file: !877, line: 272, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1195)
!1142 = !DISubprogram(name: "remainderf", scope: !877, file: !877, line: 272, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1144, line: 1196)
!1144 = !DISubprogram(name: "remainderl", scope: !877, file: !877, line: 272, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1198)
!1146 = !DISubprogram(name: "remquo", scope: !877, file: !877, line: 307, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!108, !108, !108, !906}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1199)
!1150 = !DISubprogram(name: "remquof", scope: !877, file: !877, line: 307, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!262, !262, !262, !906}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1200)
!1154 = !DISubprogram(name: "remquol", scope: !877, file: !877, line: 307, type: !1155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!267, !267, !267, !906}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1202)
!1158 = !DISubprogram(name: "rint", scope: !877, file: !877, line: 256, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1203)
!1160 = !DISubprogram(name: "rintf", scope: !877, file: !877, line: 256, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1204)
!1162 = !DISubprogram(name: "rintl", scope: !877, file: !877, line: 256, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1206)
!1164 = !DISubprogram(name: "round", scope: !877, file: !877, line: 298, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1207)
!1166 = !DISubprogram(name: "roundf", scope: !877, file: !877, line: 298, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1168, line: 1208)
!1168 = !DISubprogram(name: "roundl", scope: !877, file: !877, line: 298, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1210)
!1170 = !DISubprogram(name: "scalbln", scope: !877, file: !877, line: 290, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!108, !108, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1211)
!1174 = !DISubprogram(name: "scalblnf", scope: !877, file: !877, line: 290, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!262, !262, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1212)
!1178 = !DISubprogram(name: "scalblnl", scope: !877, file: !877, line: 290, type: !1179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!267, !267, !91}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1182, line: 1214)
!1182 = !DISubprogram(name: "scalbn", scope: !877, file: !877, line: 276, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1215)
!1184 = !DISubprogram(name: "scalbnf", scope: !877, file: !877, line: 276, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!262, !262, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1216)
!1188 = !DISubprogram(name: "scalbnl", scope: !877, file: !877, line: 276, type: !1189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!267, !267, !82}
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1218)
!1192 = !DISubprogram(name: "tgamma", scope: !877, file: !877, line: 235, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1219)
!1194 = !DISubprogram(name: "tgammaf", scope: !877, file: !877, line: 235, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1220)
!1196 = !DISubprogram(name: "tgammal", scope: !877, file: !877, line: 235, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1222)
!1198 = !DISubprogram(name: "trunc", scope: !877, file: !877, line: 302, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 1223)
!1200 = !DISubprogram(name: "truncf", scope: !877, file: !877, line: 302, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1202, line: 1224)
!1202 = !DISubprogram(name: "truncl", scope: !877, file: !877, line: 302, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 58)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1205, line: 94, baseType: !1206)
!1205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 59)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1205, line: 68, baseType: !29)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 62)
!1210 = !DISubprogram(name: "feclearexcept", scope: !1211, file: !1211, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 63)
!1213 = !DISubprogram(name: "fegetexceptflag", scope: !1211, file: !1211, line: 75, type: !1214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!82, !1216, !82}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 64)
!1218 = !DISubprogram(name: "feraiseexcept", scope: !1211, file: !1211, line: 78, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 65)
!1220 = !DISubprogram(name: "fesetexceptflag", scope: !1211, file: !1211, line: 88, type: !1221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!82, !1223, !82}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 66)
!1226 = !DISubprogram(name: "fetestexcept", scope: !1211, file: !1211, line: 92, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 68)
!1228 = !DISubprogram(name: "fegetround", scope: !1211, file: !1211, line: 104, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 69)
!1230 = !DISubprogram(name: "fesetround", scope: !1211, file: !1211, line: 107, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 71)
!1232 = !DISubprogram(name: "fegetenv", scope: !1211, file: !1211, line: 114, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!82, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 72)
!1237 = !DISubprogram(name: "feholdexcept", scope: !1211, file: !1211, line: 119, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 73)
!1239 = !DISubprogram(name: "fesetenv", scope: !1211, file: !1211, line: 123, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!82, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 74)
!1245 = !DISubprogram(name: "feupdateenv", scope: !1211, file: !1211, line: 128, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 61)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 62)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 65)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 66)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 67)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 68)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 72)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 74)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 75)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 76)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 77)
!1259 = !{i32 2, !"Dwarf Version", i32 4}
!1260 = !{i32 2, !"Debug Info Version", i32 3}
!1261 = !{!1262, !1262, i64 0}
!1262 = !{!"long", !1263, i64 0}
!1263 = !{!"omnipotent char", !1264, i64 0}
!1264 = !{!"Simple C++ TBAA"}
!1265 = !{!1266, !1263, i64 2065}
!1266 = !{!"_ZTS5State", !1263, i64 16, !1267, i64 2064, !1263, i64 2080, !1268, i64 2088, !1270, i64 2112, !1272, i64 2208, !1273, i64 2480, !1274, i64 2608, !1275, i64 2736, !1263, i64 2760, !1263, i64 2768, !1276, i64 3280}
!1267 = !{!"_ZTS10ArithFlags", !1263, i64 0, !1263, i64 1, !1263, i64 2, !1263, i64 3, !1263, i64 4, !1263, i64 5, !1263, i64 6, !1263, i64 7, !1263, i64 8, !1263, i64 9, !1263, i64 10, !1263, i64 11, !1263, i64 12, !1263, i64 13, !1263, i64 14, !1263, i64 15}
!1268 = !{!"_ZTS8Segments", !1269, i64 0, !1263, i64 2, !1269, i64 4, !1263, i64 6, !1269, i64 8, !1263, i64 10, !1269, i64 12, !1263, i64 14, !1269, i64 16, !1263, i64 18, !1269, i64 20, !1263, i64 22}
!1269 = !{!"short", !1263, i64 0}
!1270 = !{!"_ZTS12AddressSpace", !1262, i64 0, !1271, i64 8, !1262, i64 16, !1271, i64 24, !1262, i64 32, !1271, i64 40, !1262, i64 48, !1271, i64 56, !1262, i64 64, !1271, i64 72, !1262, i64 80, !1271, i64 88}
!1271 = !{!"_ZTS3Reg", !1263, i64 0}
!1272 = !{!"_ZTS3GPR", !1262, i64 0, !1271, i64 8, !1262, i64 16, !1271, i64 24, !1262, i64 32, !1271, i64 40, !1262, i64 48, !1271, i64 56, !1262, i64 64, !1271, i64 72, !1262, i64 80, !1271, i64 88, !1262, i64 96, !1271, i64 104, !1262, i64 112, !1271, i64 120, !1262, i64 128, !1271, i64 136, !1262, i64 144, !1271, i64 152, !1262, i64 160, !1271, i64 168, !1262, i64 176, !1271, i64 184, !1262, i64 192, !1271, i64 200, !1262, i64 208, !1271, i64 216, !1262, i64 224, !1271, i64 232, !1262, i64 240, !1271, i64 248, !1262, i64 256, !1271, i64 264}
!1273 = !{!"_ZTS8X87Stack", !1263, i64 0}
!1274 = !{!"_ZTS3MMX", !1263, i64 0}
!1275 = !{!"_ZTS14FPUStatusFlags", !1263, i64 0, !1263, i64 1, !1263, i64 2, !1263, i64 3, !1263, i64 4, !1263, i64 5, !1263, i64 6, !1263, i64 7, !1263, i64 8, !1263, i64 9, !1263, i64 10, !1263, i64 11, !1263, i64 12, !1263, i64 13, !1263, i64 14, !1263, i64 15, !1263, i64 16, !1263, i64 17, !1263, i64 18, !1263, i64 19, !1263, i64 20}
!1276 = !{!"_ZTS13SegmentCaches", !1277, i64 0, !1277, i64 16, !1277, i64 32, !1277, i64 48, !1277, i64 64, !1277, i64 80}
!1277 = !{!"_ZTS13SegmentShadow", !1263, i64 0, !1278, i64 8, !1278, i64 12}
!1278 = !{!"int", !1263, i64 0}
!1279 = !{!1266, !1263, i64 2067}
!1280 = !{!1266, !1263, i64 2069}
!1281 = !{!1266, !1263, i64 2071}
!1282 = !{!1266, !1263, i64 2073}
!1283 = !{!1266, !1263, i64 2077}
!1284 = !{!1269, !1269, i64 0}
!1285 = !{!1263, !1263, i64 0}
