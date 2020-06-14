; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x4005f0_type = type <{ [8 x i8] }>
%G__0x400714_type = type <{ [8 x i8] }>
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

@G__0x4005f0 = external global %G__0x4005f0_type
@G__0x400714 = external global %G__0x400714_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @pthread_join(i64, i64)

declare extern_weak x86_64_sysvcc i64 @pthread_create(i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

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
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i11, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDI.i41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %18 = add i64 %7, -24
  store i64 %18, i64* %RDI.i41, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i54 = bitcast %union.anon* %19 to i32*
  %RAX.i55 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 0, i64* %RAX.i55, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RCX.i52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 0, i64* %RCX.i52, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 add (i64 ptrtoint (%G__0x4005f0_type* @G__0x4005f0 to i64), i64 168), i64* %RDX.i, align 8
  %20 = add i64 %7, -12
  %21 = add i64 %10, 32
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %20 to i32*
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i46 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i64, i64* %RCX.i52, align 8
  %25 = load i64, i64* %PC.i, align 8
  store i64 %24, i64* %RSI.i46, align 8
  %26 = add i64 %25, -369
  %27 = add i64 %25, 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  store i64 %29, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  %31 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @pthread_create to i64), %struct.Memory* %2)
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -24
  %34 = load i64, i64* %PC.i, align 8
  store i64 %33, i64* %RCX.i52, align 8
  %35 = add i64 %32, -16
  %36 = add i64 %34, 8
  store i64 %36, i64* %PC.i, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %RDI.i41, align 8
  store i64 %33, i64* %RSI.i46, align 8
  %39 = add i64 %32, -28
  %40 = load i32, i32* %EAX.i54, align 4
  %41 = add i64 %34, 14
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, -359
  %45 = add i64 %43, 5
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %48, align 8
  store i64 %47, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  %49 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pthread_join to i64), %struct.Memory* %31)
  %50 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400714_type* @G__0x400714 to i64), i64* %RDI.i41, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = add i64 %50, 14
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RCX.i52, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %57 = and i64 %55, 4294967295
  store i64 %57, i64* %56, align 8
  %58 = and i64 %55, 4294967295
  store i64 %58, i64* %RSI.i46, align 8
  %59 = add i64 %51, -32
  %60 = load i32, i32* %EAX.i54, align 4
  %61 = add i64 %50, 23
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %62, align 4
  %AL.i = bitcast %union.anon* %19 to i8*
  %63 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i, align 1
  %64 = add i64 %63, -403
  %65 = add i64 %63, 7
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, -8
  %68 = inttoptr i64 %67 to i64*
  store i64 %65, i64* %68, align 8
  store i64 %67, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  %69 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %49)
  %ESI.i9 = bitcast %union.anon* %23 to i32*
  %70 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %RSI.i46, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -36
  %73 = load i32, i32* %EAX.i54, align 4
  %74 = add i64 %70, 5
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %ESI.i9, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %PC.i, align 8
  store i64 %77, i64* %RAX.i55, align 8
  %79 = load i64, i64* %RSP.i11, align 8
  %80 = add i64 %79, 48
  store i64 %80, i64* %RSP.i11, align 8
  %81 = icmp ugt i64 %79, -49
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %12, align 1
  %83 = trunc i64 %80 to i32
  %84 = and i32 %83, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %13, align 1
  %89 = xor i64 %79, 16
  %90 = xor i64 %89, %80
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %14, align 1
  %94 = icmp eq i64 %80, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %15, align 1
  %96 = lshr i64 %80, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %16, align 1
  %98 = lshr i64 %79, 63
  %99 = xor i64 %96, %98
  %100 = add nuw nsw i64 %99, %96
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %17, align 1
  %103 = add i64 %78, 7
  store i64 %103, i64* %PC.i, align 8
  %104 = add i64 %79, 56
  %105 = inttoptr i64 %80 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RBP.i, align 8
  store i64 %104, i64* %6, align 8
  %107 = add i64 %78, 8
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %104 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %3, align 8
  %110 = add i64 %79, 64
  store i64 %110, i64* %6, align 8
  ret %struct.Memory* %69
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
