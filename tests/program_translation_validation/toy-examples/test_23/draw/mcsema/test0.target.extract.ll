; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400a00_type = type <{ [8 x i8] }>
%G__0x400a51_type = type <{ [8 x i8] }>
%G__0x601040_type = type <{ [8 x i8] }>
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

@G__0x400a00 = external global %G__0x400a00_type
@G__0x400a51 = external global %G__0x400a51_type
@G__0x601040 = external global %G__0x601040_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @draw(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i8, align 8
  %12 = icmp ult i64 %8, 32
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %RDI.i64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i62 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %RCX.i59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %AL.i47 = bitcast %union.anon* %42 to i8*
  %EAX.i41 = bitcast %union.anon* %42 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4005af

block_.L_4005af:                                  ; preds = %block_.L_400609, %entry
  %43 = phi i64 [ %237, %block_.L_400609 ], [ %.pre, %entry ]
  %loadMem_40062b = phi %struct.Memory* [ %198, %block_.L_400609 ], [ %2, %entry ]
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -4
  %46 = add i64 %43, 4
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, -7
  %50 = icmp ult i32 %48, 7
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1
  %57 = xor i32 %48, %49
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %26, align 1
  %61 = icmp eq i32 %49, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %29, align 1
  %63 = lshr i32 %49, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %32, align 1
  %65 = lshr i32 %48, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %38, align 1
  %70 = icmp ne i8 %64, 0
  %71 = xor i1 %70, %68
  %.v = select i1 %71, i64 10, i64 124
  %72 = add i64 %43, %.v
  store i64 %72, i64* %3, align 8
  br i1 %71, label %block_4005b9, label %block_.L_40062b

block_4005b9:                                     ; preds = %block_.L_4005af
  %73 = add i64 %44, -8
  %74 = add i64 %72, 7
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 0, i32* %75, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_4005c0

block_.L_4005c0:                                  ; preds = %block_4005ca, %block_4005b9
  %76 = phi i64 [ %192, %block_4005ca ], [ %.pre3, %block_4005b9 ]
  %loadMem_400609 = phi %struct.Memory* [ %153, %block_4005ca ], [ %loadMem_40062b, %block_4005b9 ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -8
  %79 = add i64 %76, 4
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -11
  %83 = icmp ult i32 %81, 11
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, %82
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1
  %94 = icmp eq i32 %82, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %29, align 1
  %96 = lshr i32 %82, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = lshr i32 %81, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %38, align 1
  %103 = icmp ne i8 %97, 0
  %104 = xor i1 %103, %101
  %.v4 = select i1 %104, i64 10, i64 73
  %105 = add i64 %76, %.v4
  %106 = add i64 %105, 10
  store i64 %106, i64* %PC.i, align 8
  br i1 %104, label %block_4005ca, label %block_.L_400609

block_4005ca:                                     ; preds = %block_.L_4005c0
  store i64 ptrtoint (%G__0x400a00_type* @G__0x400a00 to i64), i64* %RDI.i64, align 8
  store i64 ptrtoint (%G__0x601040_type* @G__0x601040 to i64), i64* %RAX.i62, align 8
  %107 = add i64 %77, -4
  %108 = add i64 %105, 24
  store i64 %108, i64* %PC.i, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 11
  store i64 %112, i64* %RCX.i59, align 8
  %113 = lshr i64 %112, 63
  %114 = add i64 %112, ptrtoint (%G__0x601040_type* @G__0x601040 to i64)
  store i64 %114, i64* %RAX.i62, align 8
  %115 = icmp ult i64 %114, ptrtoint (%G__0x601040_type* @G__0x601040 to i64)
  %116 = icmp ult i64 %114, %112
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %14, align 1
  %119 = trunc i64 %114 to i32
  %120 = and i32 %119, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %21, align 1
  %125 = xor i64 %112, ptrtoint (%G__0x601040_type* @G__0x601040 to i64)
  %126 = xor i64 %125, %114
  %127 = lshr i64 %126, 4
  %128 = trunc i64 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %26, align 1
  %130 = icmp eq i64 %114, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %29, align 1
  %132 = lshr i64 %114, 63
  %133 = trunc i64 %132 to i8
  store i8 %133, i8* %32, align 1
  %134 = xor i64 %132, lshr (i64 ptrtoint (%G__0x601040_type* @G__0x601040 to i64), i64 63)
  %135 = xor i64 %132, %113
  %136 = add nuw nsw i64 %134, %135
  %137 = icmp eq i64 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1
  %139 = add i64 %105, 35
  store i64 %139, i64* %PC.i, align 8
  %140 = load i32, i32* %80, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %RCX.i59, align 8
  %142 = add i64 %141, %114
  %143 = add i64 %105, 39
  store i64 %143, i64* %PC.i, align 8
  %144 = inttoptr i64 %142 to i8*
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i64
  %147 = and i64 %146, 4294967295
  store i64 %147, i64* %RSI.i, align 8
  store i8 0, i8* %AL.i47, align 1
  %148 = add i64 %105, -330
  %149 = add i64 %105, 46
  %150 = load i64, i64* %6, align 8
  %151 = add i64 %150, -8
  %152 = inttoptr i64 %151 to i64*
  store i64 %149, i64* %152, align 8
  store i64 %151, i64* %6, align 8
  store i64 %148, i64* %3, align 8
  %153 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem_400609)
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -12
  %156 = load i32, i32* %EAX.i41, align 4
  %157 = load i64, i64* %PC.i, align 8
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC.i, align 8
  %159 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %159, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -8
  %162 = load i64, i64* %PC.i, align 8
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i, align 8
  %164 = inttoptr i64 %161 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, 1
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RAX.i62, align 8
  %168 = icmp eq i32 %165, -1
  %169 = icmp eq i32 %166, 0
  %170 = or i1 %168, %169
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1
  %172 = and i32 %166, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %21, align 1
  %177 = xor i32 %165, %166
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %26, align 1
  %181 = icmp eq i32 %166, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %29, align 1
  %183 = lshr i32 %166, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %32, align 1
  %185 = lshr i32 %165, 31
  %186 = xor i32 %183, %185
  %187 = add nuw nsw i32 %186, %183
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %38, align 1
  %190 = add i64 %162, 9
  store i64 %190, i64* %PC.i, align 8
  store i32 %166, i32* %164, align 4
  %191 = load i64, i64* %PC.i, align 8
  %192 = add i64 %191, -68
  store i64 %192, i64* %3, align 8
  br label %block_.L_4005c0

block_.L_400609:                                  ; preds = %block_.L_4005c0
  store i64 ptrtoint (%G__0x400a51_type* @G__0x400a51 to i64), i64* %RDI.i64, align 8
  store i8 0, i8* %AL.i47, align 1
  %193 = add i64 %105, -393
  %194 = add i64 %105, 17
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %6, align 8
  store i64 %193, i64* %3, align 8
  %198 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem_400609)
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -16
  %201 = load i32, i32* %EAX.i41, align 4
  %202 = load i64, i64* %PC.i, align 8
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC.i, align 8
  %204 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %204, align 4
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -4
  %207 = load i64, i64* %PC.i, align 8
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, 1
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX.i62, align 8
  %213 = icmp eq i32 %210, -1
  %214 = icmp eq i32 %211, 0
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %14, align 1
  %217 = and i32 %211, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  %222 = xor i32 %210, %211
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %26, align 1
  %226 = icmp eq i32 %211, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %29, align 1
  %228 = lshr i32 %211, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %32, align 1
  %230 = lshr i32 %210, 31
  %231 = xor i32 %228, %230
  %232 = add nuw nsw i32 %231, %228
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %38, align 1
  %235 = add i64 %207, 9
  store i64 %235, i64* %PC.i, align 8
  store i32 %211, i32* %209, align 4
  %236 = load i64, i64* %PC.i, align 8
  %237 = add i64 %236, -119
  store i64 %237, i64* %3, align 8
  br label %block_.L_4005af

block_.L_40062b:                                  ; preds = %block_.L_4005af
  store i64 ptrtoint (%G__0x400a51_type* @G__0x400a51 to i64), i64* %RDI.i64, align 8
  store i8 0, i8* %AL.i47, align 1
  %238 = add i64 %72, -427
  %239 = add i64 %72, 17
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, -8
  %242 = inttoptr i64 %241 to i64*
  store i64 %239, i64* %242, align 8
  store i64 %241, i64* %6, align 8
  store i64 %238, i64* %3, align 8
  %243 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem_40062b)
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -20
  %246 = load i32, i32* %EAX.i41, align 4
  %247 = load i64, i64* %PC.i, align 8
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC.i, align 8
  %249 = inttoptr i64 %245 to i32*
  store i32 %246, i32* %249, align 4
  %250 = load i64, i64* %RSP.i8, align 8
  %251 = load i64, i64* %PC.i, align 8
  %252 = add i64 %250, 32
  store i64 %252, i64* %RSP.i8, align 8
  %253 = icmp ugt i64 %250, -33
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %14, align 1
  %255 = trunc i64 %252 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  %261 = xor i64 %250, %252
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %26, align 1
  %265 = icmp eq i64 %252, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %29, align 1
  %267 = lshr i64 %252, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %32, align 1
  %269 = lshr i64 %250, 63
  %270 = xor i64 %267, %269
  %271 = add nuw nsw i64 %270, %267
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %38, align 1
  %274 = add i64 %251, 5
  store i64 %274, i64* %PC.i, align 8
  %275 = add i64 %250, 40
  %276 = inttoptr i64 %252 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RBP.i, align 8
  store i64 %275, i64* %6, align 8
  %278 = add i64 %251, 6
  store i64 %278, i64* %PC.i, align 8
  %279 = inttoptr i64 %275 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %3, align 8
  %281 = add i64 %250, 48
  store i64 %281, i64* %6, align 8
  ret %struct.Memory* %243
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
