; ModuleID = 'mcsema/test0.target.opt.ll'
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @doTrans(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i67, align 8
  %12 = icmp ult i64 %8, 48
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
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
  %RDI.i105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i105, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %PC.i, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RDI.i105, align 8
  %50 = add i64 %46, -460
  %51 = add i64 %46, 9
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %51, i64* %54, align 8
  store i64 %53, i64* %6, align 8
  store i64 %50, i64* %3, align 8
  %55 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  %RAX.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %56 = load i64, i64* %RAX.i103, align 8
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %56, 1
  store i64 %58, i64* %RAX.i103, align 8
  %59 = icmp eq i64 %56, -1
  %60 = icmp eq i64 %58, 0
  %61 = or i1 %59, %60
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1
  %63 = trunc i64 %58 to i32
  %64 = and i32 %63, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  %69 = xor i64 %56, %58
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %27, align 1
  %73 = icmp eq i64 %58, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %30, align 1
  %75 = lshr i64 %58, 63
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %33, align 1
  %77 = lshr i64 %56, 63
  %78 = xor i64 %75, %77
  %79 = add nuw nsw i64 %78, %75
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %39, align 1
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -24
  %84 = add i64 %57, 8
  store i64 %84, i64* %PC.i, align 8
  %85 = inttoptr i64 %83 to i64*
  store i64 %58, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -24
  %88 = load i64, i64* %PC.i, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RDI.i105, align 8
  %92 = add i64 %88, -429
  %93 = add i64 %88, 9
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  %97 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %55)
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -32
  %100 = load i64, i64* %RAX.i103, align 8
  %101 = load i64, i64* %PC.i, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC.i, align 8
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -32
  %106 = load i64, i64* %PC.i, align 8
  %107 = add i64 %106, 5
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i8 0, i8* %14, align 1
  %110 = trunc i64 %109 to i32
  %111 = and i32 %110, 255
  %112 = call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %116 = icmp eq i64 %109, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %30, align 1
  %118 = lshr i64 %109, 63
  %119 = trunc i64 %118 to i8
  store i8 %119, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %116, i64 140, i64 11
  %120 = add i64 %106, %.v
  store i64 %120, i64* %3, align 8
  br i1 %116, label %block_.L_4007a6, label %block_400725

block_400725:                                     ; preds = %entry
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %121 = add i64 %104, -16
  %122 = add i64 %120, 6
  store i64 %122, i64* %PC.i, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX.i103, align 8
  %125 = add i64 %104, -40
  %126 = add i64 %120, 10
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to i64*
  store i64 %124, i64* %127, align 8
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -32
  %130 = load i64, i64* %PC.i, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC.i, align 8
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RAX.i103, align 8
  %134 = add i64 %128, -48
  %135 = add i64 %130, 8
  store i64 %135, i64* %PC.i, align 8
  %136 = inttoptr i64 %134 to i64*
  store i64 %133, i64* %136, align 8
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -32
  %139 = load i64, i64* %PC.i, align 8
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RDI.i105, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %143 = add i64 %137, -24
  %144 = add i64 %139, 8
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RDX.i, align 8
  %147 = add i64 %139, -487
  %148 = add i64 %139, 13
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  store i64 %150, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  %152 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %97)
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400744

block_.L_400744:                                  ; preds = %block_.L_40077c, %block_400725
  %153 = phi i64 [ %288, %block_.L_40077c ], [ %.pre, %block_400725 ]
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -40
  %156 = add i64 %153, 4
  store i64 %156, i64* %PC.i, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RAX.i103, align 8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i62 = getelementptr inbounds %union.anon, %union.anon* %159, i64 0, i32 0
  %160 = add i64 %153, 7
  store i64 %160, i64* %PC.i, align 8
  %161 = inttoptr i64 %158 to i8*
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i64
  %164 = and i64 %163, 4294967295
  store i64 %164, i64* %RCX.i62, align 8
  %165 = sext i8 %162 to i32
  store i8 0, i8* %14, align 1
  %166 = and i32 %165, 255
  %167 = call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %171 = icmp eq i8 %162, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %30, align 1
  %173 = lshr i32 %165, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v3 = select i1 %171, i64 85, i64 16
  %175 = add i64 %153, %.v3
  store i64 %175, i64* %3, align 8
  br i1 %171, label %block_.L_400799, label %block_400754

block_400754:                                     ; preds = %block_.L_400744
  %176 = add i64 %175, 4
  store i64 %176, i64* %PC.i, align 8
  %177 = load i64, i64* %157, align 8
  store i64 %177, i64* %RAX.i103, align 8
  %178 = add i64 %175, 7
  store i64 %178, i64* %PC.i, align 8
  %179 = inttoptr i64 %177 to i8*
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i64
  %182 = and i64 %181, 4294967295
  store i64 %182, i64* %RCX.i62, align 8
  %183 = sext i8 %180 to i32
  %184 = add nsw i32 %183, -47
  %185 = icmp ult i8 %180, 47
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %184, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %183, %184
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %27, align 1
  %196 = icmp eq i32 %184, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %30, align 1
  %198 = lshr i32 %184, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %33, align 1
  %200 = lshr i32 %183, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %200
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %.v4 = select i1 %196, i64 16, i64 28
  %205 = add i64 %175, %.v4
  store i64 %205, i64* %3, align 8
  br i1 %196, label %block_400764, label %block_.L_400770

block_400764:                                     ; preds = %block_400754
  %206 = add i64 %154, -48
  %207 = add i64 %205, 4
  store i64 %207, i64* %PC.i, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX.i103, align 8
  %210 = add i64 %205, 7
  store i64 %210, i64* %PC.i, align 8
  %211 = inttoptr i64 %209 to i8*
  store i8 92, i8* %211, align 1
  %212 = load i64, i64* %PC.i, align 8
  %213 = add i64 %212, 17
  store i64 %213, i64* %3, align 8
  br label %block_.L_40077c

block_.L_400770:                                  ; preds = %block_400754
  %214 = add i64 %205, 4
  store i64 %214, i64* %PC.i, align 8
  %215 = load i64, i64* %157, align 8
  store i64 %215, i64* %RAX.i103, align 8
  %CL.i39 = bitcast %union.anon* %159 to i8*
  %216 = add i64 %205, 6
  store i64 %216, i64* %PC.i, align 8
  %217 = inttoptr i64 %215 to i8*
  %218 = load i8, i8* %217, align 1
  store i8 %218, i8* %CL.i39, align 1
  %219 = add i64 %154, -48
  %220 = add i64 %205, 10
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX.i103, align 8
  %223 = add i64 %205, 12
  store i64 %223, i64* %PC.i, align 8
  %224 = inttoptr i64 %222 to i8*
  store i8 %218, i8* %224, align 1
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_40077c

block_.L_40077c:                                  ; preds = %block_.L_400770, %block_400764
  %225 = phi i64 [ %.pre1, %block_.L_400770 ], [ %213, %block_400764 ]
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -40
  %228 = add i64 %225, 4
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %RAX.i103, align 8
  %232 = icmp eq i64 %230, -1
  %233 = icmp eq i64 %231, 0
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %14, align 1
  %236 = trunc i64 %231 to i32
  %237 = and i32 %236, 255
  %238 = call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %21, align 1
  %242 = xor i64 %230, %231
  %243 = lshr i64 %242, 4
  %244 = trunc i64 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %27, align 1
  %246 = icmp eq i64 %231, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %30, align 1
  %248 = lshr i64 %231, 63
  %249 = trunc i64 %248 to i8
  store i8 %249, i8* %33, align 1
  %250 = lshr i64 %230, 63
  %251 = xor i64 %248, %250
  %252 = add nuw nsw i64 %251, %248
  %253 = icmp eq i64 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %39, align 1
  %255 = add i64 %225, 12
  store i64 %255, i64* %PC.i, align 8
  store i64 %231, i64* %229, align 8
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -48
  %258 = load i64, i64* %PC.i, align 8
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %257 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %RAX.i103, align 8
  %263 = icmp eq i64 %261, -1
  %264 = icmp eq i64 %262, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %14, align 1
  %267 = trunc i64 %262 to i32
  %268 = and i32 %267, 255
  %269 = call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = xor i64 %261, %262
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %27, align 1
  %277 = icmp eq i64 %262, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %30, align 1
  %279 = lshr i64 %262, 63
  %280 = trunc i64 %279 to i8
  store i8 %280, i8* %33, align 1
  %281 = lshr i64 %261, 63
  %282 = xor i64 %279, %281
  %283 = add nuw nsw i64 %282, %279
  %284 = icmp eq i64 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %39, align 1
  %286 = add i64 %258, 12
  store i64 %286, i64* %PC.i, align 8
  store i64 %262, i64* %260, align 8
  %287 = load i64, i64* %PC.i, align 8
  %288 = add i64 %287, -80
  store i64 %288, i64* %3, align 8
  br label %block_.L_400744

block_.L_400799:                                  ; preds = %block_.L_400744
  %289 = add i64 %154, -32
  %290 = add i64 %175, 4
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RAX.i103, align 8
  %293 = add i64 %154, -8
  %294 = add i64 %175, 8
  store i64 %294, i64* %PC.i, align 8
  %295 = inttoptr i64 %293 to i64*
  store i64 %292, i64* %295, align 8
  %296 = load i64, i64* %PC.i, align 8
  %297 = add i64 %296, 13
  store i64 %297, i64* %3, align 8
  br label %block_.L_4007ae

block_.L_4007a6:                                  ; preds = %entry
  %298 = add i64 %104, -8
  %299 = add i64 %120, 8
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %298 to i64*
  store i64 0, i64* %300, align 8
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_4007ae

block_.L_4007ae:                                  ; preds = %block_.L_4007a6, %block_.L_400799
  %301 = phi i64 [ %.pre2, %block_.L_4007a6 ], [ %297, %block_.L_400799 ]
  %MEMORY.2 = phi %struct.Memory* [ %97, %block_.L_4007a6 ], [ %152, %block_.L_400799 ]
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -8
  %304 = add i64 %301, 4
  store i64 %304, i64* %PC.i, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RAX.i103, align 8
  %307 = load i64, i64* %RSP.i67, align 8
  %308 = add i64 %307, 48
  store i64 %308, i64* %RSP.i67, align 8
  %309 = icmp ugt i64 %307, -49
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %14, align 1
  %311 = trunc i64 %308 to i32
  %312 = and i32 %311, 255
  %313 = call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %21, align 1
  %317 = xor i64 %307, 16
  %318 = xor i64 %317, %308
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %27, align 1
  %322 = icmp eq i64 %308, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %30, align 1
  %324 = lshr i64 %308, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %33, align 1
  %326 = lshr i64 %307, 63
  %327 = xor i64 %324, %326
  %328 = add nuw nsw i64 %327, %324
  %329 = icmp eq i64 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %39, align 1
  %331 = add i64 %301, 9
  store i64 %331, i64* %PC.i, align 8
  %332 = add i64 %307, 56
  %333 = inttoptr i64 %308 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RBP.i, align 8
  store i64 %332, i64* %6, align 8
  %335 = add i64 %301, 10
  store i64 %335, i64* %PC.i, align 8
  %336 = inttoptr i64 %332 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %3, align 8
  %338 = add i64 %307, 64
  store i64 %338, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
