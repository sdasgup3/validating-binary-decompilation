; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99c070_type = type <{ [4 x i8] }>
%G_0x99c074_type = type <{ [1 x i8] }>
%G_0x99c078_type = type <{ [4 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xafc470_type = type <{ [8 x i8] }>
%G_0xafc478_type = type <{ [4 x i8] }>
%G_0xafc47c_type = type <{ [4 x i8] }>
%G_0xafc480_type = type <{ [1 x i8] }>
%G_0xafc488_type = type <{ [1 x i8] }>
%G_0xb89e50_type = type <{ [8 x i8] }>
%G_0xb8af30_type = type <{ [4 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
%G__0x595178_type = type <{ [4 x i8] }>
%G__0x59517b_type = type <{ [8 x i8] }>
%G__0x595199_type = type <{ [8 x i8] }>
%G__0x5951c6_type = type <{ [8 x i8] }>
%G__0x5951f3_type = type <{ [8 x i8] }>
%G__0x595219_type = type <{ [8 x i8] }>
%G__0x595239_type = type <{ [8 x i8] }>
%G__0x595259_type = type <{ [8 x i8] }>
%G__0x595273_type = type <{ [8 x i8] }>
%G__0x59528d_type = type <{ [8 x i8] }>
%G__0x5952b4_type = type <{ [8 x i8] }>
%G__0x5952d5_type = type <{ [8 x i8] }>
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
@G_0x99c070 = local_unnamed_addr global %G_0x99c070_type zeroinitializer
@G_0x99c074 = local_unnamed_addr global %G_0x99c074_type zeroinitializer
@G_0x99c078 = local_unnamed_addr global %G_0x99c078_type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xafc470 = local_unnamed_addr global %G_0xafc470_type zeroinitializer
@G_0xafc478 = local_unnamed_addr global %G_0xafc478_type zeroinitializer
@G_0xafc47c = local_unnamed_addr global %G_0xafc47c_type zeroinitializer
@G_0xafc480 = local_unnamed_addr global %G_0xafc480_type zeroinitializer
@G_0xafc488 = local_unnamed_addr global %G_0xafc488_type zeroinitializer
@G_0xb89e50 = local_unnamed_addr global %G_0xb89e50_type zeroinitializer
@G_0xb8af30 = local_unnamed_addr global %G_0xb8af30_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer
@G__0x595178 = global %G__0x595178_type zeroinitializer
@G__0x59517b = global %G__0x59517b_type zeroinitializer
@G__0x595199 = global %G__0x595199_type zeroinitializer
@G__0x5951c6 = global %G__0x5951c6_type zeroinitializer
@G__0x5951f3 = global %G__0x5951f3_type zeroinitializer
@G__0x595219 = global %G__0x595219_type zeroinitializer
@G__0x595239 = global %G__0x595239_type zeroinitializer
@G__0x595259 = global %G__0x595259_type zeroinitializer
@G__0x595273 = global %G__0x595273_type zeroinitializer
@G__0x59528d = global %G__0x59528d_type zeroinitializer
@G__0x5952b4 = global %G__0x5952b4_type zeroinitializer
@G__0x5952d5 = global %G__0x5952d5_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4e2080._getopt_initialize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4e2170.exchange(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401030.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @getopt_internal(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -264
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %18 to i32*
  %19 = add i64 %7, -16
  %20 = load i32, i32* %EDI.i, align 4
  %21 = add i64 %10, 13
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i241 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i241, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i313 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %RDX.i313, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %32 to i64*
  store i64 %33, i64* %36, align 8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i322 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -32
  %40 = load i64, i64* %RCX.i322, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %R8.i389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -40
  %46 = load i64, i64* %R8.i389, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -44
  %53 = load i32, i32* %R9D.i, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %58 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  store i8 0, i8* %12, align 1
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59)
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %64 = icmp eq i32 %58, 0
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %15, align 1
  %66 = lshr i32 %58, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v208 = select i1 %64, i64 40, i64 26
  %68 = add i64 %57, %.v208
  store i64 %68, i64* %3, align 8
  br i1 %64, label %block_.L_4e0eca, label %block_4e0ebc

block_4e0ebc:                                     ; preds = %entry
  %69 = load i32, i32* bitcast (%G_0xb8af30_type* @G_0xb8af30 to i32*), align 8
  store i8 0, i8* %12, align 1
  %70 = and i32 %69, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %75 = icmp eq i32 %69, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %15, align 1
  %77 = lshr i32 %69, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v209 = select i1 %75, i64 14, i64 70
  %79 = add i64 %68, %.v209
  store i64 %79, i64* %3, align 8
  br i1 %75, label %block_.L_4e0eca, label %block_.L_4e0f02

block_.L_4e0eca:                                  ; preds = %block_4e0ebc, %entry
  %80 = phi i64 [ %79, %block_4e0ebc ], [ %68, %entry ]
  store i8 0, i8* %12, align 1
  store i8 %63, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %65, i8* %15, align 1
  store i8 %67, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v283 = select i1 %64, i64 14, i64 25
  %81 = add i64 %80, %.v283
  store i64 %81, i64* %3, align 8
  br i1 %64, label %block_4e0ed8, label %block_.L_4e0ee3

block_4e0ed8:                                     ; preds = %block_.L_4e0eca
  %82 = add i64 %81, 11
  store i64 %82, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br label %block_.L_4e0ee3

block_.L_4e0ee3:                                  ; preds = %block_.L_4e0eca, %block_4e0ed8
  %83 = phi i64 [ %82, %block_4e0ed8 ], [ %81, %block_.L_4e0eca ]
  %RDI.i1027 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -8
  %86 = add i64 %83, 3
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RDI.i1027, align 8
  %90 = add i64 %84, -16
  %91 = add i64 %83, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RSI.i241, align 8
  %94 = add i64 %84, -24
  %95 = add i64 %83, 11
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RDX.i313, align 8
  %98 = add i64 %83, 4509
  %99 = add i64 %83, 16
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  %call2_4e0eee = tail call %struct.Memory* @sub_4e2080._getopt_initialize(%struct.State* nonnull %0, i64 %98, %struct.Memory* %2)
  %RAX.i1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -24
  %105 = load i64, i64* %RAX.i1177, align 8
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 11
  store i64 %110, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0xb8af30_type* @G_0xb8af30 to i32*), align 8
  br label %block_.L_4e0f02

block_.L_4e0f02:                                  ; preds = %block_4e0ebc, %block_.L_4e0ee3
  %111 = phi i64 [ %110, %block_.L_4e0ee3 ], [ %79, %block_4e0ebc ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4e0eee, %block_.L_4e0ee3 ], [ %2, %block_4e0ebc ]
  %112 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i8 0, i8* %12, align 1
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %119 = icmp eq i64 %112, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %15, align 1
  %121 = lshr i64 %112, 63
  %122 = trunc i64 %121 to i8
  store i8 %122, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v210 = select i1 %119, i64 35, i64 15
  %123 = add i64 %111, %.v210
  store i64 %123, i64* %3, align 8
  br i1 %119, label %block_.L_4e0f25, label %block_4e0f11

block_4e0f11:                                     ; preds = %block_.L_4e0f02
  %RAX.i1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 %112, i64* %RAX.i1394, align 8
  %124 = add i64 %123, 11
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %112 to i8*
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i64
  %128 = and i64 %127, 4294967295
  store i64 %128, i64* %RCX.i322, align 8
  %129 = sext i8 %126 to i32
  store i8 0, i8* %12, align 1
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %135 = icmp eq i8 %126, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %15, align 1
  %137 = lshr i32 %129, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v211 = select i1 %135, i64 20, i64 855
  %139 = add i64 %123, %.v211
  store i64 %139, i64* %3, align 8
  br i1 %135, label %block_.L_4e0f25, label %block_4e0f11.block_.L_4e1268_crit_edge

block_4e0f11.block_.L_4e1268_crit_edge:           ; preds = %block_4e0f11
  %.pre122 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1268

block_.L_4e0f25:                                  ; preds = %block_4e0f11, %block_.L_4e0f02
  %140 = phi i64 [ %139, %block_4e0f11 ], [ %123, %block_.L_4e0f02 ]
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1866 = getelementptr inbounds %union.anon, %union.anon* %141, i64 0, i32 0
  %142 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX.i1866, align 8
  %EAX.i1864 = bitcast %union.anon* %141 to i32*
  %144 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %145 = sub i32 %142, %144
  %146 = icmp ult i32 %142, %144
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %12, align 1
  %148 = and i32 %145, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %13, align 1
  %153 = xor i32 %144, %142
  %154 = xor i32 %153, %145
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %14, align 1
  %158 = icmp eq i32 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %15, align 1
  %160 = lshr i32 %145, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %16, align 1
  %162 = lshr i32 %142, 31
  %163 = lshr i32 %144, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %160, %162
  %166 = add nuw nsw i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %17, align 1
  %169 = icmp ne i8 %161, 0
  %170 = xor i1 %169, %167
  %171 = or i1 %158, %170
  %.v266 = select i1 %171, i64 34, i64 20
  %172 = add i64 %140, %.v266
  store i64 %172, i64* %3, align 8
  br i1 %171, label %block_.L_4e0f47, label %block_4e0f39

block_4e0f39:                                     ; preds = %block_.L_4e0f25
  %173 = zext i32 %144 to i64
  store i64 %173, i64* %RAX.i1866, align 8
  %174 = add i64 %172, 14
  store i64 %174, i64* %3, align 8
  store i32 %144, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  br label %block_.L_4e0f47

block_.L_4e0f47:                                  ; preds = %block_4e0f39, %block_.L_4e0f25
  %175 = phi i32 [ %144, %block_4e0f39 ], [ %142, %block_.L_4e0f25 ]
  %176 = phi i64 [ %174, %block_4e0f39 ], [ %172, %block_.L_4e0f25 ]
  %177 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i1866, align 8
  %179 = sub i32 %177, %144
  %180 = icmp ult i32 %177, %144
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %12, align 1
  %182 = and i32 %179, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %13, align 1
  %187 = xor i32 %144, %177
  %188 = xor i32 %187, %179
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %14, align 1
  %192 = icmp eq i32 %179, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %15, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %16, align 1
  %196 = lshr i32 %177, 31
  %197 = xor i32 %163, %196
  %198 = xor i32 %194, %196
  %199 = add nuw nsw i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %17, align 1
  %202 = icmp ne i8 %195, 0
  %203 = xor i1 %202, %200
  %204 = or i1 %192, %203
  %.v267 = select i1 %204, i64 34, i64 20
  %205 = add i64 %176, %.v267
  store i64 %205, i64* %3, align 8
  br i1 %204, label %block_.L_4e0f69, label %block_4e0f5b

block_4e0f5b:                                     ; preds = %block_.L_4e0f47
  %206 = zext i32 %144 to i64
  store i64 %206, i64* %RAX.i1866, align 8
  %207 = add i64 %205, 14
  store i64 %207, i64* %3, align 8
  store i32 %144, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  br label %block_.L_4e0f69

block_.L_4e0f69:                                  ; preds = %block_4e0f5b, %block_.L_4e0f47
  %208 = phi i32 [ %144, %block_4e0f5b ], [ %177, %block_.L_4e0f47 ]
  %209 = phi i64 [ %207, %block_4e0f5b ], [ %205, %block_.L_4e0f47 ]
  %210 = load i32, i32* bitcast (%G_0xafc480_type* @G_0xafc480 to i32*), align 8
  %211 = add i32 %210, -1
  %212 = icmp eq i32 %210, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %12, align 1
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %13, align 1
  %219 = xor i32 %211, %210
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %14, align 1
  %223 = icmp eq i32 %211, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %15, align 1
  %225 = lshr i32 %211, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %16, align 1
  %227 = lshr i32 %210, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %17, align 1
  %.v268 = select i1 %223, i64 14, i64 275
  %232 = add i64 %209, %.v268
  store i64 %232, i64* %3, align 8
  br i1 %223, label %block_4e0f77, label %block_.L_4e0f69.block_.L_4e107c_crit_edge

block_.L_4e0f69.block_.L_4e107c_crit_edge:        ; preds = %block_.L_4e0f69
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e107c

block_4e0f77:                                     ; preds = %block_.L_4e0f69
  %233 = zext i32 %208 to i64
  store i64 %233, i64* %RAX.i1866, align 8
  %234 = sub i32 %208, %175
  %235 = icmp ult i32 %208, %175
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %12, align 1
  %237 = and i32 %234, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %13, align 1
  %242 = xor i32 %175, %208
  %243 = xor i32 %242, %234
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %14, align 1
  %247 = icmp eq i32 %234, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %15, align 1
  %249 = lshr i32 %234, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %16, align 1
  %251 = lshr i32 %208, 31
  %252 = lshr i32 %175, 31
  %253 = xor i32 %252, %251
  %254 = xor i32 %249, %251
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %17, align 1
  %.v279 = select i1 %247, i64 54, i64 20
  %258 = add i64 %232, %.v279
  store i64 %258, i64* %3, align 8
  %.pre167 = zext i32 %175 to i64
  br i1 %247, label %block_4e0f77.block_.L_4e0fad_crit_edge, label %block_4e0f8b

block_4e0f77.block_.L_4e0fad_crit_edge:           ; preds = %block_4e0f77
  %.pre169 = sub i32 %175, %144
  %.pre171 = and i32 %.pre169, 255
  %.pre173 = tail call i32 @llvm.ctpop.i32(i32 %.pre171)
  %.pre175 = trunc i32 %.pre173 to i8
  %.pre177 = and i8 %.pre175, 1
  %.pre179 = xor i8 %.pre177, 1
  %.pre181 = xor i32 %144, %175
  %.pre183 = xor i32 %.pre181, %.pre169
  %.pre185 = lshr i32 %.pre183, 4
  %.pre187 = trunc i32 %.pre185 to i8
  %.pre189 = and i8 %.pre187, 1
  %.pre191 = lshr i32 %.pre169, 31
  %.pre193 = trunc i32 %.pre191 to i8
  %.pre195 = xor i32 %163, %252
  %.pre197 = xor i32 %.pre191, %252
  %.pre199 = add nuw nsw i32 %.pre197, %.pre195
  br label %block_.L_4e0fad

block_4e0f8b:                                     ; preds = %block_4e0f77
  store i64 %.pre167, i64* %RAX.i1866, align 8
  %259 = sub i32 %175, %144
  %260 = icmp ult i32 %175, %144
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %12, align 1
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %13, align 1
  %267 = xor i32 %144, %175
  %268 = xor i32 %267, %259
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %14, align 1
  %272 = icmp eq i32 %259, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %15, align 1
  %274 = lshr i32 %259, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %16, align 1
  %276 = xor i32 %163, %252
  %277 = xor i32 %274, %252
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %17, align 1
  %.v280 = select i1 %272, i64 34, i64 20
  %281 = add i64 %258, %.v280
  store i64 %281, i64* %3, align 8
  br i1 %272, label %block_.L_4e0fad, label %block_4e0f9f

block_4e0f9f:                                     ; preds = %block_4e0f8b
  %RDI.i1835 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -16
  %284 = add i64 %281, 4
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDI.i1835, align 8
  %287 = add i64 %281, 4561
  %288 = add i64 %281, 9
  %289 = load i64, i64* %6, align 8
  %290 = add i64 %289, -8
  %291 = inttoptr i64 %290 to i64*
  store i64 %288, i64* %291, align 8
  store i64 %290, i64* %6, align 8
  store i64 %287, i64* %3, align 8
  %call2_4e0fa3 = tail call %struct.Memory* @sub_4e2170.exchange(%struct.State* nonnull %0, i64 %287, %struct.Memory* %MEMORY.2)
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, 44
  %.pre.pre = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br label %block_.L_4e0fd4

block_.L_4e0fad:                                  ; preds = %block_4e0f77.block_.L_4e0fad_crit_edge, %block_4e0f8b
  %.pre-phi200 = phi i32 [ %.pre199, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ %278, %block_4e0f8b ]
  %.pre-phi194 = phi i8 [ %.pre193, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ %275, %block_4e0f8b ]
  %.pre-phi190 = phi i8 [ %.pre189, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ %271, %block_4e0f8b ]
  %.pre-phi180 = phi i8 [ %.pre179, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ %266, %block_4e0f8b ]
  %.pre-phi170 = phi i32 [ %.pre169, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ 0, %block_4e0f8b ]
  %294 = phi i64 [ %258, %block_4e0f77.block_.L_4e0fad_crit_edge ], [ %281, %block_4e0f8b ]
  store i64 %.pre167, i64* %RAX.i1866, align 8
  %295 = icmp ult i32 %175, %144
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %12, align 1
  store i8 %.pre-phi180, i8* %13, align 1
  store i8 %.pre-phi190, i8* %14, align 1
  %297 = icmp eq i32 %.pre-phi170, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %15, align 1
  store i8 %.pre-phi194, i8* %16, align 1
  %299 = icmp eq i32 %.pre-phi200, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %17, align 1
  %.v282 = select i1 %297, i64 34, i64 20
  %301 = add i64 %294, %.v282
  store i64 %301, i64* %3, align 8
  br i1 %297, label %block_.L_4e0fcf, label %block_4e0fc1

block_4e0fc1:                                     ; preds = %block_.L_4e0fad
  %302 = zext i32 %144 to i64
  store i64 %302, i64* %RAX.i1866, align 8
  %303 = add i64 %301, 14
  store i64 %303, i64* %3, align 8
  store i32 %144, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  br label %block_.L_4e0fcf

block_.L_4e0fcf:                                  ; preds = %block_4e0fc1, %block_.L_4e0fad
  %304 = phi i64 [ %303, %block_4e0fc1 ], [ %301, %block_.L_4e0fad ]
  %305 = add i64 %304, 5
  store i64 %305, i64* %3, align 8
  br label %block_.L_4e0fd4

block_.L_4e0fd4:                                  ; preds = %block_.L_4e0fcf, %block_4e0f9f
  %.pre = phi i32 [ %.pre.pre, %block_4e0f9f ], [ %144, %block_.L_4e0fcf ]
  %storemerge = phi i64 [ %293, %block_4e0f9f ], [ %305, %block_.L_4e0fcf ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4e0fa3, %block_4e0f9f ], [ %MEMORY.2, %block_.L_4e0fcf ]
  %306 = add i64 %storemerge, 5
  %AL.i1816 = bitcast %union.anon* %141 to i8*
  %CL.i1817 = bitcast %union.anon* %37 to i8*
  %SIL.i1773 = bitcast %union.anon* %23 to i8*
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e0fd9

block_.L_4e0fd9:                                  ; preds = %block_.L_4e1058, %block_.L_4e0fd4
  %307 = phi i64 [ %.pre115, %block_.L_4e0fd4 ], [ %439, %block_.L_4e1058 ]
  %308 = phi i32 [ %.pre, %block_.L_4e0fd4 ], [ %455, %block_.L_4e1058 ]
  %storemerge89 = phi i64 [ %306, %block_.L_4e0fd4 ], [ %478, %block_.L_4e1058 ]
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i1817, align 1
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i1866, align 8
  %310 = add i64 %307, -8
  %311 = add i64 %storemerge89, 14
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = sub i32 %308, %313
  %315 = icmp ult i32 %308, %313
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %12, align 1
  %317 = and i32 %314, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %13, align 1
  %322 = xor i32 %313, %308
  %323 = xor i32 %322, %314
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %14, align 1
  %327 = icmp eq i32 %314, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %15, align 1
  %329 = lshr i32 %314, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %16, align 1
  %331 = lshr i32 %308, 31
  %332 = lshr i32 %313, 31
  %333 = xor i32 %332, %331
  %334 = xor i32 %329, %331
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %17, align 1
  %338 = add i64 %307, -145
  %339 = add i64 %storemerge89, 20
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i8*
  store i8 0, i8* %340, align 1
  %341 = load i64, i64* %3, align 8
  %342 = add i64 %341, 88
  %343 = add i64 %341, 6
  %344 = load i8, i8* %16, align 1
  %345 = icmp ne i8 %344, 0
  %346 = load i8, i8* %17, align 1
  %347 = icmp ne i8 %346, 0
  %348 = xor i1 %345, %347
  %349 = select i1 %348, i64 %343, i64 %342
  store i64 %349, i64* %3, align 8
  br i1 %348, label %block_4e0ff3, label %block_.L_4e1045

block_4e0ff3:                                     ; preds = %block_.L_4e0fd9
  store i8 1, i8* %AL.i1816, align 1
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -16
  %352 = add i64 %349, 6
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RCX.i322, align 8
  %355 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RDX.i313, align 8
  %357 = shl nsw i64 %356, 3
  %358 = add i64 %357, %354
  %359 = add i64 %349, 18
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RCX.i322, align 8
  %362 = add i64 %349, 21
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i8*
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i64
  %366 = and i64 %365, 4294967295
  store i64 %366, i64* %RSI.i241, align 8
  %367 = sext i8 %364 to i32
  %368 = add nsw i32 %367, -45
  %369 = icmp ult i8 %364, 45
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %12, align 1
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %13, align 1
  %376 = xor i32 %368, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %14, align 1
  %380 = icmp eq i32 %368, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %15, align 1
  %382 = lshr i32 %368, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %16, align 1
  %384 = lshr i32 %367, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %384
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %17, align 1
  %389 = add i64 %350, -146
  %390 = add i64 %349, 30
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i8*
  store i8 1, i8* %391, align 1
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 40
  %394 = add i64 %392, 6
  %395 = load i8, i8* %15, align 1
  %396 = icmp eq i8 %395, 0
  %397 = select i1 %396, i64 %393, i64 %394
  store i64 %397, i64* %3, align 8
  br i1 %396, label %block_.L_4e1039, label %block_4e1017

block_4e1017:                                     ; preds = %block_4e0ff3
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -16
  %400 = add i64 %397, 4
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i1866, align 8
  %403 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %RCX.i322, align 8
  %405 = shl nsw i64 %404, 3
  %406 = add i64 %405, %402
  %407 = add i64 %397, 16
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RAX.i1866, align 8
  %410 = add i64 %409, 1
  %411 = add i64 %397, 20
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i8*
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i64
  %415 = and i64 %414, 4294967295
  store i64 %415, i64* %RDX.i313, align 8
  %416 = sext i8 %413 to i32
  store i8 0, i8* %12, align 1
  %417 = and i32 %416, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %422 = icmp eq i8 %413, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %15, align 1
  %424 = lshr i32 %416, 31
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 %423, i8* %SIL.i1773, align 1
  %426 = add i64 %398, -146
  %427 = add i64 %397, 34
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i8*
  store i8 %423, i8* %428, align 1
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_4e1039

block_.L_4e1039:                                  ; preds = %block_4e1017, %block_4e0ff3
  %429 = phi i64 [ %.pre116, %block_4e1017 ], [ %393, %block_4e0ff3 ]
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -146
  %432 = add i64 %429, 6
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i8*
  %434 = load i8, i8* %433, align 1
  store i8 %434, i8* %AL.i1816, align 1
  %435 = add i64 %430, -145
  %436 = add i64 %429, 12
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i8*
  store i8 %434, i8* %437, align 1
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4e1045

block_.L_4e1045:                                  ; preds = %block_.L_4e0fd9, %block_.L_4e1039
  %438 = phi i64 [ %342, %block_.L_4e0fd9 ], [ %.pre117, %block_.L_4e1039 ]
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -145
  %441 = add i64 %438, 6
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i8*
  %443 = load i8, i8* %442, align 1
  store i8 %443, i8* %AL.i1816, align 1
  %444 = and i8 %443, 1
  store i8 0, i8* %12, align 1
  %445 = zext i8 %444 to i32
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = xor i8 %447, 1
  store i8 %448, i8* %13, align 1
  %449 = xor i8 %444, 1
  store i8 %449, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %450 = icmp eq i8 %449, 0
  %.v281 = select i1 %450, i64 19, i64 14
  %451 = add i64 %438, %.v281
  store i64 %451, i64* %3, align 8
  %452 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br i1 %450, label %block_.L_4e1058, label %block_4e1053

block_4e1053:                                     ; preds = %block_.L_4e1045
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i1866, align 8
  %454 = add i64 %451, 41
  store i64 %454, i64* %3, align 8
  store i32 %452, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  br label %block_.L_4e107c

block_.L_4e1058:                                  ; preds = %block_.L_4e1045
  %455 = add i32 %452, 1
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX.i1866, align 8
  %457 = icmp eq i32 %452, -1
  %458 = icmp eq i32 %455, 0
  %459 = or i1 %457, %458
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %12, align 1
  %461 = and i32 %455, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %13, align 1
  %466 = xor i32 %455, %452
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %14, align 1
  %470 = zext i1 %458 to i8
  store i8 %470, i8* %15, align 1
  %471 = lshr i32 %455, 31
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %16, align 1
  %473 = lshr i32 %452, 31
  %474 = xor i32 %471, %473
  %475 = add nuw nsw i32 %474, %471
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %17, align 1
  store i32 %455, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %478 = add i64 %451, -127
  %479 = add i64 %451, 22
  store i64 %479, i64* %3, align 8
  br label %block_.L_4e0fd9

block_.L_4e107c:                                  ; preds = %block_.L_4e0f69.block_.L_4e107c_crit_edge, %block_4e1053
  %480 = phi i64 [ %.pre118, %block_.L_4e0f69.block_.L_4e107c_crit_edge ], [ %439, %block_4e1053 ]
  %481 = phi i32 [ %144, %block_.L_4e0f69.block_.L_4e107c_crit_edge ], [ %452, %block_4e1053 ]
  %482 = phi i64 [ %232, %block_.L_4e0f69.block_.L_4e107c_crit_edge ], [ %454, %block_4e1053 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4e0f69.block_.L_4e107c_crit_edge ], [ %MEMORY.8, %block_4e1053 ]
  %483 = zext i32 %481 to i64
  store i64 %483, i64* %RAX.i1866, align 8
  %484 = add i64 %480, -8
  %485 = add i64 %482, 10
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sub i32 %481, %487
  %489 = icmp ult i32 %481, %487
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %12, align 1
  %491 = and i32 %488, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %13, align 1
  %496 = xor i32 %487, %481
  %497 = xor i32 %496, %488
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %14, align 1
  %501 = icmp eq i32 %488, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %15, align 1
  %503 = lshr i32 %488, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %16, align 1
  %505 = lshr i32 %481, 31
  %506 = lshr i32 %487, 31
  %507 = xor i32 %506, %505
  %508 = xor i32 %503, %505
  %509 = add nuw nsw i32 %508, %507
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %17, align 1
  %.v269 = select i1 %501, i64 183, i64 16
  %512 = add i64 %482, %.v269
  store i64 %512, i64* %3, align 8
  br i1 %501, label %block_.L_4e1133, label %block_4e108c

block_4e108c:                                     ; preds = %block_.L_4e107c
  %513 = add i64 %480, -16
  %514 = add i64 %512, 4
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RAX.i1866, align 8
  %517 = sext i32 %481 to i64
  store i64 %517, i64* %RCX.i322, align 8
  %RDI.i1733 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %518 = shl nsw i64 %517, 3
  %519 = add i64 %518, %516
  %520 = add i64 %512, 16
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RDI.i1733, align 8
  store i64 and (i64 ptrtoint (%G__0x595178_type* @G__0x595178 to i64), i64 4294967295), i64* %RDX.i313, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x595178_type* @G__0x595178 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i241, align 8
  %523 = add i64 %512, -917452
  %524 = add i64 %512, 28
  %525 = load i64, i64* %6, align 8
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %6, align 8
  store i64 %523, i64* %3, align 8
  %528 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.12)
  %529 = load i32, i32* %EAX.i1864, align 4
  %530 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %531 = and i32 %529, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %536 = icmp eq i32 %529, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %15, align 1
  %538 = lshr i32 %529, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v270 = select i1 %536, i64 9, i64 139
  %540 = add i64 %530, %.v270
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br i1 %536, label %block_4e10b1, label %block_4e108c.block_.L_4e1133_crit_edge

block_4e108c.block_.L_4e1133_crit_edge:           ; preds = %block_4e108c
  %.pre120 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1133

block_4e10b1:                                     ; preds = %block_4e108c
  %542 = add i32 %541, 1
  %543 = zext i32 %542 to i64
  store i32 %542, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %544 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i1866, align 8
  %546 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %547 = sub i32 %544, %546
  %548 = icmp ult i32 %544, %546
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %12, align 1
  %550 = and i32 %547, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %13, align 1
  %555 = xor i32 %546, %544
  %556 = xor i32 %555, %547
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %14, align 1
  %560 = icmp eq i32 %547, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %15, align 1
  %562 = lshr i32 %547, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %16, align 1
  %564 = lshr i32 %544, 31
  %565 = lshr i32 %546, 31
  %566 = xor i32 %565, %564
  %567 = xor i32 %562, %564
  %568 = add nuw nsw i32 %567, %566
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %17, align 1
  %.v276 = select i1 %560, i64 71, i64 37
  %571 = add i64 %540, %.v276
  store i64 %571, i64* %3, align 8
  br i1 %560, label %block_.L_4e10f8, label %block_4e10d6

block_4e10d6:                                     ; preds = %block_4e10b1
  %572 = lshr i32 %542, 31
  %573 = zext i32 %546 to i64
  store i64 %573, i64* %RAX.i1866, align 8
  %574 = sub i32 %546, %542
  %575 = icmp ult i32 %546, %542
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %12, align 1
  %577 = and i32 %574, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %13, align 1
  %582 = xor i32 %542, %546
  %583 = xor i32 %582, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %14, align 1
  %587 = icmp eq i32 %574, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %15, align 1
  %589 = lshr i32 %574, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %16, align 1
  %591 = xor i32 %572, %565
  %592 = xor i32 %589, %565
  %593 = add nuw nsw i32 %592, %591
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %17, align 1
  %.v277 = select i1 %587, i64 34, i64 20
  %596 = add i64 %571, %.v277
  store i64 %596, i64* %3, align 8
  br i1 %587, label %block_.L_4e10f8, label %block_4e10ea

block_4e10ea:                                     ; preds = %block_4e10d6
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -16
  %599 = add i64 %596, 4
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %RDI.i1733, align 8
  %602 = add i64 %596, 4230
  %603 = add i64 %596, 9
  %604 = load i64, i64* %6, align 8
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %603, i64* %606, align 8
  store i64 %605, i64* %6, align 8
  store i64 %602, i64* %3, align 8
  %call2_4e10ee = tail call %struct.Memory* @sub_4e2170.exchange(%struct.State* nonnull %0, i64 %602, %struct.Memory* %528)
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, 44
  br label %block_.L_4e111f

block_.L_4e10f8:                                  ; preds = %block_4e10d6, %block_4e10b1
  %609 = phi i64 [ %596, %block_4e10d6 ], [ %571, %block_4e10b1 ]
  store i64 %545, i64* %RAX.i1866, align 8
  store i8 %549, i8* %12, align 1
  store i8 %554, i8* %13, align 1
  store i8 %559, i8* %14, align 1
  store i8 %561, i8* %15, align 1
  store i8 %563, i8* %16, align 1
  store i8 %570, i8* %17, align 1
  %.v278 = select i1 %560, i64 20, i64 34
  %610 = add i64 %609, %.v278
  store i64 %610, i64* %3, align 8
  br i1 %560, label %block_4e110c, label %block_.L_4e111a

block_4e110c:                                     ; preds = %block_.L_4e10f8
  store i64 %543, i64* %RAX.i1866, align 8
  %611 = add i64 %610, 14
  store i64 %611, i64* %3, align 8
  store i32 %542, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  br label %block_.L_4e111a

block_.L_4e111a:                                  ; preds = %block_.L_4e10f8, %block_4e110c
  %612 = phi i64 [ %611, %block_4e110c ], [ %610, %block_.L_4e10f8 ]
  %613 = add i64 %612, 5
  store i64 %613, i64* %3, align 8
  br label %block_.L_4e111f

block_.L_4e111f:                                  ; preds = %block_.L_4e111a, %block_4e10ea
  %storemerge90 = phi i64 [ %608, %block_4e10ea ], [ %613, %block_.L_4e111a ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_4e10ee, %block_4e10ea ], [ %528, %block_.L_4e111a ]
  %614 = load i64, i64* %RBP.i, align 8
  %615 = add i64 %614, -8
  %616 = add i64 %storemerge90, 3
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RAX.i1866, align 8
  store i32 %618, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %620 = add i64 %storemerge90, 13
  store i64 %620, i64* %3, align 8
  %621 = load i32, i32* %617, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i1866, align 8
  %623 = add i64 %storemerge90, 20
  store i64 %623, i64* %3, align 8
  store i32 %621, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br label %block_.L_4e1133

block_.L_4e1133:                                  ; preds = %block_4e108c.block_.L_4e1133_crit_edge, %block_.L_4e111f, %block_.L_4e107c
  %624 = phi i64 [ %480, %block_.L_4e107c ], [ %.pre120, %block_4e108c.block_.L_4e1133_crit_edge ], [ %614, %block_.L_4e111f ]
  %625 = phi i32 [ %481, %block_.L_4e107c ], [ %541, %block_4e108c.block_.L_4e1133_crit_edge ], [ %621, %block_.L_4e111f ]
  %626 = phi i64 [ %512, %block_.L_4e107c ], [ %540, %block_4e108c.block_.L_4e1133_crit_edge ], [ %623, %block_.L_4e111f ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.12, %block_.L_4e107c ], [ %528, %block_4e108c.block_.L_4e1133_crit_edge ], [ %MEMORY.15, %block_.L_4e111f ]
  %627 = zext i32 %625 to i64
  store i64 %627, i64* %RAX.i1866, align 8
  %628 = add i64 %624, -8
  %629 = add i64 %626, 10
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sub i32 %625, %631
  %633 = icmp ult i32 %625, %631
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %12, align 1
  %635 = and i32 %632, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %13, align 1
  %640 = xor i32 %631, %625
  %641 = xor i32 %640, %632
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %14, align 1
  %645 = icmp eq i32 %632, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %15, align 1
  %647 = lshr i32 %632, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %16, align 1
  %649 = lshr i32 %625, 31
  %650 = lshr i32 %631, 31
  %651 = xor i32 %650, %649
  %652 = xor i32 %647, %649
  %653 = add nuw nsw i32 %652, %651
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %17, align 1
  %.v271 = select i1 %645, i64 16, i64 62
  %656 = add i64 %626, %.v271
  store i64 %656, i64* %3, align 8
  br i1 %645, label %block_4e1143, label %block_.L_4e1171

block_4e1143:                                     ; preds = %block_.L_4e1133
  %657 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RAX.i1866, align 8
  %659 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %660 = sub i32 %657, %659
  %661 = icmp ult i32 %657, %659
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %12, align 1
  %663 = and i32 %660, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %13, align 1
  %668 = xor i32 %659, %657
  %669 = xor i32 %668, %660
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %14, align 1
  %673 = icmp eq i32 %660, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %15, align 1
  %675 = lshr i32 %660, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %16, align 1
  %677 = lshr i32 %657, 31
  %678 = lshr i32 %659, 31
  %679 = xor i32 %678, %677
  %680 = xor i32 %675, %677
  %681 = add nuw nsw i32 %680, %679
  %682 = icmp eq i32 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %17, align 1
  %.v275 = select i1 %673, i64 34, i64 20
  %684 = add i64 %656, %.v275
  store i64 %684, i64* %3, align 8
  br i1 %673, label %block_.L_4e1165, label %block_4e1157

block_4e1157:                                     ; preds = %block_4e1143
  store i64 %658, i64* %RAX.i1866, align 8
  %685 = add i64 %684, 14
  store i64 %685, i64* %3, align 8
  store i32 %657, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br label %block_.L_4e1165

block_.L_4e1165:                                  ; preds = %block_4e1157, %block_4e1143
  %686 = phi i64 [ %685, %block_4e1157 ], [ %684, %block_4e1143 ]
  %687 = add i64 %624, -4
  %688 = add i64 %686, 7
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 -1, i32* %689, align 4
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 3840
  store i64 %691, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1171:                                  ; preds = %block_.L_4e1133
  %692 = add i64 %624, -16
  %693 = add i64 %656, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %RAX.i1866, align 8
  %696 = sext i32 %625 to i64
  store i64 %696, i64* %RCX.i322, align 8
  %697 = shl nsw i64 %696, 3
  %698 = add i64 %697, %695
  %699 = add i64 %656, 16
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i64*
  %701 = load i64, i64* %700, align 8
  store i64 %701, i64* %RAX.i1866, align 8
  %702 = add i64 %656, 19
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i8*
  %704 = load i8, i8* %703, align 1
  %705 = sext i8 %704 to i64
  %706 = and i64 %705, 4294967295
  store i64 %706, i64* %RDX.i313, align 8
  %707 = sext i8 %704 to i32
  %708 = add nsw i32 %707, -45
  %709 = icmp ult i8 %704, 45
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %12, align 1
  %711 = and i32 %708, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %13, align 1
  %716 = xor i32 %708, %707
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %14, align 1
  %720 = icmp eq i32 %708, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %15, align 1
  %722 = lshr i32 %708, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %16, align 1
  %724 = lshr i32 %707, 31
  %725 = xor i32 %722, %724
  %726 = add nuw nsw i32 %725, %724
  %727 = icmp eq i32 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %17, align 1
  %.v272 = select i1 %720, i64 28, i64 57
  %729 = add i64 %656, %.v272
  store i64 %729, i64* %3, align 8
  br i1 %720, label %block_4e118d, label %block_.L_4e11aa

block_4e118d:                                     ; preds = %block_.L_4e1171
  %730 = add i64 %729, 4
  store i64 %730, i64* %3, align 8
  %731 = load i64, i64* %694, align 8
  store i64 %731, i64* %RAX.i1866, align 8
  store i64 %696, i64* %RCX.i322, align 8
  %732 = add i64 %697, %731
  %733 = add i64 %729, 16
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i1866, align 8
  %736 = add i64 %735, 1
  %737 = add i64 %729, 20
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i8*
  %739 = load i8, i8* %738, align 1
  %740 = sext i8 %739 to i64
  %741 = and i64 %740, 4294967295
  store i64 %741, i64* %RDX.i313, align 8
  %742 = sext i8 %739 to i32
  store i8 0, i8* %12, align 1
  %743 = and i32 %742, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %748 = icmp eq i8 %739, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %15, align 1
  %750 = lshr i32 %742, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v274 = select i1 %748, i64 29, i64 105
  %752 = add i64 %729, %.v274
  store i64 %752, i64* %3, align 8
  br i1 %748, label %block_.L_4e11aa, label %block_.L_4e11f6

block_.L_4e11aa:                                  ; preds = %block_4e118d, %block_.L_4e1171
  %753 = phi i64 [ %752, %block_4e118d ], [ %729, %block_.L_4e1171 ]
  %754 = load i32, i32* bitcast (%G_0xafc480_type* @G_0xafc480 to i32*), align 8
  store i8 0, i8* %12, align 1
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %760 = icmp eq i32 %754, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %15, align 1
  %762 = lshr i32 %754, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v273 = select i1 %760, i64 14, i64 26
  %764 = add i64 %753, %.v273
  store i64 %764, i64* %3, align 8
  br i1 %760, label %block_4e11b8, label %block_.L_4e11c4

block_4e11b8:                                     ; preds = %block_.L_4e11aa
  %765 = add i64 %624, -4
  %766 = add i64 %764, 7
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  store i32 -1, i32* %767, align 4
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 3757
  store i64 %769, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e11c4:                                  ; preds = %block_.L_4e11aa
  %770 = add i64 %764, 4
  store i64 %770, i64* %3, align 8
  %771 = load i64, i64* %694, align 8
  store i64 %771, i64* %RAX.i1866, align 8
  store i64 %627, i64* %RCX.i322, align 8
  %772 = add i32 %625, 1
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RDX.i313, align 8
  %774 = icmp eq i32 %625, -1
  %775 = icmp eq i32 %772, 0
  %776 = or i1 %774, %775
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %12, align 1
  %778 = and i32 %772, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %13, align 1
  %783 = xor i32 %772, %625
  %784 = lshr i32 %783, 4
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %14, align 1
  %787 = zext i1 %775 to i8
  store i8 %787, i8* %15, align 1
  %788 = lshr i32 %772, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %16, align 1
  %790 = xor i32 %788, %649
  %791 = add nuw nsw i32 %790, %788
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %17, align 1
  store i32 %772, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  store i64 %696, i64* %RSI.i241, align 8
  %794 = add i64 %771, %697
  %795 = add i64 %764, 30
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i64*
  %797 = load i64, i64* %796, align 8
  store i64 %797, i64* %RAX.i1866, align 8
  store i64 %797, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %798 = add i64 %624, -4
  %799 = add i64 %764, 45
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  store i32 1, i32* %800, align 4
  %801 = load i64, i64* %3, align 8
  %802 = add i64 %801, 3707
  store i64 %802, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e11f6:                                  ; preds = %block_4e118d
  store i64 0, i64* %RAX.i1866, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %AL.i1598 = bitcast %union.anon* %141 to i8*
  %CL.i1599 = bitcast %union.anon* %37 to i8*
  store i8 0, i8* %CL.i1599, align 1
  %803 = add i64 %752, 8
  store i64 %803, i64* %3, align 8
  %804 = load i64, i64* %694, align 8
  store i64 %804, i64* %RDX.i313, align 8
  store i64 %696, i64* %RSI.i241, align 8
  %805 = add i64 %697, %804
  %806 = add i64 %752, 20
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  %809 = add i64 %808, 1
  store i64 %809, i64* %RDX.i313, align 8
  %810 = icmp eq i64 %808, -1
  %811 = icmp eq i64 %809, 0
  %812 = or i1 %810, %811
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %12, align 1
  %814 = trunc i64 %809 to i32
  %815 = and i32 %814, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %13, align 1
  %820 = xor i64 %809, %808
  %821 = lshr i64 %820, 4
  %822 = trunc i64 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %14, align 1
  %824 = zext i1 %811 to i8
  store i8 %824, i8* %15, align 1
  %825 = lshr i64 %809, 63
  %826 = trunc i64 %825 to i8
  store i8 %826, i8* %16, align 1
  %827 = lshr i64 %808, 63
  %828 = xor i64 %825, %827
  %829 = add nuw nsw i64 %828, %825
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %17, align 1
  %832 = add i64 %624, -32
  %833 = add i64 %752, 29
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i8 0, i8* %12, align 1
  %836 = trunc i64 %835 to i32
  %837 = and i32 %836, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %842 = icmp eq i64 %835, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %15, align 1
  %844 = lshr i64 %835, 63
  %845 = trunc i64 %844 to i8
  store i8 %845, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %846 = add i64 %624, -160
  %847 = add i64 %752, 36
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  store i64 %809, i64* %848, align 8
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -161
  %851 = load i8, i8* %CL.i1599, align 1
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, 6
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %850 to i8*
  store i8 %851, i8* %854, align 1
  %855 = load i64, i64* %3, align 8
  %856 = load i8, i8* %15, align 1
  %857 = icmp ne i8 %856, 0
  %.v307 = select i1 %857, i64 40, i64 6
  %858 = add i64 %855, %.v307
  store i64 %858, i64* %3, align 8
  %cmpBr_4e1220 = icmp eq i8 %856, 1
  br i1 %cmpBr_4e1220, label %block_.L_4e1248, label %block_4e1226

block_4e1226:                                     ; preds = %block_.L_4e11f6
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -16
  %861 = add i64 %858, 4
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX.i1866, align 8
  %864 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX.i322, align 8
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %866, %863
  %868 = add i64 %858, 16
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %RAX.i1866, align 8
  %871 = add i64 %870, 1
  %872 = add i64 %858, 20
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i8*
  %874 = load i8, i8* %873, align 1
  %875 = sext i8 %874 to i64
  %876 = and i64 %875, 4294967295
  store i64 %876, i64* %RDX.i313, align 8
  %877 = sext i8 %874 to i32
  %878 = add nsw i32 %877, -45
  %879 = icmp ult i8 %874, 45
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %12, align 1
  %881 = and i32 %878, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %13, align 1
  %886 = xor i32 %878, %877
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  store i8 %889, i8* %14, align 1
  %890 = icmp eq i32 %878, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %15, align 1
  %892 = lshr i32 %878, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %16, align 1
  %894 = lshr i32 %877, 31
  %895 = xor i32 %892, %894
  %896 = add nuw nsw i32 %895, %894
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %17, align 1
  %SIL.i1564 = bitcast %union.anon* %23 to i8*
  store i8 %891, i8* %SIL.i1564, align 1
  %899 = add i64 %859, -161
  %900 = add i64 %858, 34
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i8*
  store i8 %891, i8* %901, align 1
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4e1248

block_.L_4e1248:                                  ; preds = %block_4e1226, %block_.L_4e11f6
  %902 = phi i64 [ %.pre121, %block_4e1226 ], [ %858, %block_.L_4e11f6 ]
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -161
  %905 = add i64 %902, 6
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i8*
  %907 = load i8, i8* %906, align 1
  %908 = and i8 %907, 1
  store i8 %908, i8* %AL.i1598, align 1
  store i8 0, i8* %12, align 1
  %909 = zext i8 %908 to i32
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = xor i8 %911, 1
  store i8 %912, i8* %13, align 1
  %913 = xor i8 %908, 1
  store i8 %913, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %914 = zext i8 %908 to i64
  store i64 %914, i64* %RCX.i322, align 8
  %915 = zext i8 %908 to i64
  store i64 %915, i64* %RDX.i313, align 8
  %916 = add i64 %903, -160
  %917 = add i64 %902, 21
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i64*
  %919 = load i64, i64* %918, align 8
  %920 = add i64 %915, %919
  store i64 %920, i64* %RSI.i241, align 8
  %921 = icmp ult i64 %920, %919
  %922 = icmp ult i64 %920, %915
  %923 = or i1 %921, %922
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %12, align 1
  %925 = trunc i64 %920 to i32
  %926 = and i32 %925, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %13, align 1
  %931 = xor i64 %919, %920
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %14, align 1
  %935 = icmp eq i64 %920, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %15, align 1
  %937 = lshr i64 %920, 63
  %938 = trunc i64 %937 to i8
  store i8 %938, i8* %16, align 1
  %939 = lshr i64 %919, 63
  %940 = xor i64 %937, %939
  %941 = add nuw nsw i64 %940, %937
  %942 = icmp eq i64 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %17, align 1
  %944 = add i64 %902, 32
  store i64 %944, i64* %3, align 8
  store i64 %920, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  br label %block_.L_4e1268

block_.L_4e1268:                                  ; preds = %block_4e0f11.block_.L_4e1268_crit_edge, %block_.L_4e1248
  %945 = phi i64 [ %944, %block_.L_4e1248 ], [ %139, %block_4e0f11.block_.L_4e1268_crit_edge ]
  %946 = phi i64 [ %903, %block_.L_4e1248 ], [ %.pre122, %block_4e0f11.block_.L_4e1268_crit_edge ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.16, %block_.L_4e1248 ], [ %MEMORY.2, %block_4e0f11.block_.L_4e1268_crit_edge ]
  %947 = add i64 %946, -32
  %948 = add i64 %945, 5
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i8 0, i8* %12, align 1
  %951 = trunc i64 %950 to i32
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %957 = icmp eq i64 %950, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %15, align 1
  %959 = lshr i64 %950, 63
  %960 = trunc i64 %959 to i8
  store i8 %960, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v212 = select i1 %957, i64 1605, i64 11
  %961 = add i64 %945, %.v212
  store i64 %961, i64* %3, align 8
  %.pre165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre166 = getelementptr inbounds %union.anon, %union.anon* %.pre165, i64 0, i32 0
  br i1 %957, label %block_.L_4e18ad, label %block_4e1273

block_4e1273:                                     ; preds = %block_.L_4e1268
  %962 = add i64 %946, -16
  %963 = add i64 %961, 4
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %965, i64* %.pre166, align 8
  %966 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %967 = sext i32 %966 to i64
  store i64 %967, i64* %RCX.i322, align 8
  %968 = shl nsw i64 %967, 3
  %969 = add i64 %968, %965
  %970 = add i64 %961, 16
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %.pre166, align 8
  %973 = add i64 %972, 1
  %974 = add i64 %961, 20
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i8*
  %976 = load i8, i8* %975, align 1
  %977 = sext i8 %976 to i64
  %978 = and i64 %977, 4294967295
  store i64 %978, i64* %RDX.i313, align 8
  %979 = sext i8 %976 to i32
  %980 = add nsw i32 %979, -45
  %981 = icmp ult i8 %976, 45
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %12, align 1
  %983 = and i32 %980, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %13, align 1
  %988 = xor i32 %980, %979
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %14, align 1
  %992 = icmp eq i32 %980, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %15, align 1
  %994 = lshr i32 %980, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %16, align 1
  %996 = lshr i32 %979, 31
  %997 = xor i32 %994, %996
  %998 = add nuw nsw i32 %997, %996
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %17, align 1
  %.v213 = select i1 %992, i64 107, i64 29
  %1001 = add i64 %961, %.v213
  store i64 %1001, i64* %3, align 8
  br i1 %992, label %block_.L_4e12de, label %block_4e1290

block_4e1290:                                     ; preds = %block_4e1273
  %1002 = add i64 %946, -44
  %1003 = add i64 %1001, 4
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  store i8 0, i8* %12, align 1
  %1006 = and i32 %1005, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1011 = icmp eq i32 %1005, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %15, align 1
  %1013 = lshr i32 %1005, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v214 = select i1 %1011, i64 1565, i64 10
  %1015 = add i64 %1001, %.v214
  store i64 %1015, i64* %3, align 8
  br i1 %1011, label %block_.L_4e18ad, label %block_4e129a

block_4e129a:                                     ; preds = %block_4e1290
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %3, align 8
  %1017 = load i64, i64* %964, align 8
  store i64 %1017, i64* %.pre166, align 8
  store i64 %967, i64* %RCX.i322, align 8
  %1018 = add i64 %968, %1017
  %1019 = add i64 %1015, 16
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %.pre166, align 8
  %1022 = add i64 %1021, 2
  %1023 = add i64 %1015, 20
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i8*
  %1025 = load i8, i8* %1024, align 1
  %1026 = sext i8 %1025 to i64
  %1027 = and i64 %1026, 4294967295
  store i64 %1027, i64* %RDX.i313, align 8
  %1028 = sext i8 %1025 to i32
  store i8 0, i8* %12, align 1
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1034 = icmp eq i8 %1025, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %15, align 1
  %1036 = lshr i32 %1028, 31
  %1037 = trunc i32 %1036 to i8
  store i8 %1037, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v215 = select i1 %1034, i64 29, i64 68
  %1038 = add i64 %1015, %.v215
  store i64 %1038, i64* %3, align 8
  br i1 %1034, label %block_4e12b7, label %block_.L_4e12de

block_4e12b7:                                     ; preds = %block_4e129a
  %RDI.i1506 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %1039 = add i64 %946, -24
  %1040 = add i64 %1038, 4
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  store i64 %1042, i64* %RDI.i1506, align 8
  %1043 = add i64 %1038, 8
  store i64 %1043, i64* %3, align 8
  %1044 = load i64, i64* %964, align 8
  store i64 %1044, i64* %.pre166, align 8
  store i64 %967, i64* %RCX.i322, align 8
  %1045 = add i64 %968, %1044
  %1046 = add i64 %1038, 20
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %.pre166, align 8
  %1049 = add i64 %1048, 1
  %1050 = add i64 %1038, 24
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i8*
  %1052 = load i8, i8* %1051, align 1
  %1053 = sext i8 %1052 to i64
  %1054 = and i64 %1053, 4294967295
  store i64 %1054, i64* %RSI.i241, align 8
  %1055 = add i64 %1038, -918151
  %1056 = add i64 %1038, 29
  %1057 = load i64, i64* %6, align 8
  %1058 = add i64 %1057, -8
  %1059 = inttoptr i64 %1058 to i64*
  store i64 %1056, i64* %1059, align 8
  store i64 %1058, i64* %6, align 8
  store i64 %1055, i64* %3, align 8
  %call2_4e12cf = tail call %struct.Memory* @sub_401030.strchr_plt(%struct.State* nonnull %0, i64 %1055, %struct.Memory* %MEMORY.20)
  %1060 = load i64, i64* %.pre166, align 8
  %1061 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1062 = trunc i64 %1060 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1068 = icmp eq i64 %1060, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %15, align 1
  %1070 = lshr i64 %1060, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v265 = select i1 %1068, i64 10, i64 1497
  %1072 = add i64 %1061, %.v265
  store i64 %1072, i64* %3, align 8
  br i1 %1068, label %block_4e12b7.block_.L_4e12de_crit_edge, label %block_.L_4e18ad

block_4e12b7.block_.L_4e12de_crit_edge:           ; preds = %block_4e12b7
  %.pre123 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e12de

block_.L_4e12de:                                  ; preds = %block_4e129a, %block_4e12b7.block_.L_4e12de_crit_edge, %block_4e1273
  %1073 = phi i64 [ %1001, %block_4e1273 ], [ %1038, %block_4e129a ], [ %1072, %block_4e12b7.block_.L_4e12de_crit_edge ]
  %1074 = phi i64 [ %946, %block_4e1273 ], [ %946, %block_4e129a ], [ %.pre123, %block_4e12b7.block_.L_4e12de_crit_edge ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_4e1273 ], [ %MEMORY.20, %block_4e129a ], [ %call2_4e12cf, %block_4e12b7.block_.L_4e12de_crit_edge ]
  %1075 = add i64 %1074, -72
  %1076 = add i64 %1073, 8
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  store i64 0, i64* %1077, align 8
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -76
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 7
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1079 to i32*
  store i32 0, i32* %1082, align 4
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -80
  %1085 = load i64, i64* %3, align 8
  %1086 = add i64 %1085, 7
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1084 to i32*
  store i32 0, i32* %1087, align 4
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -84
  %1090 = load i64, i64* %3, align 8
  %1091 = add i64 %1090, 7
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1089 to i32*
  store i32 -1, i32* %1092, align 4
  %1093 = load i64, i64* %3, align 8
  %1094 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %1094, i64* %.pre166, align 8
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -56
  %1097 = add i64 %1093, 12
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  store i64 %1094, i64* %1098, align 8
  %EAX.i1475 = bitcast %union.anon* %.pre165 to i32*
  %AL.i1472 = bitcast %union.anon* %.pre165 to i8*
  %CL.i1473 = bitcast %union.anon* %37 to i8*
  %ECX.i1452 = bitcast %union.anon* %37 to i32*
  %DL.i1450 = bitcast %union.anon* %30 to i8*
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_4e1307

block_.L_4e1307:                                  ; preds = %block_.L_4e1347, %block_.L_4e12de
  %1099 = phi i64 [ %1220, %block_.L_4e1347 ], [ %.pre124, %block_.L_4e12de ]
  store i64 0, i64* %.pre166, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i1473, align 1
  %1100 = load i64, i64* %RBP.i, align 8
  %1101 = add i64 %1100, -56
  %1102 = add i64 %1099, 8
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RDX.i313, align 8
  %1105 = add i64 %1099, 11
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i8*
  %1107 = load i8, i8* %1106, align 1
  %1108 = sext i8 %1107 to i64
  %1109 = and i64 %1108, 4294967295
  store i64 %1109, i64* %.pre166, align 8
  %1110 = sext i8 %1107 to i32
  store i8 0, i8* %12, align 1
  %1111 = and i32 %1110, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1116 = icmp eq i8 %1107, 0
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %15, align 1
  %1118 = lshr i32 %1110, 31
  %1119 = trunc i32 %1118 to i8
  store i8 %1119, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1120 = add i64 %1100, -162
  %1121 = add i64 %1099, 20
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i8*
  store i8 0, i8* %1122, align 1
  %1123 = load i64, i64* %3, align 8
  %1124 = load i8, i8* %15, align 1
  %1125 = icmp ne i8 %1124, 0
  %.v305 = select i1 %1125, i64 25, i64 6
  %1126 = add i64 %1123, %.v305
  store i64 %1126, i64* %3, align 8
  %cmpBr_4e131b = icmp eq i8 %1124, 1
  br i1 %cmpBr_4e131b, label %block_.L_4e1334, label %block_4e1321

block_4e1321:                                     ; preds = %block_.L_4e1307
  %1127 = load i64, i64* %RBP.i, align 8
  %1128 = add i64 %1127, -56
  %1129 = add i64 %1126, 4
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  %1131 = load i64, i64* %1130, align 8
  store i64 %1131, i64* %.pre166, align 8
  %1132 = add i64 %1126, 7
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i8*
  %1134 = load i8, i8* %1133, align 1
  %1135 = sext i8 %1134 to i64
  %1136 = and i64 %1135, 4294967295
  store i64 %1136, i64* %RCX.i322, align 8
  %1137 = sext i8 %1134 to i32
  %1138 = add nsw i32 %1137, -61
  %1139 = icmp ult i8 %1134, 61
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %12, align 1
  %1141 = and i32 %1138, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %13, align 1
  %1146 = xor i32 %1137, 16
  %1147 = xor i32 %1146, %1138
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %14, align 1
  %1151 = icmp eq i32 %1138, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %15, align 1
  %1153 = lshr i32 %1138, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %16, align 1
  %1155 = lshr i32 %1137, 31
  %1156 = xor i32 %1153, %1155
  %1157 = add nuw nsw i32 %1156, %1155
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %17, align 1
  %1160 = xor i1 %1151, true
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %DL.i1450, align 1
  %1162 = add i64 %1127, -162
  %1163 = add i64 %1126, 19
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i8*
  store i8 %1161, i8* %1164, align 1
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_4e1334

block_.L_4e1334:                                  ; preds = %block_4e1321, %block_.L_4e1307
  %1165 = phi i64 [ %.pre125, %block_4e1321 ], [ %1126, %block_.L_4e1307 ]
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -162
  %1168 = add i64 %1165, 6
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i8*
  %1170 = load i8, i8* %1169, align 1
  store i8 %1170, i8* %AL.i1472, align 1
  %1171 = and i8 %1170, 1
  store i8 0, i8* %12, align 1
  %1172 = zext i8 %1171 to i32
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %13, align 1
  %1176 = xor i8 %1171, 1
  store i8 %1176, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1177 = icmp eq i8 %1176, 0
  %.v = select i1 %1177, i64 19, i64 14
  %1178 = add i64 %1165, %.v
  store i64 %1178, i64* %3, align 8
  br i1 %1177, label %block_.L_4e1347, label %block_4e1342

block_4e1342:                                     ; preds = %block_.L_4e1334
  %1179 = add i64 %1166, -32
  %1180 = add i64 %1178, 31
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %.pre166, align 8
  %1183 = add i64 %1166, -64
  %1184 = add i64 %1178, 35
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  store i64 %1182, i64* %1185, align 8
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -88
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 7
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  store i32 0, i32* %1190, align 4
  %RDI.i1411 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_4e136c

block_.L_4e1347:                                  ; preds = %block_.L_4e1334
  %1191 = add i64 %1166, -56
  %1192 = add i64 %1178, 9
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i64*
  %1194 = load i64, i64* %1193, align 8
  %1195 = add i64 %1194, 1
  store i64 %1195, i64* %.pre166, align 8
  %1196 = icmp eq i64 %1194, -1
  %1197 = icmp eq i64 %1195, 0
  %1198 = or i1 %1196, %1197
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %12, align 1
  %1200 = trunc i64 %1195 to i32
  %1201 = and i32 %1200, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %13, align 1
  %1206 = xor i64 %1195, %1194
  %1207 = lshr i64 %1206, 4
  %1208 = trunc i64 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %14, align 1
  %1210 = zext i1 %1197 to i8
  store i8 %1210, i8* %15, align 1
  %1211 = lshr i64 %1195, 63
  %1212 = trunc i64 %1211 to i8
  store i8 %1212, i8* %16, align 1
  %1213 = lshr i64 %1194, 63
  %1214 = xor i64 %1211, %1213
  %1215 = add nuw nsw i64 %1214, %1211
  %1216 = icmp eq i64 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %17, align 1
  %1218 = add i64 %1178, 17
  store i64 %1218, i64* %3, align 8
  store i64 %1195, i64* %1193, align 8
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, -81
  store i64 %1220, i64* %3, align 8
  br label %block_.L_4e1307

block_.L_4e136c:                                  ; preds = %block_.L_4e1425, %block_4e1342
  %1221 = phi i64 [ %.pre126, %block_4e1342 ], [ %1498, %block_.L_4e1425 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.21, %block_4e1342 ], [ %MEMORY.26, %block_.L_4e1425 ]
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -64
  %1224 = add i64 %1221, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %.pre166, align 8
  %1227 = add i64 %1221, 8
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i8 0, i8* %12, align 1
  %1230 = trunc i64 %1229 to i32
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1236 = icmp eq i64 %1229, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %15, align 1
  %1238 = lshr i64 %1229, 63
  %1239 = trunc i64 %1238 to i8
  store i8 %1239, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v216 = select i1 %1236, i64 216, i64 14
  %1240 = add i64 %1221, %.v216
  store i64 %1240, i64* %3, align 8
  br i1 %1236, label %block_.L_4e1444.loopexit, label %block_4e137a

block_4e137a:                                     ; preds = %block_.L_4e136c
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %3, align 8
  %1242 = load i64, i64* %1225, align 8
  store i64 %1242, i64* %.pre166, align 8
  %1243 = add i64 %1240, 7
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RDI.i1411, align 8
  %1246 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %1246, i64* %RSI.i241, align 8
  %1247 = add i64 %1222, -56
  %1248 = add i64 %1240, 19
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1246, i64* %RCX.i322, align 8
  %1251 = sub i64 %1250, %1246
  store i64 %1251, i64* %.pre166, align 8
  %1252 = icmp ult i64 %1250, %1246
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %12, align 1
  %1254 = trunc i64 %1251 to i32
  %1255 = and i32 %1254, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %13, align 1
  %1260 = xor i64 %1246, %1250
  %1261 = xor i64 %1260, %1251
  %1262 = lshr i64 %1261, 4
  %1263 = trunc i64 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %14, align 1
  %1265 = icmp eq i64 %1251, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %15, align 1
  %1267 = lshr i64 %1251, 63
  %1268 = trunc i64 %1267 to i8
  store i8 %1268, i8* %16, align 1
  %1269 = lshr i64 %1250, 63
  %1270 = lshr i64 %1246, 63
  %1271 = xor i64 %1270, %1269
  %1272 = xor i64 %1267, %1269
  %1273 = add nuw nsw i64 %1272, %1271
  %1274 = icmp eq i64 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %17, align 1
  store i64 %1251, i64* %RDX.i313, align 8
  %1276 = add i64 %1240, -918474
  %1277 = add i64 %1240, 38
  %1278 = load i64, i64* %6, align 8
  %1279 = add i64 %1278, -8
  %1280 = inttoptr i64 %1279 to i64*
  store i64 %1277, i64* %1280, align 8
  store i64 %1279, i64* %6, align 8
  store i64 %1276, i64* %3, align 8
  %1281 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.24)
  %1282 = load i32, i32* %EAX.i1475, align 4
  %1283 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1284 = and i32 %1282, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1289 = icmp eq i32 %1282, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %15, align 1
  %1291 = lshr i32 %1282, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v217 = select i1 %1289, i64 9, i64 133
  %1293 = add i64 %1283, %.v217
  store i64 %1293, i64* %3, align 8
  br i1 %1289, label %block_4e13a9, label %block_.L_4e1425

block_4e13a9:                                     ; preds = %block_4e137a
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -56
  %1296 = add i64 %1293, 4
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  %1299 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %1299, i64* %RCX.i322, align 8
  %1300 = sub i64 %1298, %1299
  store i64 %1300, i64* %.pre166, align 8
  %1301 = icmp ult i64 %1298, %1299
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %12, align 1
  %1303 = trunc i64 %1300 to i32
  %1304 = and i32 %1303, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %13, align 1
  %1309 = xor i64 %1299, %1298
  %1310 = xor i64 %1309, %1300
  %1311 = lshr i64 %1310, 4
  %1312 = trunc i64 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %14, align 1
  %1314 = icmp eq i64 %1300, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %15, align 1
  %1316 = lshr i64 %1300, 63
  %1317 = trunc i64 %1316 to i8
  store i8 %1317, i8* %16, align 1
  %1318 = lshr i64 %1298, 63
  %1319 = lshr i64 %1299, 63
  %1320 = xor i64 %1319, %1318
  %1321 = xor i64 %1316, %1318
  %1322 = add nuw nsw i64 %1321, %1320
  %1323 = icmp eq i64 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %17, align 1
  %1325 = and i64 %1300, 4294967295
  store i64 %1325, i64* %RDX.i313, align 8
  %1326 = add i64 %1294, -64
  %1327 = add i64 %1293, 21
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %.pre166, align 8
  %1330 = add i64 %1293, 24
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RDI.i1411, align 8
  %1333 = add i64 %1294, -168
  %1334 = add i64 %1293, 30
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  store i32 %1303, i32* %1335, align 4
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, -918455
  %1338 = add i64 %1336, 5
  %1339 = load i64, i64* %6, align 8
  %1340 = add i64 %1339, -8
  %1341 = inttoptr i64 %1340 to i64*
  store i64 %1338, i64* %1341, align 8
  store i64 %1340, i64* %6, align 8
  store i64 %1337, i64* %3, align 8
  %1342 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1281)
  %1343 = load i32, i32* %EAX.i1475, align 4
  %1344 = zext i32 %1343 to i64
  %1345 = load i64, i64* %3, align 8
  store i64 %1344, i64* %RDX.i313, align 8
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -168
  %1348 = add i64 %1345, 8
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RSI.i241, align 8
  %1352 = sub i32 %1350, %1343
  %1353 = icmp ult i32 %1350, %1343
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %12, align 1
  %1355 = and i32 %1352, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %13, align 1
  %1360 = xor i32 %1343, %1350
  %1361 = xor i32 %1360, %1352
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %14, align 1
  %1365 = icmp eq i32 %1352, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %15, align 1
  %1367 = lshr i32 %1352, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %16, align 1
  %1369 = lshr i32 %1350, 31
  %1370 = lshr i32 %1343, 31
  %1371 = xor i32 %1370, %1369
  %1372 = xor i32 %1367, %1369
  %1373 = add nuw nsw i32 %1372, %1371
  %1374 = icmp eq i32 %1373, 2
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %17, align 1
  %.v218 = select i1 %1365, i64 16, i64 42
  %1376 = add i64 %1345, %.v218
  store i64 %1376, i64* %3, align 8
  br i1 %1365, label %block_4e13dc, label %block_.L_4e13f6

block_4e13dc:                                     ; preds = %block_4e13a9
  %1377 = add i64 %1346, -64
  %1378 = add i64 %1376, 4
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i64*
  %1380 = load i64, i64* %1379, align 8
  store i64 %1380, i64* %.pre166, align 8
  %1381 = add i64 %1346, -72
  %1382 = add i64 %1376, 8
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i64*
  store i64 %1380, i64* %1383, align 8
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -88
  %1386 = load i64, i64* %3, align 8
  %1387 = add i64 %1386, 3
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1385 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RCX.i322, align 8
  %1391 = add i64 %1384, -84
  %1392 = add i64 %1386, 6
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  store i32 %1389, i32* %1393, align 4
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -76
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 7
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1395 to i32*
  store i32 1, i32* %1398, align 4
  %1399 = load i64, i64* %3, align 8
  %1400 = add i64 %1399, 83
  store i64 %1400, i64* %3, align 8
  %.pre128 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1444

block_.L_4e13f6:                                  ; preds = %block_4e13a9
  %1401 = add i64 %1346, -72
  %1402 = add i64 %1376, 5
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i8 0, i8* %12, align 1
  %1405 = trunc i64 %1404 to i32
  %1406 = and i32 %1405, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1411 = icmp eq i64 %1404, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %15, align 1
  %1413 = lshr i64 %1404, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v219 = select i1 %1411, i64 11, i64 30
  %1415 = add i64 %1376, %.v219
  store i64 %1415, i64* %3, align 8
  br i1 %1411, label %block_4e1401, label %block_.L_4e1414

block_4e1401:                                     ; preds = %block_.L_4e13f6
  %1416 = add i64 %1346, -64
  %1417 = add i64 %1415, 4
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %.pre166, align 8
  %1420 = add i64 %1415, 8
  store i64 %1420, i64* %3, align 8
  store i64 %1419, i64* %1403, align 8
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -88
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RCX.i322, align 8
  %1428 = add i64 %1421, -84
  %1429 = add i64 %1423, 6
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  store i32 %1426, i32* %1430, align 4
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 12
  store i64 %1432, i64* %3, align 8
  br label %block_.L_4e141b

block_.L_4e1414:                                  ; preds = %block_.L_4e13f6
  %1433 = add i64 %1346, -80
  %1434 = add i64 %1415, 7
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  store i32 1, i32* %1435, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4e141b

block_.L_4e141b:                                  ; preds = %block_.L_4e1414, %block_4e1401
  %1436 = phi i64 [ %.pre127, %block_.L_4e1414 ], [ %1432, %block_4e1401 ]
  %1437 = add i64 %1436, 10
  store i64 %1437, i64* %3, align 8
  br label %block_.L_4e1425

block_.L_4e1425:                                  ; preds = %block_4e137a, %block_.L_4e141b
  %1438 = phi i64 [ %1293, %block_4e137a ], [ %1437, %block_.L_4e141b ]
  %MEMORY.26 = phi %struct.Memory* [ %1281, %block_4e137a ], [ %1342, %block_.L_4e141b ]
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -64
  %1441 = add i64 %1438, 9
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i64*
  %1443 = load i64, i64* %1442, align 8
  %1444 = add i64 %1443, 32
  store i64 %1444, i64* %.pre166, align 8
  %1445 = icmp ugt i64 %1443, -33
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %12, align 1
  %1447 = trunc i64 %1444 to i32
  %1448 = and i32 %1447, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %13, align 1
  %1453 = xor i64 %1444, %1443
  %1454 = lshr i64 %1453, 4
  %1455 = trunc i64 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %14, align 1
  %1457 = icmp eq i64 %1444, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %15, align 1
  %1459 = lshr i64 %1444, 63
  %1460 = trunc i64 %1459 to i8
  store i8 %1460, i8* %16, align 1
  %1461 = lshr i64 %1443, 63
  %1462 = xor i64 %1459, %1461
  %1463 = add nuw nsw i64 %1462, %1459
  %1464 = icmp eq i64 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %17, align 1
  %1466 = add i64 %1438, 17
  store i64 %1466, i64* %3, align 8
  store i64 %1444, i64* %1442, align 8
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -88
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, 3
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1468 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, 1
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RCX.i322, align 8
  %1475 = icmp eq i32 %1472, -1
  %1476 = icmp eq i32 %1473, 0
  %1477 = or i1 %1475, %1476
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %12, align 1
  %1479 = and i32 %1473, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %13, align 1
  %1484 = xor i32 %1473, %1472
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %14, align 1
  %1488 = zext i1 %1476 to i8
  store i8 %1488, i8* %15, align 1
  %1489 = lshr i32 %1473, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %16, align 1
  %1491 = lshr i32 %1472, 31
  %1492 = xor i32 %1489, %1491
  %1493 = add nuw nsw i32 %1492, %1489
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %17, align 1
  %1496 = add i64 %1469, 9
  store i64 %1496, i64* %3, align 8
  store i32 %1473, i32* %1471, align 4
  %1497 = load i64, i64* %3, align 8
  %1498 = add i64 %1497, -211
  store i64 %1498, i64* %3, align 8
  br label %block_.L_4e136c

block_.L_4e1444.loopexit:                         ; preds = %block_.L_4e136c
  br label %block_.L_4e1444

block_.L_4e1444:                                  ; preds = %block_.L_4e1444.loopexit, %block_4e13dc
  %1499 = phi i64 [ %1400, %block_4e13dc ], [ %1240, %block_.L_4e1444.loopexit ]
  %1500 = phi i64 [ %.pre128, %block_4e13dc ], [ %1222, %block_.L_4e1444.loopexit ]
  %MEMORY.27 = phi %struct.Memory* [ %1342, %block_4e13dc ], [ %MEMORY.24, %block_.L_4e1444.loopexit ]
  %1501 = add i64 %1500, -80
  %1502 = add i64 %1499, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  store i8 0, i8* %12, align 1
  %1505 = and i32 %1504, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1510 = icmp eq i32 %1504, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %15, align 1
  %1512 = lshr i32 %1504, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v220 = select i1 %1510, i64 157, i64 10
  %1514 = add i64 %1499, %.v220
  store i64 %1514, i64* %3, align 8
  br i1 %1510, label %block_.L_4e14e1, label %block_4e144e

block_4e144e:                                     ; preds = %block_.L_4e1444
  %1515 = add i64 %1500, -76
  %1516 = add i64 %1514, 4
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  store i8 0, i8* %12, align 1
  %1519 = and i32 %1518, 255
  %1520 = tail call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1524 = icmp eq i32 %1518, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %15, align 1
  %1526 = lshr i32 %1518, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v221 = select i1 %1524, i64 10, i64 147
  %1528 = add i64 %1514, %.v221
  store i64 %1528, i64* %3, align 8
  br i1 %1524, label %block_4e1458, label %block_.L_4e14e1

block_4e1458:                                     ; preds = %block_4e144e
  %1529 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1530 = and i32 %1529, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1535 = icmp eq i32 %1529, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %15, align 1
  %1537 = lshr i32 %1529, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v264 = select i1 %1535, i64 68, i64 14
  %1539 = add i64 %1528, %.v264
  store i64 %1539, i64* %3, align 8
  br i1 %1535, label %block_.L_4e149c, label %block_4e1466

block_4e1466:                                     ; preds = %block_4e1458
  store i64 ptrtoint (%G__0x59517b_type* @G__0x59517b to i64), i64* %RSI.i241, align 8
  %1540 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1540, i64* %RDI.i1411, align 8
  %1541 = add i64 %1500, -16
  %1542 = add i64 %1539, 22
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %.pre166, align 8
  %1545 = add i64 %1539, 25
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RDX.i313, align 8
  %1548 = add i64 %1539, 29
  store i64 %1548, i64* %3, align 8
  %1549 = load i64, i64* %1543, align 8
  store i64 %1549, i64* %.pre166, align 8
  %1550 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %1551 = sext i32 %1550 to i64
  store i64 %1551, i64* %RCX.i322, align 8
  %1552 = shl nsw i64 %1551, 3
  %1553 = add i64 %1552, %1549
  %1554 = add i64 %1539, 41
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i64*
  %1556 = load i64, i64* %1555, align 8
  store i64 %1556, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i1472, align 1
  %1557 = add i64 %1539, -918422
  %1558 = add i64 %1539, 48
  %1559 = load i64, i64* %6, align 8
  %1560 = add i64 %1559, -8
  %1561 = inttoptr i64 %1560 to i64*
  store i64 %1558, i64* %1561, align 8
  store i64 %1560, i64* %6, align 8
  store i64 %1557, i64* %3, align 8
  %1562 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %1563 = load i64, i64* %RBP.i, align 8
  %1564 = add i64 %1563, -172
  %1565 = load i32, i32* %EAX.i1475, align 4
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, 6
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1564 to i32*
  store i32 %1565, i32* %1568, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_4e149c

block_.L_4e149c:                                  ; preds = %block_4e1466, %block_4e1458
  %1569 = phi i64 [ %1539, %block_4e1458 ], [ %.pre129, %block_4e1466 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.27, %block_4e1458 ], [ %1562, %block_4e1466 ]
  %1570 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %1570, i64* %RDI.i1411, align 8
  %1571 = add i64 %1569, -918668
  %1572 = add i64 %1569, 13
  %1573 = load i64, i64* %6, align 8
  %1574 = add i64 %1573, -8
  %1575 = inttoptr i64 %1574 to i64*
  store i64 %1572, i64* %1575, align 8
  store i64 %1574, i64* %6, align 8
  store i64 %1571, i64* %3, align 8
  %1576 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.28)
  %1577 = load i64, i64* %.pre166, align 8
  %1578 = load i64, i64* %3, align 8
  %1579 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %1580 = add i64 %1579, %1577
  store i64 %1580, i64* %.pre166, align 8
  store i64 %1580, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %1581 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %1582 = add i32 %1581, 1
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RCX.i322, align 8
  %1584 = icmp eq i32 %1581, -1
  %1585 = icmp eq i32 %1582, 0
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %12, align 1
  %1588 = and i32 %1582, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %13, align 1
  %1593 = xor i32 %1582, %1581
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %14, align 1
  %1597 = zext i1 %1585 to i8
  store i8 %1597, i8* %15, align 1
  %1598 = lshr i32 %1582, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %16, align 1
  %1600 = lshr i32 %1581, 31
  %1601 = xor i32 %1598, %1600
  %1602 = add nuw nsw i32 %1601, %1598
  %1603 = icmp eq i32 %1602, 2
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %17, align 1
  store i32 %1582, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %1605 = load i64, i64* %RBP.i, align 8
  %1606 = add i64 %1605, -4
  %1607 = add i64 %1578, 51
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  store i32 63, i32* %1608, align 4
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 2960
  store i64 %1610, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e14e1:                                  ; preds = %block_4e144e, %block_.L_4e1444
  %1611 = phi i64 [ %1528, %block_4e144e ], [ %1514, %block_.L_4e1444 ]
  %1612 = add i64 %1500, -72
  %1613 = add i64 %1611, 5
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i8 0, i8* %12, align 1
  %1616 = trunc i64 %1615 to i32
  %1617 = and i32 %1616, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1622 = icmp eq i64 %1615, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %15, align 1
  %1624 = lshr i64 %1615, 63
  %1625 = trunc i64 %1624 to i8
  store i8 %1625, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v222 = select i1 %1622, i64 676, i64 11
  %1626 = add i64 %1611, %.v222
  store i64 %1626, i64* %3, align 8
  br i1 %1622, label %block_.L_4e1785, label %block_4e14ec

block_4e14ec:                                     ; preds = %block_.L_4e14e1
  %1627 = add i64 %1500, -84
  %1628 = add i64 %1626, 3
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = add i64 %1500, -88
  %1632 = add i64 %1626, 6
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  store i32 %1630, i32* %1633, align 4
  %1634 = load i64, i64* %3, align 8
  %1635 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %1636 = zext i32 %1635 to i64
  %1637 = add i32 %1635, 1
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %.pre166, align 8
  %1639 = icmp eq i32 %1635, -1
  %1640 = icmp eq i32 %1637, 0
  %1641 = or i1 %1639, %1640
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %12, align 1
  %1643 = and i32 %1637, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643)
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %13, align 1
  %1648 = xor i32 %1637, %1635
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %14, align 1
  %1652 = zext i1 %1640 to i8
  store i8 %1652, i8* %15, align 1
  %1653 = lshr i32 %1637, 31
  %1654 = trunc i32 %1653 to i8
  store i8 %1654, i8* %16, align 1
  %1655 = lshr i32 %1635, 31
  %1656 = xor i32 %1653, %1655
  %1657 = add nuw nsw i32 %1656, %1653
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %17, align 1
  store i32 %1637, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -56
  %1662 = add i64 %1634, 21
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i64*
  %1664 = load i64, i64* %1663, align 8
  store i64 %1664, i64* %RCX.i322, align 8
  %1665 = add i64 %1634, 24
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i8*
  %1667 = load i8, i8* %1666, align 1
  store i8 0, i8* %12, align 1
  %1668 = zext i8 %1667 to i32
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1673 = icmp eq i8 %1667, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %15, align 1
  %1675 = lshr i8 %1667, 7
  store i8 %1675, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v201 = select i1 %1673, i64 297, i64 30
  %1676 = add i64 %1634, %.v201
  %1677 = add i64 %1660, -72
  %1678 = add i64 %1676, 4
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i64*
  %1680 = load i64, i64* %1679, align 8
  store i64 %1680, i64* %.pre166, align 8
  %1681 = add i64 %1680, 8
  %1682 = add i64 %1676, 8
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  br i1 %1673, label %block_.L_4e161b, label %block_4e1510

block_4e1510:                                     ; preds = %block_4e14ec
  store i8 0, i8* %12, align 1
  %1685 = and i32 %1684, 255
  %1686 = tail call i32 @llvm.ctpop.i32(i32 %1685)
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = xor i8 %1688, 1
  store i8 %1689, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1690 = icmp eq i32 %1684, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %15, align 1
  %1692 = lshr i32 %1684, 31
  %1693 = trunc i32 %1692 to i8
  store i8 %1693, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v223 = select i1 %1690, i64 35, i64 14
  %1694 = add i64 %1676, %.v223
  store i64 %1694, i64* %3, align 8
  br i1 %1690, label %block_.L_4e1533, label %block_4e151e

block_4e151e:                                     ; preds = %block_4e1510
  %1695 = add i64 %1694, 4
  store i64 %1695, i64* %3, align 8
  %1696 = load i64, i64* %1663, align 8
  %1697 = add i64 %1696, 1
  store i64 %1697, i64* %.pre166, align 8
  %1698 = icmp eq i64 %1696, -1
  %1699 = icmp eq i64 %1697, 0
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %12, align 1
  %1702 = trunc i64 %1697 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %13, align 1
  %1708 = xor i64 %1697, %1696
  %1709 = lshr i64 %1708, 4
  %1710 = trunc i64 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %14, align 1
  %1712 = zext i1 %1699 to i8
  store i8 %1712, i8* %15, align 1
  %1713 = lshr i64 %1697, 63
  %1714 = trunc i64 %1713 to i8
  store i8 %1714, i8* %16, align 1
  %1715 = lshr i64 %1696, 63
  %1716 = xor i64 %1713, %1715
  %1717 = add nuw nsw i64 %1716, %1713
  %1718 = icmp eq i64 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %17, align 1
  %1720 = add i64 %1694, 16
  store i64 %1720, i64* %3, align 8
  store i64 %1697, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %1721 = add i64 %1694, 507
  br label %block_.L_4e1719

block_.L_4e1533:                                  ; preds = %block_4e1510
  %1722 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1723 = and i32 %1722, 255
  %1724 = tail call i32 @llvm.ctpop.i32(i32 %1723)
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  store i8 %1727, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1728 = icmp eq i32 %1722, 0
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %15, align 1
  %1730 = lshr i32 %1722, 31
  %1731 = trunc i32 %1730 to i8
  store i8 %1731, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v225 = select i1 %1728, i64 172, i64 14
  %1732 = add i64 %1694, %.v225
  store i64 %1732, i64* %3, align 8
  br i1 %1728, label %block_.L_4e15df, label %block_4e1541

block_4e1541:                                     ; preds = %block_.L_4e1533
  %1733 = add i64 %1660, -16
  %1734 = add i64 %1732, 4
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i64*
  %1736 = load i64, i64* %1735, align 8
  store i64 %1736, i64* %.pre166, align 8
  store i64 %1636, i64* %RCX.i322, align 8
  store i8 %1652, i8* %12, align 1
  %1737 = and i32 %1635, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %13, align 1
  store i8 %1651, i8* %14, align 1
  %1742 = icmp eq i32 %1635, 0
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %15, align 1
  %1744 = trunc i32 %1655 to i8
  store i8 %1744, i8* %16, align 1
  store i8 %1659, i8* %17, align 1
  %1745 = sext i32 %1635 to i64
  store i64 %1745, i64* %RDX.i313, align 8
  %1746 = shl nsw i64 %1745, 3
  %1747 = add i64 %1736, %1746
  %1748 = add i64 %1732, 21
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i64*
  %1750 = load i64, i64* %1749, align 8
  store i64 %1750, i64* %.pre166, align 8
  %1751 = add i64 %1750, 1
  %1752 = add i64 %1732, 25
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i8*
  %1754 = load i8, i8* %1753, align 1
  %1755 = sext i8 %1754 to i64
  %1756 = and i64 %1755, 4294967295
  store i64 %1756, i64* %RCX.i322, align 8
  %1757 = sext i8 %1754 to i32
  %1758 = add nsw i32 %1757, -45
  %1759 = icmp ult i8 %1754, 45
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %12, align 1
  %1761 = and i32 %1758, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %13, align 1
  %1766 = xor i32 %1758, %1757
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %14, align 1
  %1770 = icmp eq i32 %1758, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %15, align 1
  %1772 = lshr i32 %1758, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %16, align 1
  %1774 = lshr i32 %1757, 31
  %1775 = xor i32 %1772, %1774
  %1776 = add nuw nsw i32 %1775, %1774
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %17, align 1
  %.v226 = select i1 %1770, i64 34, i64 84
  %1779 = add i64 %1732, %.v226
  %1780 = add i64 %1779, 10
  store i64 %1780, i64* %3, align 8
  br i1 %1770, label %block_4e1563, label %block_.L_4e1595

block_4e1563:                                     ; preds = %block_4e1541
  store i64 ptrtoint (%G__0x595199_type* @G__0x595199 to i64), i64* %RSI.i241, align 8
  %1781 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1781, i64* %RDI.i1411, align 8
  %1782 = add i64 %1779, 22
  store i64 %1782, i64* %3, align 8
  %1783 = load i64, i64* %1735, align 8
  store i64 %1783, i64* %.pre166, align 8
  %1784 = add i64 %1779, 25
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i64*
  %1786 = load i64, i64* %1785, align 8
  store i64 %1786, i64* %RDX.i313, align 8
  %1787 = add i64 %1779, 29
  store i64 %1787, i64* %3, align 8
  %1788 = load i64, i64* %1679, align 8
  store i64 %1788, i64* %.pre166, align 8
  %1789 = add i64 %1779, 32
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i64*
  %1791 = load i64, i64* %1790, align 8
  store i64 %1791, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i1472, align 1
  %1792 = add i64 %1779, -918675
  %1793 = add i64 %1779, 39
  %1794 = load i64, i64* %6, align 8
  %1795 = add i64 %1794, -8
  %1796 = inttoptr i64 %1795 to i64*
  store i64 %1793, i64* %1796, align 8
  store i64 %1795, i64* %6, align 8
  store i64 %1792, i64* %3, align 8
  %1797 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add i64 %1798, -176
  %1800 = load i32, i32* %EAX.i1475, align 4
  %1801 = load i64, i64* %3, align 8
  %1802 = add i64 %1801, 6
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1799 to i32*
  store i32 %1800, i32* %1803, align 4
  %1804 = load i64, i64* %3, align 8
  %1805 = add i64 %1804, 74
  store i64 %1805, i64* %3, align 8
  br label %block_.L_4e15da

block_.L_4e1595:                                  ; preds = %block_4e1541
  store i64 ptrtoint (%G__0x5951c6_type* @G__0x5951c6 to i64), i64* %RSI.i241, align 8
  %1806 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1806, i64* %RDI.i1411, align 8
  %1807 = add i64 %1779, 22
  store i64 %1807, i64* %3, align 8
  %1808 = load i64, i64* %1735, align 8
  store i64 %1808, i64* %.pre166, align 8
  %1809 = add i64 %1779, 25
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i64*
  %1811 = load i64, i64* %1810, align 8
  store i64 %1811, i64* %RDX.i313, align 8
  %1812 = add i64 %1779, 29
  store i64 %1812, i64* %3, align 8
  %1813 = load i64, i64* %1735, align 8
  store i64 %1813, i64* %.pre166, align 8
  store i64 %1636, i64* %RCX.i322, align 8
  store i8 %1652, i8* %12, align 1
  store i8 %1741, i8* %13, align 1
  store i8 %1651, i8* %14, align 1
  store i8 %1743, i8* %15, align 1
  store i8 %1744, i8* %16, align 1
  store i8 %1659, i8* %17, align 1
  store i64 %1745, i64* %R8.i389, align 8
  %1814 = add i64 %1813, %1746
  %1815 = add i64 %1779, 46
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %.pre166, align 8
  %1818 = add i64 %1779, 49
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i8*
  %1820 = load i8, i8* %1819, align 1
  %1821 = sext i8 %1820 to i64
  %1822 = and i64 %1821, 4294967295
  store i64 %1822, i64* %RCX.i322, align 8
  %1823 = add i64 %1779, 53
  store i64 %1823, i64* %3, align 8
  %1824 = load i64, i64* %1679, align 8
  store i64 %1824, i64* %.pre166, align 8
  %1825 = add i64 %1779, 56
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %R8.i389, align 8
  store i8 0, i8* %AL.i1472, align 1
  %1828 = add i64 %1779, -918725
  %1829 = add i64 %1779, 63
  %1830 = load i64, i64* %6, align 8
  %1831 = add i64 %1830, -8
  %1832 = inttoptr i64 %1831 to i64*
  store i64 %1829, i64* %1832, align 8
  store i64 %1831, i64* %6, align 8
  store i64 %1828, i64* %3, align 8
  %1833 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -180
  %1836 = load i32, i32* %EAX.i1475, align 4
  %1837 = load i64, i64* %3, align 8
  %1838 = add i64 %1837, 6
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1835 to i32*
  store i32 %1836, i32* %1839, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_4e15da

block_.L_4e15da:                                  ; preds = %block_.L_4e1595, %block_4e1563
  %1840 = phi i64 [ %.pre130, %block_.L_4e1595 ], [ %1805, %block_4e1563 ]
  %MEMORY.30 = phi %struct.Memory* [ %1833, %block_.L_4e1595 ], [ %1797, %block_4e1563 ]
  %1841 = add i64 %1840, 5
  store i64 %1841, i64* %3, align 8
  br label %block_.L_4e15df

block_.L_4e15df:                                  ; preds = %block_.L_4e15da, %block_.L_4e1533
  %1842 = phi i64 [ %1732, %block_.L_4e1533 ], [ %1841, %block_.L_4e15da ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.27, %block_.L_4e1533 ], [ %MEMORY.30, %block_.L_4e15da ]
  %1843 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %1843, i64* %RDI.i1411, align 8
  %1844 = add i64 %1842, -918991
  %1845 = add i64 %1842, 13
  %1846 = load i64, i64* %6, align 8
  %1847 = add i64 %1846, -8
  %1848 = inttoptr i64 %1847 to i64*
  store i64 %1845, i64* %1848, align 8
  store i64 %1847, i64* %6, align 8
  store i64 %1844, i64* %3, align 8
  %1849 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.31)
  %1850 = load i64, i64* %.pre166, align 8
  %1851 = load i64, i64* %3, align 8
  %1852 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %1853 = add i64 %1852, %1850
  store i64 %1853, i64* %.pre166, align 8
  %1854 = icmp ult i64 %1853, %1850
  %1855 = icmp ult i64 %1853, %1852
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %12, align 1
  %1858 = trunc i64 %1853 to i32
  %1859 = and i32 %1858, 255
  %1860 = tail call i32 @llvm.ctpop.i32(i32 %1859)
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = xor i8 %1862, 1
  store i8 %1863, i8* %13, align 1
  %1864 = xor i64 %1852, %1850
  %1865 = xor i64 %1864, %1853
  %1866 = lshr i64 %1865, 4
  %1867 = trunc i64 %1866 to i8
  %1868 = and i8 %1867, 1
  store i8 %1868, i8* %14, align 1
  %1869 = icmp eq i64 %1853, 0
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %15, align 1
  %1871 = lshr i64 %1853, 63
  %1872 = trunc i64 %1871 to i8
  store i8 %1872, i8* %16, align 1
  %1873 = lshr i64 %1850, 63
  %1874 = lshr i64 %1852, 63
  %1875 = xor i64 %1871, %1873
  %1876 = xor i64 %1871, %1874
  %1877 = add nuw nsw i64 %1875, %1876
  %1878 = icmp eq i64 %1877, 2
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %17, align 1
  store i64 %1853, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -72
  %1882 = add i64 %1851, 20
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i64*
  %1884 = load i64, i64* %1883, align 8
  store i64 %1884, i64* %.pre166, align 8
  %1885 = add i64 %1884, 24
  %1886 = add i64 %1851, 23
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RCX.i322, align 8
  store i32 %1888, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %1890 = add i64 %1880, -4
  %1891 = add i64 %1851, 37
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  store i32 63, i32* %1892, align 4
  %1893 = load i64, i64* %3, align 8
  %1894 = add i64 %1893, 2651
  store i64 %1894, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e161b:                                  ; preds = %block_4e14ec
  %1895 = add i32 %1684, -1
  %1896 = icmp eq i32 %1684, 0
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %12, align 1
  %1898 = and i32 %1895, 255
  %1899 = tail call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %13, align 1
  %1903 = xor i32 %1895, %1684
  %1904 = lshr i32 %1903, 4
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  store i8 %1906, i8* %14, align 1
  %1907 = icmp eq i32 %1895, 0
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %15, align 1
  %1909 = lshr i32 %1895, 31
  %1910 = trunc i32 %1909 to i8
  store i8 %1910, i8* %16, align 1
  %1911 = lshr i32 %1684, 31
  %1912 = xor i32 %1909, %1911
  %1913 = add nuw nsw i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %17, align 1
  %.v227 = select i1 %1907, i64 14, i64 249
  %1916 = add i64 %1676, %.v227
  store i64 %1916, i64* %3, align 8
  br i1 %1907, label %block_4e1629, label %block_.L_4e1714

block_4e1629:                                     ; preds = %block_.L_4e161b
  store i64 %1638, i64* %.pre166, align 8
  %1917 = add i64 %1660, -8
  %1918 = add i64 %1916, 10
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to i32*
  %1920 = load i32, i32* %1919, align 4
  %1921 = sub i32 %1637, %1920
  %1922 = icmp ult i32 %1637, %1920
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %12, align 1
  %1924 = and i32 %1921, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %13, align 1
  %1929 = xor i32 %1920, %1637
  %1930 = xor i32 %1929, %1921
  %1931 = lshr i32 %1930, 4
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  store i8 %1933, i8* %14, align 1
  %1934 = icmp eq i32 %1921, 0
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %15, align 1
  %1936 = lshr i32 %1921, 31
  %1937 = trunc i32 %1936 to i8
  store i8 %1937, i8* %16, align 1
  %1938 = lshr i32 %1920, 31
  %1939 = xor i32 %1938, %1653
  %1940 = xor i32 %1936, %1653
  %1941 = add nuw nsw i32 %1940, %1939
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %17, align 1
  %1944 = icmp ne i8 %1937, 0
  %1945 = xor i1 %1944, %1942
  %.v228 = select i1 %1945, i64 16, i64 59
  %1946 = add i64 %1916, %.v228
  store i64 %1946, i64* %3, align 8
  br i1 %1945, label %block_4e1639, label %block_.L_4e1664

block_4e1639:                                     ; preds = %block_4e1629
  %1947 = add i64 %1660, -16
  %1948 = add i64 %1946, 4
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i64*
  %1950 = load i64, i64* %1949, align 8
  store i64 %1950, i64* %.pre166, align 8
  store i64 %1638, i64* %RCX.i322, align 8
  %1951 = add i32 %1635, 2
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %RDX.i313, align 8
  %1953 = icmp eq i32 %1637, -1
  %1954 = icmp eq i32 %1951, 0
  %1955 = or i1 %1953, %1954
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %12, align 1
  %1957 = and i32 %1951, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %13, align 1
  %1962 = xor i32 %1951, %1637
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %14, align 1
  %1966 = zext i1 %1954 to i8
  store i8 %1966, i8* %15, align 1
  %1967 = lshr i32 %1951, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %16, align 1
  %1969 = xor i32 %1967, %1653
  %1970 = add nuw nsw i32 %1969, %1967
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %17, align 1
  store i32 %1951, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %1973 = sext i32 %1637 to i64
  store i64 %1973, i64* %RSI.i241, align 8
  %1974 = shl nsw i64 %1973, 3
  %1975 = add i64 %1950, %1974
  %1976 = add i64 %1946, 30
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  store i64 %1978, i64* %.pre166, align 8
  store i64 %1978, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %1979 = add i64 %1946, 219
  store i64 %1979, i64* %3, align 8
  br label %block_.L_4e1714

block_.L_4e1664:                                  ; preds = %block_4e1629
  %1980 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1981 = and i32 %1980, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1986 = icmp eq i32 %1980, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %15, align 1
  %1988 = lshr i32 %1980, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v229 = select i1 %1986, i64 73, i64 14
  %1990 = add i64 %1946, %.v229
  store i64 %1990, i64* %3, align 8
  br i1 %1986, label %block_.L_4e16ad, label %block_4e1672

block_4e1672:                                     ; preds = %block_.L_4e1664
  store i64 ptrtoint (%G__0x5951f3_type* @G__0x5951f3 to i64), i64* %RSI.i241, align 8
  %1991 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1991, i64* %RDI.i1411, align 8
  %1992 = add i64 %1660, -16
  %1993 = add i64 %1990, 22
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i64*
  %1995 = load i64, i64* %1994, align 8
  store i64 %1995, i64* %.pre166, align 8
  %1996 = add i64 %1990, 25
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i64*
  %1998 = load i64, i64* %1997, align 8
  store i64 %1998, i64* %RDX.i313, align 8
  %1999 = add i64 %1990, 29
  store i64 %1999, i64* %3, align 8
  %2000 = load i64, i64* %1994, align 8
  store i64 %2000, i64* %.pre166, align 8
  store i64 %1636, i64* %RCX.i322, align 8
  store i8 %1652, i8* %12, align 1
  %2001 = and i32 %1635, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001)
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %13, align 1
  store i8 %1651, i8* %14, align 1
  %2006 = icmp eq i32 %1635, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %15, align 1
  %2008 = trunc i32 %1655 to i8
  store i8 %2008, i8* %16, align 1
  store i8 %1659, i8* %17, align 1
  %2009 = sext i32 %1635 to i64
  store i64 %2009, i64* %R8.i389, align 8
  %2010 = shl nsw i64 %2009, 3
  %2011 = add i64 %2000, %2010
  %2012 = add i64 %1990, 46
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i1472, align 1
  %2015 = add i64 %1990, -918946
  %2016 = add i64 %1990, 53
  %2017 = load i64, i64* %6, align 8
  %2018 = add i64 %2017, -8
  %2019 = inttoptr i64 %2018 to i64*
  store i64 %2016, i64* %2019, align 8
  store i64 %2018, i64* %6, align 8
  store i64 %2015, i64* %3, align 8
  %2020 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -184
  %2023 = load i32, i32* %EAX.i1475, align 4
  %2024 = load i64, i64* %3, align 8
  %2025 = add i64 %2024, 6
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2022 to i32*
  store i32 %2023, i32* %2026, align 4
  %.pre131 = load i64, i64* %3, align 8
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e16ad

block_.L_4e16ad:                                  ; preds = %block_4e1672, %block_.L_4e1664
  %2027 = phi i64 [ %1660, %block_.L_4e1664 ], [ %.pre132, %block_4e1672 ]
  %2028 = phi i64 [ %1990, %block_.L_4e1664 ], [ %.pre131, %block_4e1672 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.27, %block_.L_4e1664 ], [ %2020, %block_4e1672 ]
  store i64 63, i64* %.pre166, align 8
  store i64 58, i64* %RCX.i322, align 8
  %2029 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2029, i64* %RDI.i1411, align 8
  %2030 = add i64 %2027, -188
  %2031 = add i64 %2028, 24
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  store i32 63, i32* %2032, align 4
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -192
  %2035 = load i32, i32* %ECX.i1452, align 4
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, 6
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2034 to i32*
  store i32 %2035, i32* %2038, align 4
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, -919227
  %2041 = add i64 %2039, 5
  %2042 = load i64, i64* %6, align 8
  %2043 = add i64 %2042, -8
  %2044 = inttoptr i64 %2043 to i64*
  store i64 %2041, i64* %2044, align 8
  store i64 %2043, i64* %6, align 8
  store i64 %2040, i64* %3, align 8
  %2045 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.32)
  %2046 = load i64, i64* %.pre166, align 8
  %2047 = load i64, i64* %3, align 8
  %2048 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %2049 = add i64 %2048, %2046
  store i64 %2049, i64* %.pre166, align 8
  %2050 = icmp ult i64 %2049, %2046
  %2051 = icmp ult i64 %2049, %2048
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %12, align 1
  %2054 = trunc i64 %2049 to i32
  %2055 = and i32 %2054, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %13, align 1
  %2060 = xor i64 %2048, %2046
  %2061 = xor i64 %2060, %2049
  %2062 = lshr i64 %2061, 4
  %2063 = trunc i64 %2062 to i8
  %2064 = and i8 %2063, 1
  store i8 %2064, i8* %14, align 1
  %2065 = icmp eq i64 %2049, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %15, align 1
  %2067 = lshr i64 %2049, 63
  %2068 = trunc i64 %2067 to i8
  store i8 %2068, i8* %16, align 1
  %2069 = lshr i64 %2046, 63
  %2070 = lshr i64 %2048, 63
  %2071 = xor i64 %2067, %2069
  %2072 = xor i64 %2067, %2070
  %2073 = add nuw nsw i64 %2071, %2072
  %2074 = icmp eq i64 %2073, 2
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %17, align 1
  store i64 %2049, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %2076 = load i64, i64* %RBP.i, align 8
  %2077 = add i64 %2076, -72
  %2078 = add i64 %2047, 20
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %.pre166, align 8
  %2081 = add i64 %2080, 24
  %2082 = add i64 %2047, 23
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  %2084 = load i32, i32* %2083, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RCX.i322, align 8
  store i32 %2084, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %2086 = add i64 %2076, -24
  %2087 = add i64 %2047, 34
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i64*
  %2089 = load i64, i64* %2088, align 8
  store i64 %2089, i64* %.pre166, align 8
  %2090 = add i64 %2047, 37
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i8*
  %2092 = load i8, i8* %2091, align 1
  %2093 = sext i8 %2092 to i64
  %2094 = and i64 %2093, 4294967295
  store i64 %2094, i64* %RCX.i322, align 8
  %2095 = sext i8 %2092 to i32
  %2096 = add nsw i32 %2095, -58
  %2097 = icmp ult i8 %2092, 58
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %12, align 1
  %2099 = and i32 %2096, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %13, align 1
  %2104 = xor i32 %2095, 16
  %2105 = xor i32 %2104, %2096
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %14, align 1
  %2109 = icmp eq i32 %2096, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %15, align 1
  %2111 = lshr i32 %2096, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %16, align 1
  %2113 = lshr i32 %2095, 31
  %2114 = xor i32 %2111, %2113
  %2115 = add nuw nsw i32 %2114, %2113
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %17, align 1
  %2118 = add i64 %2076, -188
  %2119 = add i64 %2047, 46
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i322, align 8
  %2123 = add i64 %2076, -192
  %2124 = add i64 %2047, 52
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i313, align 8
  %2128 = select i1 %2109, i64 %2127, i64 %2122
  store i64 %2128, i64* %RCX.i322, align 8
  %2129 = add i64 %2076, -4
  %2130 = trunc i64 %2128 to i32
  %2131 = add i64 %2047, 58
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2129 to i32*
  store i32 %2130, i32* %2132, align 4
  %2133 = load i64, i64* %3, align 8
  %2134 = add i64 %2133, 2402
  store i64 %2134, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1714:                                  ; preds = %block_.L_4e161b, %block_4e1639
  %2135 = phi i64 [ %1979, %block_4e1639 ], [ %1916, %block_.L_4e161b ]
  %2136 = add i64 %2135, 5
  store i64 %2136, i64* %3, align 8
  br label %block_.L_4e1719

block_.L_4e1719:                                  ; preds = %block_.L_4e1714, %block_4e151e
  %storemerge91 = phi i64 [ %1721, %block_4e151e ], [ %2136, %block_.L_4e1714 ]
  %2137 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2137, i64* %RDI.i1411, align 8
  %2138 = add i64 %storemerge91, -919305
  %2139 = add i64 %storemerge91, 13
  %2140 = load i64, i64* %6, align 8
  %2141 = add i64 %2140, -8
  %2142 = inttoptr i64 %2141 to i64*
  store i64 %2139, i64* %2142, align 8
  store i64 %2141, i64* %6, align 8
  store i64 %2138, i64* %3, align 8
  %2143 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.27)
  %2144 = load i64, i64* %.pre166, align 8
  %2145 = load i64, i64* %3, align 8
  %2146 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %2147 = add i64 %2146, %2144
  store i64 %2147, i64* %.pre166, align 8
  %2148 = icmp ult i64 %2147, %2144
  %2149 = icmp ult i64 %2147, %2146
  %2150 = or i1 %2148, %2149
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %12, align 1
  %2152 = trunc i64 %2147 to i32
  %2153 = and i32 %2152, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %13, align 1
  %2158 = xor i64 %2146, %2144
  %2159 = xor i64 %2158, %2147
  %2160 = lshr i64 %2159, 4
  %2161 = trunc i64 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %14, align 1
  %2163 = icmp eq i64 %2147, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %15, align 1
  %2165 = lshr i64 %2147, 63
  %2166 = trunc i64 %2165 to i8
  store i8 %2166, i8* %16, align 1
  %2167 = lshr i64 %2144, 63
  %2168 = lshr i64 %2146, 63
  %2169 = xor i64 %2165, %2167
  %2170 = xor i64 %2165, %2168
  %2171 = add nuw nsw i64 %2169, %2170
  %2172 = icmp eq i64 %2171, 2
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %17, align 1
  store i64 %2147, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %2174 = load i64, i64* %RBP.i, align 8
  %2175 = add i64 %2174, -40
  %2176 = add i64 %2145, 21
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i64*
  %2178 = load i64, i64* %2177, align 8
  store i8 0, i8* %12, align 1
  %2179 = trunc i64 %2178 to i32
  %2180 = and i32 %2179, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2185 = icmp eq i64 %2178, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %15, align 1
  %2187 = lshr i64 %2178, 63
  %2188 = trunc i64 %2187 to i8
  store i8 %2188, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v224 = select i1 %2185, i64 36, i64 27
  %2189 = add i64 %2145, %.v224
  store i64 %2189, i64* %3, align 8
  br i1 %2185, label %block_.L_4e174a, label %block_4e1741

block_4e1741:                                     ; preds = %block_.L_4e1719
  %2190 = add i64 %2174, -88
  %2191 = add i64 %2189, 3
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %.pre166, align 8
  %2195 = add i64 %2189, 7
  store i64 %2195, i64* %3, align 8
  %2196 = load i64, i64* %2177, align 8
  store i64 %2196, i64* %RCX.i322, align 8
  %2197 = add i64 %2189, 9
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  store i32 %2193, i32* %2198, align 4
  %.pre133 = load i64, i64* %RBP.i, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_4e174a

block_.L_4e174a:                                  ; preds = %block_4e1741, %block_.L_4e1719
  %2199 = phi i64 [ %.pre134, %block_4e1741 ], [ %2189, %block_.L_4e1719 ]
  %2200 = phi i64 [ %.pre133, %block_4e1741 ], [ %2174, %block_.L_4e1719 ]
  %2201 = add i64 %2200, -72
  %2202 = add i64 %2199, 4
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i64*
  %2204 = load i64, i64* %2203, align 8
  store i64 %2204, i64* %.pre166, align 8
  %2205 = add i64 %2204, 16
  %2206 = add i64 %2199, 9
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i8 0, i8* %12, align 1
  %2209 = trunc i64 %2208 to i32
  %2210 = and i32 %2209, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2215 = icmp eq i64 %2208, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %15, align 1
  %2217 = lshr i64 %2208, 63
  %2218 = trunc i64 %2217 to i8
  store i8 %2218, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v202 = select i1 %2215, i64 44, i64 15
  %2219 = add i64 %2199, %.v202
  %2220 = add i64 %2219, 4
  store i64 %2220, i64* %3, align 8
  %2221 = load i64, i64* %2203, align 8
  store i64 %2221, i64* %.pre166, align 8
  %2222 = add i64 %2221, 24
  %2223 = add i64 %2219, 7
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RCX.i322, align 8
  br i1 %2215, label %block_.L_4e1776, label %block_4e1759

block_4e1759:                                     ; preds = %block_.L_4e174a
  %2227 = add i64 %2219, 11
  store i64 %2227, i64* %3, align 8
  %2228 = load i64, i64* %2203, align 8
  store i64 %2228, i64* %.pre166, align 8
  %2229 = add i64 %2228, 16
  %2230 = add i64 %2219, 15
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %.pre166, align 8
  %2233 = add i64 %2219, 17
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  store i32 %2225, i32* %2234, align 4
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -4
  %2237 = load i64, i64* %3, align 8
  %2238 = add i64 %2237, 7
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2236 to i32*
  store i32 0, i32* %2239, align 4
  %2240 = load i64, i64* %3, align 8
  %2241 = add i64 %2240, 2299
  store i64 %2241, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1776:                                  ; preds = %block_.L_4e174a
  %2242 = add i64 %2200, -4
  %2243 = add i64 %2219, 10
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i32*
  store i32 %2225, i32* %2244, align 4
  %2245 = load i64, i64* %3, align 8
  %2246 = add i64 %2245, 2284
  store i64 %2246, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1785:                                  ; preds = %block_.L_4e14e1
  %2247 = add i64 %1500, -44
  %2248 = add i64 %1626, 4
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i32*
  %2250 = load i32, i32* %2249, align 4
  store i8 0, i8* %12, align 1
  %2251 = and i32 %2250, 255
  %2252 = tail call i32 @llvm.ctpop.i32(i32 %2251)
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = xor i8 %2254, 1
  store i8 %2255, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2256 = icmp eq i32 %2250, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %15, align 1
  %2258 = lshr i32 %2250, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v230 = select i1 %2256, i64 69, i64 10
  %2260 = add i64 %1626, %.v230
  store i64 %2260, i64* %3, align 8
  br i1 %2256, label %block_.L_4e17ca, label %block_4e178f

block_4e178f:                                     ; preds = %block_.L_4e1785
  %2261 = add i64 %1500, -16
  %2262 = add i64 %2260, 4
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i64*
  %2264 = load i64, i64* %2263, align 8
  store i64 %2264, i64* %.pre166, align 8
  %2265 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2266 = sext i32 %2265 to i64
  store i64 %2266, i64* %RCX.i322, align 8
  %2267 = shl nsw i64 %2266, 3
  %2268 = add i64 %2267, %2264
  %2269 = add i64 %2260, 16
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %.pre166, align 8
  %2272 = add i64 %2271, 1
  %2273 = add i64 %2260, 20
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i8*
  %2275 = load i8, i8* %2274, align 1
  %2276 = sext i8 %2275 to i64
  %2277 = and i64 %2276, 4294967295
  store i64 %2277, i64* %RDX.i313, align 8
  %2278 = sext i8 %2275 to i32
  %2279 = add nsw i32 %2278, -45
  %2280 = icmp ult i8 %2275, 45
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %12, align 1
  %2282 = and i32 %2279, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %13, align 1
  %2287 = xor i32 %2279, %2278
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  store i8 %2290, i8* %14, align 1
  %2291 = icmp eq i32 %2279, 0
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %15, align 1
  %2293 = lshr i32 %2279, 31
  %2294 = trunc i32 %2293 to i8
  store i8 %2294, i8* %16, align 1
  %2295 = lshr i32 %2278, 31
  %2296 = xor i32 %2293, %2295
  %2297 = add nuw nsw i32 %2296, %2295
  %2298 = icmp eq i32 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %17, align 1
  %.v231 = select i1 %2291, i64 59, i64 29
  %2300 = add i64 %2260, %.v231
  store i64 %2300, i64* %3, align 8
  br i1 %2291, label %block_.L_4e17ca, label %block_4e17ac

block_4e17ac:                                     ; preds = %block_4e178f
  %2301 = add i64 %1500, -24
  %2302 = add i64 %2300, 4
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i64*
  %2304 = load i64, i64* %2303, align 8
  store i64 %2304, i64* %RDI.i1411, align 8
  %2305 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2305, i64* %.pre166, align 8
  %2306 = add i64 %2300, 15
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i8*
  %2308 = load i8, i8* %2307, align 1
  %2309 = sext i8 %2308 to i64
  %2310 = and i64 %2309, 4294967295
  store i64 %2310, i64* %RSI.i241, align 8
  %2311 = add i64 %2300, -919420
  %2312 = add i64 %2300, 20
  %2313 = load i64, i64* %6, align 8
  %2314 = add i64 %2313, -8
  %2315 = inttoptr i64 %2314 to i64*
  store i64 %2312, i64* %2315, align 8
  store i64 %2314, i64* %6, align 8
  store i64 %2311, i64* %3, align 8
  %call2_4e17bb = tail call %struct.Memory* @sub_401030.strchr_plt(%struct.State* nonnull %0, i64 %2311, %struct.Memory* %MEMORY.27)
  %2316 = load i64, i64* %.pre166, align 8
  %2317 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2318 = trunc i64 %2316 to i32
  %2319 = and i32 %2318, 255
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2324 = icmp eq i64 %2316, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %15, align 1
  %2326 = lshr i64 %2316, 63
  %2327 = trunc i64 %2326 to i8
  store i8 %2327, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v232 = select i1 %2324, i64 10, i64 232
  %2328 = add i64 %2317, %.v232
  store i64 %2328, i64* %3, align 8
  br i1 %2324, label %block_.L_4e17ca, label %block_.L_4e18a8

block_.L_4e17ca:                                  ; preds = %block_4e17ac, %block_4e178f, %block_.L_4e1785
  %2329 = phi i64 [ %2260, %block_.L_4e1785 ], [ %2300, %block_4e178f ], [ %2328, %block_4e17ac ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.27, %block_.L_4e1785 ], [ %MEMORY.27, %block_4e178f ], [ %call2_4e17bb, %block_4e17ac ]
  %2330 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2331 = and i32 %2330, 255
  %2332 = tail call i32 @llvm.ctpop.i32(i32 %2331)
  %2333 = trunc i32 %2332 to i8
  %2334 = and i8 %2333, 1
  %2335 = xor i8 %2334, 1
  store i8 %2335, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2336 = icmp eq i32 %2330, 0
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %15, align 1
  %2338 = lshr i32 %2330, 31
  %2339 = trunc i32 %2338 to i8
  store i8 %2339, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v262 = select i1 %2336, i64 164, i64 14
  %2340 = add i64 %2329, %.v262
  store i64 %2340, i64* %3, align 8
  br i1 %2336, label %block_.L_4e186e, label %block_4e17d8

block_4e17d8:                                     ; preds = %block_.L_4e17ca
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -16
  %2343 = add i64 %2340, 4
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i64*
  %2345 = load i64, i64* %2344, align 8
  store i64 %2345, i64* %.pre166, align 8
  %2346 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2347 = sext i32 %2346 to i64
  store i64 %2347, i64* %RCX.i322, align 8
  %2348 = shl nsw i64 %2347, 3
  %2349 = add i64 %2348, %2345
  %2350 = add i64 %2340, 16
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i64*
  %2352 = load i64, i64* %2351, align 8
  store i64 %2352, i64* %.pre166, align 8
  %2353 = add i64 %2352, 1
  %2354 = add i64 %2340, 20
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i8*
  %2356 = load i8, i8* %2355, align 1
  %2357 = sext i8 %2356 to i64
  %2358 = and i64 %2357, 4294967295
  store i64 %2358, i64* %RDX.i313, align 8
  %2359 = sext i8 %2356 to i32
  %2360 = add nsw i32 %2359, -45
  %2361 = icmp ult i8 %2356, 45
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %12, align 1
  %2363 = and i32 %2360, 255
  %2364 = tail call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %13, align 1
  %2368 = xor i32 %2360, %2359
  %2369 = lshr i32 %2368, 4
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  store i8 %2371, i8* %14, align 1
  %2372 = icmp eq i32 %2360, 0
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %15, align 1
  %2374 = lshr i32 %2360, 31
  %2375 = trunc i32 %2374 to i8
  store i8 %2375, i8* %16, align 1
  %2376 = lshr i32 %2359, 31
  %2377 = xor i32 %2374, %2376
  %2378 = add nuw nsw i32 %2377, %2376
  %2379 = icmp eq i32 %2378, 2
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %17, align 1
  %.v263 = select i1 %2372, i64 29, i64 80
  %2381 = add i64 %2340, %.v263
  %2382 = add i64 %2381, 10
  store i64 %2382, i64* %3, align 8
  br i1 %2372, label %block_4e17f5, label %block_.L_4e1828

block_4e17f5:                                     ; preds = %block_4e17d8
  store i64 ptrtoint (%G__0x595219_type* @G__0x595219 to i64), i64* %RSI.i241, align 8
  %2383 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2383, i64* %RDI.i1411, align 8
  %2384 = add i64 %2381, 22
  store i64 %2384, i64* %3, align 8
  %2385 = load i64, i64* %2344, align 8
  store i64 %2385, i64* %.pre166, align 8
  %2386 = add i64 %2381, 25
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i64*
  %2388 = load i64, i64* %2387, align 8
  store i64 %2388, i64* %RDX.i313, align 8
  %2389 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2389, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i1472, align 1
  %2390 = add i64 %2381, -919333
  %2391 = add i64 %2381, 40
  %2392 = load i64, i64* %6, align 8
  %2393 = add i64 %2392, -8
  %2394 = inttoptr i64 %2393 to i64*
  store i64 %2391, i64* %2394, align 8
  store i64 %2393, i64* %6, align 8
  store i64 %2390, i64* %3, align 8
  %2395 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.36)
  %2396 = load i64, i64* %RBP.i, align 8
  %2397 = add i64 %2396, -196
  %2398 = load i32, i32* %EAX.i1475, align 4
  %2399 = load i64, i64* %3, align 8
  %2400 = add i64 %2399, 6
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2397 to i32*
  store i32 %2398, i32* %2401, align 4
  %2402 = load i64, i64* %3, align 8
  %2403 = add i64 %2402, 70
  store i64 %2403, i64* %3, align 8
  br label %block_.L_4e1869

block_.L_4e1828:                                  ; preds = %block_4e17d8
  store i64 ptrtoint (%G__0x595239_type* @G__0x595239 to i64), i64* %RSI.i241, align 8
  %2404 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2404, i64* %RDI.i1411, align 8
  %2405 = add i64 %2381, 22
  store i64 %2405, i64* %3, align 8
  %2406 = load i64, i64* %2344, align 8
  store i64 %2406, i64* %.pre166, align 8
  %2407 = add i64 %2381, 25
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %RDX.i313, align 8
  %2410 = add i64 %2381, 29
  store i64 %2410, i64* %3, align 8
  %2411 = load i64, i64* %2344, align 8
  store i64 %2411, i64* %.pre166, align 8
  store i64 %2347, i64* %RCX.i322, align 8
  %2412 = add i64 %2348, %2411
  %2413 = add i64 %2381, 41
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i64*
  %2415 = load i64, i64* %2414, align 8
  store i64 %2415, i64* %.pre166, align 8
  %2416 = add i64 %2381, 44
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i8*
  %2418 = load i8, i8* %2417, align 1
  %2419 = sext i8 %2418 to i64
  %2420 = and i64 %2419, 4294967295
  store i64 %2420, i64* %RCX.i322, align 8
  %2421 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2421, i64* %R8.i389, align 8
  store i8 0, i8* %AL.i1472, align 1
  %2422 = add i64 %2381, -919384
  %2423 = add i64 %2381, 59
  %2424 = load i64, i64* %6, align 8
  %2425 = add i64 %2424, -8
  %2426 = inttoptr i64 %2425 to i64*
  store i64 %2423, i64* %2426, align 8
  store i64 %2425, i64* %6, align 8
  store i64 %2422, i64* %3, align 8
  %2427 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.36)
  %2428 = load i64, i64* %RBP.i, align 8
  %2429 = add i64 %2428, -200
  %2430 = load i32, i32* %EAX.i1475, align 4
  %2431 = load i64, i64* %3, align 8
  %2432 = add i64 %2431, 6
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2429 to i32*
  store i32 %2430, i32* %2433, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_4e1869

block_.L_4e1869:                                  ; preds = %block_.L_4e1828, %block_4e17f5
  %2434 = phi i64 [ %.pre135, %block_.L_4e1828 ], [ %2403, %block_4e17f5 ]
  %MEMORY.37 = phi %struct.Memory* [ %2427, %block_.L_4e1828 ], [ %2395, %block_4e17f5 ]
  %2435 = add i64 %2434, 5
  store i64 %2435, i64* %3, align 8
  br label %block_.L_4e186e

block_.L_4e186e:                                  ; preds = %block_.L_4e1869, %block_.L_4e17ca
  %2436 = phi i64 [ %2340, %block_.L_4e17ca ], [ %2435, %block_.L_4e1869 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.36, %block_.L_4e17ca ], [ %MEMORY.37, %block_.L_4e1869 ]
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %.pre166, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %2437 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2438 = add i32 %2437, 1
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RCX.i322, align 8
  %2440 = icmp eq i32 %2437, -1
  %2441 = icmp eq i32 %2438, 0
  %2442 = or i1 %2440, %2441
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %12, align 1
  %2444 = and i32 %2438, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %13, align 1
  %2449 = xor i32 %2438, %2437
  %2450 = lshr i32 %2449, 4
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %14, align 1
  %2453 = zext i1 %2441 to i8
  store i8 %2453, i8* %15, align 1
  %2454 = lshr i32 %2438, 31
  %2455 = trunc i32 %2454 to i8
  store i8 %2455, i8* %16, align 1
  %2456 = lshr i32 %2437, 31
  %2457 = xor i32 %2454, %2456
  %2458 = add nuw nsw i32 %2457, %2454
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %17, align 1
  store i32 %2438, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -4
  %2463 = add i64 %2436, 53
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  store i32 63, i32* %2464, align 4
  %2465 = load i64, i64* %3, align 8
  %2466 = add i64 %2465, 1993
  store i64 %2466, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e18a8:                                  ; preds = %block_4e17ac
  %2467 = add i64 %2328, 5
  store i64 %2467, i64* %3, align 8
  br label %block_.L_4e18ad

block_.L_4e18ad:                                  ; preds = %block_.L_4e1268, %block_4e12b7, %block_.L_4e18a8, %block_4e1290
  %2468 = phi i64 [ %2467, %block_.L_4e18a8 ], [ %1072, %block_4e12b7 ], [ %1015, %block_4e1290 ], [ %961, %block_.L_4e1268 ]
  %MEMORY.39 = phi %struct.Memory* [ %call2_4e17bb, %block_.L_4e18a8 ], [ %call2_4e12cf, %block_4e12b7 ], [ %MEMORY.20, %block_4e1290 ], [ %MEMORY.20, %block_.L_4e1268 ]
  %2469 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2469, i64* %.pre166, align 8
  %2470 = add i64 %2469, 1
  store i64 %2470, i64* %RCX.i322, align 8
  %2471 = icmp eq i64 %2469, -1
  %2472 = icmp eq i64 %2470, 0
  %2473 = or i1 %2471, %2472
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %12, align 1
  %2475 = trunc i64 %2470 to i32
  %2476 = and i32 %2475, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %13, align 1
  %2481 = xor i64 %2470, %2469
  %2482 = lshr i64 %2481, 4
  %2483 = trunc i64 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %14, align 1
  %2485 = zext i1 %2472 to i8
  store i8 %2485, i8* %15, align 1
  %2486 = lshr i64 %2470, 63
  %2487 = trunc i64 %2486 to i8
  store i8 %2487, i8* %16, align 1
  %2488 = lshr i64 %2469, 63
  %2489 = xor i64 %2486, %2488
  %2490 = add nuw nsw i64 %2489, %2486
  %2491 = icmp eq i64 %2490, 2
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %17, align 1
  store i64 %2470, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %DL.i816 = bitcast %union.anon* %30 to i8*
  %2493 = inttoptr i64 %2469 to i8*
  %2494 = add i64 %2468, 25
  store i64 %2494, i64* %3, align 8
  %2495 = load i8, i8* %2493, align 1
  store i8 %2495, i8* %DL.i816, align 1
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -89
  %2498 = add i64 %2468, 28
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i8*
  store i8 %2495, i8* %2499, align 1
  %RDI.i810 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -24
  %2502 = load i64, i64* %3, align 8
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2501 to i64*
  %2505 = load i64, i64* %2504, align 8
  store i64 %2505, i64* %RDI.i810, align 8
  %2506 = add i64 %2500, -89
  %2507 = add i64 %2502, 8
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i8*
  %2509 = load i8, i8* %2508, align 1
  %2510 = sext i8 %2509 to i64
  %2511 = and i64 %2510, 4294967295
  store i64 %2511, i64* %RSI.i241, align 8
  %2512 = add i64 %2502, -919705
  %2513 = add i64 %2502, 13
  %2514 = load i64, i64* %6, align 8
  %2515 = add i64 %2514, -8
  %2516 = inttoptr i64 %2515 to i64*
  store i64 %2513, i64* %2516, align 8
  store i64 %2515, i64* %6, align 8
  store i64 %2512, i64* %3, align 8
  %call2_4e18d1 = tail call %struct.Memory* @sub_401030.strchr_plt(%struct.State* nonnull %0, i64 %2512, %struct.Memory* %MEMORY.39)
  %2517 = load i64, i64* %RBP.i, align 8
  %2518 = add i64 %2517, -104
  %2519 = load i64, i64* %.pre166, align 8
  %2520 = load i64, i64* %3, align 8
  %2521 = add i64 %2520, 4
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2518 to i64*
  store i64 %2519, i64* %2522, align 8
  %2523 = load i64, i64* %3, align 8
  %2524 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2524, i64* %.pre166, align 8
  %2525 = add i64 %2523, 11
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i8*
  %2527 = load i8, i8* %2526, align 1
  %2528 = sext i8 %2527 to i64
  %2529 = and i64 %2528, 4294967295
  store i64 %2529, i64* %RSI.i241, align 8
  %2530 = sext i8 %2527 to i32
  store i8 0, i8* %12, align 1
  %2531 = and i32 %2530, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2536 = icmp eq i8 %2527, 0
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %15, align 1
  %2538 = lshr i32 %2530, 31
  %2539 = trunc i32 %2538 to i8
  store i8 %2539, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v233 = select i1 %2536, i64 20, i64 37
  %2540 = add i64 %2523, %.v233
  store i64 %2540, i64* %3, align 8
  br i1 %2536, label %block_4e18ee, label %block_.L_4e18ff

block_4e18ee:                                     ; preds = %block_.L_4e18ad
  %2541 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2542 = add i32 %2541, 1
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %.pre166, align 8
  %2544 = icmp eq i32 %2541, -1
  %2545 = icmp eq i32 %2542, 0
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %12, align 1
  %2548 = and i32 %2542, 255
  %2549 = tail call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  store i8 %2552, i8* %13, align 1
  %2553 = xor i32 %2542, %2541
  %2554 = lshr i32 %2553, 4
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  store i8 %2556, i8* %14, align 1
  %2557 = zext i1 %2545 to i8
  store i8 %2557, i8* %15, align 1
  %2558 = lshr i32 %2542, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %16, align 1
  %2560 = lshr i32 %2541, 31
  %2561 = xor i32 %2558, %2560
  %2562 = add nuw nsw i32 %2561, %2558
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %17, align 1
  %2565 = add i64 %2540, 17
  store i64 %2565, i64* %3, align 8
  store i32 %2542, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  br label %block_.L_4e18ff

block_.L_4e18ff:                                  ; preds = %block_.L_4e18ad, %block_4e18ee
  %2566 = phi i64 [ %2565, %block_4e18ee ], [ %2540, %block_.L_4e18ad ]
  %2567 = load i64, i64* %RBP.i, align 8
  %2568 = add i64 %2567, -104
  %2569 = add i64 %2566, 5
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i8 0, i8* %12, align 1
  %2572 = trunc i64 %2571 to i32
  %2573 = and i32 %2572, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2578 = icmp eq i64 %2571, 0
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %15, align 1
  %2580 = lshr i64 %2571, 63
  %2581 = trunc i64 %2580 to i8
  store i8 %2581, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v234 = select i1 %2578, i64 24, i64 11
  %2582 = add i64 %2566, %.v234
  store i64 %2582, i64* %3, align 8
  br i1 %2578, label %block_.L_4e1917, label %block_4e190a

block_4e190a:                                     ; preds = %block_.L_4e18ff
  %2583 = add i64 %2567, -89
  %2584 = add i64 %2582, 4
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i8*
  %2586 = load i8, i8* %2585, align 1
  %2587 = sext i8 %2586 to i64
  %2588 = and i64 %2587, 4294967295
  store i64 %2588, i64* %.pre166, align 8
  %EAX.i782 = bitcast %union.anon* %.pre165 to i32*
  %2589 = sext i8 %2586 to i32
  %2590 = add nsw i32 %2589, -58
  %2591 = icmp ult i8 %2586, 58
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %12, align 1
  %2593 = and i32 %2590, 255
  %2594 = tail call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  store i8 %2597, i8* %13, align 1
  %2598 = xor i32 %2589, 16
  %2599 = xor i32 %2598, %2590
  %2600 = lshr i32 %2599, 4
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  store i8 %2602, i8* %14, align 1
  %2603 = icmp eq i32 %2590, 0
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %15, align 1
  %2605 = lshr i32 %2590, 31
  %2606 = trunc i32 %2605 to i8
  store i8 %2606, i8* %16, align 1
  %2607 = lshr i32 %2589, 31
  %2608 = xor i32 %2605, %2607
  %2609 = add nuw nsw i32 %2608, %2607
  %2610 = icmp eq i32 %2609, 2
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %17, align 1
  %.v235 = select i1 %2603, i64 13, i64 159
  %2612 = add i64 %2582, %.v235
  store i64 %2612, i64* %3, align 8
  br i1 %2603, label %block_.L_4e1917, label %block_.L_4e19a9

block_.L_4e1917:                                  ; preds = %block_4e190a, %block_.L_4e18ff
  %2613 = phi i64 [ %2612, %block_4e190a ], [ %2582, %block_.L_4e18ff ]
  %2614 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2615 = and i32 %2614, 255
  %2616 = tail call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  store i8 %2619, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2620 = icmp eq i32 %2614, 0
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %15, align 1
  %2622 = lshr i32 %2614, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v260 = select i1 %2620, i64 123, i64 14
  %2624 = add i64 %2613, %.v260
  store i64 %2624, i64* %3, align 8
  br i1 %2620, label %block_.L_4e1992, label %block_4e1925

block_4e1925:                                     ; preds = %block_.L_4e1917
  %2625 = load i64, i64* bitcast (%G_0xafc488_type* @G_0xafc488 to i64*), align 8
  store i8 0, i8* %12, align 1
  %2626 = trunc i64 %2625 to i32
  %2627 = and i32 %2626, 255
  %2628 = tail call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  store i8 %2631, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2632 = icmp eq i64 %2625, 0
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %15, align 1
  %2634 = lshr i64 %2625, 63
  %2635 = trunc i64 %2634 to i8
  store i8 %2635, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v261 = select i1 %2632, i64 62, i64 15
  %2636 = add i64 %2624, %.v261
  %2637 = add i64 %2636, 10
  store i64 %2637, i64* %3, align 8
  br i1 %2632, label %block_.L_4e1963, label %block_4e1934

block_4e1934:                                     ; preds = %block_4e1925
  store i64 ptrtoint (%G__0x595259_type* @G__0x595259 to i64), i64* %RSI.i241, align 8
  %2638 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2638, i64* %RDI.i810, align 8
  %2639 = add i64 %2567, -16
  %2640 = add i64 %2636, 22
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i64*
  %2642 = load i64, i64* %2641, align 8
  store i64 %2642, i64* %.pre166, align 8
  %2643 = add i64 %2636, 25
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i64*
  %2645 = load i64, i64* %2644, align 8
  store i64 %2645, i64* %RDX.i313, align 8
  %2646 = add i64 %2567, -89
  %2647 = add i64 %2636, 29
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i8*
  %2649 = load i8, i8* %2648, align 1
  %2650 = sext i8 %2649 to i64
  %2651 = and i64 %2650, 4294967295
  store i64 %2651, i64* %RCX.i322, align 8
  %AL.i762 = bitcast %union.anon* %.pre165 to i8*
  store i8 0, i8* %AL.i762, align 1
  %2652 = add i64 %2636, -919652
  %2653 = add i64 %2636, 36
  %2654 = load i64, i64* %6, align 8
  %2655 = add i64 %2654, -8
  %2656 = inttoptr i64 %2655 to i64*
  store i64 %2653, i64* %2656, align 8
  store i64 %2655, i64* %6, align 8
  store i64 %2652, i64* %3, align 8
  %2657 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4e18d1)
  %EAX.i757 = bitcast %union.anon* %.pre165 to i32*
  %2658 = load i64, i64* %RBP.i, align 8
  %2659 = add i64 %2658, -204
  %2660 = load i32, i32* %EAX.i757, align 4
  %2661 = load i64, i64* %3, align 8
  %2662 = add i64 %2661, 6
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2659 to i32*
  store i32 %2660, i32* %2663, align 4
  %2664 = load i64, i64* %3, align 8
  %2665 = add i64 %2664, 47
  store i64 %2665, i64* %3, align 8
  br label %block_.L_4e198d

block_.L_4e1963:                                  ; preds = %block_4e1925
  store i64 ptrtoint (%G__0x595273_type* @G__0x595273 to i64), i64* %RSI.i241, align 8
  %2666 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2666, i64* %RDI.i810, align 8
  %2667 = add i64 %2567, -16
  %2668 = add i64 %2636, 22
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i64*
  %2670 = load i64, i64* %2669, align 8
  store i64 %2670, i64* %.pre166, align 8
  %2671 = add i64 %2636, 25
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i64*
  %2673 = load i64, i64* %2672, align 8
  store i64 %2673, i64* %RDX.i313, align 8
  %2674 = add i64 %2567, -89
  %2675 = add i64 %2636, 29
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i8*
  %2677 = load i8, i8* %2676, align 1
  %2678 = sext i8 %2677 to i64
  %2679 = and i64 %2678, 4294967295
  store i64 %2679, i64* %RCX.i322, align 8
  %AL.i741 = bitcast %union.anon* %.pre165 to i8*
  store i8 0, i8* %AL.i741, align 1
  %2680 = add i64 %2636, -919699
  %2681 = add i64 %2636, 36
  %2682 = load i64, i64* %6, align 8
  %2683 = add i64 %2682, -8
  %2684 = inttoptr i64 %2683 to i64*
  store i64 %2681, i64* %2684, align 8
  store i64 %2683, i64* %6, align 8
  store i64 %2680, i64* %3, align 8
  %2685 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4e18d1)
  %EAX.i736 = bitcast %union.anon* %.pre165 to i32*
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -208
  %2688 = load i32, i32* %EAX.i736, align 4
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, 6
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2687 to i32*
  store i32 %2688, i32* %2691, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_4e198d

block_.L_4e198d:                                  ; preds = %block_.L_4e1963, %block_4e1934
  %2692 = phi i64 [ %.pre155, %block_.L_4e1963 ], [ %2665, %block_4e1934 ]
  %MEMORY.42 = phi %struct.Memory* [ %2685, %block_.L_4e1963 ], [ %2657, %block_4e1934 ]
  %2693 = add i64 %2692, 5
  store i64 %2693, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1992

block_.L_4e1992:                                  ; preds = %block_.L_4e198d, %block_.L_4e1917
  %2694 = phi i64 [ %2624, %block_.L_4e1917 ], [ %2693, %block_.L_4e198d ]
  %2695 = phi i64 [ %2567, %block_.L_4e1917 ], [ %.pre156, %block_.L_4e198d ]
  %MEMORY.43 = phi %struct.Memory* [ %call2_4e18d1, %block_.L_4e1917 ], [ %MEMORY.42, %block_.L_4e198d ]
  %2696 = add i64 %2695, -89
  %2697 = add i64 %2694, 4
  store i64 %2697, i64* %3, align 8
  %2698 = inttoptr i64 %2696 to i8*
  %2699 = load i8, i8* %2698, align 1
  %2700 = sext i8 %2699 to i64
  %2701 = and i64 %2700, 4294967295
  store i64 %2701, i64* %.pre166, align 8
  %2702 = sext i8 %2699 to i32
  store i32 %2702, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %2703 = add i64 %2695, -4
  %2704 = add i64 %2694, 18
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i32*
  store i32 63, i32* %2705, align 4
  %2706 = load i64, i64* %3, align 8
  %2707 = add i64 %2706, 1736
  store i64 %2707, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e19a9:                                  ; preds = %block_4e190a
  %2708 = add i64 %2612, 4
  store i64 %2708, i64* %3, align 8
  %2709 = load i64, i64* %2570, align 8
  store i64 %2709, i64* %.pre166, align 8
  %2710 = add i64 %2612, 7
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i8*
  %2712 = load i8, i8* %2711, align 1
  %2713 = sext i8 %2712 to i64
  %2714 = and i64 %2713, 4294967295
  store i64 %2714, i64* %RCX.i322, align 8
  %ECX.i719 = bitcast %union.anon* %37 to i32*
  %2715 = sext i8 %2712 to i32
  %2716 = add nsw i32 %2715, -87
  %2717 = icmp ult i8 %2712, 87
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %12, align 1
  %2719 = and i32 %2716, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %13, align 1
  %2724 = xor i32 %2715, 16
  %2725 = xor i32 %2724, %2716
  %2726 = lshr i32 %2725, 4
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  store i8 %2728, i8* %14, align 1
  %2729 = icmp eq i32 %2716, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %15, align 1
  %2731 = lshr i32 %2716, 31
  %2732 = trunc i32 %2731 to i8
  store i8 %2732, i8* %16, align 1
  %2733 = lshr i32 %2715, 31
  %2734 = xor i32 %2731, %2733
  %2735 = add nuw nsw i32 %2734, %2733
  %2736 = icmp eq i32 %2735, 2
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %17, align 1
  %.v236 = select i1 %2729, i64 16, i64 1368
  %2738 = add i64 %2612, %.v236
  store i64 %2738, i64* %3, align 8
  br i1 %2729, label %block_4e19b9, label %block_.L_4e1f01

block_4e19b9:                                     ; preds = %block_.L_4e19a9
  %2739 = add i64 %2738, 4
  store i64 %2739, i64* %3, align 8
  %2740 = load i64, i64* %2570, align 8
  store i64 %2740, i64* %.pre166, align 8
  %2741 = add i64 %2740, 1
  %2742 = add i64 %2738, 8
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i8*
  %2744 = load i8, i8* %2743, align 1
  %2745 = sext i8 %2744 to i64
  %2746 = and i64 %2745, 4294967295
  store i64 %2746, i64* %RCX.i322, align 8
  %2747 = sext i8 %2744 to i32
  %2748 = add nsw i32 %2747, -59
  %2749 = icmp ult i8 %2744, 59
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %12, align 1
  %2751 = and i32 %2748, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %13, align 1
  %2756 = xor i32 %2747, 16
  %2757 = xor i32 %2756, %2748
  %2758 = lshr i32 %2757, 4
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  store i8 %2760, i8* %14, align 1
  %2761 = icmp eq i32 %2748, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %15, align 1
  %2763 = lshr i32 %2748, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %16, align 1
  %2765 = lshr i32 %2747, 31
  %2766 = xor i32 %2763, %2765
  %2767 = add nuw nsw i32 %2766, %2765
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %17, align 1
  %.v242 = select i1 %2761, i64 17, i64 1352
  %2770 = add i64 %2738, %.v242
  store i64 %2770, i64* %3, align 8
  br i1 %2761, label %block_4e19ca, label %block_.L_4e1f01

block_4e19ca:                                     ; preds = %block_4e19b9
  %2771 = add i64 %2567, -128
  %2772 = add i64 %2770, 8
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i64*
  store i64 0, i64* %2773, align 8
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -132
  %2776 = load i64, i64* %3, align 8
  %2777 = add i64 %2776, 10
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2775 to i32*
  store i32 0, i32* %2778, align 4
  %2779 = load i64, i64* %RBP.i, align 8
  %2780 = add i64 %2779, -136
  %2781 = load i64, i64* %3, align 8
  %2782 = add i64 %2781, 10
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2780 to i32*
  store i32 0, i32* %2783, align 4
  %2784 = load i64, i64* %RBP.i, align 8
  %2785 = add i64 %2784, -140
  %2786 = load i64, i64* %3, align 8
  %2787 = add i64 %2786, 10
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2785 to i32*
  store i32 0, i32* %2788, align 4
  %2789 = load i64, i64* %3, align 8
  %2790 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %2790, i64* %.pre166, align 8
  %2791 = add i64 %2789, 11
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i8*
  %2793 = load i8, i8* %2792, align 1
  %2794 = sext i8 %2793 to i64
  %2795 = and i64 %2794, 4294967295
  store i64 %2795, i64* %RCX.i322, align 8
  %2796 = sext i8 %2793 to i32
  store i8 0, i8* %12, align 1
  %2797 = and i32 %2796, 255
  %2798 = tail call i32 @llvm.ctpop.i32(i32 %2797)
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = xor i8 %2800, 1
  store i8 %2801, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2802 = icmp eq i8 %2793, 0
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %15, align 1
  %2804 = lshr i32 %2796, 31
  %2805 = trunc i32 %2804 to i8
  store i8 %2805, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v243 = select i1 %2802, i64 58, i64 20
  %2806 = add i64 %2789, %.v243
  store i64 %2806, i64* %3, align 8
  br i1 %2802, label %block_.L_4e1a2a, label %block_4e1a04

block_4e1a04:                                     ; preds = %block_4e19ca
  store i64 %2790, i64* %.pre166, align 8
  store i64 %2790, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %2807 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2808 = add i32 %2807, 1
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RCX.i322, align 8
  %2810 = icmp eq i32 %2807, -1
  %2811 = icmp eq i32 %2808, 0
  %2812 = or i1 %2810, %2811
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %12, align 1
  %2814 = and i32 %2808, 255
  %2815 = tail call i32 @llvm.ctpop.i32(i32 %2814)
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  store i8 %2818, i8* %13, align 1
  %2819 = xor i32 %2808, %2807
  %2820 = lshr i32 %2819, 4
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  store i8 %2822, i8* %14, align 1
  %2823 = zext i1 %2811 to i8
  store i8 %2823, i8* %15, align 1
  %2824 = lshr i32 %2808, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %16, align 1
  %2826 = lshr i32 %2807, 31
  %2827 = xor i32 %2824, %2826
  %2828 = add nuw nsw i32 %2827, %2824
  %2829 = icmp eq i32 %2828, 2
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %17, align 1
  %2831 = add i64 %2806, 33
  store i64 %2831, i64* %3, align 8
  store i32 %2808, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2832 = add i64 %2806, 205
  %.pre139 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1ad1

block_.L_4e1a2a:                                  ; preds = %block_4e19ca
  %2833 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2834 = zext i32 %2833 to i64
  store i64 %2834, i64* %.pre166, align 8
  %2835 = load i64, i64* %RBP.i, align 8
  %2836 = add i64 %2835, -8
  %2837 = add i64 %2806, 10
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = sub i32 %2833, %2839
  %2841 = icmp ult i32 %2833, %2839
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %12, align 1
  %2843 = and i32 %2840, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843)
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %13, align 1
  %2848 = xor i32 %2839, %2833
  %2849 = xor i32 %2848, %2840
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %14, align 1
  %2853 = icmp eq i32 %2840, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %15, align 1
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %16, align 1
  %2857 = lshr i32 %2833, 31
  %2858 = lshr i32 %2839, 31
  %2859 = xor i32 %2858, %2857
  %2860 = xor i32 %2855, %2857
  %2861 = add nuw nsw i32 %2860, %2859
  %2862 = icmp eq i32 %2861, 2
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %17, align 1
  %.v258 = select i1 %2853, i64 16, i64 124
  %2864 = add i64 %2806, %.v258
  store i64 %2864, i64* %3, align 8
  br i1 %2853, label %block_4e1a3a, label %block_.L_4e1aa6

block_4e1a3a:                                     ; preds = %block_.L_4e1a2a
  %2865 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2866 = and i32 %2865, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2871 = icmp eq i32 %2865, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %15, align 1
  %2873 = lshr i32 %2865, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v259 = select i1 %2871, i64 56, i64 14
  %2875 = add i64 %2864, %.v259
  store i64 %2875, i64* %3, align 8
  br i1 %2871, label %block_.L_4e1a72, label %block_4e1a48

block_4e1a48:                                     ; preds = %block_4e1a3a
  store i64 ptrtoint (%G__0x59528d_type* @G__0x59528d to i64), i64* %RSI.i241, align 8
  %2876 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2876, i64* %RDI.i810, align 8
  %2877 = add i64 %2835, -16
  %2878 = add i64 %2875, 22
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i64*
  %2880 = load i64, i64* %2879, align 8
  store i64 %2880, i64* %.pre166, align 8
  %2881 = add i64 %2875, 25
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i64*
  %2883 = load i64, i64* %2882, align 8
  store i64 %2883, i64* %RDX.i313, align 8
  %2884 = add i64 %2835, -89
  %2885 = add i64 %2875, 29
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i8*
  %2887 = load i8, i8* %2886, align 1
  %2888 = sext i8 %2887 to i64
  %2889 = and i64 %2888, 4294967295
  store i64 %2889, i64* %RCX.i322, align 8
  %AL.i659 = bitcast %union.anon* %.pre165 to i8*
  store i8 0, i8* %AL.i659, align 1
  %2890 = add i64 %2875, -919928
  %2891 = add i64 %2875, 36
  %2892 = load i64, i64* %6, align 8
  %2893 = add i64 %2892, -8
  %2894 = inttoptr i64 %2893 to i64*
  store i64 %2891, i64* %2894, align 8
  store i64 %2893, i64* %6, align 8
  store i64 %2890, i64* %3, align 8
  %2895 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4e18d1)
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -212
  %2898 = load i32, i32* %EAX.i782, align 4
  %2899 = load i64, i64* %3, align 8
  %2900 = add i64 %2899, 6
  store i64 %2900, i64* %3, align 8
  %2901 = inttoptr i64 %2897 to i32*
  store i32 %2898, i32* %2901, align 4
  %.pre136 = load i64, i64* %RBP.i, align 8
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_4e1a72

block_.L_4e1a72:                                  ; preds = %block_4e1a48, %block_4e1a3a
  %2902 = phi i64 [ %2875, %block_4e1a3a ], [ %.pre137, %block_4e1a48 ]
  %2903 = phi i64 [ %2835, %block_4e1a3a ], [ %.pre136, %block_4e1a48 ]
  %MEMORY.44 = phi %struct.Memory* [ %call2_4e18d1, %block_4e1a3a ], [ %2895, %block_4e1a48 ]
  %2904 = add i64 %2903, -89
  %2905 = add i64 %2902, 4
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i8*
  %2907 = load i8, i8* %2906, align 1
  %2908 = sext i8 %2907 to i64
  %2909 = and i64 %2908, 4294967295
  store i64 %2909, i64* %.pre166, align 8
  %2910 = sext i8 %2907 to i32
  store i32 %2910, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %2911 = add i64 %2903, -24
  %2912 = add i64 %2902, 15
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i64*
  %2914 = load i64, i64* %2913, align 8
  store i64 %2914, i64* %RCX.i322, align 8
  %2915 = add i64 %2902, 18
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i8*
  %2917 = load i8, i8* %2916, align 1
  %2918 = sext i8 %2917 to i64
  %2919 = and i64 %2918, 4294967295
  store i64 %2919, i64* %.pre166, align 8
  %2920 = sext i8 %2917 to i32
  %2921 = add nsw i32 %2920, -58
  %2922 = icmp ult i8 %2917, 58
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %12, align 1
  %2924 = and i32 %2921, 255
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %13, align 1
  %2929 = xor i32 %2920, 16
  %2930 = xor i32 %2929, %2921
  %2931 = lshr i32 %2930, 4
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %14, align 1
  %2934 = icmp eq i32 %2921, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %15, align 1
  %2936 = lshr i32 %2921, 31
  %2937 = trunc i32 %2936 to i8
  store i8 %2937, i8* %16, align 1
  %2938 = lshr i32 %2920, 31
  %2939 = xor i32 %2936, %2938
  %2940 = add nuw nsw i32 %2939, %2938
  %2941 = icmp eq i32 %2940, 2
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %17, align 1
  %.v206 = select i1 %2934, i64 27, i64 36
  %2943 = add i64 %2902, %.v206
  %2944 = add i64 %2943, 4
  store i64 %2944, i64* %3, align 8
  br i1 %2934, label %block_4e1a8d, label %block_.L_4e1a96

block_4e1a8d:                                     ; preds = %block_.L_4e1a72
  store i8 58, i8* %2906, align 1
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 9
  store i64 %2946, i64* %3, align 8
  br label %block_.L_4e1a9a

block_.L_4e1a96:                                  ; preds = %block_.L_4e1a72
  store i8 63, i8* %2906, align 1
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_4e1a9a

block_.L_4e1a9a:                                  ; preds = %block_.L_4e1a96, %block_4e1a8d
  %2947 = phi i64 [ %.pre138, %block_.L_4e1a96 ], [ %2946, %block_4e1a8d ]
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -89
  %2950 = add i64 %2947, 4
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i8*
  %2952 = load i8, i8* %2951, align 1
  %2953 = sext i8 %2952 to i64
  %2954 = and i64 %2953, 4294967295
  store i64 %2954, i64* %.pre166, align 8
  %2955 = add i64 %2948, -4
  %2956 = sext i8 %2952 to i32
  %2957 = add i64 %2947, 7
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2955 to i32*
  store i32 %2956, i32* %2958, align 4
  %2959 = load i64, i64* %3, align 8
  %2960 = add i64 %2959, 1483
  store i64 %2960, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1aa6:                                  ; preds = %block_.L_4e1a2a
  %2961 = add i64 %2835, -16
  %2962 = add i64 %2864, 4
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i64*
  %2964 = load i64, i64* %2963, align 8
  store i64 %2964, i64* %.pre166, align 8
  store i64 %2834, i64* %RCX.i322, align 8
  %2965 = add i32 %2833, 1
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RDX.i313, align 8
  %2967 = icmp eq i32 %2833, -1
  %2968 = icmp eq i32 %2965, 0
  %2969 = or i1 %2967, %2968
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %12, align 1
  %2971 = and i32 %2965, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %13, align 1
  %2976 = xor i32 %2965, %2833
  %2977 = lshr i32 %2976, 4
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  store i8 %2979, i8* %14, align 1
  %2980 = zext i1 %2968 to i8
  store i8 %2980, i8* %15, align 1
  %2981 = lshr i32 %2965, 31
  %2982 = trunc i32 %2981 to i8
  store i8 %2982, i8* %16, align 1
  %2983 = xor i32 %2981, %2857
  %2984 = add nuw nsw i32 %2983, %2981
  %2985 = icmp eq i32 %2984, 2
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %17, align 1
  store i32 %2965, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %2987 = sext i32 %2833 to i64
  store i64 %2987, i64* %RSI.i241, align 8
  %2988 = shl nsw i64 %2987, 3
  %2989 = add i64 %2964, %2988
  %2990 = add i64 %2864, 30
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i64*
  %2992 = load i64, i64* %2991, align 8
  store i64 %2992, i64* %.pre166, align 8
  store i64 %2992, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %2993 = add i64 %2864, 43
  store i64 %2993, i64* %3, align 8
  br label %block_.L_4e1ad1

block_.L_4e1ad1:                                  ; preds = %block_.L_4e1aa6, %block_4e1a04
  %2994 = phi i64 [ %.pre139, %block_4e1a04 ], [ %2835, %block_.L_4e1aa6 ]
  %2995 = phi i64 [ %2790, %block_4e1a04 ], [ %2992, %block_.L_4e1aa6 ]
  %storemerge92 = phi i64 [ %2832, %block_4e1a04 ], [ %2993, %block_.L_4e1aa6 ]
  store i64 %2995, i64* %.pre166, align 8
  %2996 = add i64 %2994, -112
  %2997 = add i64 %storemerge92, 12
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i64*
  store i64 %2995, i64* %2998, align 8
  %2999 = load i64, i64* %.pre166, align 8
  %3000 = load i64, i64* %3, align 8
  %3001 = add i64 %3000, 8
  store i64 %3001, i64* %3, align 8
  store i64 %2999, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %AL.i594 = bitcast %union.anon* %.pre165 to i8*
  %CL.i595 = bitcast %union.anon* %37 to i8*
  br label %block_.L_4e1ae5

block_.L_4e1ae5:                                  ; preds = %block_.L_4e1b25, %block_.L_4e1ad1
  %3002 = phi i64 [ %3123, %block_.L_4e1b25 ], [ %3001, %block_.L_4e1ad1 ]
  store i64 0, i64* %.pre166, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i595, align 1
  %3003 = load i64, i64* %RBP.i, align 8
  %3004 = add i64 %3003, -112
  %3005 = add i64 %3002, 8
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %RDX.i313, align 8
  %3008 = add i64 %3002, 11
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i8*
  %3010 = load i8, i8* %3009, align 1
  %3011 = sext i8 %3010 to i64
  %3012 = and i64 %3011, 4294967295
  store i64 %3012, i64* %.pre166, align 8
  %3013 = sext i8 %3010 to i32
  store i8 0, i8* %12, align 1
  %3014 = and i32 %3013, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3019 = icmp eq i8 %3010, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %15, align 1
  %3021 = lshr i32 %3013, 31
  %3022 = trunc i32 %3021 to i8
  store i8 %3022, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3023 = add i64 %3003, -213
  %3024 = add i64 %3002, 20
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i8*
  store i8 0, i8* %3025, align 1
  %3026 = load i64, i64* %3, align 8
  %3027 = load i8, i8* %15, align 1
  %3028 = icmp ne i8 %3027, 0
  %.v306 = select i1 %3028, i64 25, i64 6
  %3029 = add i64 %3026, %.v306
  store i64 %3029, i64* %3, align 8
  %cmpBr_4e1af9 = icmp eq i8 %3027, 1
  br i1 %cmpBr_4e1af9, label %block_.L_4e1b12, label %block_4e1aff

block_4e1aff:                                     ; preds = %block_.L_4e1ae5
  %3030 = load i64, i64* %RBP.i, align 8
  %3031 = add i64 %3030, -112
  %3032 = add i64 %3029, 4
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %.pre166, align 8
  %3035 = add i64 %3029, 7
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i8*
  %3037 = load i8, i8* %3036, align 1
  %3038 = sext i8 %3037 to i64
  %3039 = and i64 %3038, 4294967295
  store i64 %3039, i64* %RCX.i322, align 8
  %3040 = sext i8 %3037 to i32
  %3041 = add nsw i32 %3040, -61
  %3042 = icmp ult i8 %3037, 61
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %12, align 1
  %3044 = and i32 %3041, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %13, align 1
  %3049 = xor i32 %3040, 16
  %3050 = xor i32 %3049, %3041
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %14, align 1
  %3054 = icmp eq i32 %3041, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %15, align 1
  %3056 = lshr i32 %3041, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %16, align 1
  %3058 = lshr i32 %3040, 31
  %3059 = xor i32 %3056, %3058
  %3060 = add nuw nsw i32 %3059, %3058
  %3061 = icmp eq i32 %3060, 2
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %17, align 1
  %3063 = xor i1 %3054, true
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %DL.i816, align 1
  %3065 = add i64 %3030, -213
  %3066 = add i64 %3029, 19
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i8*
  store i8 %3064, i8* %3067, align 1
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_4e1b12

block_.L_4e1b12:                                  ; preds = %block_4e1aff, %block_.L_4e1ae5
  %3068 = phi i64 [ %.pre141, %block_4e1aff ], [ %3029, %block_.L_4e1ae5 ]
  %3069 = load i64, i64* %RBP.i, align 8
  %3070 = add i64 %3069, -213
  %3071 = add i64 %3068, 6
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i8*
  %3073 = load i8, i8* %3072, align 1
  store i8 %3073, i8* %AL.i594, align 1
  %3074 = and i8 %3073, 1
  store i8 0, i8* %12, align 1
  %3075 = zext i8 %3074 to i32
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = xor i8 %3077, 1
  store i8 %3078, i8* %13, align 1
  %3079 = xor i8 %3074, 1
  store i8 %3079, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3080 = icmp eq i8 %3079, 0
  %.v203 = select i1 %3080, i64 19, i64 14
  %3081 = add i64 %3068, %.v203
  store i64 %3081, i64* %3, align 8
  br i1 %3080, label %block_.L_4e1b25, label %block_4e1b20

block_4e1b20:                                     ; preds = %block_.L_4e1b12
  %3082 = add i64 %3069, -32
  %3083 = add i64 %3081, 31
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i64*
  %3085 = load i64, i64* %3084, align 8
  store i64 %3085, i64* %.pre166, align 8
  %3086 = add i64 %3069, -120
  %3087 = add i64 %3081, 35
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  store i64 %3085, i64* %3088, align 8
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -144
  %3091 = load i64, i64* %3, align 8
  %3092 = add i64 %3091, 10
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3090 to i32*
  store i32 0, i32* %3093, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_4e1b4d

block_.L_4e1b25:                                  ; preds = %block_.L_4e1b12
  %3094 = add i64 %3069, -112
  %3095 = add i64 %3081, 9
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i64*
  %3097 = load i64, i64* %3096, align 8
  %3098 = add i64 %3097, 1
  store i64 %3098, i64* %.pre166, align 8
  %3099 = icmp eq i64 %3097, -1
  %3100 = icmp eq i64 %3098, 0
  %3101 = or i1 %3099, %3100
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %12, align 1
  %3103 = trunc i64 %3098 to i32
  %3104 = and i32 %3103, 255
  %3105 = tail call i32 @llvm.ctpop.i32(i32 %3104)
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  store i8 %3108, i8* %13, align 1
  %3109 = xor i64 %3098, %3097
  %3110 = lshr i64 %3109, 4
  %3111 = trunc i64 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %14, align 1
  %3113 = zext i1 %3100 to i8
  store i8 %3113, i8* %15, align 1
  %3114 = lshr i64 %3098, 63
  %3115 = trunc i64 %3114 to i8
  store i8 %3115, i8* %16, align 1
  %3116 = lshr i64 %3097, 63
  %3117 = xor i64 %3114, %3116
  %3118 = add nuw nsw i64 %3117, %3114
  %3119 = icmp eq i64 %3118, 2
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %17, align 1
  %3121 = add i64 %3081, 17
  store i64 %3121, i64* %3, align 8
  store i64 %3098, i64* %3096, align 8
  %3122 = load i64, i64* %3, align 8
  %3123 = add i64 %3122, -81
  store i64 %3123, i64* %3, align 8
  br label %block_.L_4e1ae5

block_.L_4e1b4d:                                  ; preds = %block_.L_4e1c1d, %block_4e1b20
  %3124 = phi i64 [ %.pre142, %block_4e1b20 ], [ %3400, %block_.L_4e1c1d ]
  %MEMORY.49 = phi %struct.Memory* [ %call2_4e18d1, %block_4e1b20 ], [ %MEMORY.51, %block_.L_4e1c1d ]
  %3125 = load i64, i64* %RBP.i, align 8
  %3126 = add i64 %3125, -120
  %3127 = add i64 %3124, 4
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i64*
  %3129 = load i64, i64* %3128, align 8
  store i64 %3129, i64* %.pre166, align 8
  %3130 = add i64 %3124, 8
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i64*
  %3132 = load i64, i64* %3131, align 8
  store i8 0, i8* %12, align 1
  %3133 = trunc i64 %3132 to i32
  %3134 = and i32 %3133, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3139 = icmp eq i64 %3132, 0
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %15, align 1
  %3141 = lshr i64 %3132, 63
  %3142 = trunc i64 %3141 to i8
  store i8 %3142, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v244 = select i1 %3139, i64 245, i64 14
  %3143 = add i64 %3124, %.v244
  store i64 %3143, i64* %3, align 8
  br i1 %3139, label %block_.L_4e1c42.loopexit, label %block_4e1b5b

block_4e1b5b:                                     ; preds = %block_.L_4e1b4d
  %3144 = add i64 %3143, 4
  store i64 %3144, i64* %3, align 8
  %3145 = load i64, i64* %3128, align 8
  store i64 %3145, i64* %.pre166, align 8
  %3146 = add i64 %3143, 7
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i64*
  %3148 = load i64, i64* %3147, align 8
  store i64 %3148, i64* %RDI.i810, align 8
  %3149 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3149, i64* %RSI.i241, align 8
  %3150 = add i64 %3125, -112
  %3151 = add i64 %3143, 19
  store i64 %3151, i64* %3, align 8
  %3152 = inttoptr i64 %3150 to i64*
  %3153 = load i64, i64* %3152, align 8
  store i64 %3149, i64* %RCX.i322, align 8
  %3154 = sub i64 %3153, %3149
  store i64 %3154, i64* %.pre166, align 8
  %3155 = icmp ult i64 %3153, %3149
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %12, align 1
  %3157 = trunc i64 %3154 to i32
  %3158 = and i32 %3157, 255
  %3159 = tail call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  store i8 %3162, i8* %13, align 1
  %3163 = xor i64 %3149, %3153
  %3164 = xor i64 %3163, %3154
  %3165 = lshr i64 %3164, 4
  %3166 = trunc i64 %3165 to i8
  %3167 = and i8 %3166, 1
  store i8 %3167, i8* %14, align 1
  %3168 = icmp eq i64 %3154, 0
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %15, align 1
  %3170 = lshr i64 %3154, 63
  %3171 = trunc i64 %3170 to i8
  store i8 %3171, i8* %16, align 1
  %3172 = lshr i64 %3153, 63
  %3173 = lshr i64 %3149, 63
  %3174 = xor i64 %3173, %3172
  %3175 = xor i64 %3170, %3172
  %3176 = add nuw nsw i64 %3175, %3174
  %3177 = icmp eq i64 %3176, 2
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %17, align 1
  store i64 %3154, i64* %RDX.i313, align 8
  %3179 = add i64 %3143, -920491
  %3180 = add i64 %3143, 38
  %3181 = load i64, i64* %6, align 8
  %3182 = add i64 %3181, -8
  %3183 = inttoptr i64 %3182 to i64*
  store i64 %3180, i64* %3183, align 8
  store i64 %3182, i64* %6, align 8
  store i64 %3179, i64* %3, align 8
  %3184 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.49)
  %3185 = load i32, i32* %EAX.i782, align 4
  %3186 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3187 = and i32 %3185, 255
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3192 = icmp eq i32 %3185, 0
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %15, align 1
  %3194 = lshr i32 %3185, 31
  %3195 = trunc i32 %3194 to i8
  store i8 %3195, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v245 = select i1 %3192, i64 9, i64 156
  %3196 = add i64 %3186, %.v245
  store i64 %3196, i64* %3, align 8
  br i1 %3192, label %block_4e1b8a, label %block_.L_4e1c1d

block_4e1b8a:                                     ; preds = %block_4e1b5b
  %3197 = load i64, i64* %RBP.i, align 8
  %3198 = add i64 %3197, -112
  %3199 = add i64 %3196, 4
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3198 to i64*
  %3201 = load i64, i64* %3200, align 8
  %3202 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3202, i64* %RCX.i322, align 8
  %3203 = sub i64 %3201, %3202
  %3204 = icmp ult i64 %3201, %3202
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %12, align 1
  %3206 = trunc i64 %3203 to i32
  %3207 = and i32 %3206, 255
  %3208 = tail call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  store i8 %3211, i8* %13, align 1
  %3212 = xor i64 %3202, %3201
  %3213 = xor i64 %3212, %3203
  %3214 = lshr i64 %3213, 4
  %3215 = trunc i64 %3214 to i8
  %3216 = and i8 %3215, 1
  store i8 %3216, i8* %14, align 1
  %3217 = icmp eq i64 %3203, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %15, align 1
  %3219 = lshr i64 %3203, 63
  %3220 = trunc i64 %3219 to i8
  store i8 %3220, i8* %16, align 1
  %3221 = lshr i64 %3201, 63
  %3222 = lshr i64 %3202, 63
  %3223 = xor i64 %3222, %3221
  %3224 = xor i64 %3219, %3221
  %3225 = add nuw nsw i64 %3224, %3223
  %3226 = icmp eq i64 %3225, 2
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %17, align 1
  %3228 = and i64 %3203, 4294967295
  store i64 %3228, i64* %RDX.i313, align 8
  store i64 %3228, i64* %.pre166, align 8
  %3229 = add i64 %3197, -120
  %3230 = add i64 %3196, 25
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i64*
  %3232 = load i64, i64* %3231, align 8
  store i64 %3232, i64* %RCX.i322, align 8
  %3233 = add i64 %3196, 28
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to i64*
  %3235 = load i64, i64* %3234, align 8
  store i64 %3235, i64* %RDI.i810, align 8
  %3236 = add i64 %3197, -224
  %3237 = add i64 %3196, 35
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3236 to i64*
  store i64 %3228, i64* %3238, align 8
  %3239 = load i64, i64* %3, align 8
  %3240 = add i64 %3239, -920477
  %3241 = add i64 %3239, 5
  %3242 = load i64, i64* %6, align 8
  %3243 = add i64 %3242, -8
  %3244 = inttoptr i64 %3243 to i64*
  store i64 %3241, i64* %3244, align 8
  store i64 %3243, i64* %6, align 8
  store i64 %3240, i64* %3, align 8
  %3245 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %3184)
  %3246 = load i64, i64* %RBP.i, align 8
  %3247 = add i64 %3246, -224
  %3248 = load i64, i64* %3, align 8
  %3249 = add i64 %3248, 7
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3247 to i64*
  %3251 = load i64, i64* %3250, align 8
  store i64 %3251, i64* %RCX.i322, align 8
  %3252 = load i64, i64* %.pre166, align 8
  %3253 = sub i64 %3251, %3252
  %3254 = icmp ult i64 %3251, %3252
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %12, align 1
  %3256 = trunc i64 %3253 to i32
  %3257 = and i32 %3256, 255
  %3258 = tail call i32 @llvm.ctpop.i32(i32 %3257)
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = xor i8 %3260, 1
  store i8 %3261, i8* %13, align 1
  %3262 = xor i64 %3252, %3251
  %3263 = xor i64 %3262, %3253
  %3264 = lshr i64 %3263, 4
  %3265 = trunc i64 %3264 to i8
  %3266 = and i8 %3265, 1
  store i8 %3266, i8* %14, align 1
  %3267 = icmp eq i64 %3253, 0
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %15, align 1
  %3269 = lshr i64 %3253, 63
  %3270 = trunc i64 %3269 to i8
  store i8 %3270, i8* %16, align 1
  %3271 = lshr i64 %3251, 63
  %3272 = lshr i64 %3252, 63
  %3273 = xor i64 %3272, %3271
  %3274 = xor i64 %3269, %3271
  %3275 = add nuw nsw i64 %3274, %3273
  %3276 = icmp eq i64 %3275, 2
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %17, align 1
  %.v246 = select i1 %3267, i64 16, i64 51
  %3278 = add i64 %3248, %.v246
  store i64 %3278, i64* %3, align 8
  br i1 %3267, label %block_4e1bc2, label %block_.L_4e1be5

block_4e1bc2:                                     ; preds = %block_4e1b8a
  %3279 = add i64 %3246, -120
  %3280 = add i64 %3278, 4
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i64*
  %3282 = load i64, i64* %3281, align 8
  store i64 %3282, i64* %.pre166, align 8
  %3283 = add i64 %3246, -128
  %3284 = add i64 %3278, 8
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i64*
  store i64 %3282, i64* %3285, align 8
  %3286 = load i64, i64* %RBP.i, align 8
  %3287 = add i64 %3286, -144
  %3288 = load i64, i64* %3, align 8
  %3289 = add i64 %3288, 6
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3287 to i32*
  %3291 = load i32, i32* %3290, align 4
  %3292 = zext i32 %3291 to i64
  store i64 %3292, i64* %RCX.i322, align 8
  %3293 = add i64 %3286, -140
  %3294 = add i64 %3288, 12
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  store i32 %3291, i32* %3295, align 4
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -132
  %3298 = load i64, i64* %3, align 8
  %3299 = add i64 %3298, 10
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3297 to i32*
  store i32 1, i32* %3300, align 4
  %3301 = load i64, i64* %3, align 8
  %3302 = add i64 %3301, 98
  store i64 %3302, i64* %3, align 8
  %.pre144 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1c42

block_.L_4e1be5:                                  ; preds = %block_4e1b8a
  %3303 = add i64 %3246, -128
  %3304 = add i64 %3278, 5
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i64*
  %3306 = load i64, i64* %3305, align 8
  store i8 0, i8* %12, align 1
  %3307 = trunc i64 %3306 to i32
  %3308 = and i32 %3307, 255
  %3309 = tail call i32 @llvm.ctpop.i32(i32 %3308)
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  store i8 %3312, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3313 = icmp eq i64 %3306, 0
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %15, align 1
  %3315 = lshr i64 %3306, 63
  %3316 = trunc i64 %3315 to i8
  store i8 %3316, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v247 = select i1 %3313, i64 11, i64 36
  %3317 = add i64 %3278, %.v247
  store i64 %3317, i64* %3, align 8
  br i1 %3313, label %block_4e1bf0, label %block_.L_4e1c09

block_4e1bf0:                                     ; preds = %block_.L_4e1be5
  %3318 = add i64 %3246, -120
  %3319 = add i64 %3317, 4
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i64*
  %3321 = load i64, i64* %3320, align 8
  store i64 %3321, i64* %.pre166, align 8
  %3322 = add i64 %3317, 8
  store i64 %3322, i64* %3, align 8
  store i64 %3321, i64* %3305, align 8
  %3323 = load i64, i64* %RBP.i, align 8
  %3324 = add i64 %3323, -144
  %3325 = load i64, i64* %3, align 8
  %3326 = add i64 %3325, 6
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3324 to i32*
  %3328 = load i32, i32* %3327, align 4
  %3329 = zext i32 %3328 to i64
  store i64 %3329, i64* %RCX.i322, align 8
  %3330 = add i64 %3323, -140
  %3331 = add i64 %3325, 12
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i32*
  store i32 %3328, i32* %3332, align 4
  %3333 = load i64, i64* %3, align 8
  %3334 = add i64 %3333, 15
  store i64 %3334, i64* %3, align 8
  br label %block_.L_4e1c13

block_.L_4e1c09:                                  ; preds = %block_.L_4e1be5
  %3335 = add i64 %3246, -136
  %3336 = add i64 %3317, 10
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  store i32 1, i32* %3337, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_4e1c13

block_.L_4e1c13:                                  ; preds = %block_.L_4e1c09, %block_4e1bf0
  %3338 = phi i64 [ %.pre143, %block_.L_4e1c09 ], [ %3334, %block_4e1bf0 ]
  %3339 = add i64 %3338, 10
  store i64 %3339, i64* %3, align 8
  br label %block_.L_4e1c1d

block_.L_4e1c1d:                                  ; preds = %block_4e1b5b, %block_.L_4e1c13
  %3340 = phi i64 [ %3196, %block_4e1b5b ], [ %3339, %block_.L_4e1c13 ]
  %MEMORY.51 = phi %struct.Memory* [ %3184, %block_4e1b5b ], [ %3245, %block_.L_4e1c13 ]
  %3341 = load i64, i64* %RBP.i, align 8
  %3342 = add i64 %3341, -120
  %3343 = add i64 %3340, 9
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i64*
  %3345 = load i64, i64* %3344, align 8
  %3346 = add i64 %3345, 32
  store i64 %3346, i64* %.pre166, align 8
  %3347 = icmp ugt i64 %3345, -33
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %12, align 1
  %3349 = trunc i64 %3346 to i32
  %3350 = and i32 %3349, 255
  %3351 = tail call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  store i8 %3354, i8* %13, align 1
  %3355 = xor i64 %3346, %3345
  %3356 = lshr i64 %3355, 4
  %3357 = trunc i64 %3356 to i8
  %3358 = and i8 %3357, 1
  store i8 %3358, i8* %14, align 1
  %3359 = icmp eq i64 %3346, 0
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %15, align 1
  %3361 = lshr i64 %3346, 63
  %3362 = trunc i64 %3361 to i8
  store i8 %3362, i8* %16, align 1
  %3363 = lshr i64 %3345, 63
  %3364 = xor i64 %3361, %3363
  %3365 = add nuw nsw i64 %3364, %3361
  %3366 = icmp eq i64 %3365, 2
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %17, align 1
  %3368 = add i64 %3340, 17
  store i64 %3368, i64* %3, align 8
  store i64 %3346, i64* %3344, align 8
  %3369 = load i64, i64* %RBP.i, align 8
  %3370 = add i64 %3369, -144
  %3371 = load i64, i64* %3, align 8
  %3372 = add i64 %3371, 6
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3370 to i32*
  %3374 = load i32, i32* %3373, align 4
  %3375 = add i32 %3374, 1
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i322, align 8
  %3377 = icmp eq i32 %3374, -1
  %3378 = icmp eq i32 %3375, 0
  %3379 = or i1 %3377, %3378
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %12, align 1
  %3381 = and i32 %3375, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %13, align 1
  %3386 = xor i32 %3375, %3374
  %3387 = lshr i32 %3386, 4
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  store i8 %3389, i8* %14, align 1
  %3390 = zext i1 %3378 to i8
  store i8 %3390, i8* %15, align 1
  %3391 = lshr i32 %3375, 31
  %3392 = trunc i32 %3391 to i8
  store i8 %3392, i8* %16, align 1
  %3393 = lshr i32 %3374, 31
  %3394 = xor i32 %3391, %3393
  %3395 = add nuw nsw i32 %3394, %3391
  %3396 = icmp eq i32 %3395, 2
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %17, align 1
  %3398 = add i64 %3371, 15
  store i64 %3398, i64* %3, align 8
  store i32 %3375, i32* %3373, align 4
  %3399 = load i64, i64* %3, align 8
  %3400 = add i64 %3399, -240
  store i64 %3400, i64* %3, align 8
  br label %block_.L_4e1b4d

block_.L_4e1c42.loopexit:                         ; preds = %block_.L_4e1b4d
  br label %block_.L_4e1c42

block_.L_4e1c42:                                  ; preds = %block_.L_4e1c42.loopexit, %block_4e1bc2
  %3401 = phi i64 [ %3302, %block_4e1bc2 ], [ %3143, %block_.L_4e1c42.loopexit ]
  %3402 = phi i64 [ %.pre144, %block_4e1bc2 ], [ %3125, %block_.L_4e1c42.loopexit ]
  %MEMORY.52 = phi %struct.Memory* [ %3245, %block_4e1bc2 ], [ %MEMORY.49, %block_.L_4e1c42.loopexit ]
  %3403 = add i64 %3402, -136
  %3404 = add i64 %3401, 7
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  store i8 0, i8* %12, align 1
  %3407 = and i32 %3406, 255
  %3408 = tail call i32 @llvm.ctpop.i32(i32 %3407)
  %3409 = trunc i32 %3408 to i8
  %3410 = and i8 %3409, 1
  %3411 = xor i8 %3410, 1
  store i8 %3411, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3412 = icmp eq i32 %3406, 0
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %15, align 1
  %3414 = lshr i32 %3406, 31
  %3415 = trunc i32 %3414 to i8
  store i8 %3415, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v248 = select i1 %3412, i64 152, i64 13
  %3416 = add i64 %3401, %.v248
  store i64 %3416, i64* %3, align 8
  br i1 %3412, label %block_.L_4e1cda, label %block_4e1c4f

block_4e1c4f:                                     ; preds = %block_.L_4e1c42
  %3417 = add i64 %3402, -132
  %3418 = add i64 %3416, 7
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i32*
  %3420 = load i32, i32* %3419, align 4
  store i8 0, i8* %12, align 1
  %3421 = and i32 %3420, 255
  %3422 = tail call i32 @llvm.ctpop.i32(i32 %3421)
  %3423 = trunc i32 %3422 to i8
  %3424 = and i8 %3423, 1
  %3425 = xor i8 %3424, 1
  store i8 %3425, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3426 = icmp eq i32 %3420, 0
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %15, align 1
  %3428 = lshr i32 %3420, 31
  %3429 = trunc i32 %3428 to i8
  store i8 %3429, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v249 = select i1 %3426, i64 13, i64 139
  %3430 = add i64 %3416, %.v249
  store i64 %3430, i64* %3, align 8
  br i1 %3426, label %block_4e1c5c, label %block_.L_4e1cda

block_4e1c5c:                                     ; preds = %block_4e1c4f
  %3431 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3432 = and i32 %3431, 255
  %3433 = tail call i32 @llvm.ctpop.i32(i32 %3432)
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = xor i8 %3435, 1
  store i8 %3436, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3437 = icmp eq i32 %3431, 0
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %15, align 1
  %3439 = lshr i32 %3431, 31
  %3440 = trunc i32 %3439 to i8
  store i8 %3440, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v257 = select i1 %3437, i64 68, i64 14
  %3441 = add i64 %3430, %.v257
  store i64 %3441, i64* %3, align 8
  br i1 %3437, label %block_.L_4e1ca0, label %block_4e1c6a

block_4e1c6a:                                     ; preds = %block_4e1c5c
  store i64 ptrtoint (%G__0x5952b4_type* @G__0x5952b4 to i64), i64* %RSI.i241, align 8
  %3442 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3442, i64* %RDI.i810, align 8
  %3443 = add i64 %3402, -16
  %3444 = add i64 %3441, 22
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i64*
  %3446 = load i64, i64* %3445, align 8
  store i64 %3446, i64* %.pre166, align 8
  %3447 = add i64 %3441, 25
  store i64 %3447, i64* %3, align 8
  %3448 = inttoptr i64 %3446 to i64*
  %3449 = load i64, i64* %3448, align 8
  store i64 %3449, i64* %RDX.i313, align 8
  %3450 = add i64 %3441, 29
  store i64 %3450, i64* %3, align 8
  %3451 = load i64, i64* %3445, align 8
  store i64 %3451, i64* %.pre166, align 8
  %3452 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %3453 = sext i32 %3452 to i64
  store i64 %3453, i64* %RCX.i322, align 8
  %3454 = shl nsw i64 %3453, 3
  %3455 = add i64 %3454, %3451
  %3456 = add i64 %3441, 41
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i64*
  %3458 = load i64, i64* %3457, align 8
  store i64 %3458, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i594, align 1
  %3459 = add i64 %3441, -920474
  %3460 = add i64 %3441, 48
  %3461 = load i64, i64* %6, align 8
  %3462 = add i64 %3461, -8
  %3463 = inttoptr i64 %3462 to i64*
  store i64 %3460, i64* %3463, align 8
  store i64 %3462, i64* %6, align 8
  store i64 %3459, i64* %3, align 8
  %3464 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.52)
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -228
  %3467 = load i32, i32* %EAX.i782, align 4
  %3468 = load i64, i64* %3, align 8
  %3469 = add i64 %3468, 6
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3466 to i32*
  store i32 %3467, i32* %3470, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_4e1ca0

block_.L_4e1ca0:                                  ; preds = %block_4e1c6a, %block_4e1c5c
  %3471 = phi i64 [ %3441, %block_4e1c5c ], [ %.pre145, %block_4e1c6a ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.52, %block_4e1c5c ], [ %3464, %block_4e1c6a ]
  %3472 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3472, i64* %RDI.i810, align 8
  %3473 = add i64 %3471, -920720
  %3474 = add i64 %3471, 13
  %3475 = load i64, i64* %6, align 8
  %3476 = add i64 %3475, -8
  %3477 = inttoptr i64 %3476 to i64*
  store i64 %3474, i64* %3477, align 8
  store i64 %3476, i64* %6, align 8
  store i64 %3473, i64* %3, align 8
  %3478 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.53)
  %3479 = load i64, i64* %.pre166, align 8
  %3480 = load i64, i64* %3, align 8
  %3481 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3482 = add i64 %3481, %3479
  store i64 %3482, i64* %.pre166, align 8
  store i64 %3482, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3483 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %3484 = add i32 %3483, 1
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RCX.i322, align 8
  %3486 = icmp eq i32 %3483, -1
  %3487 = icmp eq i32 %3484, 0
  %3488 = or i1 %3486, %3487
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %12, align 1
  %3490 = and i32 %3484, 255
  %3491 = tail call i32 @llvm.ctpop.i32(i32 %3490)
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = xor i8 %3493, 1
  store i8 %3494, i8* %13, align 1
  %3495 = xor i32 %3484, %3483
  %3496 = lshr i32 %3495, 4
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  store i8 %3498, i8* %14, align 1
  %3499 = zext i1 %3487 to i8
  store i8 %3499, i8* %15, align 1
  %3500 = lshr i32 %3484, 31
  %3501 = trunc i32 %3500 to i8
  store i8 %3501, i8* %16, align 1
  %3502 = lshr i32 %3483, 31
  %3503 = xor i32 %3500, %3502
  %3504 = add nuw nsw i32 %3503, %3500
  %3505 = icmp eq i32 %3504, 2
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %17, align 1
  store i32 %3484, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %3507 = load i64, i64* %RBP.i, align 8
  %3508 = add i64 %3507, -4
  %3509 = add i64 %3480, 40
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i32*
  store i32 63, i32* %3510, align 4
  %3511 = load i64, i64* %3, align 8
  %3512 = add i64 %3511, 919
  store i64 %3512, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1cda:                                  ; preds = %block_4e1c4f, %block_.L_4e1c42
  %3513 = phi i64 [ %3430, %block_4e1c4f ], [ %3416, %block_.L_4e1c42 ]
  %3514 = add i64 %3402, -128
  %3515 = add i64 %3513, 5
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i64*
  %3517 = load i64, i64* %3516, align 8
  store i8 0, i8* %12, align 1
  %3518 = trunc i64 %3517 to i32
  %3519 = and i32 %3518, 255
  %3520 = tail call i32 @llvm.ctpop.i32(i32 %3519)
  %3521 = trunc i32 %3520 to i8
  %3522 = and i8 %3521, 1
  %3523 = xor i8 %3522, 1
  store i8 %3523, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3524 = icmp eq i64 %3517, 0
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %15, align 1
  %3526 = lshr i64 %3517, 63
  %3527 = trunc i64 %3526 to i8
  store i8 %3527, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v250 = select i1 %3524, i64 527, i64 11
  %3528 = add i64 %3513, %.v250
  store i64 %3528, i64* %3, align 8
  br i1 %3524, label %block_.L_4e1ee9, label %block_4e1ce5

block_4e1ce5:                                     ; preds = %block_.L_4e1cda
  %3529 = add i64 %3402, -140
  %3530 = add i64 %3528, 6
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  %3532 = load i32, i32* %3531, align 4
  %3533 = zext i32 %3532 to i64
  store i64 %3533, i64* %.pre166, align 8
  %3534 = add i64 %3402, -144
  %3535 = add i64 %3528, 12
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i32*
  store i32 %3532, i32* %3536, align 4
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -112
  %3539 = load i64, i64* %3, align 8
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3538 to i64*
  %3542 = load i64, i64* %3541, align 8
  store i64 %3542, i64* %RCX.i322, align 8
  %3543 = add i64 %3539, 7
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i8*
  %3545 = load i8, i8* %3544, align 1
  store i8 0, i8* %12, align 1
  %3546 = zext i8 %3545 to i32
  %3547 = tail call i32 @llvm.ctpop.i32(i32 %3546)
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  %3550 = xor i8 %3549, 1
  store i8 %3550, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3551 = icmp eq i8 %3545, 0
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %15, align 1
  %3553 = lshr i8 %3545, 7
  store i8 %3553, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v204 = select i1 %3551, i64 153, i64 13
  %3554 = add i64 %3539, %.v204
  %3555 = add i64 %3537, -128
  %3556 = add i64 %3554, 4
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i64*
  %3558 = load i64, i64* %3557, align 8
  store i64 %3558, i64* %.pre166, align 8
  %3559 = add i64 %3558, 8
  %3560 = add i64 %3554, 8
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  %3562 = load i32, i32* %3561, align 4
  br i1 %3551, label %block_.L_4e1d8a, label %block_4e1cfe

block_4e1cfe:                                     ; preds = %block_4e1ce5
  store i8 0, i8* %12, align 1
  %3563 = and i32 %3562, 255
  %3564 = tail call i32 @llvm.ctpop.i32(i32 %3563)
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = xor i8 %3566, 1
  store i8 %3567, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3568 = icmp eq i32 %3562, 0
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %15, align 1
  %3570 = lshr i32 %3562, 31
  %3571 = trunc i32 %3570 to i8
  store i8 %3571, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v251 = select i1 %3568, i64 35, i64 14
  %3572 = add i64 %3554, %.v251
  store i64 %3572, i64* %3, align 8
  br i1 %3568, label %block_.L_4e1d21, label %block_4e1d0c

block_4e1d0c:                                     ; preds = %block_4e1cfe
  %3573 = add i64 %3572, 4
  store i64 %3573, i64* %3, align 8
  %3574 = load i64, i64* %3541, align 8
  %3575 = add i64 %3574, 1
  store i64 %3575, i64* %.pre166, align 8
  %3576 = icmp eq i64 %3574, -1
  %3577 = icmp eq i64 %3575, 0
  %3578 = or i1 %3576, %3577
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %12, align 1
  %3580 = trunc i64 %3575 to i32
  %3581 = and i32 %3580, 255
  %3582 = tail call i32 @llvm.ctpop.i32(i32 %3581)
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  %3585 = xor i8 %3584, 1
  store i8 %3585, i8* %13, align 1
  %3586 = xor i64 %3575, %3574
  %3587 = lshr i64 %3586, 4
  %3588 = trunc i64 %3587 to i8
  %3589 = and i8 %3588, 1
  store i8 %3589, i8* %14, align 1
  %3590 = zext i1 %3577 to i8
  store i8 %3590, i8* %15, align 1
  %3591 = lshr i64 %3575, 63
  %3592 = trunc i64 %3591 to i8
  store i8 %3592, i8* %16, align 1
  %3593 = lshr i64 %3574, 63
  %3594 = xor i64 %3591, %3593
  %3595 = add nuw nsw i64 %3594, %3591
  %3596 = icmp eq i64 %3595, 2
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %17, align 1
  %3598 = add i64 %3572, 16
  store i64 %3598, i64* %3, align 8
  store i64 %3575, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %3599 = add i64 %3572, 366
  br label %block_.L_4e1e7a

block_.L_4e1d21:                                  ; preds = %block_4e1cfe
  %3600 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3601 = and i32 %3600, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3606 = icmp eq i32 %3600, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %15, align 1
  %3608 = lshr i32 %3600, 31
  %3609 = trunc i32 %3608 to i8
  store i8 %3609, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v253 = select i1 %3606, i64 59, i64 14
  %3610 = add i64 %3572, %.v253
  store i64 %3610, i64* %3, align 8
  br i1 %3606, label %block_.L_4e1d5c, label %block_4e1d2f

block_4e1d2f:                                     ; preds = %block_.L_4e1d21
  store i64 ptrtoint (%G__0x5952d5_type* @G__0x5952d5 to i64), i64* %RSI.i241, align 8
  %3611 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3611, i64* %RDI.i810, align 8
  %3612 = add i64 %3537, -16
  %3613 = add i64 %3610, 22
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i64*
  %3615 = load i64, i64* %3614, align 8
  store i64 %3615, i64* %.pre166, align 8
  %3616 = add i64 %3610, 25
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3615 to i64*
  %3618 = load i64, i64* %3617, align 8
  store i64 %3618, i64* %RDX.i313, align 8
  %3619 = add i64 %3610, 29
  store i64 %3619, i64* %3, align 8
  %3620 = load i64, i64* %3557, align 8
  store i64 %3620, i64* %.pre166, align 8
  %3621 = add i64 %3610, 32
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i64*
  %3623 = load i64, i64* %3622, align 8
  store i64 %3623, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i594, align 1
  %3624 = add i64 %3610, -920671
  %3625 = add i64 %3610, 39
  %3626 = load i64, i64* %6, align 8
  %3627 = add i64 %3626, -8
  %3628 = inttoptr i64 %3627 to i64*
  store i64 %3625, i64* %3628, align 8
  store i64 %3627, i64* %6, align 8
  store i64 %3624, i64* %3, align 8
  %3629 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.52)
  %3630 = load i64, i64* %RBP.i, align 8
  %3631 = add i64 %3630, -232
  %3632 = load i32, i32* %EAX.i782, align 4
  %3633 = load i64, i64* %3, align 8
  %3634 = add i64 %3633, 6
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3631 to i32*
  store i32 %3632, i32* %3635, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4e1d5c

block_.L_4e1d5c:                                  ; preds = %block_4e1d2f, %block_.L_4e1d21
  %3636 = phi i64 [ %3610, %block_.L_4e1d21 ], [ %.pre146, %block_4e1d2f ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.52, %block_.L_4e1d21 ], [ %3629, %block_4e1d2f ]
  %3637 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3637, i64* %RDI.i810, align 8
  %3638 = add i64 %3636, -920908
  %3639 = add i64 %3636, 13
  %3640 = load i64, i64* %6, align 8
  %3641 = add i64 %3640, -8
  %3642 = inttoptr i64 %3641 to i64*
  store i64 %3639, i64* %3642, align 8
  store i64 %3641, i64* %6, align 8
  store i64 %3638, i64* %3, align 8
  %3643 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.55)
  %3644 = load i64, i64* %.pre166, align 8
  %3645 = load i64, i64* %3, align 8
  %3646 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3647 = add i64 %3646, %3644
  store i64 %3647, i64* %.pre166, align 8
  %3648 = icmp ult i64 %3647, %3644
  %3649 = icmp ult i64 %3647, %3646
  %3650 = or i1 %3648, %3649
  %3651 = zext i1 %3650 to i8
  store i8 %3651, i8* %12, align 1
  %3652 = trunc i64 %3647 to i32
  %3653 = and i32 %3652, 255
  %3654 = tail call i32 @llvm.ctpop.i32(i32 %3653)
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = xor i8 %3656, 1
  store i8 %3657, i8* %13, align 1
  %3658 = xor i64 %3646, %3644
  %3659 = xor i64 %3658, %3647
  %3660 = lshr i64 %3659, 4
  %3661 = trunc i64 %3660 to i8
  %3662 = and i8 %3661, 1
  store i8 %3662, i8* %14, align 1
  %3663 = icmp eq i64 %3647, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %15, align 1
  %3665 = lshr i64 %3647, 63
  %3666 = trunc i64 %3665 to i8
  store i8 %3666, i8* %16, align 1
  %3667 = lshr i64 %3644, 63
  %3668 = lshr i64 %3646, 63
  %3669 = xor i64 %3665, %3667
  %3670 = xor i64 %3665, %3668
  %3671 = add nuw nsw i64 %3669, %3670
  %3672 = icmp eq i64 %3671, 2
  %3673 = zext i1 %3672 to i8
  store i8 %3673, i8* %17, align 1
  store i64 %3647, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3674 = load i64, i64* %RBP.i, align 8
  %3675 = add i64 %3674, -4
  %3676 = add i64 %3645, 23
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i32*
  store i32 63, i32* %3677, align 4
  %3678 = load i64, i64* %3, align 8
  %3679 = add i64 %3678, 748
  store i64 %3679, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1d8a:                                  ; preds = %block_4e1ce5
  %3680 = add i32 %3562, -1
  %3681 = icmp eq i32 %3562, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %12, align 1
  %3683 = and i32 %3680, 255
  %3684 = tail call i32 @llvm.ctpop.i32(i32 %3683)
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = xor i8 %3686, 1
  store i8 %3687, i8* %13, align 1
  %3688 = xor i32 %3680, %3562
  %3689 = lshr i32 %3688, 4
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  store i8 %3691, i8* %14, align 1
  %3692 = icmp eq i32 %3680, 0
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %15, align 1
  %3694 = lshr i32 %3680, 31
  %3695 = trunc i32 %3694 to i8
  store i8 %3695, i8* %16, align 1
  %3696 = lshr i32 %3562, 31
  %3697 = xor i32 %3694, %3696
  %3698 = add nuw nsw i32 %3697, %3696
  %3699 = icmp eq i32 %3698, 2
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %17, align 1
  %.v254 = select i1 %3692, i64 14, i64 235
  %3701 = add i64 %3554, %.v254
  store i64 %3701, i64* %3, align 8
  br i1 %3692, label %block_4e1d98, label %block_.L_4e1e75

block_4e1d98:                                     ; preds = %block_.L_4e1d8a
  %3702 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %3703 = zext i32 %3702 to i64
  store i64 %3703, i64* %.pre166, align 8
  %3704 = add i64 %3537, -8
  %3705 = add i64 %3701, 10
  store i64 %3705, i64* %3, align 8
  %3706 = inttoptr i64 %3704 to i32*
  %3707 = load i32, i32* %3706, align 4
  %3708 = sub i32 %3702, %3707
  %3709 = icmp ult i32 %3702, %3707
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %12, align 1
  %3711 = and i32 %3708, 255
  %3712 = tail call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  store i8 %3715, i8* %13, align 1
  %3716 = xor i32 %3707, %3702
  %3717 = xor i32 %3716, %3708
  %3718 = lshr i32 %3717, 4
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  store i8 %3720, i8* %14, align 1
  %3721 = icmp eq i32 %3708, 0
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %15, align 1
  %3723 = lshr i32 %3708, 31
  %3724 = trunc i32 %3723 to i8
  store i8 %3724, i8* %16, align 1
  %3725 = lshr i32 %3702, 31
  %3726 = lshr i32 %3707, 31
  %3727 = xor i32 %3726, %3725
  %3728 = xor i32 %3723, %3725
  %3729 = add nuw nsw i32 %3728, %3727
  %3730 = icmp eq i32 %3729, 2
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %17, align 1
  %3732 = icmp ne i8 %3724, 0
  %3733 = xor i1 %3732, %3730
  %.v255 = select i1 %3733, i64 16, i64 59
  %3734 = add i64 %3701, %.v255
  store i64 %3734, i64* %3, align 8
  br i1 %3733, label %block_4e1da8, label %block_.L_4e1dd3

block_4e1da8:                                     ; preds = %block_4e1d98
  %3735 = add i64 %3537, -16
  %3736 = add i64 %3734, 4
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i64*
  %3738 = load i64, i64* %3737, align 8
  store i64 %3738, i64* %.pre166, align 8
  store i64 %3703, i64* %RCX.i322, align 8
  %3739 = add i32 %3702, 1
  %3740 = zext i32 %3739 to i64
  store i64 %3740, i64* %RDX.i313, align 8
  %3741 = icmp eq i32 %3702, -1
  %3742 = icmp eq i32 %3739, 0
  %3743 = or i1 %3741, %3742
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %12, align 1
  %3745 = and i32 %3739, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %13, align 1
  %3750 = xor i32 %3739, %3702
  %3751 = lshr i32 %3750, 4
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  store i8 %3753, i8* %14, align 1
  %3754 = zext i1 %3742 to i8
  store i8 %3754, i8* %15, align 1
  %3755 = lshr i32 %3739, 31
  %3756 = trunc i32 %3755 to i8
  store i8 %3756, i8* %16, align 1
  %3757 = xor i32 %3755, %3725
  %3758 = add nuw nsw i32 %3757, %3755
  %3759 = icmp eq i32 %3758, 2
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %17, align 1
  store i32 %3739, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %3761 = sext i32 %3702 to i64
  store i64 %3761, i64* %RSI.i241, align 8
  %3762 = shl nsw i64 %3761, 3
  %3763 = add i64 %3738, %3762
  %3764 = add i64 %3734, 30
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3763 to i64*
  %3766 = load i64, i64* %3765, align 8
  store i64 %3766, i64* %.pre166, align 8
  store i64 %3766, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %3767 = add i64 %3734, 205
  store i64 %3767, i64* %3, align 8
  br label %block_.L_4e1e75

block_.L_4e1dd3:                                  ; preds = %block_4e1d98
  %3768 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3769 = and i32 %3768, 255
  %3770 = tail call i32 @llvm.ctpop.i32(i32 %3769)
  %3771 = trunc i32 %3770 to i8
  %3772 = and i8 %3771, 1
  %3773 = xor i8 %3772, 1
  store i8 %3773, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3774 = icmp eq i32 %3768, 0
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %15, align 1
  %3776 = lshr i32 %3768, 31
  %3777 = trunc i32 %3776 to i8
  store i8 %3777, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v256 = select i1 %3774, i64 73, i64 14
  %3778 = add i64 %3734, %.v256
  store i64 %3778, i64* %3, align 8
  br i1 %3774, label %block_.L_4e1e1c, label %block_4e1de1

block_4e1de1:                                     ; preds = %block_.L_4e1dd3
  store i64 ptrtoint (%G__0x5951f3_type* @G__0x5951f3 to i64), i64* %RSI.i241, align 8
  %3779 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3779, i64* %RDI.i810, align 8
  %3780 = add i64 %3537, -16
  %3781 = add i64 %3778, 22
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3780 to i64*
  %3783 = load i64, i64* %3782, align 8
  store i64 %3783, i64* %.pre166, align 8
  %3784 = add i64 %3778, 25
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  store i64 %3786, i64* %RDX.i313, align 8
  %3787 = add i64 %3778, 29
  store i64 %3787, i64* %3, align 8
  %3788 = load i64, i64* %3782, align 8
  store i64 %3788, i64* %.pre166, align 8
  %3789 = add i32 %3702, -1
  %3790 = zext i32 %3789 to i64
  store i64 %3790, i64* %RCX.i322, align 8
  %3791 = icmp eq i32 %3702, 0
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %12, align 1
  %3793 = and i32 %3789, 255
  %3794 = tail call i32 @llvm.ctpop.i32(i32 %3793)
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = xor i8 %3796, 1
  store i8 %3797, i8* %13, align 1
  %3798 = xor i32 %3789, %3702
  %3799 = lshr i32 %3798, 4
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  store i8 %3801, i8* %14, align 1
  %3802 = icmp eq i32 %3789, 0
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %15, align 1
  %3804 = lshr i32 %3789, 31
  %3805 = trunc i32 %3804 to i8
  store i8 %3805, i8* %16, align 1
  %3806 = xor i32 %3804, %3725
  %3807 = add nuw nsw i32 %3806, %3725
  %3808 = icmp eq i32 %3807, 2
  %3809 = zext i1 %3808 to i8
  store i8 %3809, i8* %17, align 1
  %3810 = sext i32 %3789 to i64
  store i64 %3810, i64* %R8.i389, align 8
  %3811 = shl nsw i64 %3810, 3
  %3812 = add i64 %3788, %3811
  %3813 = add i64 %3778, 46
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3812 to i64*
  %3815 = load i64, i64* %3814, align 8
  store i64 %3815, i64* %RCX.i322, align 8
  store i8 0, i8* %AL.i594, align 1
  %3816 = add i64 %3778, -920849
  %3817 = add i64 %3778, 53
  %3818 = load i64, i64* %6, align 8
  %3819 = add i64 %3818, -8
  %3820 = inttoptr i64 %3819 to i64*
  store i64 %3817, i64* %3820, align 8
  store i64 %3819, i64* %6, align 8
  store i64 %3816, i64* %3, align 8
  %3821 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.52)
  %3822 = load i64, i64* %RBP.i, align 8
  %3823 = add i64 %3822, -236
  %3824 = load i32, i32* %EAX.i782, align 4
  %3825 = load i64, i64* %3, align 8
  %3826 = add i64 %3825, 6
  store i64 %3826, i64* %3, align 8
  %3827 = inttoptr i64 %3823 to i32*
  store i32 %3824, i32* %3827, align 4
  %.pre147 = load i64, i64* %3, align 8
  %.pre148 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e1e1c

block_.L_4e1e1c:                                  ; preds = %block_4e1de1, %block_.L_4e1dd3
  %3828 = phi i64 [ %3537, %block_.L_4e1dd3 ], [ %.pre148, %block_4e1de1 ]
  %3829 = phi i64 [ %3778, %block_.L_4e1dd3 ], [ %.pre147, %block_4e1de1 ]
  %MEMORY.56 = phi %struct.Memory* [ %MEMORY.52, %block_.L_4e1dd3 ], [ %3821, %block_4e1de1 ]
  store i64 63, i64* %.pre166, align 8
  store i64 58, i64* %RCX.i322, align 8
  %3830 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3830, i64* %RDI.i810, align 8
  %3831 = add i64 %3828, -240
  %3832 = add i64 %3829, 24
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  store i32 63, i32* %3833, align 4
  %3834 = load i64, i64* %RBP.i, align 8
  %3835 = add i64 %3834, -244
  %3836 = load i32, i32* %ECX.i719, align 4
  %3837 = load i64, i64* %3, align 8
  %3838 = add i64 %3837, 6
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3835 to i32*
  store i32 %3836, i32* %3839, align 4
  %3840 = load i64, i64* %3, align 8
  %3841 = add i64 %3840, -921130
  %3842 = add i64 %3840, 5
  %3843 = load i64, i64* %6, align 8
  %3844 = add i64 %3843, -8
  %3845 = inttoptr i64 %3844 to i64*
  store i64 %3842, i64* %3845, align 8
  store i64 %3844, i64* %6, align 8
  store i64 %3841, i64* %3, align 8
  %3846 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.56)
  %3847 = load i64, i64* %.pre166, align 8
  %3848 = load i64, i64* %3, align 8
  %3849 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3850 = add i64 %3849, %3847
  store i64 %3850, i64* %.pre166, align 8
  %3851 = icmp ult i64 %3850, %3847
  %3852 = icmp ult i64 %3850, %3849
  %3853 = or i1 %3851, %3852
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %12, align 1
  %3855 = trunc i64 %3850 to i32
  %3856 = and i32 %3855, 255
  %3857 = tail call i32 @llvm.ctpop.i32(i32 %3856)
  %3858 = trunc i32 %3857 to i8
  %3859 = and i8 %3858, 1
  %3860 = xor i8 %3859, 1
  store i8 %3860, i8* %13, align 1
  %3861 = xor i64 %3849, %3847
  %3862 = xor i64 %3861, %3850
  %3863 = lshr i64 %3862, 4
  %3864 = trunc i64 %3863 to i8
  %3865 = and i8 %3864, 1
  store i8 %3865, i8* %14, align 1
  %3866 = icmp eq i64 %3850, 0
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %15, align 1
  %3868 = lshr i64 %3850, 63
  %3869 = trunc i64 %3868 to i8
  store i8 %3869, i8* %16, align 1
  %3870 = lshr i64 %3847, 63
  %3871 = lshr i64 %3849, 63
  %3872 = xor i64 %3868, %3870
  %3873 = xor i64 %3868, %3871
  %3874 = add nuw nsw i64 %3872, %3873
  %3875 = icmp eq i64 %3874, 2
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %17, align 1
  store i64 %3850, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3877 = load i64, i64* %RBP.i, align 8
  %3878 = add i64 %3877, -24
  %3879 = add i64 %3848, 20
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i64*
  %3881 = load i64, i64* %3880, align 8
  store i64 %3881, i64* %.pre166, align 8
  %3882 = add i64 %3848, 23
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i8*
  %3884 = load i8, i8* %3883, align 1
  %3885 = sext i8 %3884 to i64
  %3886 = and i64 %3885, 4294967295
  store i64 %3886, i64* %RCX.i322, align 8
  %3887 = sext i8 %3884 to i32
  %3888 = add nsw i32 %3887, -58
  %3889 = icmp ult i8 %3884, 58
  %3890 = zext i1 %3889 to i8
  store i8 %3890, i8* %12, align 1
  %3891 = and i32 %3888, 255
  %3892 = tail call i32 @llvm.ctpop.i32(i32 %3891)
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  %3895 = xor i8 %3894, 1
  store i8 %3895, i8* %13, align 1
  %3896 = xor i32 %3887, 16
  %3897 = xor i32 %3896, %3888
  %3898 = lshr i32 %3897, 4
  %3899 = trunc i32 %3898 to i8
  %3900 = and i8 %3899, 1
  store i8 %3900, i8* %14, align 1
  %3901 = icmp eq i32 %3888, 0
  %3902 = zext i1 %3901 to i8
  store i8 %3902, i8* %15, align 1
  %3903 = lshr i32 %3888, 31
  %3904 = trunc i32 %3903 to i8
  store i8 %3904, i8* %16, align 1
  %3905 = lshr i32 %3887, 31
  %3906 = xor i32 %3903, %3905
  %3907 = add nuw nsw i32 %3906, %3905
  %3908 = icmp eq i32 %3907, 2
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %17, align 1
  %3910 = add i64 %3877, -240
  %3911 = add i64 %3848, 32
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = zext i32 %3913 to i64
  store i64 %3914, i64* %RCX.i322, align 8
  %3915 = add i64 %3877, -244
  %3916 = add i64 %3848, 38
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RDX.i313, align 8
  %3920 = select i1 %3901, i64 %3919, i64 %3914
  store i64 %3920, i64* %RCX.i322, align 8
  %3921 = add i64 %3877, -4
  %3922 = trunc i64 %3920 to i32
  %3923 = add i64 %3848, 44
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3921 to i32*
  store i32 %3922, i32* %3924, align 4
  %3925 = load i64, i64* %3, align 8
  %3926 = add i64 %3925, 513
  store i64 %3926, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1e75:                                  ; preds = %block_.L_4e1d8a, %block_4e1da8
  %3927 = phi i64 [ %3767, %block_4e1da8 ], [ %3701, %block_.L_4e1d8a ]
  %3928 = add i64 %3927, 5
  store i64 %3928, i64* %3, align 8
  br label %block_.L_4e1e7a

block_.L_4e1e7a:                                  ; preds = %block_.L_4e1e75, %block_4e1d0c
  %storemerge93 = phi i64 [ %3599, %block_4e1d0c ], [ %3928, %block_.L_4e1e75 ]
  %3929 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %3929, i64* %RDI.i810, align 8
  %3930 = add i64 %storemerge93, -921194
  %3931 = add i64 %storemerge93, 13
  %3932 = load i64, i64* %6, align 8
  %3933 = add i64 %3932, -8
  %3934 = inttoptr i64 %3933 to i64*
  store i64 %3931, i64* %3934, align 8
  store i64 %3933, i64* %6, align 8
  store i64 %3930, i64* %3, align 8
  %3935 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.52)
  %3936 = load i64, i64* %.pre166, align 8
  %3937 = load i64, i64* %3, align 8
  %3938 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3939 = add i64 %3938, %3936
  store i64 %3939, i64* %.pre166, align 8
  %3940 = icmp ult i64 %3939, %3936
  %3941 = icmp ult i64 %3939, %3938
  %3942 = or i1 %3940, %3941
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %12, align 1
  %3944 = trunc i64 %3939 to i32
  %3945 = and i32 %3944, 255
  %3946 = tail call i32 @llvm.ctpop.i32(i32 %3945)
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = xor i8 %3948, 1
  store i8 %3949, i8* %13, align 1
  %3950 = xor i64 %3938, %3936
  %3951 = xor i64 %3950, %3939
  %3952 = lshr i64 %3951, 4
  %3953 = trunc i64 %3952 to i8
  %3954 = and i8 %3953, 1
  store i8 %3954, i8* %14, align 1
  %3955 = icmp eq i64 %3939, 0
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %15, align 1
  %3957 = lshr i64 %3939, 63
  %3958 = trunc i64 %3957 to i8
  store i8 %3958, i8* %16, align 1
  %3959 = lshr i64 %3936, 63
  %3960 = lshr i64 %3938, 63
  %3961 = xor i64 %3957, %3959
  %3962 = xor i64 %3957, %3960
  %3963 = add nuw nsw i64 %3961, %3962
  %3964 = icmp eq i64 %3963, 2
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %17, align 1
  store i64 %3939, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %3966 = load i64, i64* %RBP.i, align 8
  %3967 = add i64 %3966, -40
  %3968 = add i64 %3937, 21
  store i64 %3968, i64* %3, align 8
  %3969 = inttoptr i64 %3967 to i64*
  %3970 = load i64, i64* %3969, align 8
  store i8 0, i8* %12, align 1
  %3971 = trunc i64 %3970 to i32
  %3972 = and i32 %3971, 255
  %3973 = tail call i32 @llvm.ctpop.i32(i32 %3972)
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  %3976 = xor i8 %3975, 1
  store i8 %3976, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3977 = icmp eq i64 %3970, 0
  %3978 = zext i1 %3977 to i8
  store i8 %3978, i8* %15, align 1
  %3979 = lshr i64 %3970, 63
  %3980 = trunc i64 %3979 to i8
  store i8 %3980, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v252 = select i1 %3977, i64 39, i64 27
  %3981 = add i64 %3937, %.v252
  store i64 %3981, i64* %3, align 8
  br i1 %3977, label %block_.L_4e1eae, label %block_4e1ea2

block_4e1ea2:                                     ; preds = %block_.L_4e1e7a
  %3982 = add i64 %3966, -144
  %3983 = add i64 %3981, 6
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = zext i32 %3985 to i64
  store i64 %3986, i64* %.pre166, align 8
  %3987 = add i64 %3981, 10
  store i64 %3987, i64* %3, align 8
  %3988 = load i64, i64* %3969, align 8
  store i64 %3988, i64* %RCX.i322, align 8
  %3989 = add i64 %3981, 12
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3988 to i32*
  store i32 %3985, i32* %3990, align 4
  %.pre149 = load i64, i64* %RBP.i, align 8
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_4e1eae

block_.L_4e1eae:                                  ; preds = %block_4e1ea2, %block_.L_4e1e7a
  %3991 = phi i64 [ %.pre150, %block_4e1ea2 ], [ %3981, %block_.L_4e1e7a ]
  %3992 = phi i64 [ %.pre149, %block_4e1ea2 ], [ %3966, %block_.L_4e1e7a ]
  %3993 = add i64 %3992, -128
  %3994 = add i64 %3991, 4
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i64*
  %3996 = load i64, i64* %3995, align 8
  store i64 %3996, i64* %.pre166, align 8
  %3997 = add i64 %3996, 16
  %3998 = add i64 %3991, 9
  store i64 %3998, i64* %3, align 8
  %3999 = inttoptr i64 %3997 to i64*
  %4000 = load i64, i64* %3999, align 8
  store i8 0, i8* %12, align 1
  %4001 = trunc i64 %4000 to i32
  %4002 = and i32 %4001, 255
  %4003 = tail call i32 @llvm.ctpop.i32(i32 %4002)
  %4004 = trunc i32 %4003 to i8
  %4005 = and i8 %4004, 1
  %4006 = xor i8 %4005, 1
  store i8 %4006, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4007 = icmp eq i64 %4000, 0
  %4008 = zext i1 %4007 to i8
  store i8 %4008, i8* %15, align 1
  %4009 = lshr i64 %4000, 63
  %4010 = trunc i64 %4009 to i8
  store i8 %4010, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v205 = select i1 %4007, i64 44, i64 15
  %4011 = add i64 %3991, %.v205
  %4012 = add i64 %4011, 4
  store i64 %4012, i64* %3, align 8
  %4013 = load i64, i64* %3995, align 8
  store i64 %4013, i64* %.pre166, align 8
  %4014 = add i64 %4013, 24
  %4015 = add i64 %4011, 7
  store i64 %4015, i64* %3, align 8
  %4016 = inttoptr i64 %4014 to i32*
  %4017 = load i32, i32* %4016, align 4
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RCX.i322, align 8
  br i1 %4007, label %block_.L_4e1eda, label %block_4e1ebd

block_4e1ebd:                                     ; preds = %block_.L_4e1eae
  %4019 = add i64 %4011, 11
  store i64 %4019, i64* %3, align 8
  %4020 = load i64, i64* %3995, align 8
  store i64 %4020, i64* %.pre166, align 8
  %4021 = add i64 %4020, 16
  %4022 = add i64 %4011, 15
  store i64 %4022, i64* %3, align 8
  %4023 = inttoptr i64 %4021 to i64*
  %4024 = load i64, i64* %4023, align 8
  store i64 %4024, i64* %.pre166, align 8
  %4025 = add i64 %4011, 17
  store i64 %4025, i64* %3, align 8
  %4026 = inttoptr i64 %4024 to i32*
  store i32 %4017, i32* %4026, align 4
  %4027 = load i64, i64* %RBP.i, align 8
  %4028 = add i64 %4027, -4
  %4029 = load i64, i64* %3, align 8
  %4030 = add i64 %4029, 7
  store i64 %4030, i64* %3, align 8
  %4031 = inttoptr i64 %4028 to i32*
  store i32 0, i32* %4031, align 4
  %4032 = load i64, i64* %3, align 8
  %4033 = add i64 %4032, 407
  store i64 %4033, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1eda:                                  ; preds = %block_.L_4e1eae
  %4034 = add i64 %3992, -4
  %4035 = add i64 %4011, 10
  store i64 %4035, i64* %3, align 8
  %4036 = inttoptr i64 %4034 to i32*
  store i32 %4017, i32* %4036, align 4
  %4037 = load i64, i64* %3, align 8
  %4038 = add i64 %4037, 392
  store i64 %4038, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1ee9:                                  ; preds = %block_.L_4e1cda
  store i64 0, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %4039 = add i64 %3402, -4
  %4040 = add i64 %3528, 19
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  store i32 87, i32* %4041, align 4
  %4042 = load i64, i64* %3, align 8
  %4043 = add i64 %4042, 368
  store i64 %4043, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e1f01:                                  ; preds = %block_4e19b9, %block_.L_4e19a9
  %4044 = phi i64 [ %2770, %block_4e19b9 ], [ %2738, %block_.L_4e19a9 ]
  %4045 = add i64 %4044, 4
  store i64 %4045, i64* %3, align 8
  %4046 = load i64, i64* %2570, align 8
  store i64 %4046, i64* %.pre166, align 8
  %4047 = add i64 %4046, 1
  %4048 = add i64 %4044, 8
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i8*
  %4050 = load i8, i8* %4049, align 1
  %4051 = sext i8 %4050 to i64
  %4052 = and i64 %4051, 4294967295
  store i64 %4052, i64* %RCX.i322, align 8
  %4053 = sext i8 %4050 to i32
  %4054 = add nsw i32 %4053, -58
  %4055 = icmp ult i8 %4050, 58
  %4056 = zext i1 %4055 to i8
  store i8 %4056, i8* %12, align 1
  %4057 = and i32 %4054, 255
  %4058 = tail call i32 @llvm.ctpop.i32(i32 %4057)
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  %4061 = xor i8 %4060, 1
  store i8 %4061, i8* %13, align 1
  %4062 = xor i32 %4053, 16
  %4063 = xor i32 %4062, %4054
  %4064 = lshr i32 %4063, 4
  %4065 = trunc i32 %4064 to i8
  %4066 = and i8 %4065, 1
  store i8 %4066, i8* %14, align 1
  %4067 = icmp eq i32 %4054, 0
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %15, align 1
  %4069 = lshr i32 %4054, 31
  %4070 = trunc i32 %4069 to i8
  store i8 %4070, i8* %16, align 1
  %4071 = lshr i32 %4053, 31
  %4072 = xor i32 %4069, %4071
  %4073 = add nuw nsw i32 %4072, %4071
  %4074 = icmp eq i32 %4073, 2
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %17, align 1
  %.v237 = select i1 %4067, i64 17, i64 356
  %4076 = add i64 %4044, %.v237
  store i64 %4076, i64* %3, align 8
  br i1 %4067, label %block_4e1f12, label %block_.L_4e2065

block_4e1f12:                                     ; preds = %block_.L_4e1f01
  %4077 = add i64 %4076, 4
  store i64 %4077, i64* %3, align 8
  %4078 = load i64, i64* %2570, align 8
  store i64 %4078, i64* %.pre166, align 8
  %4079 = add i64 %4078, 2
  %4080 = add i64 %4076, 8
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i8*
  %4082 = load i8, i8* %4081, align 1
  %4083 = sext i8 %4082 to i64
  %4084 = and i64 %4083, 4294967295
  store i64 %4084, i64* %RCX.i322, align 8
  %4085 = sext i8 %4082 to i32
  %4086 = add nsw i32 %4085, -58
  %4087 = icmp ult i8 %4082, 58
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %12, align 1
  %4089 = and i32 %4086, 255
  %4090 = tail call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  store i8 %4093, i8* %13, align 1
  %4094 = xor i32 %4085, 16
  %4095 = xor i32 %4094, %4086
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  store i8 %4098, i8* %14, align 1
  %4099 = icmp eq i32 %4086, 0
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %15, align 1
  %4101 = lshr i32 %4086, 31
  %4102 = trunc i32 %4101 to i8
  store i8 %4102, i8* %16, align 1
  %4103 = lshr i32 %4085, 31
  %4104 = xor i32 %4101, %4103
  %4105 = add nuw nsw i32 %4104, %4103
  %4106 = icmp eq i32 %4105, 2
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %17, align 1
  %.v238 = select i1 %4099, i64 17, i64 104
  %4108 = add i64 %4076, %.v238
  store i64 %2524, i64* %.pre166, align 8
  %4109 = add i64 %4108, 11
  store i64 %4109, i64* %3, align 8
  %4110 = load i8, i8* %2526, align 1
  %4111 = sext i8 %4110 to i64
  %4112 = and i64 %4111, 4294967295
  store i64 %4112, i64* %RCX.i322, align 8
  %4113 = sext i8 %4110 to i32
  store i8 0, i8* %12, align 1
  %4114 = and i32 %4113, 255
  %4115 = tail call i32 @llvm.ctpop.i32(i32 %4114)
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = xor i8 %4117, 1
  store i8 %4118, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4119 = icmp eq i8 %4110, 0
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %15, align 1
  %4121 = lshr i32 %4113, 31
  %4122 = trunc i32 %4121 to i8
  store i8 %4122, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v239 = select i1 %4119, i64 58, i64 20
  %4123 = add i64 %4108, %.v239
  store i64 %4123, i64* %3, align 8
  br i1 %4099, label %block_4e1f23, label %block_.L_4e1f7a

block_4e1f23:                                     ; preds = %block_4e1f12
  br i1 %4119, label %block_.L_4e1f5d, label %block_4e1f37

block_4e1f37:                                     ; preds = %block_4e1f23
  store i64 %2524, i64* %.pre166, align 8
  store i64 %2524, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %4124 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4125 = add i32 %4124, 1
  %4126 = zext i32 %4125 to i64
  store i64 %4126, i64* %RCX.i322, align 8
  %4127 = icmp eq i32 %4124, -1
  %4128 = icmp eq i32 %4125, 0
  %4129 = or i1 %4127, %4128
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %12, align 1
  %4131 = and i32 %4125, 255
  %4132 = tail call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  store i8 %4135, i8* %13, align 1
  %4136 = xor i32 %4125, %4124
  %4137 = lshr i32 %4136, 4
  %4138 = trunc i32 %4137 to i8
  %4139 = and i8 %4138, 1
  store i8 %4139, i8* %14, align 1
  %4140 = zext i1 %4128 to i8
  store i8 %4140, i8* %15, align 1
  %4141 = lshr i32 %4125, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %16, align 1
  %4143 = lshr i32 %4124, 31
  %4144 = xor i32 %4141, %4143
  %4145 = add nuw nsw i32 %4144, %4141
  %4146 = icmp eq i32 %4145, 2
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %17, align 1
  store i32 %4125, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4148 = add i64 %4123, 50
  store i64 %4148, i64* %3, align 8
  br label %block_.L_4e1f69

block_.L_4e1f5d:                                  ; preds = %block_4e1f23
  %4149 = add i64 %4123, 12
  store i64 %4149, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  br label %block_.L_4e1f69

block_.L_4e1f69:                                  ; preds = %block_.L_4e1f5d, %block_4e1f37
  %4150 = phi i64 [ %4149, %block_.L_4e1f5d ], [ %4148, %block_4e1f37 ]
  store i64 0, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %4151 = add i64 %4150, 247
  store i64 %4151, i64* %3, align 8
  br label %block_.L_4e2060

block_.L_4e1f7a:                                  ; preds = %block_4e1f12
  br i1 %4119, label %block_.L_4e1fb4, label %block_4e1f8e

block_4e1f8e:                                     ; preds = %block_.L_4e1f7a
  store i64 %2524, i64* %.pre166, align 8
  store i64 %2524, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  %4152 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4153 = add i32 %4152, 1
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RCX.i322, align 8
  %4155 = icmp eq i32 %4152, -1
  %4156 = icmp eq i32 %4153, 0
  %4157 = or i1 %4155, %4156
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %12, align 1
  %4159 = and i32 %4153, 255
  %4160 = tail call i32 @llvm.ctpop.i32(i32 %4159)
  %4161 = trunc i32 %4160 to i8
  %4162 = and i8 %4161, 1
  %4163 = xor i8 %4162, 1
  store i8 %4163, i8* %13, align 1
  %4164 = xor i32 %4153, %4152
  %4165 = lshr i32 %4164, 4
  %4166 = trunc i32 %4165 to i8
  %4167 = and i8 %4166, 1
  store i8 %4167, i8* %14, align 1
  %4168 = zext i1 %4156 to i8
  store i8 %4168, i8* %15, align 1
  %4169 = lshr i32 %4153, 31
  %4170 = trunc i32 %4169 to i8
  store i8 %4170, i8* %16, align 1
  %4171 = lshr i32 %4152, 31
  %4172 = xor i32 %4169, %4171
  %4173 = add nuw nsw i32 %4172, %4169
  %4174 = icmp eq i32 %4173, 2
  %4175 = zext i1 %4174 to i8
  store i8 %4175, i8* %17, align 1
  %4176 = add i64 %4123, 33
  store i64 %4176, i64* %3, align 8
  store i32 %4153, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4177 = add i64 %4123, 198
  br label %block_.L_4e2054

block_.L_4e1fb4:                                  ; preds = %block_.L_4e1f7a
  %4178 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4179 = zext i32 %4178 to i64
  store i64 %4179, i64* %.pre166, align 8
  %4180 = add i64 %2567, -8
  %4181 = add i64 %4123, 10
  store i64 %4181, i64* %3, align 8
  %4182 = inttoptr i64 %4180 to i32*
  %4183 = load i32, i32* %4182, align 4
  %4184 = sub i32 %4178, %4183
  %4185 = icmp ult i32 %4178, %4183
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %12, align 1
  %4187 = and i32 %4184, 255
  %4188 = tail call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %13, align 1
  %4192 = xor i32 %4183, %4178
  %4193 = xor i32 %4192, %4184
  %4194 = lshr i32 %4193, 4
  %4195 = trunc i32 %4194 to i8
  %4196 = and i8 %4195, 1
  store i8 %4196, i8* %14, align 1
  %4197 = icmp eq i32 %4184, 0
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %15, align 1
  %4199 = lshr i32 %4184, 31
  %4200 = trunc i32 %4199 to i8
  store i8 %4200, i8* %16, align 1
  %4201 = lshr i32 %4178, 31
  %4202 = lshr i32 %4183, 31
  %4203 = xor i32 %4202, %4201
  %4204 = xor i32 %4199, %4201
  %4205 = add nuw nsw i32 %4204, %4203
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %17, align 1
  %.v240 = select i1 %4197, i64 16, i64 117
  %4208 = add i64 %4123, %.v240
  store i64 %4208, i64* %3, align 8
  br i1 %4197, label %block_4e1fc4, label %block_.L_4e2029

block_4e1fc4:                                     ; preds = %block_.L_4e1fb4
  %4209 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  store i8 0, i8* %12, align 1
  %4210 = and i32 %4209, 255
  %4211 = tail call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  store i8 %4214, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4215 = icmp eq i32 %4209, 0
  %4216 = zext i1 %4215 to i8
  store i8 %4216, i8* %15, align 1
  %4217 = lshr i32 %4209, 31
  %4218 = trunc i32 %4217 to i8
  store i8 %4218, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v241 = select i1 %4215, i64 56, i64 14
  %4219 = add i64 %4208, %.v241
  store i64 %4219, i64* %3, align 8
  br i1 %4215, label %block_.L_4e1ffc, label %block_4e1fd2

block_4e1fd2:                                     ; preds = %block_4e1fc4
  store i64 ptrtoint (%G__0x59528d_type* @G__0x59528d to i64), i64* %RSI.i241, align 8
  %4220 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %4220, i64* %RDI.i810, align 8
  %4221 = add i64 %2567, -16
  %4222 = add i64 %4219, 22
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i64*
  %4224 = load i64, i64* %4223, align 8
  store i64 %4224, i64* %.pre166, align 8
  %4225 = add i64 %4219, 25
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4224 to i64*
  %4227 = load i64, i64* %4226, align 8
  store i64 %4227, i64* %RDX.i313, align 8
  %4228 = add i64 %4219, 29
  store i64 %4228, i64* %3, align 8
  %4229 = load i8, i8* %2585, align 1
  %4230 = sext i8 %4229 to i64
  %4231 = and i64 %4230, 4294967295
  store i64 %4231, i64* %RCX.i322, align 8
  %AL.i = bitcast %union.anon* %.pre165 to i8*
  store i8 0, i8* %AL.i, align 1
  %4232 = add i64 %4219, -921346
  %4233 = add i64 %4219, 36
  %4234 = load i64, i64* %6, align 8
  %4235 = add i64 %4234, -8
  %4236 = inttoptr i64 %4235 to i64*
  store i64 %4233, i64* %4236, align 8
  store i64 %4235, i64* %6, align 8
  store i64 %4232, i64* %3, align 8
  %4237 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4e18d1)
  %4238 = load i64, i64* %RBP.i, align 8
  %4239 = add i64 %4238, -248
  %4240 = load i32, i32* %EAX.i782, align 4
  %4241 = load i64, i64* %3, align 8
  %4242 = add i64 %4241, 6
  store i64 %4242, i64* %3, align 8
  %4243 = inttoptr i64 %4239 to i32*
  store i32 %4240, i32* %4243, align 4
  %.pre151 = load i64, i64* %RBP.i, align 8
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_4e1ffc

block_.L_4e1ffc:                                  ; preds = %block_4e1fd2, %block_4e1fc4
  %4244 = phi i64 [ %4219, %block_4e1fc4 ], [ %.pre152, %block_4e1fd2 ]
  %4245 = phi i64 [ %2567, %block_4e1fc4 ], [ %.pre151, %block_4e1fd2 ]
  %MEMORY.62 = phi %struct.Memory* [ %call2_4e18d1, %block_4e1fc4 ], [ %4237, %block_4e1fd2 ]
  %4246 = add i64 %4245, -89
  %4247 = add i64 %4244, 4
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i8*
  %4249 = load i8, i8* %4248, align 1
  %4250 = sext i8 %4249 to i64
  %4251 = and i64 %4250, 4294967295
  store i64 %4251, i64* %.pre166, align 8
  %4252 = sext i8 %4249 to i32
  store i32 %4252, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  %4253 = add i64 %4245, -24
  %4254 = add i64 %4244, 15
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i64*
  %4256 = load i64, i64* %4255, align 8
  store i64 %4256, i64* %RCX.i322, align 8
  %4257 = add i64 %4244, 18
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i8*
  %4259 = load i8, i8* %4258, align 1
  %4260 = sext i8 %4259 to i64
  %4261 = and i64 %4260, 4294967295
  store i64 %4261, i64* %.pre166, align 8
  %4262 = sext i8 %4259 to i32
  %4263 = add nsw i32 %4262, -58
  %4264 = icmp ult i8 %4259, 58
  %4265 = zext i1 %4264 to i8
  store i8 %4265, i8* %12, align 1
  %4266 = and i32 %4263, 255
  %4267 = tail call i32 @llvm.ctpop.i32(i32 %4266)
  %4268 = trunc i32 %4267 to i8
  %4269 = and i8 %4268, 1
  %4270 = xor i8 %4269, 1
  store i8 %4270, i8* %13, align 1
  %4271 = xor i32 %4262, 16
  %4272 = xor i32 %4271, %4263
  %4273 = lshr i32 %4272, 4
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  store i8 %4275, i8* %14, align 1
  %4276 = icmp eq i32 %4263, 0
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %15, align 1
  %4278 = lshr i32 %4263, 31
  %4279 = trunc i32 %4278 to i8
  store i8 %4279, i8* %16, align 1
  %4280 = lshr i32 %4262, 31
  %4281 = xor i32 %4278, %4280
  %4282 = add nuw nsw i32 %4281, %4280
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %17, align 1
  %.v207 = select i1 %4276, i64 27, i64 36
  %4285 = add i64 %4244, %.v207
  %4286 = add i64 %4285, 4
  store i64 %4286, i64* %3, align 8
  br i1 %4276, label %block_4e2017, label %block_.L_4e2020

block_4e2017:                                     ; preds = %block_.L_4e1ffc
  store i8 58, i8* %4248, align 1
  %4287 = load i64, i64* %3, align 8
  %4288 = add i64 %4287, 9
  store i64 %4288, i64* %3, align 8
  br label %block_.L_4e2024

block_.L_4e2020:                                  ; preds = %block_.L_4e1ffc
  store i8 63, i8* %4248, align 1
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_4e2024

block_.L_4e2024:                                  ; preds = %block_.L_4e2020, %block_4e2017
  %4289 = phi i64 [ %.pre153, %block_.L_4e2020 ], [ %4288, %block_4e2017 ]
  %4290 = add i64 %4289, 43
  store i64 %4290, i64* %3, align 8
  %.pre154.pre.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4e204f

block_.L_4e2029:                                  ; preds = %block_.L_4e1fb4
  %4291 = add i64 %2567, -16
  %4292 = add i64 %4208, 4
  store i64 %4292, i64* %3, align 8
  %4293 = inttoptr i64 %4291 to i64*
  %4294 = load i64, i64* %4293, align 8
  store i64 %4294, i64* %.pre166, align 8
  store i64 %4179, i64* %RCX.i322, align 8
  %4295 = add i32 %4178, 1
  %4296 = zext i32 %4295 to i64
  store i64 %4296, i64* %RDX.i313, align 8
  %4297 = icmp eq i32 %4178, -1
  %4298 = icmp eq i32 %4295, 0
  %4299 = or i1 %4297, %4298
  %4300 = zext i1 %4299 to i8
  store i8 %4300, i8* %12, align 1
  %4301 = and i32 %4295, 255
  %4302 = tail call i32 @llvm.ctpop.i32(i32 %4301)
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = xor i8 %4304, 1
  store i8 %4305, i8* %13, align 1
  %4306 = xor i32 %4295, %4178
  %4307 = lshr i32 %4306, 4
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  store i8 %4309, i8* %14, align 1
  %4310 = zext i1 %4298 to i8
  store i8 %4310, i8* %15, align 1
  %4311 = lshr i32 %4295, 31
  %4312 = trunc i32 %4311 to i8
  store i8 %4312, i8* %16, align 1
  %4313 = xor i32 %4311, %4201
  %4314 = add nuw nsw i32 %4313, %4311
  %4315 = icmp eq i32 %4314, 2
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %17, align 1
  store i32 %4295, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %4317 = sext i32 %4178 to i64
  store i64 %4317, i64* %RSI.i241, align 8
  %4318 = shl nsw i64 %4317, 3
  %4319 = add i64 %4294, %4318
  %4320 = add i64 %4208, 30
  store i64 %4320, i64* %3, align 8
  %4321 = inttoptr i64 %4319 to i64*
  %4322 = load i64, i64* %4321, align 8
  store i64 %4322, i64* %.pre166, align 8
  %4323 = add i64 %4208, 38
  store i64 %4323, i64* %3, align 8
  store i64 %4322, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  br label %block_.L_4e204f

block_.L_4e204f:                                  ; preds = %block_.L_4e2029, %block_.L_4e2024
  %.pre154.pre.pre = phi i64 [ %2567, %block_.L_4e2029 ], [ %.pre154.pre.pre.pre, %block_.L_4e2024 ]
  %4324 = phi i64 [ %4323, %block_.L_4e2029 ], [ %4290, %block_.L_4e2024 ]
  %MEMORY.64 = phi %struct.Memory* [ %call2_4e18d1, %block_.L_4e2029 ], [ %MEMORY.62, %block_.L_4e2024 ]
  %4325 = add i64 %4324, 5
  store i64 %4325, i64* %3, align 8
  br label %block_.L_4e2054

block_.L_4e2054:                                  ; preds = %block_.L_4e204f, %block_4e1f8e
  %.pre154.pre = phi i64 [ %2567, %block_4e1f8e ], [ %.pre154.pre.pre, %block_.L_4e204f ]
  %storemerge94 = phi i64 [ %4177, %block_4e1f8e ], [ %4325, %block_.L_4e204f ]
  %MEMORY.65 = phi %struct.Memory* [ %call2_4e18d1, %block_4e1f8e ], [ %MEMORY.64, %block_.L_4e204f ]
  %4326 = add i64 %storemerge94, 12
  store i64 %4326, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  br label %block_.L_4e2060

block_.L_4e2060:                                  ; preds = %block_.L_4e2054, %block_.L_4e1f69
  %.pre154 = phi i64 [ %.pre154.pre, %block_.L_4e2054 ], [ %2567, %block_.L_4e1f69 ]
  %4327 = phi i64 [ %4326, %block_.L_4e2054 ], [ %4151, %block_.L_4e1f69 ]
  %MEMORY.66 = phi %struct.Memory* [ %MEMORY.65, %block_.L_4e2054 ], [ %call2_4e18d1, %block_.L_4e1f69 ]
  %4328 = add i64 %4327, 5
  store i64 %4328, i64* %3, align 8
  br label %block_.L_4e2065

block_.L_4e2065:                                  ; preds = %block_.L_4e1f01, %block_.L_4e2060
  %4329 = phi i64 [ %4076, %block_.L_4e1f01 ], [ %4328, %block_.L_4e2060 ]
  %4330 = phi i64 [ %2567, %block_.L_4e1f01 ], [ %.pre154, %block_.L_4e2060 ]
  %MEMORY.67 = phi %struct.Memory* [ %call2_4e18d1, %block_.L_4e1f01 ], [ %MEMORY.66, %block_.L_4e2060 ]
  %4331 = add i64 %4330, -89
  %4332 = add i64 %4329, 4
  store i64 %4332, i64* %3, align 8
  %4333 = inttoptr i64 %4331 to i8*
  %4334 = load i8, i8* %4333, align 1
  %4335 = sext i8 %4334 to i64
  %4336 = and i64 %4335, 4294967295
  store i64 %4336, i64* %.pre166, align 8
  %4337 = add i64 %4330, -4
  %4338 = sext i8 %4334 to i32
  %4339 = add i64 %4329, 7
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4337 to i32*
  store i32 %4338, i32* %4340, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_4e206c

block_.L_4e206c:                                  ; preds = %block_.L_4e2065, %block_.L_4e1ee9, %block_.L_4e1eda, %block_4e1ebd, %block_.L_4e1e1c, %block_.L_4e1d5c, %block_.L_4e1ca0, %block_.L_4e1a9a, %block_.L_4e1992, %block_.L_4e186e, %block_.L_4e1776, %block_4e1759, %block_.L_4e16ad, %block_.L_4e15df, %block_.L_4e149c, %block_.L_4e11c4, %block_4e11b8, %block_.L_4e1165
  %4341 = phi i64 [ %802, %block_.L_4e11c4 ], [ %769, %block_4e11b8 ], [ %2707, %block_.L_4e1992 ], [ %.pre157, %block_.L_4e2065 ], [ %4043, %block_.L_4e1ee9 ], [ %4038, %block_.L_4e1eda ], [ %4033, %block_4e1ebd ], [ %3926, %block_.L_4e1e1c ], [ %3679, %block_.L_4e1d5c ], [ %3512, %block_.L_4e1ca0 ], [ %2960, %block_.L_4e1a9a ], [ %2466, %block_.L_4e186e ], [ %2246, %block_.L_4e1776 ], [ %2241, %block_4e1759 ], [ %2134, %block_.L_4e16ad ], [ %1894, %block_.L_4e15df ], [ %1610, %block_.L_4e149c ], [ %691, %block_.L_4e1165 ]
  %MEMORY.68 = phi %struct.Memory* [ %MEMORY.16, %block_.L_4e11c4 ], [ %MEMORY.16, %block_4e11b8 ], [ %MEMORY.43, %block_.L_4e1992 ], [ %MEMORY.67, %block_.L_4e2065 ], [ %MEMORY.52, %block_.L_4e1ee9 ], [ %3935, %block_.L_4e1eda ], [ %3935, %block_4e1ebd ], [ %3846, %block_.L_4e1e1c ], [ %3643, %block_.L_4e1d5c ], [ %3478, %block_.L_4e1ca0 ], [ %MEMORY.44, %block_.L_4e1a9a ], [ %MEMORY.38, %block_.L_4e186e ], [ %2143, %block_.L_4e1776 ], [ %2143, %block_4e1759 ], [ %2045, %block_.L_4e16ad ], [ %1849, %block_.L_4e15df ], [ %1576, %block_.L_4e149c ], [ %MEMORY.16, %block_.L_4e1165 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4342 = load i64, i64* %RBP.i, align 8
  %4343 = add i64 %4342, -4
  %4344 = add i64 %4341, 3
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i32*
  %4346 = load i32, i32* %4345, align 4
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RAX.i, align 8
  %4348 = load i64, i64* %6, align 8
  %4349 = add i64 %4348, 256
  store i64 %4349, i64* %6, align 8
  %4350 = icmp ugt i64 %4348, -257
  %4351 = zext i1 %4350 to i8
  store i8 %4351, i8* %12, align 1
  %4352 = trunc i64 %4349 to i32
  %4353 = and i32 %4352, 255
  %4354 = tail call i32 @llvm.ctpop.i32(i32 %4353)
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = xor i8 %4356, 1
  store i8 %4357, i8* %13, align 1
  %4358 = xor i64 %4349, %4348
  %4359 = lshr i64 %4358, 4
  %4360 = trunc i64 %4359 to i8
  %4361 = and i8 %4360, 1
  store i8 %4361, i8* %14, align 1
  %4362 = icmp eq i64 %4349, 0
  %4363 = zext i1 %4362 to i8
  store i8 %4363, i8* %15, align 1
  %4364 = lshr i64 %4349, 63
  %4365 = trunc i64 %4364 to i8
  store i8 %4365, i8* %16, align 1
  %4366 = lshr i64 %4348, 63
  %4367 = xor i64 %4364, %4366
  %4368 = add nuw nsw i64 %4367, %4364
  %4369 = icmp eq i64 %4368, 2
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %17, align 1
  %4371 = add i64 %4341, 11
  store i64 %4371, i64* %3, align 8
  %4372 = add i64 %4348, 264
  %4373 = inttoptr i64 %4349 to i64*
  %4374 = load i64, i64* %4373, align 8
  store i64 %4374, i64* %RBP.i, align 8
  store i64 %4372, i64* %6, align 8
  %4375 = add i64 %4341, 12
  store i64 %4375, i64* %3, align 8
  %4376 = inttoptr i64 %4372 to i64*
  %4377 = load i64, i64* %4376, align 8
  store i64 %4377, i64* %3, align 8
  %4378 = add i64 %4348, 272
  store i64 %4378, i64* %6, align 8
  ret %struct.Memory* %MEMORY.68
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
define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 256
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
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xb89e50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x99c070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e0eca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb8af30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8af30_type* @G_0xb8af30 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e0f02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e0ee3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x99c070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._getopt_initialize(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xb8af30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xb8af30_type* @G_0xb8af30 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xafc470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e0f25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4e0f47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xafc478(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4e0f69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xafc480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafc480_type* @G_0xafc480 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e107c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e0fad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exchange(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4e0fd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e0fcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e0fd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x91__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -145
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4e1045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x99c070___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x92__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -146
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1039(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x92__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -146
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x92__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -146
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x91__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -145
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x91__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -145
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e106e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x595178___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x595178_type* @G__0x595178 to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e10f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e111f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e111a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e11aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e11f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xafc480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafc480_type* @G_0xafc480 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e11c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x99c070___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xa1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -161
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1248(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0xa1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -161
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa1__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -161
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0xafc470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e18ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e12de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x2__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e12de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e18ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xa2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -162
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1334(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -61
  %8 = icmp ult i32 %4, 61
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0xa2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -162
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa2__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -162
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1347(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e135d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e134c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_jmpq_.L_4e1307(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i64 %7, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %7, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xafc470___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4e1425(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e13f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1414(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e141b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1420(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1425(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e142a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -33
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
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e136c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e14e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e14e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99c074_type* @G_0x99c074 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e149c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x59517b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x59517b_type* @G__0x59517b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  %7 = add i64 %6, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %6
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %6, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %6, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x99c078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 63, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e161b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1533(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1616(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e15df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1595(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x595199___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x595199_type* @G__0x595199 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e15da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5951c6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5951c6_type* @G__0x5951c6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__r8_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e15df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x99c078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4e1664(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e170f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e16ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5951f3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5951f3_type* @G__0x5951f3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__r8_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 63, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3a___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 58, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -58
  %8 = icmp ult i32 %4, 58
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e174a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1776(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e17ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e18a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e186e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1828(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x595219___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x595219_type* @G__0x595219 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1869(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x595239___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x595239_type* @G__0x595239 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xafc470___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e186e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58898d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e18ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rcx__0xafc470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = load i8, i8* %5, align 1
  store i8 %8, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x59__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -89
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -89
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e18ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -89
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -58
  %8 = icmp ult i32 %4, 58
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e19a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xafc488(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xafc488_type* @G_0xafc488 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1963(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x595259___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x595259_type* @G__0x595259 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -89
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e198d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x595273___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x595273_type* @G__0x595273 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x99c078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99c078_type* @G_0x99c078 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -87
  %8 = icmp ult i32 %4, 87
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3b___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -59
  %8 = icmp ult i32 %4, 59
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1ad1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1aa6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1a72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x59528d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x59528d_type* @G__0x59528d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1a96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3a__MINUS0x59__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -89
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 58, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1a9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3f__MINUS0x59__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -89
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 63, i8* %7, align 1
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
define %struct.Memory* @routine_movq_0xb89e50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xb89e50_type* @G_0xb89e50 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xd5__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -213
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1b12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0xd5__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -213
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd5__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -213
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1b25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1b3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1b2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1ae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1c42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1c1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1be5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1c42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1c09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1c13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1c18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1c1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1c22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1b4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1cda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1cda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1ca0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5952b4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5952b4_type* @G__0x5952b4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1ee9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1d21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1d85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1d5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5952d5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5952d5_type* @G__0x5952d5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1e7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1e75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4e1dd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1e70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1e1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1e75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1eae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1eda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xafc470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xafc470_type* @G_0xafc470 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x57__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 87, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e2065(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e1f7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1f5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e1f69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e2060(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1fb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e2054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e2029(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4e1ffc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4e2020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e2024(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e204f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4e2065(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -257
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
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
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
