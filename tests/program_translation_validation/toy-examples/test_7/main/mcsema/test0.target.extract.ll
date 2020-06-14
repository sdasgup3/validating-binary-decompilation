; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400834_type = type <{ [8 x i8] }>
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

@G__0x400834 = external global %G__0x400834_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400540.check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R14.i122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i122, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC.i, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %RBX.i170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %15 = load i64, i64* %RBX.i170, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %PC.i, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %7, -184
  store i64 %21, i64* %RSP.i13, align 8
  %22 = icmp ult i64 %18, 160
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %21
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %21, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %18, 63
  %44 = xor i64 %40, %43
  %45 = add nuw nsw i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = add i64 %20, 14
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 0, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -24
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 1, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -28
  %60 = load i64, i64* %PC.i, align 8
  %61 = add i64 %60, 7
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 0, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -28
  %65 = load i64, i64* %PC.i, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i154 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %RCX.i149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %68 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4006aa

block_.L_4006aa:                                  ; preds = %block_4006b4, %entry
  %69 = phi i64 [ %165, %block_4006b4 ], [ %.pre, %entry ]
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -28
  %72 = add i64 %69, 4
  store i64 %72, i64* %PC.i, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, -10
  %76 = icmp ult i32 %74, 10
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %24, align 1
  %78 = and i32 %75, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78)
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %31, align 1
  %83 = xor i32 %74, %75
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %36, align 1
  %87 = icmp eq i32 %75, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %39, align 1
  %89 = lshr i32 %75, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %42, align 1
  %91 = lshr i32 %74, 31
  %92 = xor i32 %89, %91
  %93 = add nuw nsw i32 %92, %91
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %48, align 1
  %96 = icmp ne i8 %90, 0
  %97 = xor i1 %96, %94
  %.v = select i1 %97, i64 10, i64 38
  %98 = add i64 %69, %.v
  store i64 %98, i64* %3, align 8
  br i1 %97, label %block_4006b4, label %block_.L_4006d0

block_4006b4:                                     ; preds = %block_.L_4006aa
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC.i, align 8
  %100 = load i32, i32* %73, align 4
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX.i154, align 8
  %103 = icmp eq i32 %100, -1
  %104 = icmp eq i32 %101, 0
  %105 = or i1 %103, %104
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %24, align 1
  %107 = and i32 %101, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %31, align 1
  %112 = xor i32 %100, %101
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %36, align 1
  %116 = icmp eq i32 %101, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %39, align 1
  %118 = lshr i32 %101, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %42, align 1
  %120 = lshr i32 %100, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %48, align 1
  %125 = add i64 %98, 10
  store i64 %125, i64* %PC.i, align 8
  %126 = load i32, i32* %73, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX.i149, align 8
  %128 = shl nsw i64 %127, 2
  %129 = add i64 %70, -80
  %130 = add i64 %129, %128
  %131 = add i64 %98, 14
  store i64 %131, i64* %PC.i, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 %101, i32* %132, align 4
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -28
  %135 = load i64, i64* %PC.i, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC.i, align 8
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, 1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i154, align 8
  %141 = icmp eq i32 %138, -1
  %142 = icmp eq i32 %139, 0
  %143 = or i1 %141, %142
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %24, align 1
  %145 = and i32 %139, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %31, align 1
  %150 = xor i32 %138, %139
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %36, align 1
  %154 = icmp eq i32 %139, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %39, align 1
  %156 = lshr i32 %139, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %42, align 1
  %158 = lshr i32 %138, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %156
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %48, align 1
  %163 = add i64 %135, 9
  store i64 %163, i64* %PC.i, align 8
  store i32 %139, i32* %137, align 4
  %164 = load i64, i64* %PC.i, align 8
  %165 = add i64 %164, -33
  store i64 %165, i64* %3, align 8
  br label %block_.L_4006aa

block_.L_4006d0:                                  ; preds = %block_.L_4006aa
  store i64 40, i64* %RAX.i154, align 8
  %RDI.i132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 40, i64* %RDI.i132, align 8
  %166 = add i64 %70, -24
  store i64 %166, i64* %RCX.i149, align 8
  %167 = add i64 %70, -88
  %168 = add i64 %98, 15
  store i64 %168, i64* %PC.i, align 8
  %169 = inttoptr i64 %167 to i64*
  store i64 %166, i64* %169, align 8
  %170 = load i64, i64* %PC.i, align 8
  %171 = add i64 %170, -671
  %172 = add i64 %170, 5
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %176 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -96
  %179 = load i64, i64* %RAX.i154, align 8
  %180 = load i64, i64* %PC.i, align 8
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %178 to i64*
  store i64 %179, i64* %182, align 8
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -28
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 7
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %184 to i32*
  store i32 0, i32* %187, align 4
  %RDX.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_4006ef

block_.L_4006ef:                                  ; preds = %block_4006f9, %block_.L_4006d0
  %188 = phi i64 [ %287, %block_4006f9 ], [ %.pre1, %block_.L_4006d0 ]
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -28
  %191 = add i64 %188, 4
  store i64 %191, i64* %PC.i, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, -10
  %195 = icmp ult i32 %193, 10
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %24, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %31, align 1
  %202 = xor i32 %193, %194
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %36, align 1
  %206 = icmp eq i32 %194, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = lshr i32 %194, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %42, align 1
  %210 = lshr i32 %193, 31
  %211 = xor i32 %208, %210
  %212 = add nuw nsw i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %48, align 1
  %215 = icmp ne i8 %209, 0
  %216 = xor i1 %215, %213
  %.v2 = select i1 %216, i64 10, i64 41
  %217 = add i64 %188, %.v2
  store i64 %217, i64* %3, align 8
  br i1 %216, label %block_4006f9, label %block_.L_400718

block_4006f9:                                     ; preds = %block_.L_4006ef
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC.i, align 8
  %219 = load i32, i32* %192, align 4
  %220 = add i32 %219, 1
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX.i154, align 8
  %222 = icmp eq i32 %219, -1
  %223 = icmp eq i32 %220, 0
  %224 = or i1 %222, %223
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %24, align 1
  %226 = and i32 %220, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %31, align 1
  %231 = xor i32 %219, %220
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %36, align 1
  %235 = icmp eq i32 %220, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %39, align 1
  %237 = lshr i32 %220, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %42, align 1
  %239 = lshr i32 %219, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %237
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %48, align 1
  %244 = add i64 %189, -96
  %245 = add i64 %217, 10
  store i64 %245, i64* %PC.i, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RCX.i149, align 8
  %248 = add i64 %217, 14
  store i64 %248, i64* %PC.i, align 8
  %249 = load i32, i32* %192, align 4
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RDX.i103, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add i64 %251, %247
  %253 = add i64 %217, 17
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  store i32 %220, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -28
  %257 = load i64, i64* %PC.i, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX.i154, align 8
  %263 = icmp eq i32 %260, -1
  %264 = icmp eq i32 %261, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %24, align 1
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %31, align 1
  %272 = xor i32 %260, %261
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %36, align 1
  %276 = icmp eq i32 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %39, align 1
  %278 = lshr i32 %261, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %42, align 1
  %280 = lshr i32 %260, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %48, align 1
  %285 = add i64 %257, 9
  store i64 %285, i64* %PC.i, align 8
  store i32 %261, i32* %259, align 4
  %286 = load i64, i64* %PC.i, align 8
  %287 = add i64 %286, -36
  store i64 %287, i64* %3, align 8
  br label %block_.L_4006ef

block_.L_400718:                                  ; preds = %block_.L_4006ef
  store i64 10, i64* %RAX.i154, align 8
  %288 = add i64 %189, -80
  store i64 %288, i64* %RCX.i149, align 8
  %289 = add i64 %189, -24
  %290 = add i64 %217, 12
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RDI.i132, align 8
  %294 = add i64 %189, -88
  %295 = add i64 %217, 16
  store i64 %295, i64* %PC.i, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RDX.i103, align 8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i77 = getelementptr inbounds %union.anon, %union.anon* %298, i64 0, i32 0
  %299 = add i64 %189, -96
  %300 = add i64 %217, 20
  store i64 %300, i64* %PC.i, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RSI.i77, align 8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i74 = bitcast %union.anon* %303 to i32*
  %304 = getelementptr inbounds %union.anon, %union.anon* %303, i64 0, i32 0
  %305 = add i64 %217, 24
  store i64 %305, i64* %PC.i, align 8
  %306 = load i32, i32* %291, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %304, align 8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i72 = getelementptr inbounds %union.anon, %union.anon* %308, i64 0, i32 0
  %309 = add i64 %217, 28
  store i64 %309, i64* %PC.i, align 8
  %310 = load i64, i64* %296, align 8
  store i64 %310, i64* %R9.i72, align 8
  %R10.i69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %311 = add i64 %217, 32
  store i64 %311, i64* %PC.i, align 8
  %312 = load i64, i64* %301, align 8
  store i64 %312, i64* %R10.i69, align 8
  %313 = add i64 %189, -112
  %314 = add i64 %217, 36
  store i64 %314, i64* %PC.i, align 8
  %315 = inttoptr i64 %313 to i64*
  store i64 %302, i64* %315, align 8
  %316 = load i64, i64* %RCX.i149, align 8
  %317 = load i64, i64* %PC.i, align 8
  store i64 %316, i64* %RSI.i77, align 8
  %R11.i60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -112
  %320 = add i64 %317, 7
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %R11.i60, align 8
  %323 = add i64 %318, -120
  %324 = add i64 %317, 11
  store i64 %324, i64* %PC.i, align 8
  %325 = inttoptr i64 %323 to i64*
  store i64 %316, i64* %325, align 8
  %326 = load i64, i64* %R11.i60, align 8
  %327 = load i64, i64* %PC.i, align 8
  store i64 %326, i64* %RCX.i149, align 8
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -124
  %330 = load i32, i32* %R8D.i74, align 4
  %331 = add i64 %327, 7
  store i64 %331, i64* %PC.i, align 8
  %332 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* %EAX.i145, align 4
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %PC.i, align 8
  store i64 %334, i64* %304, align 8
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -136
  %338 = load i64, i64* %R9.i72, align 8
  %339 = add i64 %335, 10
  store i64 %339, i64* %PC.i, align 8
  %340 = inttoptr i64 %337 to i64*
  store i64 %338, i64* %340, align 8
  %341 = getelementptr inbounds %union.anon, %union.anon* %308, i64 0, i32 0
  %342 = load i32, i32* %EAX.i145, align 4
  %343 = zext i32 %342 to i64
  %344 = load i64, i64* %PC.i, align 8
  store i64 %343, i64* %341, align 8
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -124
  %347 = add i64 %344, 6
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX.i154, align 8
  %351 = bitcast i64* %RSP.i13 to i32**
  %352 = load i32*, i32** %351, align 8
  %353 = add i64 %344, 9
  store i64 %353, i64* %PC.i, align 8
  store i32 %349, i32* %352, align 4
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -120
  %356 = load i64, i64* %PC.i, align 8
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i, align 8
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RBX.i170, align 8
  %360 = load i64, i64* %RSP.i13, align 8
  %361 = add i64 %360, 8
  %362 = add i64 %356, 9
  store i64 %362, i64* %PC.i, align 8
  %363 = inttoptr i64 %361 to i64*
  store i64 %359, i64* %363, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -136
  %366 = load i64, i64* %PC.i, align 8
  %367 = add i64 %366, 7
  store i64 %367, i64* %PC.i, align 8
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %R14.i122, align 8
  %370 = load i64, i64* %RSP.i13, align 8
  %371 = add i64 %370, 16
  %372 = add i64 %366, 12
  store i64 %372, i64* %PC.i, align 8
  %373 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %373, align 8
  %374 = load i64, i64* %RSP.i13, align 8
  %375 = add i64 %374, 24
  %376 = load i64, i64* %R10.i69, align 8
  %377 = load i64, i64* %PC.i, align 8
  %378 = add i64 %377, 5
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %375 to i64*
  store i64 %376, i64* %379, align 8
  %380 = load i64, i64* %PC.i, align 8
  %381 = add i64 %380, -571
  %382 = add i64 %380, 5
  %383 = load i64, i64* %6, align 8
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %382, i64* %385, align 8
  store i64 %384, i64* %6, align 8
  store i64 %381, i64* %3, align 8
  %call2_40077b = tail call %struct.Memory* @sub_400540.check(%struct.State* %0, i64 %381, %struct.Memory* %176)
  %386 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400834_type* @G__0x400834 to i64), i64* %RDI.i132, align 8
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -100
  %389 = load i32, i32* %EAX.i145, align 4
  %390 = add i64 %386, 13
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %391, align 4
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -100
  %394 = load i64, i64* %PC.i, align 8
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RSI.i77, align 8
  %AL.i = bitcast %union.anon* %68 to i8*
  store i8 0, i8* %AL.i, align 1
  %399 = add i64 %394, -861
  %400 = add i64 %394, 10
  %401 = load i64, i64* %6, align 8
  %402 = add i64 %401, -8
  %403 = inttoptr i64 %402 to i64*
  store i64 %400, i64* %403, align 8
  store i64 %402, i64* %6, align 8
  store i64 %399, i64* %3, align 8
  %404 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40077b)
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -100
  %407 = load i64, i64* %PC.i, align 8
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i, align 8
  %409 = inttoptr i64 %406 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RSI.i77, align 8
  %412 = add i64 %405, -140
  %413 = load i32, i32* %EAX.i145, align 4
  %414 = add i64 %407, 9
  store i64 %414, i64* %PC.i, align 8
  %415 = inttoptr i64 %412 to i32*
  store i32 %413, i32* %415, align 4
  %ESI.i = bitcast %union.anon* %298 to i32*
  %416 = load i32, i32* %ESI.i, align 4
  %417 = zext i32 %416 to i64
  %418 = load i64, i64* %PC.i, align 8
  store i64 %417, i64* %RAX.i154, align 8
  %419 = load i64, i64* %RSP.i13, align 8
  %420 = add i64 %419, 160
  store i64 %420, i64* %RSP.i13, align 8
  %421 = icmp ugt i64 %419, -161
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %24, align 1
  %423 = trunc i64 %420 to i32
  %424 = and i32 %423, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %31, align 1
  %429 = xor i64 %419, %420
  %430 = lshr i64 %429, 4
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %36, align 1
  %433 = icmp eq i64 %420, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = lshr i64 %420, 63
  %436 = trunc i64 %435 to i8
  store i8 %436, i8* %42, align 1
  %437 = lshr i64 %419, 63
  %438 = xor i64 %435, %437
  %439 = add nuw nsw i64 %438, %435
  %440 = icmp eq i64 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %48, align 1
  %442 = add i64 %418, 10
  store i64 %442, i64* %PC.i, align 8
  %443 = add i64 %419, 168
  %444 = inttoptr i64 %420 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RBX.i170, align 8
  store i64 %443, i64* %6, align 8
  %446 = add i64 %418, 12
  store i64 %446, i64* %PC.i, align 8
  %447 = add i64 %419, 176
  %448 = inttoptr i64 %443 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %R14.i122, align 8
  store i64 %447, i64* %6, align 8
  %450 = add i64 %418, 13
  store i64 %450, i64* %PC.i, align 8
  %451 = add i64 %419, 184
  %452 = inttoptr i64 %447 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RBP.i, align 8
  store i64 %451, i64* %6, align 8
  %454 = add i64 %418, 14
  store i64 %454, i64* %PC.i, align 8
  %455 = inttoptr i64 %451 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %3, align 8
  %457 = add i64 %419, 192
  store i64 %457, i64* %6, align 8
  ret %struct.Memory* %404
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
