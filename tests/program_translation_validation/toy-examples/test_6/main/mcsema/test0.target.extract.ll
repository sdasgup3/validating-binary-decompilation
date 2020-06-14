; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400774_type = type <{ [8 x i8] }>
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

@G__0x400774 = external global %G__0x400774_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400540.foo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -88
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 80
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i124 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 40, i64* %RAX.i124, align 8
  %EAX.i137 = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i138 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 40, i64* %RCX.i138, align 8
  %42 = add i64 %7, -12
  %43 = add i64 %10, 21
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %EDI.i, align 4
  %49 = load i64, i64* %PC.i, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RSI.i130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RSI.i130, align 8
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %RDI.i128 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %58 = load i64, i64* %RCX.i138, align 8
  %59 = load i64, i64* %PC.i, align 8
  store i64 %58, i64* %RDI.i128, align 8
  %60 = add i64 %59, -445
  %61 = add i64 %59, 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %61, i64* %64, align 8
  store i64 %63, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  %65 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %RDX.i122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %66 = load i64, i64* %PC.i, align 8
  store i64 40, i64* %RDX.i122, align 8
  store i64 40, i64* %RDI.i128, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -24
  %69 = load i64, i64* %RAX.i124, align 8
  %70 = add i64 %66, 11
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %PC.i, align 8
  %73 = add i64 %72, -464
  %74 = add i64 %72, 5
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %78 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %65)
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -32
  %81 = load i64, i64* %RAX.i124, align 8
  %82 = load i64, i64* %PC.i, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC.i, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -36
  %87 = load i64, i64* %PC.i, align 8
  %88 = add i64 %87, 7
  store i64 %88, i64* %PC.i, align 8
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400620

block_.L_400620:                                  ; preds = %block_40062a, %entry
  %90 = phi i64 [ %190, %block_40062a ], [ %.pre, %entry ]
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -36
  %93 = add i64 %90, 4
  store i64 %93, i64* %PC.i, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, -10
  %97 = icmp ult i32 %95, 10
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %14, align 1
  %99 = and i32 %96, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %21, align 1
  %104 = xor i32 %95, %96
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %27, align 1
  %108 = icmp eq i32 %96, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %30, align 1
  %110 = lshr i32 %96, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %33, align 1
  %112 = lshr i32 %95, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %39, align 1
  %117 = icmp ne i8 %111, 0
  %118 = xor i1 %117, %115
  %.v = select i1 %118, i64 10, i64 44
  %119 = add i64 %90, %.v
  store i64 %119, i64* %3, align 8
  br i1 %118, label %block_40062a, label %block_.L_40064c

block_40062a:                                     ; preds = %block_.L_400620
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i, align 8
  %121 = load i32, i32* %94, align 4
  %122 = add i32 %121, 10
  %123 = lshr i32 %122, 31
  %124 = add i32 %121, 11
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i124, align 8
  %126 = icmp ult i32 %124, %122
  %127 = icmp eq i32 %124, 0
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %14, align 1
  %130 = and i32 %124, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1
  %135 = xor i32 %122, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %27, align 1
  %139 = icmp eq i32 %124, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %30, align 1
  %141 = lshr i32 %124, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %33, align 1
  %143 = xor i32 %141, %123
  %144 = add nuw nsw i32 %143, %141
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %39, align 1
  %147 = add i64 %91, -24
  %148 = add i64 %119, 13
  store i64 %148, i64* %PC.i, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX.i138, align 8
  %151 = add i64 %119, 17
  store i64 %151, i64* %PC.i, align 8
  %152 = load i32, i32* %94, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RDX.i122, align 8
  %154 = shl nsw i64 %153, 2
  %155 = add i64 %154, %150
  %156 = add i64 %119, 20
  store i64 %156, i64* %PC.i, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 %124, i32* %157, align 4
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -36
  %160 = load i64, i64* %PC.i, align 8
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC.i, align 8
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, 1
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RAX.i124, align 8
  %166 = icmp eq i32 %163, -1
  %167 = icmp eq i32 %164, 0
  %168 = or i1 %166, %167
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %14, align 1
  %170 = and i32 %164, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1
  %175 = xor i32 %163, %164
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %27, align 1
  %179 = icmp eq i32 %164, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %30, align 1
  %181 = lshr i32 %164, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %33, align 1
  %183 = lshr i32 %163, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %181
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %39, align 1
  %188 = add i64 %160, 9
  store i64 %188, i64* %PC.i, align 8
  store i32 %164, i32* %162, align 4
  %189 = load i64, i64* %PC.i, align 8
  %190 = add i64 %189, -39
  store i64 %190, i64* %3, align 8
  br label %block_.L_400620

block_.L_40064c:                                  ; preds = %block_.L_400620
  %191 = add i64 %119, 7
  store i64 %191, i64* %PC.i, align 8
  store i32 0, i32* %94, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400653

block_.L_400653:                                  ; preds = %block_40065d, %block_.L_40064c
  %192 = phi i64 [ %291, %block_40065d ], [ %.pre1, %block_.L_40064c ]
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -36
  %195 = add i64 %192, 4
  store i64 %195, i64* %PC.i, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = add i32 %197, -10
  %199 = icmp ult i32 %197, 10
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %198, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %198
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %27, align 1
  %210 = icmp eq i32 %198, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %30, align 1
  %212 = lshr i32 %198, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %33, align 1
  %214 = lshr i32 %197, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %39, align 1
  %219 = icmp ne i8 %213, 0
  %220 = xor i1 %219, %217
  %.v2 = select i1 %220, i64 10, i64 41
  %221 = add i64 %192, %.v2
  store i64 %221, i64* %3, align 8
  br i1 %220, label %block_40065d, label %block_.L_40067c

block_40065d:                                     ; preds = %block_.L_400653
  %222 = add i64 %221, 3
  store i64 %222, i64* %PC.i, align 8
  %223 = load i32, i32* %196, align 4
  %224 = add i32 %223, 1
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RAX.i124, align 8
  %226 = icmp eq i32 %223, -1
  %227 = icmp eq i32 %224, 0
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %14, align 1
  %230 = and i32 %224, 255
  %231 = call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  %235 = xor i32 %223, %224
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %27, align 1
  %239 = icmp eq i32 %224, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %30, align 1
  %241 = lshr i32 %224, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %33, align 1
  %243 = lshr i32 %223, 31
  %244 = xor i32 %241, %243
  %245 = add nuw nsw i32 %244, %241
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %39, align 1
  %248 = add i64 %193, -32
  %249 = add i64 %221, 10
  store i64 %249, i64* %PC.i, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RCX.i138, align 8
  %252 = add i64 %221, 14
  store i64 %252, i64* %PC.i, align 8
  %253 = load i32, i32* %196, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RDX.i122, align 8
  %255 = shl nsw i64 %254, 2
  %256 = add i64 %255, %251
  %257 = add i64 %221, 17
  store i64 %257, i64* %PC.i, align 8
  %258 = inttoptr i64 %256 to i32*
  store i32 %224, i32* %258, align 4
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -36
  %261 = load i64, i64* %PC.i, align 8
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC.i, align 8
  %263 = inttoptr i64 %260 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %264, 1
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RAX.i124, align 8
  %267 = icmp eq i32 %264, -1
  %268 = icmp eq i32 %265, 0
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %14, align 1
  %271 = and i32 %265, 255
  %272 = call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %21, align 1
  %276 = xor i32 %264, %265
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %27, align 1
  %280 = icmp eq i32 %265, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %30, align 1
  %282 = lshr i32 %265, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %33, align 1
  %284 = lshr i32 %264, 31
  %285 = xor i32 %282, %284
  %286 = add nuw nsw i32 %285, %282
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %39, align 1
  %289 = add i64 %261, 9
  store i64 %289, i64* %PC.i, align 8
  store i32 %265, i32* %263, align 4
  %290 = load i64, i64* %PC.i, align 8
  %291 = add i64 %290, -36
  store i64 %291, i64* %3, align 8
  br label %block_.L_400653

block_.L_40067c:                                  ; preds = %block_.L_400653
  store i64 100, i64* %RDI.i128, align 8
  store i64 200, i64* %RSI.i130, align 8
  store i64 300, i64* %RDX.i122, align 8
  store i64 400, i64* %RCX.i138, align 8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 500, i64* %292, align 8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 600, i64* %293, align 8
  store i64 10, i64* %RAX.i124, align 8
  %R10.i38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %294 = add i64 %193, -24
  %295 = add i64 %221, 41
  store i64 %295, i64* %PC.i, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %R10.i38, align 8
  %R11.i35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %298 = add i64 %193, -32
  %299 = add i64 %221, 45
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %R11.i35, align 8
  %302 = bitcast i64* %RSP.i11 to i32**
  %303 = load i32*, i32** %302, align 8
  %304 = add i64 %221, 52
  store i64 %304, i64* %PC.i, align 8
  store i32 10, i32* %303, align 4
  %305 = load i64, i64* %RSP.i11, align 8
  %306 = add i64 %305, 8
  %307 = load i64, i64* %R10.i38, align 8
  %308 = load i64, i64* %PC.i, align 8
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC.i, align 8
  %310 = inttoptr i64 %306 to i64*
  store i64 %307, i64* %310, align 8
  %311 = load i64, i64* %RSP.i11, align 8
  %312 = add i64 %311, 16
  %313 = load i64, i64* %PC.i, align 8
  %314 = add i64 %313, 8
  store i64 %314, i64* %PC.i, align 8
  %315 = inttoptr i64 %312 to i32*
  store i32 10, i32* %315, align 4
  %316 = load i64, i64* %RSP.i11, align 8
  %317 = add i64 %316, 24
  %318 = load i64, i64* %R11.i35, align 8
  %319 = load i64, i64* %PC.i, align 8
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %317 to i64*
  store i64 %318, i64* %321, align 8
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -44
  %324 = load i32, i32* %EAX.i137, align 4
  %325 = load i64, i64* %PC.i, align 8
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC.i, align 8
  %327 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %327, align 4
  %328 = load i64, i64* %PC.i, align 8
  %329 = add i64 %328, -389
  %330 = add i64 %328, 5
  %331 = load i64, i64* %6, align 8
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %6, align 8
  store i64 %329, i64* %3, align 8
  %call2_4006c5 = call %struct.Memory* @sub_400540.foo(%struct.State* %0, i64 %329, %struct.Memory* %78)
  %334 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400774_type* @G__0x400774 to i64), i64* %RDI.i128, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -40
  %337 = load i32, i32* %EAX.i137, align 4
  %338 = add i64 %334, 13
  store i64 %338, i64* %PC.i, align 8
  %339 = inttoptr i64 %336 to i32*
  store i32 %337, i32* %339, align 4
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -40
  %342 = load i64, i64* %PC.i, align 8
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC.i, align 8
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RSI.i130, align 8
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i, align 1
  %347 = add i64 %342, -679
  %348 = add i64 %342, 10
  %349 = load i64, i64* %6, align 8
  %350 = add i64 %349, -8
  %351 = inttoptr i64 %350 to i64*
  store i64 %348, i64* %351, align 8
  store i64 %350, i64* %6, align 8
  store i64 %347, i64* %3, align 8
  %352 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4006c5)
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -40
  %355 = load i64, i64* %PC.i, align 8
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC.i, align 8
  %357 = inttoptr i64 %354 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX.i138, align 8
  %360 = add i64 %353, -48
  %361 = load i32, i32* %EAX.i137, align 4
  %362 = add i64 %355, 6
  store i64 %362, i64* %PC.i, align 8
  %363 = inttoptr i64 %360 to i32*
  store i32 %361, i32* %363, align 4
  %ECX.i = bitcast %union.anon* %41 to i32*
  %364 = load i32, i32* %ECX.i, align 4
  %365 = zext i32 %364 to i64
  %366 = load i64, i64* %PC.i, align 8
  store i64 %365, i64* %RAX.i124, align 8
  %367 = load i64, i64* %RSP.i11, align 8
  %368 = add i64 %367, 80
  store i64 %368, i64* %RSP.i11, align 8
  %369 = icmp ugt i64 %367, -81
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %14, align 1
  %371 = trunc i64 %368 to i32
  %372 = and i32 %371, 255
  %373 = call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i64 %367, 16
  %378 = xor i64 %377, %368
  %379 = lshr i64 %378, 4
  %380 = trunc i64 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = icmp eq i64 %368, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %30, align 1
  %384 = lshr i64 %368, 63
  %385 = trunc i64 %384 to i8
  store i8 %385, i8* %33, align 1
  %386 = lshr i64 %367, 63
  %387 = xor i64 %384, %386
  %388 = add nuw nsw i64 %387, %384
  %389 = icmp eq i64 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %39, align 1
  %391 = add i64 %366, 7
  store i64 %391, i64* %PC.i, align 8
  %392 = add i64 %367, 88
  %393 = inttoptr i64 %368 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RBP.i, align 8
  store i64 %392, i64* %6, align 8
  %395 = add i64 %366, 8
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %392 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %3, align 8
  %398 = add i64 %367, 96
  store i64 %398, i64* %6, align 8
  ret %struct.Memory* %352
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
