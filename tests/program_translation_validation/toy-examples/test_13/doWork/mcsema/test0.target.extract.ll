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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400860.checkFn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4008d0.doStuff(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @doWork(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP.i52, align 8
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
  %RDI.i65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i65, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -12
  %46 = load i32, i32* %ESI.i, align 4
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -12
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %56 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 3
  store i64 %62, i64* %RDI.i65, align 8
  %.lobit = lshr i32 %60, 31
  %63 = trunc i32 %.lobit to i8
  store i8 %63, i8* %14, align 1
  %64 = trunc i64 %62 to i32
  %65 = and i32 %64, 248
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %70 = icmp eq i32 %60, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %29, align 1
  %72 = lshr i64 %61, 60
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %75 = add i64 %57, -726
  %76 = add i64 %57, 13
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  %80 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i49 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -24
  %84 = load i64, i64* %RAX.i49, align 8
  %85 = load i64, i64* %PC.i, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC.i, align 8
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87, align 8
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4007f7

block_.L_4007f7:                                  ; preds = %block_.L_400832, %entry
  %88 = phi i64 [ %.pre, %entry ], [ %208, %block_.L_400832 ]
  %MEMORY.0 = phi %struct.Memory* [ %80, %entry ], [ %MEMORY.1, %block_.L_400832 ]
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -16
  %91 = add i64 %88, 3
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RAX.i49, align 8
  %95 = add i64 %89, -12
  %96 = add i64 %88, 6
  store i64 %96, i64* %PC.i, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %93, %98
  %100 = icmp ult i32 %93, %98
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %14, align 1
  %102 = and i32 %99, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %21, align 1
  %107 = xor i32 %98, %93
  %108 = xor i32 %107, %99
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %26, align 1
  %112 = icmp eq i32 %99, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %29, align 1
  %114 = lshr i32 %99, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %32, align 1
  %116 = lshr i32 %93, 31
  %117 = lshr i32 %98, 31
  %118 = xor i32 %117, %116
  %119 = xor i32 %114, %116
  %120 = add nuw nsw i32 %119, %118
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %38, align 1
  %123 = icmp ne i8 %115, 0
  %124 = xor i1 %123, %121
  %.v = select i1 %124, i64 12, i64 78
  %125 = add i64 %88, %.v
  store i64 %125, i64* %3, align 8
  br i1 %124, label %block_400803, label %block_.L_400845

block_400803:                                     ; preds = %block_.L_4007f7
  %EAX.i43 = bitcast %union.anon* %81 to i32*
  %126 = add i64 %89, -8
  %127 = add i64 %125, 4
  store i64 %127, i64* %PC.i, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %RAX.i49, align 8
  %RCX.i36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %130 = add i64 %125, 8
  store i64 %130, i64* %PC.i, align 8
  %131 = load i32, i32* %92, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %RCX.i36, align 8
  %133 = shl nsw i64 %132, 3
  %134 = add i64 %133, %129
  %135 = add i64 %125, 12
  store i64 %135, i64* %PC.i, align 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RAX.i49, align 8
  %138 = add i64 %89, -32
  %139 = add i64 %125, 16
  store i64 %139, i64* %PC.i, align 8
  %140 = inttoptr i64 %138 to i64*
  store i64 %137, i64* %140, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -32
  %143 = load i64, i64* %PC.i, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RDI.i65, align 8
  %147 = add i64 %143, 77
  %148 = add i64 %143, 9
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  store i64 %150, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  %call2_400817 = call %struct.Memory* @sub_400860.checkFn(%struct.State* %0, i64 %147, %struct.Memory* %MEMORY.0)
  %152 = load i32, i32* %EAX.i43, align 4
  %153 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %154 = and i32 %152, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %159 = icmp eq i32 %152, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %29, align 1
  %161 = lshr i32 %152, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v2 = select i1 %159, i64 9, i64 22
  %163 = add i64 %153, %.v2
  store i64 %163, i64* %3, align 8
  br i1 %159, label %block_400825, label %block_.L_400832

block_400825:                                     ; preds = %block_400803
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -32
  %166 = add i64 %163, 4
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RDI.i65, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %169 = add i64 %163, 8
  store i64 %169, i64* %PC.i, align 8
  %170 = load i64, i64* %167, align 8
  store i64 %170, i64* %RSI.i, align 8
  %171 = add i64 %163, 171
  %172 = add i64 %163, 13
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %call2_40082d = call %struct.Memory* @sub_4008d0.doStuff(%struct.State* %0, i64 %171, %struct.Memory* %call2_400817)
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400832

block_.L_400832:                                  ; preds = %block_400825, %block_400803
  %176 = phi i64 [ %163, %block_400803 ], [ %.pre1, %block_400825 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_400817, %block_400803 ], [ %call2_40082d, %block_400825 ]
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -16
  %179 = add i64 %176, 8
  store i64 %179, i64* %PC.i, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i49, align 8
  %184 = icmp eq i32 %181, -1
  %185 = icmp eq i32 %182, 0
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = and i32 %182, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  %193 = xor i32 %181, %182
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %26, align 1
  %197 = icmp eq i32 %182, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %29, align 1
  %199 = lshr i32 %182, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %32, align 1
  %201 = lshr i32 %181, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %199
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %38, align 1
  %206 = add i64 %176, 14
  store i64 %206, i64* %PC.i, align 8
  store i32 %182, i32* %180, align 4
  %207 = load i64, i64* %PC.i, align 8
  %208 = add i64 %207, -73
  store i64 %208, i64* %3, align 8
  br label %block_.L_4007f7

block_.L_400845:                                  ; preds = %block_.L_4007f7
  %209 = add i64 %89, -24
  %210 = add i64 %125, 4
  store i64 %210, i64* %PC.i, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RAX.i49, align 8
  %213 = add i64 %212, 1
  %214 = add i64 %125, 8
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %213 to i8*
  store i8 2, i8* %215, align 1
  %216 = load i64, i64* %RSP.i52, align 8
  %217 = load i64, i64* %PC.i, align 8
  %218 = add i64 %216, 32
  store i64 %218, i64* %RSP.i52, align 8
  %219 = icmp ugt i64 %216, -33
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %14, align 1
  %221 = trunc i64 %218 to i32
  %222 = and i32 %221, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %21, align 1
  %227 = xor i64 %216, %218
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %26, align 1
  %231 = icmp eq i64 %218, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = lshr i64 %218, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %32, align 1
  %235 = lshr i64 %216, 63
  %236 = xor i64 %233, %235
  %237 = add nuw nsw i64 %236, %233
  %238 = icmp eq i64 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %38, align 1
  %240 = add i64 %217, 5
  store i64 %240, i64* %PC.i, align 8
  %241 = add i64 %216, 40
  %242 = inttoptr i64 %218 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RBP.i, align 8
  store i64 %241, i64* %6, align 8
  %244 = add i64 %217, 6
  store i64 %244, i64* %PC.i, align 8
  %245 = inttoptr i64 %241 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %3, align 8
  %247 = add i64 %216, 48
  store i64 %247, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
