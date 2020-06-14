; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x4007e4_type = type <{ [8 x i8] }>
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

@G__0x4007e4 = external global %G__0x4007e4_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400540.update(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, 3
  store i64 %11, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %12 = add i64 %10, 10
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -136
  store i64 %13, i64* %6, align 8
  %14 = icmp ult i64 %8, 128
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 %8, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %8, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i150 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %42 = add i64 %10, 15
  store i64 %42, i64* %3, align 8
  store i64 12, i64* %RAX.i150, align 8
  %EAX.i147 = bitcast %union.anon* %41 to i32*
  %RDI.i148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = add i64 %10, 17
  store i64 %43, i64* %3, align 8
  store i64 12, i64* %RDI.i148, align 8
  %44 = add i64 %7, -12
  %45 = add i64 %10, 24
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 0, i32* %46, align 4
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -16
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 7
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 10, i32* %51, align 4
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -12
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 10, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 10, i32* %61, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, -558
  %64 = add i64 %62, 5
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  %68 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -16
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %3, align 8
  store i64 %70, i64* %RDI.i148, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %74 = add i64 %71, 10
  store i64 %74, i64* %3, align 8
  store i64 1, i64* %73, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %76 = add i64 %71, 16
  store i64 %76, i64* %3, align 8
  store i64 2, i64* %75, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i129 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %78 = add i64 %71, 21
  store i64 %78, i64* %3, align 8
  store i64 3, i64* %RCX.i129, align 8
  %79 = add i64 %69, -24
  %80 = load i64, i64* %RAX.i150, align 8
  %81 = add i64 %71, 25
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -24
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RAX.i150, align 8
  %89 = add i64 %85, 10
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 5, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -24
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RAX.i150, align 8
  %97 = add i64 %96, 4
  %98 = add i64 %93, 11
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  store i32 5, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -24
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RAX.i150, align 8
  %106 = add i64 %105, 8
  %107 = add i64 %102, 11
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 5, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -24
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i150, align 8
  %RDX.i105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %115 = add i64 %111, 8
  store i64 %115, i64* %3, align 8
  %116 = load i64, i64* %113, align 8
  store i64 %116, i64* %RDX.i105, align 8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i102 = getelementptr inbounds %union.anon, %union.anon* %117, i64 0, i32 0
  %118 = add i64 %109, -16
  %119 = add i64 %111, 12
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RSI.i102, align 8
  %122 = add i64 %109, -48
  %123 = add i64 %111, 16
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i64*
  store i64 %121, i64* %124, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i96 = bitcast %union.anon* %125 to i32*
  %126 = getelementptr inbounds %union.anon, %union.anon* %125, i64 0, i32 0
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -8
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %126, align 8
  %134 = add i64 %127, -40
  %135 = add i64 %129, 8
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 %132, i32* %136, align 4
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -48
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 4
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RSI.i102, align 8
  %143 = add i64 %137, -40
  %144 = add i64 %139, 8
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %126, align 8
  %148 = add i64 %137, -64
  %149 = load i64, i64* %RDI.i148, align 8
  %150 = add i64 %139, 12
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %RSI.i102, align 8
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 3
  store i64 %154, i64* %3, align 8
  store i64 %152, i64* %RDI.i148, align 8
  %155 = load i32, i32* %R10D.i96, align 4
  %156 = zext i32 %155 to i64
  %157 = add i64 %153, 6
  store i64 %157, i64* %3, align 8
  store i64 %156, i64* %RSI.i102, align 8
  %R11.i76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -64
  %160 = add i64 %153, 10
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %R11.i76, align 8
  %163 = add i64 %158, -72
  %164 = load i64, i64* %RDX.i105, align 8
  %165 = add i64 %153, 14
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %R11.i76, align 8
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 3
  store i64 %169, i64* %3, align 8
  store i64 %167, i64* %RDX.i105, align 8
  %ECX.i = bitcast %union.anon* %77 to i32*
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -76
  %172 = load i32, i32* %ECX.i, align 4
  %173 = add i64 %168, 6
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %174, align 4
  %175 = load i64, i64* %RAX.i150, align 8
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %3, align 8
  store i64 %175, i64* %RCX.i129, align 8
  %178 = bitcast i64* %6 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = add i64 %176, 10
  store i64 %180, i64* %3, align 8
  store i32 3, i32* %179, align 4
  %181 = bitcast i64* %R11.i76 to i64**
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %3, align 8
  %185 = load i64, i64* %182, align 8
  store i64 %185, i64* %RAX.i150, align 8
  %186 = load i64, i64* %6, align 8
  %187 = add i64 %186, 8
  %188 = add i64 %183, 8
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  store i64 %185, i64* %189, align 8
  %190 = load i64, i64* %R11.i76, align 8
  %191 = add i64 %190, 8
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %126, align 8
  %197 = load i64, i64* %6, align 8
  %198 = add i64 %197, 16
  %199 = add i64 %192, 9
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  store i32 %195, i32* %200, align 4
  %201 = load i64, i64* %6, align 8
  %202 = add i64 %201, 24
  %203 = load i64, i64* %R11.i76, align 8
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 5
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %202 to i64*
  store i64 %203, i64* %206, align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -72
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 4
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %208 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RAX.i150, align 8
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, 32
  %215 = add i64 %209, 9
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %216, align 8
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, -461
  %219 = add i64 %217, 5
  store i64 %219, i64* %3, align 8
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %6, align 8
  store i64 %218, i64* %3, align 8
  %call2_40070d = call %struct.Memory* @sub_400540.update(%struct.State* %0, i64 %218, %struct.Memory* %68)
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 10
  store i64 %224, i64* %3, align 8
  store i64 ptrtoint (%G__0x4007e4_type* @G__0x4007e4 to i64), i64* %RDI.i148, align 8
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -32
  %227 = load i64, i64* %RAX.i150, align 8
  %228 = add i64 %223, 14
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i64*
  store i64 %227, i64* %229, align 8
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -32
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 4
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %231 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX.i150, align 8
  %236 = add i64 %232, 6
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RSI.i102, align 8
  %240 = add i64 %232, 10
  store i64 %240, i64* %3, align 8
  %241 = load i64, i64* %234, align 8
  store i64 %241, i64* %RAX.i150, align 8
  %242 = add i64 %241, 4
  %243 = add i64 %232, 13
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %245, %238
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RSI.i102, align 8
  %248 = icmp ult i32 %246, %238
  %249 = icmp ult i32 %246, %245
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %16, align 1
  %252 = and i32 %246, 255
  %253 = call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %23, align 1
  %257 = xor i32 %245, %238
  %258 = xor i32 %257, %246
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %28, align 1
  %262 = icmp eq i32 %246, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %31, align 1
  %264 = lshr i32 %246, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %34, align 1
  %266 = lshr i32 %238, 31
  %267 = lshr i32 %245, 31
  %268 = xor i32 %264, %266
  %269 = xor i32 %264, %267
  %270 = add nuw nsw i32 %268, %269
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %40, align 1
  %273 = add i64 %232, 17
  store i64 %273, i64* %3, align 8
  %274 = load i64, i64* %234, align 8
  store i64 %274, i64* %RAX.i150, align 8
  %275 = add i64 %274, 8
  %276 = add i64 %232, 20
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %278, %246
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RSI.i102, align 8
  %281 = icmp ult i32 %279, %246
  %282 = icmp ult i32 %279, %278
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %16, align 1
  %285 = and i32 %279, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %23, align 1
  %290 = xor i32 %278, %246
  %291 = xor i32 %290, %279
  %292 = lshr i32 %291, 4
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %28, align 1
  %295 = icmp eq i32 %279, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %31, align 1
  %297 = lshr i32 %279, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %34, align 1
  %299 = lshr i32 %278, 31
  %300 = xor i32 %297, %264
  %301 = xor i32 %297, %299
  %302 = add nuw nsw i32 %300, %301
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %40, align 1
  %ESI.i19 = bitcast %union.anon* %117 to i32*
  %305 = add i64 %230, -52
  %306 = add i64 %232, 23
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 %279, i32* %307, align 4
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -52
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, 3
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RSI.i102, align 8
  %AL.i = bitcast %union.anon* %41 to i8*
  %315 = add i64 %310, 5
  store i64 %315, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %316 = add i64 %310, -775
  %317 = add i64 %310, 10
  store i64 %317, i64* %3, align 8
  %318 = load i64, i64* %6, align 8
  %319 = add i64 %318, -8
  %320 = inttoptr i64 %319 to i64*
  store i64 %317, i64* %320, align 8
  store i64 %319, i64* %6, align 8
  store i64 %316, i64* %3, align 8
  %321 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40070d)
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -52
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 3
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RSI.i102, align 8
  %329 = add i64 %322, -80
  %330 = load i32, i32* %EAX.i147, align 4
  %331 = add i64 %324, 6
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* %ESI.i19, align 4
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %3, align 8
  %336 = add i64 %335, 2
  store i64 %336, i64* %3, align 8
  store i64 %334, i64* %RAX.i150, align 8
  %337 = load i64, i64* %6, align 8
  %338 = add i64 %335, 9
  store i64 %338, i64* %3, align 8
  %339 = add i64 %337, 128
  store i64 %339, i64* %6, align 8
  %340 = icmp ugt i64 %337, -129
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %16, align 1
  %342 = trunc i64 %339 to i32
  %343 = and i32 %342, 255
  %344 = call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %23, align 1
  %348 = xor i64 %337, %339
  %349 = lshr i64 %348, 4
  %350 = trunc i64 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %28, align 1
  %352 = icmp eq i64 %339, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %31, align 1
  %354 = lshr i64 %339, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %34, align 1
  %356 = lshr i64 %337, 63
  %357 = xor i64 %354, %356
  %358 = add nuw nsw i64 %357, %354
  %359 = icmp eq i64 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %40, align 1
  %361 = add i64 %335, 10
  store i64 %361, i64* %3, align 8
  %362 = add i64 %337, 136
  %363 = inttoptr i64 %339 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RBP.i, align 8
  store i64 %362, i64* %6, align 8
  %365 = add i64 %335, 11
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %362 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %3, align 8
  %368 = add i64 %337, 144
  store i64 %368, i64* %6, align 8
  ret %struct.Memory* %321
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
