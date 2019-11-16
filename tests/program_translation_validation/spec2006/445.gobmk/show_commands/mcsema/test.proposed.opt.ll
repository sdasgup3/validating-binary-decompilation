; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x58649a_type = type <{ [8 x i8] }>
%G__0x5864a6_type = type <{ [8 x i8] }>
%G__0x5864d5_type = type <{ [8 x i8] }>
%G__0x58650a_type = type <{ [8 x i8] }>
%G__0x58653e_type = type <{ [8 x i8] }>
%G__0x58656a_type = type <{ [8 x i8] }>
%G__0x586593_type = type <{ [8 x i8] }>
%G__0x5865b5_type = type <{ [8 x i8] }>
%G__0x5865ea_type = type <{ [8 x i8] }>
%G__0x58661d_type = type <{ [8 x i8] }>
%G__0x58664e_type = type <{ [8 x i8] }>
%G__0x586681_type = type <{ [8 x i8] }>
%G__0x5866bb_type = type <{ [8 x i8] }>
%G__0x5866f6_type = type <{ [8 x i8] }>
%G__0x586732_type = type <{ [8 x i8] }>
%G__0x58675f_type = type <{ [8 x i8] }>
%G__0x58678d_type = type <{ [8 x i8] }>
%G__0x5867bc_type = type <{ [8 x i8] }>
%G__0x5867ec_type = type <{ [8 x i8] }>
%G__0x58681e_type = type <{ [8 x i8] }>
%G__0x586846_type = type <{ [8 x i8] }>
%G__0x58686d_type = type <{ [8 x i8] }>
%G__0x5868a3_type = type <{ [8 x i8] }>
%G__0x5868d9_type = type <{ [8 x i8] }>
%G__0x5868fb_type = type <{ [8 x i8] }>
%G__0x586929_type = type <{ [8 x i8] }>
%G__0x586955_type = type <{ [8 x i8] }>
%G__0x586981_type = type <{ [8 x i8] }>
%G__0x5869b6_type = type <{ [8 x i8] }>
%G__0x5869eb_type = type <{ [8 x i8] }>
%G__0x586a22_type = type <{ [8 x i8] }>
%G__0x586a5f_type = type <{ [8 x i8] }>
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x58649a = global %G__0x58649a_type zeroinitializer
@G__0x5864a6 = global %G__0x5864a6_type zeroinitializer
@G__0x5864d5 = global %G__0x5864d5_type zeroinitializer
@G__0x58650a = global %G__0x58650a_type zeroinitializer
@G__0x58653e = global %G__0x58653e_type zeroinitializer
@G__0x58656a = global %G__0x58656a_type zeroinitializer
@G__0x586593 = global %G__0x586593_type zeroinitializer
@G__0x5865b5 = global %G__0x5865b5_type zeroinitializer
@G__0x5865ea = global %G__0x5865ea_type zeroinitializer
@G__0x58661d = global %G__0x58661d_type zeroinitializer
@G__0x58664e = global %G__0x58664e_type zeroinitializer
@G__0x586681 = global %G__0x586681_type zeroinitializer
@G__0x5866bb = global %G__0x5866bb_type zeroinitializer
@G__0x5866f6 = global %G__0x5866f6_type zeroinitializer
@G__0x586732 = global %G__0x586732_type zeroinitializer
@G__0x58675f = global %G__0x58675f_type zeroinitializer
@G__0x58678d = global %G__0x58678d_type zeroinitializer
@G__0x5867bc = global %G__0x5867bc_type zeroinitializer
@G__0x5867ec = global %G__0x5867ec_type zeroinitializer
@G__0x58681e = global %G__0x58681e_type zeroinitializer
@G__0x586846 = global %G__0x586846_type zeroinitializer
@G__0x58686d = global %G__0x58686d_type zeroinitializer
@G__0x5868a3 = global %G__0x5868a3_type zeroinitializer
@G__0x5868d9 = global %G__0x5868d9_type zeroinitializer
@G__0x5868fb = global %G__0x5868fb_type zeroinitializer
@G__0x586929 = global %G__0x586929_type zeroinitializer
@G__0x586955 = global %G__0x586955_type zeroinitializer
@G__0x586981 = global %G__0x586981_type zeroinitializer
@G__0x5869b6 = global %G__0x5869b6_type zeroinitializer
@G__0x5869eb = global %G__0x5869eb_type zeroinitializer
@G__0x586a22 = global %G__0x586a22_type zeroinitializer
@G__0x586a5f = global %G__0x586a5f_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @show_commands(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -152
  %12 = icmp ult i64 %8, 144
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
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
  %RDI.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x58649a_type* @G__0x58649a to i64), i64* %RDI.i27, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i37 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i37, align 1
  %41 = add i64 %10, -590385
  %42 = add i64 %10, 27
  %43 = add i64 %7, -160
  %44 = inttoptr i64 %43 to i64*
  store i64 %42, i64* %44, align 8
  store i64 %43, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  %45 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %46 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5864a6_type* @G__0x5864a6 to i64), i64* %RDI.i27, align 8
  %EAX.i66 = bitcast %union.anon* %40 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -4
  %49 = load i32, i32* %EAX.i66, align 4
  %50 = add i64 %46, 13
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %53 = add i64 %52, -590425
  %54 = add i64 %52, 7
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  store i64 %56, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  %58 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %45)
  %59 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5864d5_type* @G__0x5864d5 to i64), i64* %RDI.i27, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -8
  %62 = load i32, i32* %EAX.i66, align 4
  %63 = add i64 %59, 13
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %66 = add i64 %65, -590445
  %67 = add i64 %65, 7
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  store i64 %67, i64* %70, align 8
  store i64 %69, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  %71 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %58)
  %72 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58650a_type* @G__0x58650a to i64), i64* %RDI.i27, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -12
  %75 = load i32, i32* %EAX.i66, align 4
  %76 = add i64 %72, 13
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %79 = add i64 %78, -590465
  %80 = add i64 %78, 7
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %80, i64* %83, align 8
  store i64 %82, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  %84 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %71)
  %85 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58653e_type* @G__0x58653e to i64), i64* %RDI.i27, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -16
  %88 = load i32, i32* %EAX.i66, align 4
  %89 = add i64 %85, 13
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %92 = add i64 %91, -590485
  %93 = add i64 %91, 7
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  %97 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %84)
  %98 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58656a_type* @G__0x58656a to i64), i64* %RDI.i27, align 8
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -20
  %101 = load i32, i32* %EAX.i66, align 4
  %102 = add i64 %98, 13
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %105 = add i64 %104, -590505
  %106 = add i64 %104, 7
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %6, align 8
  store i64 %105, i64* %3, align 8
  %110 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %97)
  %111 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586593_type* @G__0x586593 to i64), i64* %RDI.i27, align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -24
  %114 = load i32, i32* %EAX.i66, align 4
  %115 = add i64 %111, 13
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %116, align 4
  %117 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %118 = add i64 %117, -590525
  %119 = add i64 %117, 7
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %123 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %110)
  %124 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5865b5_type* @G__0x5865b5 to i64), i64* %RDI.i27, align 8
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -28
  %127 = load i32, i32* %EAX.i66, align 4
  %128 = add i64 %124, 13
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %131 = add i64 %130, -590545
  %132 = add i64 %130, 7
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  %136 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %123)
  %137 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5865ea_type* @G__0x5865ea to i64), i64* %RDI.i27, align 8
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -32
  %140 = load i32, i32* %EAX.i66, align 4
  %141 = add i64 %137, 13
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %142, align 4
  %143 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %144 = add i64 %143, -590565
  %145 = add i64 %143, 7
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %136)
  %150 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58661d_type* @G__0x58661d to i64), i64* %RDI.i27, align 8
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -36
  %153 = load i32, i32* %EAX.i66, align 4
  %154 = add i64 %150, 13
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i32*
  store i32 %153, i32* %155, align 4
  %156 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %157 = add i64 %156, -590585
  %158 = add i64 %156, 7
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, -8
  %161 = inttoptr i64 %160 to i64*
  store i64 %158, i64* %161, align 8
  store i64 %160, i64* %6, align 8
  store i64 %157, i64* %3, align 8
  %162 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %149)
  %163 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58664e_type* @G__0x58664e to i64), i64* %RDI.i27, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -40
  %166 = load i32, i32* %EAX.i66, align 4
  %167 = add i64 %163, 13
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %168, align 4
  %169 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %170 = add i64 %169, -590605
  %171 = add i64 %169, 7
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %175 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %162)
  %176 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586681_type* @G__0x586681 to i64), i64* %RDI.i27, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -44
  %179 = load i32, i32* %EAX.i66, align 4
  %180 = add i64 %176, 13
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %183 = add i64 %182, -590625
  %184 = add i64 %182, 7
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %188 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %175)
  %189 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5866bb_type* @G__0x5866bb to i64), i64* %RDI.i27, align 8
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -48
  %192 = load i32, i32* %EAX.i66, align 4
  %193 = add i64 %189, 13
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  store i32 %192, i32* %194, align 4
  %195 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %196 = add i64 %195, -590645
  %197 = add i64 %195, 7
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 %197, i64* %200, align 8
  store i64 %199, i64* %6, align 8
  store i64 %196, i64* %3, align 8
  %201 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %188)
  %202 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5866f6_type* @G__0x5866f6 to i64), i64* %RDI.i27, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -52
  %205 = load i32, i32* %EAX.i66, align 4
  %206 = add i64 %202, 13
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %207, align 4
  %208 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %209 = add i64 %208, -590665
  %210 = add i64 %208, 7
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %210, i64* %213, align 8
  store i64 %212, i64* %6, align 8
  store i64 %209, i64* %3, align 8
  %214 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %201)
  %215 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586732_type* @G__0x586732 to i64), i64* %RDI.i27, align 8
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -56
  %218 = load i32, i32* %EAX.i66, align 4
  %219 = add i64 %215, 13
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 %218, i32* %220, align 4
  %221 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %222 = add i64 %221, -590685
  %223 = add i64 %221, 7
  %224 = load i64, i64* %6, align 8
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %6, align 8
  store i64 %222, i64* %3, align 8
  %227 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %214)
  %228 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58675f_type* @G__0x58675f to i64), i64* %RDI.i27, align 8
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -60
  %231 = load i32, i32* %EAX.i66, align 4
  %232 = add i64 %228, 13
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %233, align 4
  %234 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %235 = add i64 %234, -590705
  %236 = add i64 %234, 7
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  store i64 %238, i64* %6, align 8
  store i64 %235, i64* %3, align 8
  %240 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %227)
  %241 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58678d_type* @G__0x58678d to i64), i64* %RDI.i27, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -64
  %244 = load i32, i32* %EAX.i66, align 4
  %245 = add i64 %241, 13
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i32*
  store i32 %244, i32* %246, align 4
  %247 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %248 = add i64 %247, -590725
  %249 = add i64 %247, 7
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %6, align 8
  store i64 %248, i64* %3, align 8
  %253 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %240)
  %254 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5867bc_type* @G__0x5867bc to i64), i64* %RDI.i27, align 8
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -68
  %257 = load i32, i32* %EAX.i66, align 4
  %258 = add i64 %254, 13
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %259, align 4
  %260 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %261 = add i64 %260, -590745
  %262 = add i64 %260, 7
  %263 = load i64, i64* %6, align 8
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %6, align 8
  store i64 %261, i64* %3, align 8
  %266 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %253)
  %267 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5867ec_type* @G__0x5867ec to i64), i64* %RDI.i27, align 8
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -72
  %270 = load i32, i32* %EAX.i66, align 4
  %271 = add i64 %267, 13
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i32*
  store i32 %270, i32* %272, align 4
  %273 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %274 = add i64 %273, -590765
  %275 = add i64 %273, 7
  %276 = load i64, i64* %6, align 8
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278, align 8
  store i64 %277, i64* %6, align 8
  store i64 %274, i64* %3, align 8
  %279 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %266)
  %280 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58681e_type* @G__0x58681e to i64), i64* %RDI.i27, align 8
  %281 = load i64, i64* %RBP.i, align 8
  %282 = add i64 %281, -76
  %283 = load i32, i32* %EAX.i66, align 4
  %284 = add i64 %280, 13
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %282 to i32*
  store i32 %283, i32* %285, align 4
  %286 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %287 = add i64 %286, -590785
  %288 = add i64 %286, 7
  %289 = load i64, i64* %6, align 8
  %290 = add i64 %289, -8
  %291 = inttoptr i64 %290 to i64*
  store i64 %288, i64* %291, align 8
  store i64 %290, i64* %6, align 8
  store i64 %287, i64* %3, align 8
  %292 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %279)
  %293 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586846_type* @G__0x586846 to i64), i64* %RDI.i27, align 8
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -80
  %296 = load i32, i32* %EAX.i66, align 4
  %297 = add i64 %293, 13
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %298, align 4
  %299 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %300 = add i64 %299, -590805
  %301 = add i64 %299, 7
  %302 = load i64, i64* %6, align 8
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  store i64 %303, i64* %6, align 8
  store i64 %300, i64* %3, align 8
  %305 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %292)
  %306 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58686d_type* @G__0x58686d to i64), i64* %RDI.i27, align 8
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -84
  %309 = load i32, i32* %EAX.i66, align 4
  %310 = add i64 %306, 13
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %308 to i32*
  store i32 %309, i32* %311, align 4
  %312 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %313 = add i64 %312, -590825
  %314 = add i64 %312, 7
  %315 = load i64, i64* %6, align 8
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %6, align 8
  store i64 %313, i64* %3, align 8
  %318 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %305)
  %319 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5868a3_type* @G__0x5868a3 to i64), i64* %RDI.i27, align 8
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -88
  %322 = load i32, i32* %EAX.i66, align 4
  %323 = add i64 %319, 13
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %321 to i32*
  store i32 %322, i32* %324, align 4
  %325 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %326 = add i64 %325, -590845
  %327 = add i64 %325, 7
  %328 = load i64, i64* %6, align 8
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330, align 8
  store i64 %329, i64* %6, align 8
  store i64 %326, i64* %3, align 8
  %331 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %318)
  %332 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5868d9_type* @G__0x5868d9 to i64), i64* %RDI.i27, align 8
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -92
  %335 = load i32, i32* %EAX.i66, align 4
  %336 = add i64 %332, 13
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %334 to i32*
  store i32 %335, i32* %337, align 4
  %338 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %339 = add i64 %338, -590865
  %340 = add i64 %338, 7
  %341 = load i64, i64* %6, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %6, align 8
  store i64 %339, i64* %3, align 8
  %344 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %331)
  %345 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5868fb_type* @G__0x5868fb to i64), i64* %RDI.i27, align 8
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -96
  %348 = load i32, i32* %EAX.i66, align 4
  %349 = add i64 %345, 13
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %347 to i32*
  store i32 %348, i32* %350, align 4
  %351 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %352 = add i64 %351, -590885
  %353 = add i64 %351, 7
  %354 = load i64, i64* %6, align 8
  %355 = add i64 %354, -8
  %356 = inttoptr i64 %355 to i64*
  store i64 %353, i64* %356, align 8
  store i64 %355, i64* %6, align 8
  store i64 %352, i64* %3, align 8
  %357 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %344)
  %358 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586929_type* @G__0x586929 to i64), i64* %RDI.i27, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -100
  %361 = load i32, i32* %EAX.i66, align 4
  %362 = add i64 %358, 13
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i32*
  store i32 %361, i32* %363, align 4
  %364 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %365 = add i64 %364, -590905
  %366 = add i64 %364, 7
  %367 = load i64, i64* %6, align 8
  %368 = add i64 %367, -8
  %369 = inttoptr i64 %368 to i64*
  store i64 %366, i64* %369, align 8
  store i64 %368, i64* %6, align 8
  store i64 %365, i64* %3, align 8
  %370 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %357)
  %371 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586955_type* @G__0x586955 to i64), i64* %RDI.i27, align 8
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -104
  %374 = load i32, i32* %EAX.i66, align 4
  %375 = add i64 %371, 13
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  store i32 %374, i32* %376, align 4
  %377 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %378 = add i64 %377, -590925
  %379 = add i64 %377, 7
  %380 = load i64, i64* %6, align 8
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %6, align 8
  store i64 %378, i64* %3, align 8
  %383 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %370)
  %384 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586981_type* @G__0x586981 to i64), i64* %RDI.i27, align 8
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -108
  %387 = load i32, i32* %EAX.i66, align 4
  %388 = add i64 %384, 13
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %386 to i32*
  store i32 %387, i32* %389, align 4
  %390 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %391 = add i64 %390, -590945
  %392 = add i64 %390, 7
  %393 = load i64, i64* %6, align 8
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %392, i64* %395, align 8
  store i64 %394, i64* %6, align 8
  store i64 %391, i64* %3, align 8
  %396 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %383)
  %397 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5869b6_type* @G__0x5869b6 to i64), i64* %RDI.i27, align 8
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -112
  %400 = load i32, i32* %EAX.i66, align 4
  %401 = add i64 %397, 13
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %399 to i32*
  store i32 %400, i32* %402, align 4
  %403 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %404 = add i64 %403, -590965
  %405 = add i64 %403, 7
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %409 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %396)
  %410 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5869eb_type* @G__0x5869eb to i64), i64* %RDI.i27, align 8
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -116
  %413 = load i32, i32* %EAX.i66, align 4
  %414 = add i64 %410, 13
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %412 to i32*
  store i32 %413, i32* %415, align 4
  %416 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %417 = add i64 %416, -590985
  %418 = add i64 %416, 7
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %418, i64* %421, align 8
  store i64 %420, i64* %6, align 8
  store i64 %417, i64* %3, align 8
  %422 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %409)
  %423 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586a22_type* @G__0x586a22 to i64), i64* %RDI.i27, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -120
  %426 = load i32, i32* %EAX.i66, align 4
  %427 = add i64 %423, 13
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %428, align 4
  %429 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %430 = add i64 %429, -591005
  %431 = add i64 %429, 7
  %432 = load i64, i64* %6, align 8
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %6, align 8
  store i64 %430, i64* %3, align 8
  %435 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %422)
  %436 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586a5f_type* @G__0x586a5f to i64), i64* %RDI.i27, align 8
  %437 = load i64, i64* %RBP.i, align 8
  %438 = add i64 %437, -124
  %439 = load i32, i32* %EAX.i66, align 4
  %440 = add i64 %436, 13
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %438 to i32*
  store i32 %439, i32* %441, align 4
  %442 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %443 = add i64 %442, -591025
  %444 = add i64 %442, 7
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %444, i64* %447, align 8
  store i64 %446, i64* %6, align 8
  store i64 %443, i64* %3, align 8
  %448 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %435)
  %449 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i27, align 8
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -128
  %452 = load i32, i32* %EAX.i66, align 4
  %453 = add i64 %449, 13
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %454, align 4
  %455 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i37, align 1
  %456 = add i64 %455, -591045
  %457 = add i64 %455, 7
  %458 = load i64, i64* %6, align 8
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %457, i64* %460, align 8
  store i64 %459, i64* %6, align 8
  store i64 %456, i64* %3, align 8
  %461 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %448)
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -132
  %464 = load i32, i32* %EAX.i66, align 4
  %465 = load i64, i64* %3, align 8
  %466 = add i64 %465, 6
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %467, align 4
  %468 = load i64, i64* %6, align 8
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %468, 144
  store i64 %470, i64* %6, align 8
  %471 = icmp ugt i64 %468, -145
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %14, align 1
  %473 = trunc i64 %470 to i32
  %474 = and i32 %473, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i64 %468, 16
  %480 = xor i64 %479, %470
  %481 = lshr i64 %480, 4
  %482 = trunc i64 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %27, align 1
  %484 = icmp eq i64 %470, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %30, align 1
  %486 = lshr i64 %470, 63
  %487 = trunc i64 %486 to i8
  store i8 %487, i8* %33, align 1
  %488 = lshr i64 %468, 63
  %489 = xor i64 %486, %488
  %490 = add nuw nsw i64 %489, %486
  %491 = icmp eq i64 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %39, align 1
  %493 = add i64 %469, 8
  store i64 %493, i64* %3, align 8
  %494 = add i64 %468, 152
  %495 = inttoptr i64 %470 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RBP.i, align 8
  store i64 %494, i64* %6, align 8
  %497 = add i64 %469, 9
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %494 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %3, align 8
  %500 = add i64 %468, 160
  store i64 %500, i64* %6, align 8
  ret %struct.Memory* %461
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58649a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58649a_type* @G__0x58649a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5864a6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5864a6_type* @G__0x5864a6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5864d5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5864d5_type* @G__0x5864d5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58650a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58650a_type* @G__0x58650a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58653e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58653e_type* @G__0x58653e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58656a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58656a_type* @G__0x58656a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586593___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586593_type* @G__0x586593 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5865b5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5865b5_type* @G__0x5865b5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5865ea___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5865ea_type* @G__0x5865ea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58661d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58661d_type* @G__0x58661d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58664e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58664e_type* @G__0x58664e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586681___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586681_type* @G__0x586681 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5866bb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5866bb_type* @G__0x5866bb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5866f6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5866f6_type* @G__0x5866f6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586732___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586732_type* @G__0x586732 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58675f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58675f_type* @G__0x58675f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58678d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58678d_type* @G__0x58678d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5867bc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5867bc_type* @G__0x5867bc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5867ec___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5867ec_type* @G__0x5867ec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58681e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58681e_type* @G__0x58681e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586846___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586846_type* @G__0x586846 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58686d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58686d_type* @G__0x58686d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5868a3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5868a3_type* @G__0x5868a3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5868d9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5868d9_type* @G__0x5868d9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5868fb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5868fb_type* @G__0x5868fb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586929___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586929_type* @G__0x586929 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586955___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586955_type* @G__0x586955 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586981___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586981_type* @G__0x586981 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5869b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5869b6_type* @G__0x5869b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5869eb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5869eb_type* @G__0x5869eb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586a22___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586a22_type* @G__0x586a22 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586a5f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586a5f_type* @G__0x586a5f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
