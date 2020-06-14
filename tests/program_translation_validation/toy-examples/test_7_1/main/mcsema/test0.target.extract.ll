; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400644_type = type <{ [8 x i8] }>
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

@G__0x400644 = external global %G__0x400644_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4004f0.check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
  %40 = add i64 %7, -12
  %41 = add i64 %10, 14
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i63 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %EAX.i52 = bitcast %union.anon* %53 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_40054d

block_.L_40054d:                                  ; preds = %block_400557, %entry
  %54 = phi i64 [ %124, %block_400557 ], [ %.pre, %entry ]
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -8
  %57 = add i64 %54, 4
  store i64 %57, i64* %PC.i, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, -10
  %61 = icmp ult i32 %59, 10
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1
  %63 = and i32 %60, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %21, align 1
  %68 = xor i32 %59, %60
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1
  %72 = icmp eq i32 %60, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %30, align 1
  %74 = lshr i32 %60, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %33, align 1
  %76 = lshr i32 %59, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1
  %81 = icmp ne i8 %75, 0
  %82 = xor i1 %81, %79
  %.v = select i1 %82, i64 10, i64 36
  %83 = add i64 %54, %.v
  store i64 %83, i64* %3, align 8
  br i1 %82, label %block_400557, label %block_.L_400571

block_400557:                                     ; preds = %block_.L_40054d
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC.i, align 8
  %85 = load i32, i32* %58, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RAX.i63, align 8
  %87 = shl nsw i64 %86, 2
  %88 = add i64 %55, -48
  %89 = add i64 %88, %87
  %90 = add i64 %83, 12
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 21, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -8
  %94 = load i64, i64* %PC.i, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX.i63, align 8
  %100 = icmp eq i32 %97, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %14, align 1
  %104 = and i32 %98, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %21, align 1
  %109 = xor i32 %97, %98
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %27, align 1
  %113 = icmp eq i32 %98, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %30, align 1
  %115 = lshr i32 %98, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %33, align 1
  %117 = lshr i32 %97, 31
  %118 = xor i32 %115, %117
  %119 = add nuw nsw i32 %118, %115
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %39, align 1
  %122 = add i64 %94, 9
  store i64 %122, i64* %PC.i, align 8
  store i32 %98, i32* %96, align 4
  %123 = load i64, i64* %PC.i, align 8
  %124 = add i64 %123, -31
  store i64 %124, i64* %3, align 8
  br label %block_.L_40054d

block_.L_400571:                                  ; preds = %block_.L_40054d
  store i64 10, i64* %RAX.i63, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i46 = getelementptr inbounds %union.anon, %union.anon* %125, i64 0, i32 0
  %126 = add i64 %55, -48
  %RDI.i44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 10, i64* %RDI.i44, align 8
  %RSI.i41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 10, i64* %RSI.i41, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 10, i64* %RDX.i, align 8
  %127 = add i64 %55, -64
  %128 = add i64 %83, 19
  store i64 %128, i64* %PC.i, align 8
  %129 = inttoptr i64 %127 to i64*
  store i64 %126, i64* %129, align 8
  %130 = load i32, i32* %EAX.i52, align 4
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC.i, align 8
  store i64 %131, i64* %RCX.i46, align 8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  %R10.i26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -64
  %137 = add i64 %132, 12
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %R10.i26, align 8
  %140 = bitcast i64* %RSP.i11 to i64**
  %141 = load i64*, i64** %140, align 8
  %142 = add i64 %132, 16
  store i64 %142, i64* %PC.i, align 8
  store i64 %139, i64* %141, align 8
  %143 = load i64, i64* %PC.i, align 8
  %144 = add i64 %143, -164
  %145 = add i64 %143, 5
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  %call2_400594 = call %struct.Memory* @sub_4004f0.check(%struct.State* %0, i64 %144, %struct.Memory* %2)
  %149 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400644_type* @G__0x400644 to i64), i64* %RDI.i44, align 8
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -52
  %152 = load i32, i32* %EAX.i52, align 4
  %153 = add i64 %149, 13
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -52
  %157 = load i64, i64* %PC.i, align 8
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC.i, align 8
  %159 = inttoptr i64 %156 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RSI.i41, align 8
  %AL.i = bitcast %union.anon* %53 to i8*
  store i8 0, i8* %AL.i, align 1
  %162 = add i64 %157, -438
  %163 = add i64 %157, 10
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %163, i64* %166, align 8
  store i64 %165, i64* %6, align 8
  store i64 %162, i64* %3, align 8
  %167 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400594)
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -52
  %170 = load i64, i64* %PC.i, align 8
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RCX.i46, align 8
  %175 = add i64 %168, -68
  %176 = load i32, i32* %EAX.i52, align 4
  %177 = add i64 %170, 6
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %178, align 4
  %ECX.i = bitcast %union.anon* %125 to i32*
  %179 = load i32, i32* %ECX.i, align 4
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC.i, align 8
  store i64 %180, i64* %RAX.i63, align 8
  %182 = load i64, i64* %RSP.i11, align 8
  %183 = add i64 %182, 80
  store i64 %183, i64* %RSP.i11, align 8
  %184 = icmp ugt i64 %182, -81
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = trunc i64 %183 to i32
  %187 = and i32 %186, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i64 %182, 16
  %193 = xor i64 %192, %183
  %194 = lshr i64 %193, 4
  %195 = trunc i64 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i64 %183, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i64 %183, 63
  %200 = trunc i64 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i64 %182, 63
  %202 = xor i64 %199, %201
  %203 = add nuw nsw i64 %202, %199
  %204 = icmp eq i64 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %39, align 1
  %206 = add i64 %181, 7
  store i64 %206, i64* %PC.i, align 8
  %207 = add i64 %182, 88
  %208 = inttoptr i64 %183 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RBP.i, align 8
  store i64 %207, i64* %6, align 8
  %210 = add i64 %181, 8
  store i64 %210, i64* %PC.i, align 8
  %211 = inttoptr i64 %207 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %3, align 8
  %213 = add i64 %182, 96
  store i64 %213, i64* %6, align 8
  ret %struct.Memory* %167
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
