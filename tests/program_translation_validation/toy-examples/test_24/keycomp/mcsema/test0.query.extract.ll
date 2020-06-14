; ModuleID = 'mcsema/test0.query.opt.ll'
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

@0 = external hidden global i1
@1 = external hidden constant void ()*
@2 = external hidden constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)*

declare %struct.Memory* @sub_400630_read_bytes_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline
define %struct.Memory* @sub_400740_keycomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 {
block_400740:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #5
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
  %57 = tail call fastcc %struct.Memory* @ext_601070_strlen(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #5
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %23, align 1, !tbaa !1279
  %79 = xor i32 %70, %71
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
  br i1 %83, label %block_40076f, label %block_400764

block_400897:                                     ; preds = %block_40088a
  %93 = add i64 %400, -20
  %94 = add i64 %1554, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RAX, align 8, !tbaa !1261
  %99 = icmp ugt i32 %96, -5
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %16, align 1, !tbaa !1265
  %101 = and i32 %97, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #5
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %23, align 1, !tbaa !1279
  %106 = xor i32 %96, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %29, align 1, !tbaa !1280
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %32, align 1, !tbaa !1281
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %35, align 1, !tbaa !1282
  %114 = lshr i32 %96, 31
  %115 = xor i32 %112, %114
  %116 = add nuw nsw i32 %115, %112
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %41, align 1, !tbaa !1283
  %119 = add i64 %1554, 9
  store i64 %119, i64* %PC, align 8
  store i32 %97, i32* %95, align 4
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 14
  store i64 %121, i64* %PC, align 8, !tbaa !1261
  br label %block_4008ae

block_40076f:                                     ; preds = %block_400740
  %122 = add i64 %65, -16
  %123 = add i64 %92, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %RAX, align 8, !tbaa !1261
  %127 = icmp ugt i64 %125, -5
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %16, align 1, !tbaa !1265
  %129 = trunc i64 %126 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #5
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %23, align 1, !tbaa !1279
  %135 = xor i64 %125, %126
  %136 = lshr i64 %135, 4
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %29, align 1, !tbaa !1280
  %139 = icmp eq i64 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %32, align 1, !tbaa !1281
  %141 = lshr i64 %126, 63
  %142 = trunc i64 %141 to i8
  store i8 %142, i8* %35, align 1, !tbaa !1282
  %143 = lshr i64 %125, 63
  %144 = xor i64 %141, %143
  %145 = add nuw nsw i64 %144, %141
  %146 = icmp eq i64 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %41, align 1, !tbaa !1283
  %148 = add i64 %92, 12
  store i64 %148, i64* %PC, align 8
  store i64 %126, i64* %124, align 8
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -16
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RAX, align 8, !tbaa !1261
  %155 = add i64 %151, 7
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i8*
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i64
  %159 = and i64 %158, 4294967295
  store i64 %159, i64* %RCX, align 8, !tbaa !1261
  %160 = sext i8 %157 to i32
  %161 = add nsw i32 %160, -100
  %162 = icmp ult i8 %157, 100
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %16, align 1, !tbaa !1265
  %164 = and i32 %161, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #5
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %23, align 1, !tbaa !1279
  %169 = xor i32 %160, %161
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %29, align 1, !tbaa !1280
  %173 = icmp eq i32 %161, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %32, align 1, !tbaa !1281
  %175 = lshr i32 %161, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %35, align 1, !tbaa !1282
  %177 = lshr i32 %160, 31
  %178 = xor i32 %175, %177
  %179 = add nuw nsw i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %41, align 1, !tbaa !1283
  %.v25 = select i1 %173, i64 28, i64 16
  %182 = add i64 %151, %.v25
  store i64 %182, i64* %PC, align 8, !tbaa !1261
  br i1 %173, label %block_400797, label %block_40078b

block_40096a:                                     ; preds = %block_400918, %block_40094a
  %183 = phi i64 [ %1277, %block_400918 ], [ %671, %block_40094a ]
  %184 = add i64 %1253, -20
  %185 = add i64 %183, 7
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  store i32 48059, i32* %186, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400971

block_400ace:                                     ; preds = %block_400a83, %block_400aaf
  %187 = phi i64 [ %1677, %block_400a83 ], [ %865, %block_400aaf ]
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC, align 8
  %189 = load i64, i64* %1647, align 8
  store i64 %189, i64* %RAX, align 8, !tbaa !1261
  %190 = add i64 %189, 28
  %191 = add i64 %187, 8
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i8*
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i64
  %195 = and i64 %194, 4294967295
  store i64 %195, i64* %RCX, align 8, !tbaa !1261
  %196 = add i64 %187, 12
  store i64 %196, i64* %PC, align 8
  %197 = load i64, i64* %1647, align 8
  store i64 %197, i64* %RAX, align 8, !tbaa !1261
  %198 = add i64 %197, 29
  %199 = add i64 %187, 16
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i8*
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i64
  %203 = and i64 %202, 4294967295
  store i64 %203, i64* %RDX, align 8, !tbaa !1261
  %204 = sext i8 %193 to i32
  %205 = sext i8 %201 to i32
  %206 = sub nsw i32 %204, %205
  %207 = icmp ult i8 %193, %201
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %16, align 1, !tbaa !1265
  %209 = and i32 %206, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #5
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %23, align 1, !tbaa !1279
  %214 = xor i8 %201, %193
  %215 = zext i8 %214 to i32
  %216 = xor i32 %215, %206
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %29, align 1, !tbaa !1280
  %220 = icmp eq i32 %206, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %32, align 1, !tbaa !1281
  %222 = lshr i32 %206, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %35, align 1, !tbaa !1282
  %224 = lshr i32 %204, 31
  %225 = lshr i32 %205, 31
  %226 = xor i32 %225, %224
  %227 = xor i32 %222, %224
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %41, align 1, !tbaa !1283
  %.v45 = select i1 %220, i64 24, i64 120
  %231 = add i64 %187, %.v45
  store i64 %231, i64* %PC, align 8, !tbaa !1261
  br i1 %220, label %block_400ae6, label %block_400b46

block_4007e4:                                     ; preds = %block_4007b9
  %232 = add i64 %498, -16
  %233 = add i64 %529, 4
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX, align 8, !tbaa !1261
  %236 = add i64 %235, 3
  %237 = add i64 %529, 8
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i8*
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i64
  store i64 %240, i64* %RDI, align 8, !tbaa !1261
  %241 = add i64 %529, -548
  %242 = add i64 %529, 13
  %243 = load i64, i64* %RSP, align 8, !tbaa !1261
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %RSP, align 8, !tbaa !1261
  store i64 %241, i64* %PC, align 8, !tbaa !1261
  %246 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %241, %struct.Memory* %491)
  %247 = load i64, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8, !tbaa !1261
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -28
  %250 = load i32, i32* %EAX, align 4
  %251 = add i64 %247, 8
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %252, align 4
  %253 = load i64, i64* %RBP, align 8
  %254 = add i64 %253, -28
  %255 = load i64, i64* %PC, align 8
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RAX, align 8, !tbaa !1261
  %261 = icmp eq i32 %258, -1
  %262 = icmp eq i32 %259, 0
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %16, align 1, !tbaa !1265
  %265 = and i32 %259, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #5
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %23, align 1, !tbaa !1279
  %270 = xor i32 %258, %259
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %29, align 1, !tbaa !1280
  %274 = zext i1 %262 to i8
  store i8 %274, i8* %32, align 1, !tbaa !1281
  %275 = lshr i32 %259, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %35, align 1, !tbaa !1282
  %277 = lshr i32 %258, 31
  %278 = xor i32 %275, %277
  %279 = add nuw nsw i32 %278, %275
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %41, align 1, !tbaa !1283
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %283 = sext i32 %259 to i64
  %284 = lshr i64 %283, 32
  store i64 %284, i64* %282, align 8, !tbaa !1261
  %285 = load i32, i32* %EDI, align 4
  %286 = add i64 %255, 9
  store i64 %286, i64* %PC, align 8
  %287 = sext i32 %285 to i64
  %288 = shl nuw i64 %284, 32
  %289 = or i64 %288, %260
  %290 = sdiv i64 %289, %287
  %291 = shl i64 %290, 32
  %292 = ashr exact i64 %291, 32
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %296, label %294

; <label>:294:                                    ; preds = %block_4007e4
  %295 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %286, %struct.Memory* %246) #6
  %.pre = load i32, i32* %EAX, align 4
  %.pre1 = load i64, i64* %PC, align 8
  %.pre2 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:296:                                    ; preds = %block_4007e4
  %297 = srem i64 %289, %287
  %298 = and i64 %290, 4294967295
  store i64 %298, i64* %RAX, align 8, !tbaa !1261
  %299 = and i64 %297, 4294967295
  store i64 %299, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 0, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %300 = trunc i64 %290 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %296, %294
  %301 = phi i64 [ %.pre2, %294 ], [ %253, %296 ]
  %302 = phi i64 [ %.pre1, %294 ], [ %286, %296 ]
  %303 = phi i32 [ %.pre, %294 ], [ %300, %296 ]
  %304 = phi %struct.Memory* [ %295, %294 ], [ %246, %296 ]
  %305 = add i32 %303, -7
  %306 = icmp ult i32 %303, 7
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %16, align 1, !tbaa !1265
  %308 = and i32 %305, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308) #5
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %23, align 1, !tbaa !1279
  %313 = xor i32 %303, %305
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %29, align 1, !tbaa !1280
  %317 = icmp eq i32 %305, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %32, align 1, !tbaa !1281
  %319 = lshr i32 %305, 31
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %35, align 1, !tbaa !1282
  %321 = lshr i32 %303, 31
  %322 = xor i32 %319, %321
  %323 = add nuw nsw i32 %322, %321
  %324 = icmp eq i32 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %41, align 1, !tbaa !1283
  %.v28 = select i1 %317, i64 21, i64 9
  %326 = add i64 %302, %.v28
  store i64 %326, i64* %PC, align 8, !tbaa !1261
  br i1 %317, label %block_400817, label %block_40080b

block_40084e:                                     ; preds = %block_40082b, %block_400817
  %327 = phi i64 [ %1023, %block_40082b ], [ %892, %block_400817 ]
  %328 = add i64 %301, -4
  %329 = add i64 %327, 7
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i32*
  store i32 -6, i32* %330, align 4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 770
  store i64 %332, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_400a78:                                     ; preds = %block_400a36
  %333 = add i64 %647, 3
  store i64 %333, i64* %PC, align 8
  %334 = load i32, i32* %624, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX, align 8, !tbaa !1261
  %336 = add i64 %620, -4
  %337 = add i64 %647, 6
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 %334, i32* %338, align 4
  %339 = load i64, i64* %PC, align 8
  %340 = add i64 %339, 217
  store i64 %340, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_400b4c:                                     ; preds = %block_400b46, %block_400b41
  %341 = phi i64 [ %.pre12, %block_400b46 ], [ %426, %block_400b41 ]
  %MEMORY.3 = phi %struct.Memory* [ %1636, %block_400b46 ], [ %MEMORY.4, %block_400b41 ]
  %342 = add i64 %341, 5
  br label %block_400b51

block_40078b:                                     ; preds = %block_40076f
  %343 = add i64 %149, -4
  %344 = add i64 %182, 7
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i32*
  store i32 -2, i32* %345, align 4
  %346 = load i64, i64* %PC, align 8
  %347 = add i64 %346, 965
  store i64 %347, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_4007d8:                                     ; preds = %block_4007b9
  %348 = add i64 %498, -4
  %349 = add i64 %529, 7
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  store i32 -4, i32* %350, align 4
  %351 = load i64, i64* %PC, align 8
  %352 = add i64 %351, 888
  store i64 %352, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_400842:                                     ; preds = %block_40082b
  %353 = add i64 %301, -20
  %354 = add i64 %1023, 7
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 -4, i32* %355, align 4
  %356 = load i64, i64* %PC, align 8
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -16
  %359 = add i64 %356, 21
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX, align 8, !tbaa !1261
  %362 = add i64 %361, 5
  %363 = add i64 %356, 25
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i8*
  %365 = load i8, i8* %364, align 1
  %366 = and i8 %365, 15
  %367 = zext i8 %366 to i64
  %368 = zext i8 %366 to i32
  store i64 %367, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #5
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %23, align 1, !tbaa !1279
  %373 = icmp eq i8 %366, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %366, i8* %DL, align 1, !tbaa !1284
  %375 = add i64 %357, -33
  %376 = add i64 %356, 33
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i8*
  store i8 %366, i8* %377, align 1
  %378 = load i64, i64* %RBP, align 8
  %379 = add i64 %378, -16
  %380 = load i64, i64* %PC, align 8
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %379 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RAX, align 8, !tbaa !1261
  %384 = add i64 %383, 5
  %385 = add i64 %380, 8
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i8*
  %387 = load i8, i8* %386, align 1
  %388 = and i8 %387, -16
  %389 = zext i8 %388 to i64
  %390 = zext i8 %388 to i32
  store i64 %389, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #5
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %23, align 1, !tbaa !1279
  %395 = icmp eq i8 %388, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %388, i8* %DL, align 1, !tbaa !1284
  %397 = add i64 %378, -34
  %398 = add i64 %380, 19
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to i8*
  store i8 %388, i8* %399, align 1
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -33
  %402 = load i64, i64* %PC, align 8
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %401 to i8*
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i64
  store i64 %406, i64* %RCX, align 8, !tbaa !1261
  %407 = zext i8 %405 to i32
  %408 = add nsw i32 %407, -3
  %409 = icmp ult i8 %405, 3
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %16, align 1, !tbaa !1265
  %411 = and i32 %408, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #5
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %23, align 1, !tbaa !1279
  %416 = xor i32 %407, %408
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %29, align 1, !tbaa !1280
  %420 = icmp eq i32 %408, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %32, align 1, !tbaa !1281
  %422 = lshr i32 %408, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v31 = select i1 %420, i64 13, i64 40
  %424 = add i64 %402, %.v31
  store i64 %424, i64* %PC, align 8, !tbaa !1261
  br i1 %420, label %block_40088a, label %block_4008a5

block_400b41:                                     ; preds = %block_400ae6, %block_400b24, %block_400b3a
  %425 = phi i64 [ %1463, %block_400ae6 ], [ %1098, %block_400b24 ], [ %.pre11, %block_400b3a ]
  %MEMORY.4 = phi %struct.Memory* [ %1414, %block_400ae6 ], [ %1074, %block_400b24 ], [ %1074, %block_400b3a ]
  %426 = add i64 %425, 11
  store i64 %426, i64* %PC, align 8, !tbaa !1261
  br label %block_400b4c

block_400b3a:                                     ; preds = %block_400b24
  %427 = load i64, i64* %RBP, align 8
  %428 = add i64 %427, -20
  %429 = add i64 %1098, 7
  store i64 %429, i64* %PC, align 8
  %430 = inttoptr i64 %428 to i32*
  store i32 -32, i32* %430, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400b41

; <label>:431:                                    ; preds = %block_4008ae
  %432 = shl i32 %1211, 1
  %433 = icmp slt i32 %1211, 0
  %434 = icmp slt i32 %432, 0
  %435 = xor i1 %433, %434
  br label %445

; <label>:436:                                    ; preds = %block_4008ae
  %437 = and i32 %1208, 31
  %438 = zext i32 %437 to i64
  %439 = add nuw nsw i64 %438, 4294967295
  %440 = and i64 %439, 4294967295
  %441 = shl i64 %1212, %440
  %442 = trunc i64 %441 to i32
  %443 = icmp slt i32 %442, 0
  %444 = shl i32 %442, 1
  br label %445

; <label>:445:                                    ; preds = %436, %431
  %446 = phi i1 [ %433, %431 ], [ %443, %436 ]
  %447 = phi i1 [ %435, %431 ], [ false, %436 ]
  %448 = phi i32 [ %432, %431 ], [ %444, %436 ]
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX, align 8, !tbaa !1261
  %450 = zext i1 %446 to i8
  store i8 %450, i8* %16, align 1, !tbaa !1284
  %451 = and i32 %448, 254
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451) #5
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %23, align 1, !tbaa !1284
  store i8 0, i8* %29, align 1, !tbaa !1284
  %456 = icmp eq i32 %448, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %32, align 1, !tbaa !1284
  %458 = lshr i32 %448, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %35, align 1, !tbaa !1284
  %460 = zext i1 %447 to i8
  store i8 %460, i8* %41, align 1, !tbaa !1284
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_4008ae, %445
  %461 = phi i32 [ %448, %445 ], [ %1211, %block_4008ae ]
  %462 = add i64 %1186, 41
  store i64 %462, i64* %PC, align 8
  store i32 %461, i32* %1207, align 4
  %.pre4 = load i64, i64* %RBP, align 8
  %.pre5 = load i64, i64* %PC, align 8
  %463 = add i64 %.pre4, -20
  %464 = add i64 %.pre5, 4
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  store i8 0, i8* %16, align 1, !tbaa !1265
  %467 = and i32 %466, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467) #5
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %472 = icmp eq i32 %466, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %32, align 1, !tbaa !1281
  %474 = lshr i32 %466, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v33 = select i1 %472, i64 22, i64 10
  %476 = add i64 %.pre5, %.v33
  store i64 %476, i64* %PC, align 8, !tbaa !1261
  br i1 %472, label %block_400918, label %block_40090c

block_4007b9:                                     ; preds = %block_400797
  %477 = add i64 %1325, -16
  %478 = add i64 %1324, 4
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX, align 8, !tbaa !1261
  %481 = add i64 %480, 2
  %482 = add i64 %1324, 8
  store i64 %482, i64* %PC, align 8
  %483 = inttoptr i64 %481 to i8*
  %484 = load i8, i8* %483, align 1
  %485 = zext i8 %484 to i64
  store i64 %485, i64* %RDI, align 8, !tbaa !1261
  %486 = add i64 %1324, -505
  %487 = add i64 %1324, 13
  %488 = load i64, i64* %RSP, align 8, !tbaa !1261
  %489 = add i64 %488, -8
  %490 = inttoptr i64 %489 to i64*
  store i64 %487, i64* %490, align 8
  store i64 %489, i64* %RSP, align 8, !tbaa !1261
  store i64 %486, i64* %PC, align 8, !tbaa !1261
  %491 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %486, %struct.Memory* %1300)
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -24
  %494 = load i32, i32* %EAX, align 4
  %495 = load i64, i64* %PC, align 8
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %497, align 4
  %498 = load i64, i64* %RBP, align 8
  %499 = add i64 %498, -24
  %500 = load i64, i64* %PC, align 8
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = shl i32 %503, 1
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RAX, align 8, !tbaa !1261
  %506 = lshr i32 %503, 30
  %507 = and i32 %506, 1
  %508 = add i32 %504, -26
  %509 = icmp ult i32 %504, 26
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %16, align 1, !tbaa !1265
  %511 = and i32 %508, 254
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511) #5
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %23, align 1, !tbaa !1279
  %516 = xor i32 %504, 16
  %517 = xor i32 %516, %508
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %29, align 1, !tbaa !1280
  %521 = icmp eq i32 %508, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %32, align 1, !tbaa !1281
  %523 = lshr i32 %508, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %35, align 1, !tbaa !1282
  %525 = xor i32 %523, %507
  %526 = add nuw nsw i32 %525, %507
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %41, align 1, !tbaa !1283
  %.v27 = select i1 %521, i64 27, i64 15
  %529 = add i64 %500, %.v27
  store i64 %529, i64* %PC, align 8, !tbaa !1261
  br i1 %521, label %block_4007e4, label %block_4007d8

block_4009cc:                                     ; preds = %block_400971.block_4009cc_crit_edge, %block_4009b4
  %.pre-phi23 = phi i32* [ %.pre22, %block_400971.block_4009cc_crit_edge ], [ %679, %block_4009b4 ]
  %530 = phi i64 [ %834, %block_400971.block_4009cc_crit_edge ], [ %705, %block_4009b4 ]
  %531 = add i64 %530, 7
  store i64 %531, i64* %PC, align 8
  store i32 48351, i32* %.pre-phi23, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_4009d3

block_400a36:                                     ; preds = %block_400a12
  store i64 10000, i64* %RAX, align 8, !tbaa !1261
  %532 = add i64 %1508, 8
  store i64 %532, i64* %PC, align 8
  %533 = load i32, i32* %1483, align 4
  %534 = xor i32 %533, 13631488
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RCX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %536 = and i32 %533, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536) #5
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %23, align 1, !tbaa !1279
  %541 = icmp eq i32 %534, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %32, align 1, !tbaa !1281
  %543 = lshr i32 %533, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %545 = add i64 %1508, 17
  store i64 %545, i64* %PC, align 8
  store i32 %534, i32* %1483, align 4
  %546 = load i64, i64* %RBP, align 8
  %547 = add i64 %546, -60
  %548 = load i64, i64* %PC, align 8
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %547 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = lshr i32 %551, 3
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = lshr i32 %551, 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RCX, align 8, !tbaa !1261
  store i8 %554, i8* %16, align 1, !tbaa !1284
  %557 = and i32 %555, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557) #5
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %23, align 1, !tbaa !1284
  store i8 0, i8* %29, align 1, !tbaa !1284
  %562 = icmp eq i32 %555, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %32, align 1, !tbaa !1284
  store i8 0, i8* %35, align 1, !tbaa !1284
  store i8 0, i8* %41, align 1, !tbaa !1284
  %564 = add i64 %548, 9
  store i64 %564, i64* %PC, align 8
  store i32 %555, i32* %550, align 4
  %565 = load i64, i64* %RBP, align 8
  %566 = add i64 %565, -60
  %567 = load i64, i64* %PC, align 8
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = add i32 %570, -226
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RCX, align 8, !tbaa !1261
  %573 = icmp ult i32 %570, 226
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %16, align 1, !tbaa !1265
  %575 = and i32 %571, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575) #5
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %23, align 1, !tbaa !1279
  %580 = xor i32 %570, %571
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %29, align 1, !tbaa !1280
  %584 = icmp eq i32 %571, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %32, align 1, !tbaa !1281
  %586 = lshr i32 %571, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %35, align 1, !tbaa !1282
  %588 = lshr i32 %570, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %41, align 1, !tbaa !1283
  %593 = add i64 %567, 12
  store i64 %593, i64* %PC, align 8
  store i32 %571, i32* %569, align 4
  %594 = load i64, i64* %RBP, align 8
  %595 = add i64 %594, -60
  %596 = load i64, i64* %PC, align 8
  %597 = add i64 %596, 3
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %595 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RCX, align 8, !tbaa !1261
  %601 = add i64 %594, -68
  %602 = load i32, i32* %EAX, align 4
  %603 = add i64 %596, 6
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %601 to i32*
  store i32 %602, i32* %604, align 4
  %605 = load i32, i32* %ECX, align 4
  %606 = zext i32 %605 to i64
  %607 = load i64, i64* %PC, align 8
  store i64 %606, i64* %RAX, align 8, !tbaa !1261
  store i64 0, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %608 = load i64, i64* %RBP, align 8
  %609 = add i64 %608, -68
  %610 = add i64 %607, 7
  store i64 %610, i64* %PC, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RCX, align 8, !tbaa !1261
  %div = udiv i32 %605, %612
  %614 = zext i32 %div to i64
  %615 = urem i32 %605, %612
  %616 = zext i32 %615 to i64
  store i64 %614, i64* %RAX, align 8, !tbaa !1261
  store i64 %616, i64* %RDX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 0, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %617 = add i64 %608, -60
  %618 = add i64 %607, 12
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  store i32 %div, i32* %619, align 4
  %620 = load i64, i64* %RBP, align 8
  %621 = add i64 %620, -60
  %622 = load i64, i64* %PC, align 8
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC, align 8
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = add i32 %625, -3
  %627 = icmp ult i32 %625, 3
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %16, align 1, !tbaa !1265
  %629 = and i32 %626, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629) #5
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %23, align 1, !tbaa !1279
  %634 = xor i32 %625, %626
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %29, align 1, !tbaa !1280
  %638 = icmp eq i32 %626, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %32, align 1, !tbaa !1281
  %640 = lshr i32 %626, 31
  %641 = trunc i32 %640 to i8
  store i8 %641, i8* %35, align 1, !tbaa !1282
  %642 = lshr i32 %625, 31
  %643 = xor i32 %640, %642
  %644 = add nuw nsw i32 %643, %642
  %645 = icmp eq i32 %644, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %41, align 1, !tbaa !1283
  %.v42 = select i1 %638, i64 21, i64 10
  %647 = add i64 %622, %.v42
  store i64 %647, i64* %PC, align 8, !tbaa !1261
  br i1 %638, label %block_400a83, label %block_400a78

block_40094a:                                     ; preds = %block_400918
  %648 = add i64 %1277, 4
  store i64 %648, i64* %PC, align 8
  %649 = load i16, i16* %1257, align 2
  %650 = or i16 %649, -21846
  %651 = zext i16 %650 to i64
  store i64 %651, i64* %RAX, align 8, !tbaa !1261
  %652 = zext i16 %650 to i32
  %653 = add nsw i32 %652, -65211
  %654 = icmp ult i16 %650, -325
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %16, align 1, !tbaa !1265
  %656 = and i32 %653, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656) #5
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %23, align 1, !tbaa !1279
  %661 = xor i16 %650, 16
  %662 = zext i16 %661 to i32
  %663 = xor i32 %662, %653
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %29, align 1, !tbaa !1280
  %667 = icmp eq i32 %653, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %32, align 1, !tbaa !1281
  %669 = lshr i32 %653, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v35 = select i1 %667, i64 20, i64 32
  %671 = add i64 %1277, %.v35
  store i64 %671, i64* %PC, align 8, !tbaa !1261
  br i1 %667, label %block_40095e, label %block_40096a

block_4009b4:                                     ; preds = %block_400971
  %672 = add i64 %807, -56
  %673 = add i64 %834, 3
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX, align 8, !tbaa !1261
  %677 = add i64 %807, -20
  %678 = add i64 %834, 6
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = sub i32 %675, %680
  %682 = icmp ult i32 %675, %680
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %16, align 1, !tbaa !1265
  %684 = and i32 %681, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684) #5
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %23, align 1, !tbaa !1279
  %689 = xor i32 %680, %675
  %690 = xor i32 %689, %681
  %691 = lshr i32 %690, 4
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %29, align 1, !tbaa !1280
  %694 = icmp eq i32 %681, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %32, align 1, !tbaa !1281
  %696 = lshr i32 %681, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %35, align 1, !tbaa !1282
  %698 = lshr i32 %675, 31
  %699 = lshr i32 %680, 31
  %700 = xor i32 %699, %698
  %701 = xor i32 %696, %698
  %702 = add nuw nsw i32 %701, %700
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %41, align 1, !tbaa !1283
  %.v37 = select i1 %694, i64 12, i64 24
  %705 = add i64 %834, %.v37
  store i64 %705, i64* %PC, align 8, !tbaa !1261
  br i1 %694, label %block_4009c0, label %block_4009cc

block_400971:                                     ; preds = %block_40095e, %block_40096a
  %706 = phi i64 [ %1531, %block_40095e ], [ %.pre6, %block_40096a ]
  store i64 0, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i64 8, i64* %RDX, align 8, !tbaa !1261
  %707 = load i64, i64* %RBP, align 8
  %708 = add i64 %707, -16
  %709 = add i64 %706, 11
  store i64 %709, i64* %PC, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  %712 = add i64 %711, 12
  store i64 %712, i64* %RAX, align 8, !tbaa !1261
  %713 = icmp ugt i64 %711, -13
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %16, align 1, !tbaa !1265
  %715 = trunc i64 %712 to i32
  %716 = and i32 %715, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716) #5
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %23, align 1, !tbaa !1279
  %721 = xor i64 %711, %712
  %722 = lshr i64 %721, 4
  %723 = trunc i64 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %29, align 1, !tbaa !1280
  %725 = icmp eq i64 %712, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %32, align 1, !tbaa !1281
  %727 = lshr i64 %712, 63
  %728 = trunc i64 %727 to i8
  store i8 %728, i8* %35, align 1, !tbaa !1282
  %729 = lshr i64 %711, 63
  %730 = xor i64 %727, %729
  %731 = add nuw nsw i64 %730, %727
  %732 = icmp eq i64 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %41, align 1, !tbaa !1283
  store i64 %712, i64* %RSI, align 8, !tbaa !1261
  %734 = add i64 %706, -833
  %735 = add i64 %706, 23
  %736 = load i64, i64* %RSP, align 8, !tbaa !1261
  %737 = add i64 %736, -8
  %738 = inttoptr i64 %737 to i64*
  store i64 %735, i64* %738, align 8
  store i64 %737, i64* %RSP, align 8, !tbaa !1261
  store i64 %734, i64* %PC, align 8, !tbaa !1261
  %739 = tail call %struct.Memory* @sub_400630_read_bytes_renamed_(%struct.State* nonnull %0, i64 %734, %struct.Memory* %1246)
  %740 = load i64, i64* %RBP, align 8
  %741 = add i64 %740, -44
  %742 = load i32, i32* %EAX, align 4
  %743 = load i64, i64* %PC, align 8
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %741 to i32*
  store i32 %742, i32* %745, align 4
  %746 = load i64, i64* %RBP, align 8
  %747 = add i64 %746, -44
  %748 = load i64, i64* %PC, align 8
  %749 = add i64 %748, 3
  store i64 %749, i64* %PC, align 8
  %750 = inttoptr i64 %747 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = zext i32 %751 to i64
  %753 = xor i64 %752, -1534560611
  %754 = trunc i64 %753 to i32
  %755 = and i64 %753, 4294967295
  store i64 %755, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %756 = and i32 %754, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756) #5
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %23, align 1, !tbaa !1279
  %761 = icmp eq i32 %754, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %32, align 1, !tbaa !1281
  %763 = lshr i32 %754, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %765 = add i64 %746, -48
  %766 = add i64 %748, 11
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %765 to i32*
  store i32 %754, i32* %767, align 4
  %768 = load i64, i64* %RBP, align 8
  %769 = add i64 %768, -48
  %770 = load i64, i64* %PC, align 8
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = lshr i32 %773, 15
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = lshr i32 %773, 16
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX, align 8, !tbaa !1261
  store i8 %776, i8* %16, align 1, !tbaa !1284
  %779 = and i32 %777, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779) #5
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %23, align 1, !tbaa !1284
  store i8 0, i8* %29, align 1, !tbaa !1284
  %784 = icmp eq i32 %777, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %32, align 1, !tbaa !1284
  store i8 0, i8* %35, align 1, !tbaa !1284
  store i8 0, i8* %41, align 1, !tbaa !1284
  %786 = add i64 %768, -52
  %787 = add i64 %770, 9
  store i64 %787, i64* %PC, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 %777, i32* %788, align 4
  %789 = load i64, i64* %RBP, align 8
  %790 = add i64 %789, -48
  %791 = load i64, i64* %PC, align 8
  %792 = add i64 %791, 3
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %790 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = and i32 %794, 65535
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %797 = and i32 %794, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797) #5
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %23, align 1, !tbaa !1279
  %802 = icmp eq i32 %795, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %804 = add i64 %789, -56
  %805 = add i64 %791, 11
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %804 to i32*
  store i32 %795, i32* %806, align 4
  %807 = load i64, i64* %RBP, align 8
  %808 = add i64 %807, -52
  %809 = load i64, i64* %PC, align 8
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC, align 8
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = add i32 %812, -79
  %814 = icmp ult i32 %812, 79
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %16, align 1, !tbaa !1265
  %816 = and i32 %813, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816) #5
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %23, align 1, !tbaa !1279
  %821 = xor i32 %812, %813
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %29, align 1, !tbaa !1280
  %825 = icmp eq i32 %813, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %32, align 1, !tbaa !1281
  %827 = lshr i32 %813, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %35, align 1, !tbaa !1282
  %829 = lshr i32 %812, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %829
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %41, align 1, !tbaa !1283
  %.v36 = select i1 %825, i64 10, i64 34
  %834 = add i64 %809, %.v36
  store i64 %834, i64* %PC, align 8, !tbaa !1261
  br i1 %825, label %block_4009b4, label %block_400971.block_4009cc_crit_edge

block_400971.block_4009cc_crit_edge:              ; preds = %block_400971
  %.pre20 = add i64 %807, -20
  %.pre22 = inttoptr i64 %.pre20 to i32*
  br label %block_4009cc

block_400aaf:                                     ; preds = %block_400a83
  %835 = add i64 %1677, 4
  store i64 %835, i64* %PC, align 8
  %836 = load i64, i64* %1647, align 8
  store i64 %836, i64* %RAX, align 8, !tbaa !1261
  %837 = add i64 %836, 29
  %838 = add i64 %1677, 8
  store i64 %838, i64* %PC, align 8
  %839 = inttoptr i64 %837 to i8*
  %840 = load i8, i8* %839, align 1
  %841 = sext i8 %840 to i64
  %842 = and i64 %841, 4294967295
  store i64 %842, i64* %RCX, align 8, !tbaa !1261
  %843 = sext i8 %840 to i32
  %844 = add nsw i32 %843, -100
  %845 = icmp ult i8 %840, 100
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %16, align 1, !tbaa !1265
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847) #5
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %23, align 1, !tbaa !1279
  %852 = xor i32 %843, %844
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %29, align 1, !tbaa !1280
  %856 = icmp eq i32 %844, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %32, align 1, !tbaa !1281
  %858 = lshr i32 %844, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %35, align 1, !tbaa !1282
  %860 = lshr i32 %843, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %860
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %41, align 1, !tbaa !1283
  %.v44 = select i1 %856, i64 17, i64 31
  %865 = add i64 %1677, %.v44
  store i64 %865, i64* %PC, align 8, !tbaa !1261
  br i1 %856, label %block_400ac0, label %block_400ace

block_400817:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %866 = add i64 %301, -16
  %867 = add i64 %326, 4
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RAX, align 8, !tbaa !1261
  %870 = add i64 %869, 4
  %871 = add i64 %326, 8
  store i64 %871, i64* %PC, align 8
  %872 = inttoptr i64 %870 to i8*
  %873 = load i8, i8* %872, align 1
  %874 = and i8 %873, 15
  %875 = zext i8 %874 to i64
  %876 = zext i8 %874 to i32
  store i64 %875, i64* %RCX, align 8, !tbaa !1261
  %877 = add nsw i32 %876, -1
  %878 = icmp eq i8 %874, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %16, align 1, !tbaa !1265
  %880 = and i32 %877, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880) #5
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %23, align 1, !tbaa !1279
  %885 = lshr i32 %877, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %29, align 1, !tbaa !1280
  %888 = icmp eq i32 %877, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %32, align 1, !tbaa !1281
  %890 = lshr i32 %877, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v29 = select i1 %888, i64 20, i64 55
  %892 = add i64 %326, %.v29
  store i64 %892, i64* %PC, align 8, !tbaa !1261
  br i1 %888, label %block_40082b, label %block_40084e

block_4007ad:                                     ; preds = %block_400797
  %893 = add i64 %1325, -4
  %894 = add i64 %1324, 7
  store i64 %894, i64* %PC, align 8
  %895 = inttoptr i64 %893 to i32*
  store i32 -3, i32* %895, align 4
  %896 = load i64, i64* %PC, align 8
  %897 = add i64 %896, 931
  store i64 %897, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_4009d3:                                     ; preds = %block_4009c0, %block_4009cc
  %898 = phi i64 [ %1026, %block_4009c0 ], [ %.pre7, %block_4009cc ]
  store i64 8, i64* %RDX, align 8, !tbaa !1261
  %899 = load i64, i64* %RBP, align 8
  %900 = add i64 %899, -20
  %901 = add i64 %898, 8
  store i64 %901, i64* %PC, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RDI, align 8, !tbaa !1261
  %905 = add i64 %899, -16
  %906 = add i64 %898, 12
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  %909 = add i64 %908, 20
  store i64 %909, i64* %RAX, align 8, !tbaa !1261
  %910 = icmp ugt i64 %908, -21
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %16, align 1, !tbaa !1265
  %912 = trunc i64 %909 to i32
  %913 = and i32 %912, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913) #5
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %23, align 1, !tbaa !1279
  %918 = xor i64 %908, 16
  %919 = xor i64 %918, %909
  %920 = lshr i64 %919, 4
  %921 = trunc i64 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %29, align 1, !tbaa !1280
  %923 = icmp eq i64 %909, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %32, align 1, !tbaa !1281
  %925 = lshr i64 %909, 63
  %926 = trunc i64 %925 to i8
  store i8 %926, i8* %35, align 1, !tbaa !1282
  %927 = lshr i64 %908, 63
  %928 = xor i64 %925, %927
  %929 = add nuw nsw i64 %928, %925
  %930 = icmp eq i64 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %41, align 1, !tbaa !1283
  store i64 %909, i64* %RSI, align 8, !tbaa !1261
  %932 = add i64 %898, -931
  %933 = add i64 %898, 24
  %934 = load i64, i64* %RSP, align 8, !tbaa !1261
  %935 = add i64 %934, -8
  %936 = inttoptr i64 %935 to i64*
  store i64 %933, i64* %936, align 8
  store i64 %935, i64* %RSP, align 8, !tbaa !1261
  store i64 %932, i64* %PC, align 8, !tbaa !1261
  %937 = tail call %struct.Memory* @sub_400630_read_bytes_renamed_(%struct.State* nonnull %0, i64 %932, %struct.Memory* %739)
  %938 = load i64, i64* %RBP, align 8
  %939 = add i64 %938, -60
  %940 = load i32, i32* %EAX, align 4
  %941 = load i64, i64* %PC, align 8
  %942 = add i64 %941, 3
  store i64 %942, i64* %PC, align 8
  %943 = inttoptr i64 %939 to i32*
  store i32 %940, i32* %943, align 4
  %944 = load i64, i64* %RBP, align 8
  %945 = add i64 %944, -60
  %946 = load i64, i64* %PC, align 8
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC, align 8
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = add i32 %949, -3
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX, align 8, !tbaa !1261
  %952 = icmp ult i32 %949, 3
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %16, align 1, !tbaa !1265
  %954 = and i32 %950, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954) #5
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %23, align 1, !tbaa !1279
  %959 = xor i32 %949, %950
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %29, align 1, !tbaa !1280
  %963 = icmp eq i32 %950, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %32, align 1, !tbaa !1281
  %965 = lshr i32 %950, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %35, align 1, !tbaa !1282
  %967 = lshr i32 %949, 31
  %968 = xor i32 %965, %967
  %969 = add nuw nsw i32 %968, %967
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %41, align 1, !tbaa !1283
  %972 = add i64 %946, 9
  store i64 %972, i64* %PC, align 8
  store i32 %950, i32* %948, align 4
  %973 = load i64, i64* %RBP, align 8
  %974 = add i64 %973, -60
  %975 = load i64, i64* %PC, align 8
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC, align 8
  %977 = inttoptr i64 %974 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = and i32 %978, 7
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RAX, align 8, !tbaa !1261
  %981 = tail call i32 @llvm.ctpop.i32(i32 %979) #5
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  %985 = icmp eq i32 %979, 0
  %986 = zext i1 %985 to i8
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 %984, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i8 %986, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v38 = select i1 %985, i64 27, i64 15
  %987 = add i64 %975, %.v38
  store i64 %987, i64* %PC, align 8, !tbaa !1261
  br i1 %985, label %block_400a12, label %block_400a06

block_400b46:                                     ; preds = %block_400ace
  %988 = add i64 %1643, -64
  %989 = add i64 %231, 3
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RAX, align 8, !tbaa !1261
  %993 = add i64 %1643, -20
  %994 = add i64 %231, 6
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to i32*
  store i32 %991, i32* %995, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400b4c

block_40082b:                                     ; preds = %block_400817
  %996 = add i64 %892, 4
  store i64 %996, i64* %PC, align 8
  %997 = load i64, i64* %868, align 8
  store i64 %997, i64* %RAX, align 8, !tbaa !1261
  %998 = add i64 %997, 4
  %999 = add i64 %892, 8
  store i64 %999, i64* %PC, align 8
  %1000 = inttoptr i64 %998 to i8*
  %1001 = load i8, i8* %1000, align 1
  %1002 = and i8 %1001, -16
  %1003 = zext i8 %1002 to i64
  %1004 = zext i8 %1002 to i32
  store i64 %1003, i64* %RCX, align 8, !tbaa !1261
  %1005 = add nsw i32 %1004, -48
  %1006 = icmp ult i8 %1002, 48
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %16, align 1, !tbaa !1265
  %1008 = and i32 %1005, 240
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008) #5
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %23, align 1, !tbaa !1279
  %1013 = xor i8 %1002, 16
  %1014 = zext i8 %1013 to i32
  %1015 = xor i32 %1014, %1005
  %1016 = lshr exact i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %29, align 1, !tbaa !1280
  %1019 = icmp eq i32 %1005, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %32, align 1, !tbaa !1281
  %1021 = lshr i32 %1005, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v30 = select i1 %1019, i64 23, i64 35
  %1023 = add i64 %892, %.v30
  store i64 %1023, i64* %PC, align 8, !tbaa !1261
  br i1 %1019, label %block_400842, label %block_40084e

block_4009c0:                                     ; preds = %block_4009b4
  %1024 = add i64 %705, 7
  store i64 %1024, i64* %PC, align 8
  store i32 0, i32* %679, align 4
  %1025 = load i64, i64* %PC, align 8
  %1026 = add i64 %1025, 12
  store i64 %1026, i64* %PC, align 8, !tbaa !1261
  br label %block_4009d3

block_400a2a:                                     ; preds = %block_400a12
  %1027 = add i64 %1479, -4
  %1028 = add i64 %1508, 7
  store i64 %1028, i64* %PC, align 8
  %1029 = inttoptr i64 %1027 to i32*
  store i32 -22, i32* %1029, align 4
  %1030 = load i64, i64* %PC, align 8
  %1031 = add i64 %1030, 294
  store i64 %1031, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_4008a5:                                     ; preds = %block_40088a, %block_400842
  %1032 = phi i64 [ %1554, %block_40088a ], [ %424, %block_400842 ]
  %1033 = add i64 %400, -20
  %1034 = add i64 %1032, 3
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = add i32 %1036, 5
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX, align 8, !tbaa !1261
  %1039 = icmp ugt i32 %1036, -6
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %16, align 1, !tbaa !1265
  %1041 = and i32 %1037, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041) #5
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %23, align 1, !tbaa !1279
  %1046 = xor i32 %1036, %1037
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %29, align 1, !tbaa !1280
  %1050 = icmp eq i32 %1037, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %32, align 1, !tbaa !1281
  %1052 = lshr i32 %1037, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %35, align 1, !tbaa !1282
  %1054 = lshr i32 %1036, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1052
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %41, align 1, !tbaa !1283
  %1059 = add i64 %1032, 9
  store i64 %1059, i64* %PC, align 8
  store i32 %1037, i32* %1035, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_4008ae

block_400b24:                                     ; preds = %block_400ae6
  %1060 = add i64 %1448, -16
  %1061 = add i64 %1463, 4
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RAX, align 8, !tbaa !1261
  %1064 = add i64 %1063, 31
  %1065 = add i64 %1463, 8
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1064 to i8*
  %1067 = load i8, i8* %1066, align 1
  %1068 = zext i8 %1067 to i64
  store i64 %1068, i64* %RDI, align 8, !tbaa !1261
  %1069 = add i64 %1463, -1380
  %1070 = add i64 %1463, 13
  %1071 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1072 = add i64 %1071, -8
  %1073 = inttoptr i64 %1072 to i64*
  store i64 %1070, i64* %1073, align 8
  store i64 %1072, i64* %RSP, align 8, !tbaa !1261
  store i64 %1069, i64* %PC, align 8, !tbaa !1261
  %1074 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1069, %struct.Memory* %1414)
  %1075 = load i32, i32* %EAX, align 4
  %1076 = load i64, i64* %PC, align 8
  %1077 = add i32 %1075, -4
  %1078 = icmp ult i32 %1075, 4
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %16, align 1, !tbaa !1265
  %1080 = and i32 %1077, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080) #5
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %23, align 1, !tbaa !1279
  %1085 = xor i32 %1075, %1077
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %29, align 1, !tbaa !1280
  %1089 = icmp eq i32 %1077, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %32, align 1, !tbaa !1281
  %1091 = lshr i32 %1077, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %35, align 1, !tbaa !1282
  %1093 = lshr i32 %1075, 31
  %1094 = xor i32 %1091, %1093
  %1095 = add nuw nsw i32 %1094, %1093
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %41, align 1, !tbaa !1283
  %.v47 = select i1 %1089, i64 16, i64 9
  %1098 = add i64 %1076, %.v47
  store i64 %1098, i64* %PC, align 8, !tbaa !1261
  br i1 %1089, label %block_400b41, label %block_400b3a

block_400ac0:                                     ; preds = %block_400aaf
  %1099 = add i64 %1643, -64
  %1100 = add i64 %865, 3
  store i64 %1100, i64* %PC, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RAX, align 8, !tbaa !1261
  %1104 = add i64 %1643, -20
  %1105 = add i64 %865, 6
  store i64 %1105, i64* %PC, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = xor i32 %1107, %1102
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RAX, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1110 = and i32 %1108, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110) #5
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %23, align 1, !tbaa !1279
  %1115 = icmp eq i32 %1108, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %32, align 1, !tbaa !1281
  %1117 = lshr i32 %1108, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %1119 = add i64 %865, 9
  store i64 %1119, i64* %PC, align 8
  store i32 %1108, i32* %1106, align 4
  %1120 = load i64, i64* %PC, align 8
  %1121 = add i64 %1120, 136
  br label %block_400b51

block_4008ae:                                     ; preds = %block_4008a5, %block_400897
  %1122 = phi i64 [ %.pre3, %block_4008a5 ], [ %121, %block_400897 ]
  %1123 = load i64, i64* %RBP, align 8
  %1124 = add i64 %1123, -16
  %1125 = add i64 %1122, 4
  store i64 %1125, i64* %PC, align 8
  %1126 = inttoptr i64 %1124 to i64*
  %1127 = load i64, i64* %1126, align 8
  store i64 %1127, i64* %RAX, align 8, !tbaa !1261
  %1128 = add i64 %1127, 6
  %1129 = add i64 %1122, 8
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i8*
  %1131 = load i8, i8* %1130, align 1
  %1132 = zext i8 %1131 to i64
  store i64 %1132, i64* %RDI, align 8, !tbaa !1261
  %1133 = add i64 %1122, -750
  %1134 = add i64 %1122, 13
  %1135 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1136 = add i64 %1135, -8
  %1137 = inttoptr i64 %1136 to i64*
  store i64 %1134, i64* %1137, align 8
  store i64 %1136, i64* %RSP, align 8, !tbaa !1261
  store i64 %1133, i64* %PC, align 8, !tbaa !1261
  %1138 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1133, %struct.Memory* %304)
  %1139 = load i8, i8* %AL, align 1
  %1140 = load i64, i64* %PC, align 8
  store i8 %1139, i8* %CL, align 1, !tbaa !1284
  %1141 = load i64, i64* %RBP, align 8
  %1142 = add i64 %1141, -35
  %1143 = add i64 %1140, 5
  store i64 %1143, i64* %PC, align 8
  %1144 = inttoptr i64 %1142 to i8*
  store i8 %1139, i8* %1144, align 1
  %1145 = load i64, i64* %RBP, align 8
  %1146 = add i64 %1145, -16
  %1147 = load i64, i64* %PC, align 8
  %1148 = add i64 %1147, 4
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1146 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %RDX, align 8, !tbaa !1261
  %1151 = add i64 %1150, 7
  %1152 = add i64 %1147, 8
  store i64 %1152, i64* %PC, align 8
  %1153 = inttoptr i64 %1151 to i8*
  %1154 = load i8, i8* %1153, align 1
  %1155 = zext i8 %1154 to i64
  store i64 %1155, i64* %RDI, align 8, !tbaa !1261
  %1156 = add i64 %1147, -768
  %1157 = add i64 %1147, 13
  %1158 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1159 = add i64 %1158, -8
  %1160 = inttoptr i64 %1159 to i64*
  store i64 %1157, i64* %1160, align 8
  store i64 %1159, i64* %RSP, align 8, !tbaa !1261
  store i64 %1156, i64* %PC, align 8, !tbaa !1261
  %1161 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1156, %struct.Memory* %1138)
  %1162 = load i64, i64* %RBP, align 8
  %1163 = add i64 %1162, -35
  %1164 = load i64, i64* %PC, align 8
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1163 to i8*
  %1167 = load i8, i8* %1166, align 1
  %1168 = zext i8 %1167 to i64
  %1169 = load i32, i32* %EAX, align 4
  %1170 = zext i32 %1169 to i64
  %1171 = or i64 %1170, %1168
  %1172 = trunc i64 %1171 to i32
  store i64 %1171, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1173 = and i32 %1172, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173) #5
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %23, align 1, !tbaa !1279
  %1178 = icmp eq i32 %1172, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %32, align 1, !tbaa !1281
  %1180 = lshr i32 %1172, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  %1182 = trunc i64 %1171 to i8
  store i8 %1182, i8* %CL, align 1, !tbaa !1284
  %1183 = add i64 %1164, 12
  store i64 %1183, i64* %PC, align 8
  store i8 %1182, i8* %1166, align 1
  %1184 = load i64, i64* %RBP, align 8
  %1185 = add i64 %1184, -35
  %1186 = load i64, i64* %PC, align 8
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC, align 8
  %1188 = inttoptr i64 %1185 to i8*
  %1189 = load i8, i8* %1188, align 1
  %1190 = zext i8 %1189 to i64
  %1191 = xor i64 %1190, 4294967295
  store i64 %1191, i64* %RAX, align 8, !tbaa !1261
  %1192 = trunc i64 %1191 to i32
  %1193 = add nsw i32 %1192, -70
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1194 = and i32 %1193, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194) #5
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %23, align 1, !tbaa !1279
  %1199 = xor i8 %1189, 16
  %1200 = zext i8 %1199 to i32
  %1201 = xor i32 %1200, %1193
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %29, align 1, !tbaa !1280
  store i8 0, i8* %32, align 1, !tbaa !1281
  store i8 1, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %1205 = add i64 %1184, -20
  %1206 = add i64 %1186, 33
  store i64 %1206, i64* %PC, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RCX, align 8, !tbaa !1261
  %1210 = add i64 %1186, 36
  store i64 %1210, i64* %PC, align 8
  %1211 = load i32, i32* %1207, align 4
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX, align 8, !tbaa !1261
  %1213 = add i64 %1186, 38
  store i64 %1213, i64* %PC, align 8
  %1214 = trunc i32 %1208 to i5
  switch i5 %1214, label %436 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %431
  ]

block_400918:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  store i64 0, i64* %RDI, align 8, !tbaa !1261
  store i8 0, i8* %16, align 1, !tbaa !1265
  store i8 1, i8* %23, align 1, !tbaa !1279
  store i8 1, i8* %32, align 1, !tbaa !1281
  store i8 0, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  store i8 0, i8* %29, align 1, !tbaa !1280
  store i64 4, i64* %RDX, align 8, !tbaa !1261
  %1215 = add i64 %.pre4, -16
  %1216 = add i64 %476, 11
  store i64 %1216, i64* %PC, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  %1219 = add i64 %1218, 8
  store i64 %1219, i64* %RAX, align 8, !tbaa !1261
  %1220 = icmp ugt i64 %1218, -9
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %16, align 1, !tbaa !1265
  %1222 = trunc i64 %1219 to i32
  %1223 = and i32 %1222, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223) #5
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %23, align 1, !tbaa !1279
  %1228 = xor i64 %1218, %1219
  %1229 = lshr i64 %1228, 4
  %1230 = trunc i64 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %29, align 1, !tbaa !1280
  %1232 = icmp eq i64 %1219, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %32, align 1, !tbaa !1281
  %1234 = lshr i64 %1219, 63
  %1235 = trunc i64 %1234 to i8
  store i8 %1235, i8* %35, align 1, !tbaa !1282
  %1236 = lshr i64 %1218, 63
  %1237 = xor i64 %1234, %1236
  %1238 = add nuw nsw i64 %1237, %1234
  %1239 = icmp eq i64 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %41, align 1, !tbaa !1283
  store i64 %1219, i64* %RSI, align 8, !tbaa !1261
  %1241 = add i64 %476, -744
  %1242 = add i64 %476, 23
  %1243 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1244 = add i64 %1243, -8
  %1245 = inttoptr i64 %1244 to i64*
  store i64 %1242, i64* %1245, align 8
  store i64 %1244, i64* %RSP, align 8, !tbaa !1261
  store i64 %1241, i64* %PC, align 8, !tbaa !1261
  %1246 = tail call %struct.Memory* @sub_400630_read_bytes_renamed_(%struct.State* nonnull %0, i64 %1241, %struct.Memory* %1161)
  %1247 = load i16, i16* %AX, align 2
  %1248 = load i64, i64* %PC, align 8
  store i16 %1247, i16* %CX, align 2, !tbaa !1285
  %1249 = load i64, i64* %RBP, align 8
  %1250 = add i64 %1249, -38
  %1251 = add i64 %1248, 7
  store i64 %1251, i64* %PC, align 8
  %1252 = inttoptr i64 %1250 to i16*
  store i16 %1247, i16* %1252, align 2
  %1253 = load i64, i64* %RBP, align 8
  %1254 = add i64 %1253, -38
  %1255 = load i64, i64* %PC, align 8
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %PC, align 8
  %1257 = inttoptr i64 %1254 to i16*
  %1258 = load i16, i16* %1257, align 2
  %1259 = or i16 %1258, 21845
  %1260 = zext i16 %1259 to i64
  store i64 %1260, i64* %RAX, align 8, !tbaa !1261
  %1261 = zext i16 %1259 to i32
  %1262 = add nsw i32 %1261, -56663
  %1263 = icmp ult i16 %1259, -8873
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %16, align 1, !tbaa !1265
  %1265 = and i32 %1262, 254
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265) #5
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %23, align 1, !tbaa !1279
  %1270 = lshr i32 %1262, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %29, align 1, !tbaa !1280
  %1273 = icmp eq i32 %1262, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %32, align 1, !tbaa !1281
  %1275 = lshr i32 %1262, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v34 = select i1 %1273, i64 20, i64 52
  %1277 = add i64 %1255, %.v34
  store i64 %1277, i64* %PC, align 8, !tbaa !1261
  br i1 %1273, label %block_40094a, label %block_40096a

block_400b51:                                     ; preds = %block_400ac0, %block_400b4c
  %1278 = phi i64 [ %342, %block_400b4c ], [ %1121, %block_400ac0 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.3, %block_400b4c ], [ %1636, %block_400ac0 ]
  %1279 = load i64, i64* %RBP, align 8
  %1280 = add i64 %1279, -20
  %1281 = add i64 %1278, 3
  store i64 %1281, i64* %PC, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RAX, align 8, !tbaa !1261
  %1285 = add i64 %1279, -4
  %1286 = add i64 %1278, 6
  store i64 %1286, i64* %PC, align 8
  %1287 = inttoptr i64 %1285 to i32*
  store i32 %1283, i32* %1287, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400b57

block_400797:                                     ; preds = %block_40076f
  %1288 = add i64 %182, 4
  store i64 %1288, i64* %PC, align 8
  %1289 = load i64, i64* %153, align 8
  store i64 %1289, i64* %RAX, align 8, !tbaa !1261
  %1290 = add i64 %1289, 1
  %1291 = add i64 %182, 8
  store i64 %1291, i64* %PC, align 8
  %1292 = inttoptr i64 %1290 to i8*
  %1293 = load i8, i8* %1292, align 1
  %1294 = zext i8 %1293 to i64
  store i64 %1294, i64* %RDI, align 8, !tbaa !1261
  %1295 = add i64 %182, -471
  %1296 = add i64 %182, 13
  %1297 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1298 = add i64 %1297, -8
  %1299 = inttoptr i64 %1298 to i64*
  store i64 %1296, i64* %1299, align 8
  store i64 %1298, i64* %RSP, align 8, !tbaa !1261
  store i64 %1295, i64* %PC, align 8, !tbaa !1261
  %1300 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1295, %struct.Memory* %57)
  %1301 = load i32, i32* %EAX, align 4
  %1302 = load i64, i64* %PC, align 8
  %1303 = add i32 %1301, -9
  %1304 = icmp ult i32 %1301, 9
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %16, align 1, !tbaa !1265
  %1306 = and i32 %1303, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306) #5
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %23, align 1, !tbaa !1279
  %1311 = xor i32 %1301, %1303
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %29, align 1, !tbaa !1280
  %1315 = icmp eq i32 %1303, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %32, align 1, !tbaa !1281
  %1317 = lshr i32 %1303, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %35, align 1, !tbaa !1282
  %1319 = lshr i32 %1301, 31
  %1320 = xor i32 %1317, %1319
  %1321 = add nuw nsw i32 %1320, %1319
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %41, align 1, !tbaa !1283
  %.v26 = select i1 %1315, i64 21, i64 9
  %1324 = add i64 %1302, %.v26
  store i64 %1324, i64* %PC, align 8, !tbaa !1261
  %1325 = load i64, i64* %RBP, align 8
  br i1 %1315, label %block_4007b9, label %block_4007ad

block_400ae6:                                     ; preds = %block_400ace
  store i64 15, i64* %RAX, align 8, !tbaa !1261
  %1326 = add i64 %231, 9
  store i64 %1326, i64* %PC, align 8
  %1327 = load i64, i64* %1647, align 8
  store i64 %1327, i64* %RCX, align 8, !tbaa !1261
  %1328 = add i64 %1327, 31
  %1329 = add i64 %231, 13
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i8*
  %1331 = load i8, i8* %1330, align 1
  %1332 = sext i8 %1331 to i64
  %1333 = and i64 %1332, 4294967295
  store i64 %1333, i64* %RDX, align 8, !tbaa !1261
  %1334 = add i64 %231, 17
  store i64 %1334, i64* %PC, align 8
  %1335 = load i64, i64* %1647, align 8
  store i64 %1335, i64* %RCX, align 8, !tbaa !1261
  %1336 = add i64 %1335, 30
  %1337 = add i64 %231, 21
  store i64 %1337, i64* %PC, align 8
  %1338 = inttoptr i64 %1336 to i8*
  %1339 = load i8, i8* %1338, align 1
  %1340 = sext i8 %1339 to i64
  %1341 = and i64 %1340, 4294967295
  store i64 %1341, i64* %RSI, align 8, !tbaa !1261
  %1342 = sext i8 %1339 to i32
  %1343 = sext i8 %1331 to i32
  %1344 = sub nsw i32 %1343, %1342
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RDX, align 8, !tbaa !1261
  %1346 = lshr i32 %1344, 31
  %1347 = sub nsw i32 15, %1344
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX, align 8, !tbaa !1261
  %1349 = icmp ugt i32 %1344, 15
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %16, align 1, !tbaa !1265
  %1351 = and i32 %1347, 255
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351) #5
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %23, align 1, !tbaa !1279
  %1356 = xor i32 %1344, %1347
  %1357 = lshr i32 %1356, 4
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  store i8 %1359, i8* %29, align 1, !tbaa !1280
  %1360 = icmp eq i32 %1347, 0
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %32, align 1, !tbaa !1281
  %1362 = lshr i32 %1347, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %35, align 1, !tbaa !1282
  %1364 = add nuw nsw i32 %1362, %1346
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %41, align 1, !tbaa !1283
  %1367 = add i64 %1643, -20
  %1368 = add i64 %231, 28
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = add i32 %1370, %1347
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX, align 8, !tbaa !1261
  %1373 = icmp ult i32 %1371, %1347
  %1374 = icmp ult i32 %1371, %1370
  %1375 = or i1 %1373, %1374
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %16, align 1, !tbaa !1265
  %1377 = and i32 %1371, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #5
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %23, align 1, !tbaa !1279
  %1382 = xor i32 %1370, %1347
  %1383 = xor i32 %1382, %1371
  %1384 = lshr i32 %1383, 4
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  store i8 %1386, i8* %29, align 1, !tbaa !1280
  %1387 = icmp eq i32 %1371, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %32, align 1, !tbaa !1281
  %1389 = lshr i32 %1371, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %35, align 1, !tbaa !1282
  %1391 = lshr i32 %1370, 31
  %1392 = xor i32 %1389, %1362
  %1393 = xor i32 %1389, %1391
  %1394 = add nuw nsw i32 %1392, %1393
  %1395 = icmp eq i32 %1394, 2
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %41, align 1, !tbaa !1283
  %1397 = add i64 %231, 31
  store i64 %1397, i64* %PC, align 8
  store i32 %1371, i32* %1369, align 4
  %1398 = load i64, i64* %RBP, align 8
  %1399 = add i64 %1398, -16
  %1400 = load i64, i64* %PC, align 8
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RCX, align 8, !tbaa !1261
  %1404 = add i64 %1403, 28
  %1405 = add i64 %1400, 8
  store i64 %1405, i64* %PC, align 8
  %1406 = inttoptr i64 %1404 to i8*
  %1407 = load i8, i8* %1406, align 1
  %1408 = zext i8 %1407 to i64
  store i64 %1408, i64* %RDI, align 8, !tbaa !1261
  %1409 = add i64 %1400, -1349
  %1410 = add i64 %1400, 13
  %1411 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1412 = add i64 %1411, -8
  %1413 = inttoptr i64 %1412 to i64*
  store i64 %1410, i64* %1413, align 8
  store i64 %1412, i64* %RSP, align 8, !tbaa !1261
  store i64 %1409, i64* %PC, align 8, !tbaa !1261
  %1414 = tail call %struct.Memory* @sub_4005c0_to_byte_renamed_(%struct.State* nonnull %0, i64 %1409, %struct.Memory* %1636)
  %1415 = load i64, i64* %RBP, align 8
  %1416 = add i64 %1415, -20
  %1417 = load i64, i64* %PC, align 8
  %1418 = add i64 %1417, 3
  store i64 %1418, i64* %PC, align 8
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = load i32, i32* %EAX, align 4
  %1422 = sub i32 %1420, %1421
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RDX, align 8, !tbaa !1261
  %1424 = icmp ult i32 %1420, %1421
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %16, align 1, !tbaa !1265
  %1426 = and i32 %1422, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426) #5
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %23, align 1, !tbaa !1279
  %1431 = xor i32 %1421, %1420
  %1432 = xor i32 %1431, %1422
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %29, align 1, !tbaa !1280
  %1436 = icmp eq i32 %1422, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %32, align 1, !tbaa !1281
  %1438 = lshr i32 %1422, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %35, align 1, !tbaa !1282
  %1440 = lshr i32 %1420, 31
  %1441 = lshr i32 %1421, 31
  %1442 = xor i32 %1441, %1440
  %1443 = xor i32 %1438, %1440
  %1444 = add nuw nsw i32 %1443, %1442
  %1445 = icmp eq i32 %1444, 2
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %41, align 1, !tbaa !1283
  %1447 = add i64 %1417, 8
  store i64 %1447, i64* %PC, align 8
  store i32 %1422, i32* %1419, align 4
  %1448 = load i64, i64* %RBP, align 8
  %1449 = add i64 %1448, -20
  %1450 = load i64, i64* %PC, align 8
  %1451 = add i64 %1450, 4
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1449 to i32*
  %1453 = load i32, i32* %1452, align 4
  store i8 0, i8* %16, align 1, !tbaa !1265
  %1454 = and i32 %1453, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454) #5
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %1459 = icmp eq i32 %1453, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %32, align 1, !tbaa !1281
  %1461 = lshr i32 %1453, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v46 = select i1 %1459, i64 10, i64 39
  %1463 = add i64 %1450, %.v46
  store i64 %1463, i64* %PC, align 8, !tbaa !1261
  br i1 %1459, label %block_400b24, label %block_400b41

block_400a12:                                     ; preds = %block_4009d3
  %1464 = add i64 %987, 3
  store i64 %1464, i64* %PC, align 8
  %1465 = load i32, i32* %977, align 4
  %1466 = xor i32 %1465, -2147483648
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RAX, align 8, !tbaa !1261
  %.lobit = lshr i32 %1465, 31
  %1468 = trunc i32 %.lobit to i8
  %.not = xor i8 %1468, 1
  store i8 %.not, i8* %16, align 1, !tbaa !1265
  %1469 = and i32 %1465, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469) #5
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %23, align 1, !tbaa !1279
  store i8 0, i8* %29, align 1, !tbaa !1280
  %1474 = icmp eq i32 %1466, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %32, align 1, !tbaa !1281
  %1476 = lshr i32 %1466, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %35, align 1, !tbaa !1282
  store i8 %.not, i8* %41, align 1, !tbaa !1283
  %1478 = add i64 %987, 11
  store i64 %1478, i64* %PC, align 8
  store i32 %1466, i32* %977, align 4
  %1479 = load i64, i64* %RBP, align 8
  %1480 = add i64 %1479, -60
  %1481 = load i64, i64* %PC, align 8
  %1482 = add i64 %1481, 7
  store i64 %1482, i64* %PC, align 8
  %1483 = inttoptr i64 %1480 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = add i32 %1484, -268435455
  %1486 = icmp ult i32 %1484, 268435455
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %16, align 1, !tbaa !1265
  %1488 = and i32 %1485, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488) #5
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %23, align 1, !tbaa !1279
  %1493 = xor i32 %1484, 16
  %1494 = xor i32 %1493, %1485
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %29, align 1, !tbaa !1280
  %1498 = icmp eq i32 %1485, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %32, align 1, !tbaa !1281
  %1500 = lshr i32 %1485, 31
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, i8* %35, align 1, !tbaa !1282
  %1502 = lshr i32 %1484, 31
  %1503 = xor i32 %1500, %1502
  %1504 = add nuw nsw i32 %1503, %1502
  %1505 = icmp eq i32 %1504, 2
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %41, align 1, !tbaa !1283
  %1507 = or i1 %1498, %1486
  %.v41 = select i1 %1507, i64 25, i64 13
  %1508 = add i64 %1481, %.v41
  store i64 %1508, i64* %PC, align 8, !tbaa !1261
  br i1 %1507, label %block_400a36, label %block_400a2a

block_400764:                                     ; preds = %block_400740
  %1509 = add i64 %92, 3
  store i64 %1509, i64* %PC, align 8
  %1510 = load i32, i32* %69, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX, align 8, !tbaa !1261
  %1512 = add i64 %65, -4
  %1513 = add i64 %92, 6
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to i32*
  store i32 %1510, i32* %1514, align 4
  %1515 = load i64, i64* %PC, align 8
  %1516 = add i64 %1515, 1005
  store i64 %1516, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_40090c:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1517 = add i64 %.pre4, -4
  %1518 = add i64 %476, 7
  store i64 %1518, i64* %PC, align 8
  %1519 = inttoptr i64 %1517 to i32*
  store i32 -7, i32* %1519, align 4
  %1520 = load i64, i64* %PC, align 8
  %1521 = add i64 %1520, 580
  store i64 %1521, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_40080b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1522 = add i64 %301, -4
  %1523 = add i64 %326, 7
  store i64 %1523, i64* %PC, align 8
  %1524 = inttoptr i64 %1522 to i32*
  store i32 -5, i32* %1524, align 4
  %1525 = load i64, i64* %PC, align 8
  %1526 = add i64 %1525, 837
  store i64 %1526, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_40095e:                                     ; preds = %block_40094a
  %1527 = add i64 %1253, -20
  %1528 = add i64 %671, 7
  store i64 %1528, i64* %PC, align 8
  %1529 = inttoptr i64 %1527 to i32*
  store i32 43690, i32* %1529, align 4
  %1530 = load i64, i64* %PC, align 8
  %1531 = add i64 %1530, 12
  store i64 %1531, i64* %PC, align 8, !tbaa !1261
  br label %block_400971

block_40088a:                                     ; preds = %block_400842
  %1532 = add i64 %400, -34
  %1533 = add i64 %424, 4
  store i64 %1533, i64* %PC, align 8
  %1534 = inttoptr i64 %1532 to i8*
  %1535 = load i8, i8* %1534, align 1
  %1536 = zext i8 %1535 to i64
  store i64 %1536, i64* %RAX, align 8, !tbaa !1261
  %1537 = zext i8 %1535 to i32
  %1538 = add nsw i32 %1537, -96
  %1539 = icmp ult i8 %1535, 96
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %16, align 1, !tbaa !1265
  %1541 = and i32 %1538, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541) #5
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %23, align 1, !tbaa !1279
  %1546 = xor i32 %1537, %1538
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %29, align 1, !tbaa !1280
  %1550 = icmp eq i32 %1538, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %32, align 1, !tbaa !1281
  %1552 = lshr i32 %1538, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %35, align 1, !tbaa !1282
  store i8 0, i8* %41, align 1, !tbaa !1283
  %.v32 = select i1 %1550, i64 13, i64 27
  %1554 = add i64 %424, %.v32
  store i64 %1554, i64* %PC, align 8, !tbaa !1261
  br i1 %1550, label %block_400897, label %block_4008a5

block_400a06:                                     ; preds = %block_4009d3
  %1555 = add i64 %973, -4
  %1556 = add i64 %987, 7
  store i64 %1556, i64* %PC, align 8
  %1557 = inttoptr i64 %1555 to i32*
  store i32 -21, i32* %1557, align 4
  %1558 = load i64, i64* %PC, align 8
  %1559 = add i64 %1558, 330
  store i64 %1559, i64* %PC, align 8, !tbaa !1261
  br label %block_400b57

block_400b57:                                     ; preds = %block_400a06, %block_40080b, %block_40090c, %block_400764, %block_400b51, %block_400a2a, %block_4007ad, %block_4007d8, %block_40078b, %block_400a78, %block_40084e
  %1560 = phi i64 [ %332, %block_40084e ], [ %.pre13, %block_400b51 ], [ %340, %block_400a78 ], [ %1031, %block_400a2a ], [ %1559, %block_400a06 ], [ %1521, %block_40090c ], [ %1526, %block_40080b ], [ %352, %block_4007d8 ], [ %897, %block_4007ad ], [ %347, %block_40078b ], [ %1516, %block_400764 ]
  %MEMORY.11 = phi %struct.Memory* [ %304, %block_40084e ], [ %MEMORY.10, %block_400b51 ], [ %937, %block_400a78 ], [ %937, %block_400a2a ], [ %937, %block_400a06 ], [ %1161, %block_40090c ], [ %304, %block_40080b ], [ %491, %block_4007d8 ], [ %1300, %block_4007ad ], [ %57, %block_40078b ], [ %57, %block_400764 ]
  %1561 = load i64, i64* %RBP, align 8
  %1562 = add i64 %1561, -4
  %1563 = add i64 %1560, 3
  store i64 %1563, i64* %PC, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RAX, align 8, !tbaa !1261
  %1567 = load i64, i64* %RSP, align 8
  %1568 = add i64 %1567, 80
  store i64 %1568, i64* %RSP, align 8, !tbaa !1261
  %1569 = icmp ugt i64 %1567, -81
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %16, align 1, !tbaa !1265
  %1571 = trunc i64 %1568 to i32
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572) #5
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %23, align 1, !tbaa !1279
  %1577 = xor i64 %1567, 16
  %1578 = xor i64 %1577, %1568
  %1579 = lshr i64 %1578, 4
  %1580 = trunc i64 %1579 to i8
  %1581 = and i8 %1580, 1
  store i8 %1581, i8* %29, align 1, !tbaa !1280
  %1582 = icmp eq i64 %1568, 0
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %32, align 1, !tbaa !1281
  %1584 = lshr i64 %1568, 63
  %1585 = trunc i64 %1584 to i8
  store i8 %1585, i8* %35, align 1, !tbaa !1282
  %1586 = lshr i64 %1567, 63
  %1587 = xor i64 %1584, %1586
  %1588 = add nuw nsw i64 %1587, %1584
  %1589 = icmp eq i64 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %41, align 1, !tbaa !1283
  %1591 = add i64 %1560, 8
  store i64 %1591, i64* %PC, align 8
  %1592 = add i64 %1567, 88
  %1593 = inttoptr i64 %1568 to i64*
  %1594 = load i64, i64* %1593, align 8
  store i64 %1594, i64* %RBP, align 8, !tbaa !1261
  store i64 %1592, i64* %RSP, align 8, !tbaa !1261
  %1595 = add i64 %1560, 9
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1592 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %PC, align 8, !tbaa !1261
  %1598 = add i64 %1567, 96
  store i64 %1598, i64* %RSP, align 8, !tbaa !1261
  ret %struct.Memory* %MEMORY.11

block_400a83:                                     ; preds = %block_400a36
  store i64 4, i64* %RDX, align 8, !tbaa !1261
  %1599 = add i64 %620, -20
  %1600 = add i64 %647, 8
  store i64 %1600, i64* %PC, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RDI, align 8, !tbaa !1261
  %1604 = add i64 %620, -16
  %1605 = add i64 %647, 12
  store i64 %1605, i64* %PC, align 8
  %1606 = inttoptr i64 %1604 to i64*
  %1607 = load i64, i64* %1606, align 8
  %1608 = add i64 %1607, 28
  store i64 %1608, i64* %RAX, align 8, !tbaa !1261
  %1609 = icmp ugt i64 %1607, -29
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %16, align 1, !tbaa !1265
  %1611 = trunc i64 %1608 to i32
  %1612 = and i32 %1611, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612) #5
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %23, align 1, !tbaa !1279
  %1617 = xor i64 %1607, 16
  %1618 = xor i64 %1617, %1608
  %1619 = lshr i64 %1618, 4
  %1620 = trunc i64 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %29, align 1, !tbaa !1280
  %1622 = icmp eq i64 %1608, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %32, align 1, !tbaa !1281
  %1624 = lshr i64 %1608, 63
  %1625 = trunc i64 %1624 to i8
  store i8 %1625, i8* %35, align 1, !tbaa !1282
  %1626 = lshr i64 %1607, 63
  %1627 = xor i64 %1624, %1626
  %1628 = add nuw nsw i64 %1627, %1624
  %1629 = icmp eq i64 %1628, 2
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %41, align 1, !tbaa !1283
  store i64 %1608, i64* %RSI, align 8, !tbaa !1261
  %1631 = add i64 %647, -1107
  %1632 = add i64 %647, 24
  %1633 = load i64, i64* %RSP, align 8, !tbaa !1261
  %1634 = add i64 %1633, -8
  %1635 = inttoptr i64 %1634 to i64*
  store i64 %1632, i64* %1635, align 8
  store i64 %1634, i64* %RSP, align 8, !tbaa !1261
  store i64 %1631, i64* %PC, align 8, !tbaa !1261
  %1636 = tail call %struct.Memory* @sub_400630_read_bytes_renamed_(%struct.State* nonnull %0, i64 %1631, %struct.Memory* %937)
  %1637 = load i64, i64* %RBP, align 8
  %1638 = add i64 %1637, -64
  %1639 = load i32, i32* %EAX, align 4
  %1640 = load i64, i64* %PC, align 8
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC, align 8
  %1642 = inttoptr i64 %1638 to i32*
  store i32 %1639, i32* %1642, align 4
  %1643 = load i64, i64* %RBP, align 8
  %1644 = add i64 %1643, -16
  %1645 = load i64, i64* %PC, align 8
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC, align 8
  %1647 = inttoptr i64 %1644 to i64*
  %1648 = load i64, i64* %1647, align 8
  store i64 %1648, i64* %RSI, align 8, !tbaa !1261
  %1649 = add i64 %1648, 28
  %1650 = add i64 %1645, 8
  store i64 %1650, i64* %PC, align 8
  %1651 = inttoptr i64 %1649 to i8*
  %1652 = load i8, i8* %1651, align 1
  %1653 = sext i8 %1652 to i64
  %1654 = and i64 %1653, 4294967295
  store i64 %1654, i64* %RAX, align 8, !tbaa !1261
  %1655 = sext i8 %1652 to i32
  %1656 = add nsw i32 %1655, -100
  %1657 = icmp ult i8 %1652, 100
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %16, align 1, !tbaa !1265
  %1659 = and i32 %1656, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659) #5
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %23, align 1, !tbaa !1279
  %1664 = xor i32 %1655, %1656
  %1665 = lshr i32 %1664, 4
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  store i8 %1667, i8* %29, align 1, !tbaa !1280
  %1668 = icmp eq i32 %1656, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %32, align 1, !tbaa !1281
  %1670 = lshr i32 %1656, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %35, align 1, !tbaa !1282
  %1672 = lshr i32 %1655, 31
  %1673 = xor i32 %1670, %1672
  %1674 = add nuw nsw i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %41, align 1, !tbaa !1283
  %.v43 = select i1 %1668, i64 17, i64 48
  %1677 = add i64 %1645, %.v43
  store i64 %1677, i64* %PC, align 8, !tbaa !1261
  br i1 %1668, label %block_400aaf, label %block_400ace
}

; Function Attrs: noinline
declare hidden fastcc %struct.Memory* @ext_601070_strlen(%struct.State*, %struct.Memory*) unnamed_addr #3

; Function Attrs: naked nobuiltin noinline
define dllexport void @keycomp() local_unnamed_addr #4 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400740;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @1) #5
  ret void
}

define hidden %struct.Memory* @keycomp_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400740_keycomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { naked nobuiltin noinline }
attributes #5 = { nounwind }
attributes #6 = { alwaysinline nobuiltin nounwind }

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
!1284 = !{!1263, !1263, i64 0}
!1285 = !{!1269, !1269, i64 0}
