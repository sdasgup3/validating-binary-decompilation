; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x462__rip__type = type <{ [8 x i8] }>
%G_0x5cb__rip__type = type <{ [8 x i8] }>
%G_0x5e3__rip__type = type <{ [8 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G_0x602090_type = type <{ [4 x i8] }>
%G_0x602098_type = type <{ [16 x i8] }>
%G_0x6020a0_type = type <{ [16 x i8] }>
%G_0x6020a8_type = type <{ [4 x i8] }>
%G_0x6020ac_type = type <{ [4 x i8] }>
%G_0x6020b0_type = type <{ [16 x i8] }>
%G_0x6020c8_type = type <{ [16 x i8] }>
%G_0x6020d0_type = type <{ [16 x i8] }>
%G_0x6020d8_type = type <{ [16 x i8] }>
%G_0x6020e0_type = type <{ [16 x i8] }>
%G_0x603__rip__type = type <{ [8 x i8] }>
%G_0x6a1__rip__type = type <{ [8 x i8] }>
%G_0x7fd__rip__type = type <{ [8 x i8] }>
%G_0x8d5__rip__type = type <{ [8 x i8] }>
%G_0x90b__rip__type = type <{ [8 x i8] }>
%G_0xd78__rip__type = type <{ [8 x i8] }>
%G_0xf2d__rip__type = type <{ [8 x i8] }>
%G_0xf71__rip__type = type <{ [8 x i8] }>
%G__0x401948_type = type <{ [8 x i8] }>
%G__0x40194b_type = type <{ [8 x i8] }>
%G__0x401965_type = type <{ [8 x i8] }>
%G__0x6020c0_type = type <{ [8 x i8] }>
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
@G_0x462__rip_ = global %G_0x462__rip__type zeroinitializer
@G_0x5cb__rip_ = global %G_0x5cb__rip__type zeroinitializer
@G_0x5e3__rip_ = global %G_0x5e3__rip__type zeroinitializer
@G_0x602080 = local_unnamed_addr global %G_0x602080_type zeroinitializer
@G_0x602090 = local_unnamed_addr global %G_0x602090_type zeroinitializer
@G_0x602098 = local_unnamed_addr global %G_0x602098_type zeroinitializer
@G_0x6020a0 = local_unnamed_addr global %G_0x6020a0_type zeroinitializer
@G_0x6020a8 = local_unnamed_addr global %G_0x6020a8_type zeroinitializer
@G_0x6020ac = local_unnamed_addr global %G_0x6020ac_type zeroinitializer
@G_0x6020b0 = local_unnamed_addr global %G_0x6020b0_type zeroinitializer
@G_0x6020c8 = local_unnamed_addr global %G_0x6020c8_type zeroinitializer
@G_0x6020d0 = local_unnamed_addr global %G_0x6020d0_type zeroinitializer
@G_0x6020d8 = local_unnamed_addr global %G_0x6020d8_type zeroinitializer
@G_0x6020e0 = local_unnamed_addr global %G_0x6020e0_type zeroinitializer
@G_0x603__rip_ = global %G_0x603__rip__type zeroinitializer
@G_0x6a1__rip_ = global %G_0x6a1__rip__type zeroinitializer
@G_0x7fd__rip_ = global %G_0x7fd__rip__type zeroinitializer
@G_0x8d5__rip_ = global %G_0x8d5__rip__type zeroinitializer
@G_0x90b__rip_ = global %G_0x90b__rip__type zeroinitializer
@G_0xd78__rip_ = global %G_0xd78__rip__type zeroinitializer
@G_0xf2d__rip_ = global %G_0xf2d__rip__type zeroinitializer
@G_0xf71__rip_ = global %G_0xf71__rip__type zeroinitializer
@G__0x401948 = global %G__0x401948_type zeroinitializer
@G__0x40194b = global %G__0x40194b_type zeroinitializer
@G__0x401965 = global %G__0x401965_type zeroinitializer
@G__0x6020c0 = global %G__0x6020c0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atol(i64)

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @time(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_4015f0.POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401660.PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401790.P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401810.P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -328
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 320
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
  %40 = add i64 %10, 17
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %RSI.i1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI.i1110, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -184
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 11
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 100000, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -208
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 10
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -172
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1199 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %EAX.i1220 = bitcast %union.anon* %70 to i32*
  %RDX.i1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i1206 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400898

block_.L_400898:                                  ; preds = %block_.L_40096d, %entry
  %71 = phi i64 [ %.pre, %entry ], [ %297, %block_.L_40096d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.2, %block_.L_40096d ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -172
  %74 = add i64 %71, 6
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i1199, align 8
  %78 = add i64 %72, -8
  %79 = add i64 %71, 9
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %76, %81
  %83 = icmp ult i32 %76, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, %76
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %26, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %29, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %32, align 1
  %99 = lshr i32 %76, 31
  %100 = lshr i32 %81, 31
  %101 = xor i32 %100, %99
  %102 = xor i32 %97, %99
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = icmp ne i8 %98, 0
  %107 = xor i1 %106, %104
  %.v = select i1 %107, i64 15, i64 233
  %108 = add i64 %71, %.v
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_4008a7, label %block_.L_400981

block_4008a7:                                     ; preds = %block_.L_400898
  store i64 ptrtoint (%G__0x401948_type* @G__0x401948 to i64), i64* %RSI.i1110, align 8
  store i64 2, i64* %RAX.i1199, align 8
  store i64 2, i64* %RDX.i1213, align 8
  %109 = add i64 %72, -16
  %110 = add i64 %108, 21
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RCX.i1209, align 8
  %113 = add i64 %108, 28
  store i64 %113, i64* %3, align 8
  %114 = load i32, i32* %75, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RDI.i1206, align 8
  %116 = shl nsw i64 %115, 3
  %117 = add i64 %116, %112
  %118 = add i64 %108, 32
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDI.i1206, align 8
  %121 = add i64 %108, -487
  %122 = add i64 %108, 37
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %126 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %127 = load i32, i32* %EAX.i1220, align 4
  %128 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %129 = and i32 %127, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %134 = icmp eq i32 %127, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %29, align 1
  %136 = lshr i32 %127, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %134, i64 36, i64 9
  %138 = add i64 %128, %.v164
  store i64 %138, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br i1 %134, label %block_.L_4008f0, label %block_4008d5

block_4008d5:                                     ; preds = %block_4008a7
  %139 = add i64 %.pre129, -16
  %140 = add i64 %138, 4
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RAX.i1199, align 8
  %143 = add i64 %.pre129, -172
  %144 = add i64 %138, 11
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %RCX.i1209, align 8
  %148 = shl nsw i64 %147, 3
  %149 = add i64 %148, %142
  %150 = add i64 %138, 15
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i1199, align 8
  %153 = add i64 %138, 18
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i8*
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i64
  %157 = and i64 %156, 4294967295
  store i64 %157, i64* %RDX.i1213, align 8
  %158 = sext i8 %155 to i32
  %159 = add nsw i32 %158, -99
  %160 = icmp ult i8 %155, 99
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  %167 = xor i32 %159, %158
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %26, align 1
  %171 = icmp eq i32 %159, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %29, align 1
  %173 = lshr i32 %159, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %32, align 1
  %175 = lshr i32 %158, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  %.v165 = select i1 %171, i64 27, i64 42
  %180 = add i64 %138, %.v165
  store i64 %180, i64* %3, align 8
  br i1 %171, label %block_.L_4008f0, label %block_.L_4008ff

block_.L_4008f0:                                  ; preds = %block_4008a7, %block_4008d5
  %181 = phi i64 [ %180, %block_4008d5 ], [ %138, %block_4008a7 ]
  %182 = add i64 %.pre129, -208
  %183 = add i64 %181, 10
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  store i32 1, i32* %184, align 4
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 115
  br label %block_.L_40096d

block_.L_4008ff:                                  ; preds = %block_4008d5
  %187 = add i64 %180, 4
  store i64 %187, i64* %3, align 8
  %188 = load i64, i64* %141, align 8
  store i64 %188, i64* %RAX.i1199, align 8
  %189 = add i64 %180, 11
  store i64 %189, i64* %3, align 8
  %190 = load i32, i32* %145, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %RCX.i1209, align 8
  %192 = shl nsw i64 %191, 3
  %193 = add i64 %192, %188
  %194 = add i64 %180, 15
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RDI.i1206, align 8
  %197 = add i64 %180, -447
  %198 = add i64 %180, 20
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8
  store i64 %197, i64* %3, align 8
  %202 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %126)
  %203 = load i64, i64* %RAX.i1199, align 8
  %204 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %205 = trunc i64 %203 to i32
  %206 = and i32 %205, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %211 = icmp eq i64 %203, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %29, align 1
  %213 = lshr i64 %203, 63
  %214 = trunc i64 %213 to i8
  store i8 %214, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %215 = icmp ne i8 %214, 0
  %216 = or i1 %211, %215
  %.v166 = select i1 %216, i64 42, i64 10
  %217 = add i64 %204, %.v166
  store i64 %217, i64* %3, align 8
  br i1 %216, label %block_.L_40093d, label %block_40091d

block_40091d:                                     ; preds = %block_.L_4008ff
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -16
  %220 = add i64 %217, 4
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX.i1199, align 8
  %223 = add i64 %218, -172
  %224 = add i64 %217, 11
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX.i1209, align 8
  %228 = shl nsw i64 %227, 3
  %229 = add i64 %228, %222
  %230 = add i64 %217, 15
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RDI.i1206, align 8
  %233 = add i64 %217, -477
  %234 = add i64 %217, 20
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  %238 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %202)
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -184
  %241 = load i64, i64* %RAX.i1199, align 8
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 53
  store i64 %246, i64* %3, align 8
  br label %block_.L_40096d

block_.L_40093d:                                  ; preds = %block_.L_4008ff
  store i64 ptrtoint (%G__0x40194b_type* @G__0x40194b to i64), i64* %RSI.i1110, align 8
  %247 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %247, i64* %RDI.i1206, align 8
  %AL.i1140 = bitcast %union.anon* %70 to i8*
  store i8 0, i8* %AL.i1140, align 1
  %248 = add i64 %217, -541
  %249 = add i64 %217, 25
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %6, align 8
  store i64 %248, i64* %3, align 8
  %253 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %202)
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -4
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  store i32 1, i32* %258, align 4
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -212
  %261 = load i32, i32* %EAX.i1220, align 4
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 6
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %260 to i32*
  store i32 %261, i32* %264, align 4
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 3197
  store i64 %266, i64* %3, align 8
  br label %block_.L_4015e0

block_.L_40096d:                                  ; preds = %block_40091d, %block_.L_4008f0
  %storemerge = phi i64 [ %186, %block_.L_4008f0 ], [ %246, %block_40091d ]
  %MEMORY.2 = phi %struct.Memory* [ %126, %block_.L_4008f0 ], [ %238, %block_40091d ]
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -172
  %269 = add i64 %storemerge, 6
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, 1
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i1199, align 8
  %274 = icmp eq i32 %271, -1
  %275 = icmp eq i32 %272, 0
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %272, %271
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %26, align 1
  %287 = zext i1 %275 to i8
  store i8 %287, i8* %29, align 1
  %288 = lshr i32 %272, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %32, align 1
  %290 = lshr i32 %271, 31
  %291 = xor i32 %288, %290
  %292 = add nuw nsw i32 %291, %288
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %38, align 1
  %295 = add i64 %storemerge, 15
  store i64 %295, i64* %3, align 8
  store i32 %272, i32* %270, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, -228
  store i64 %297, i64* %3, align 8
  br label %block_.L_400898

block_.L_400981:                                  ; preds = %block_.L_400898
  %298 = add i64 %108, 5
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %300 = bitcast [32 x %union.VectorReg]* %299 to i8*
  %301 = bitcast [32 x %union.VectorReg]* %299 to double*
  %302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %304 = bitcast i64* %303 to double*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %306 = bitcast %union.VectorReg* %305 to double*
  %307 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %305, i64 0, i32 0, i32 0, i32 0, i64 0
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %309 = bitcast i64* %308 to double*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %311 = bitcast %union.VectorReg* %310 to double*
  %312 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %310, i64 0, i32 0, i32 0, i32 0, i64 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %314 = bitcast i64* %313 to double*
  %RCX.i651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %316 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %318 = bitcast i64* %317 to double*
  %319 = bitcast %union.VectorReg* %315 to <2 x i32>*
  %320 = bitcast i64* %317 to <2 x i32>*
  %321 = bitcast [32 x %union.VectorReg]* %299 to i32*
  %322 = getelementptr inbounds i8, i8* %300, i64 4
  %323 = bitcast i8* %322 to i32*
  %324 = bitcast i64* %303 to i32*
  %325 = getelementptr inbounds i8, i8* %300, i64 12
  %326 = bitcast i8* %325 to i32*
  %327 = bitcast %union.VectorReg* %305 to <2 x i32>*
  %328 = bitcast i64* %308 to <2 x i32>*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %AL.i = bitcast %union.anon* %70 to i8*
  br label %block_.L_400986

block_.L_400986:                                  ; preds = %block_4015d4, %block_.L_400981
  %330 = phi i32 [ %76, %block_.L_400981 ], [ %2761, %block_4015d4 ]
  %331 = phi i64 [ %77, %block_.L_400981 ], [ %.pre95, %block_4015d4 ]
  %storemerge29 = phi i64 [ %298, %block_.L_400981 ], [ %2759, %block_4015d4 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400981 ], [ %2735, %block_4015d4 ]
  %332 = zext i32 %330 to i64
  %333 = xor i64 %332, %331
  %334 = trunc i64 %333 to i32
  %335 = and i64 %333, 4294967295
  store i64 %335, i64* %RAX.i1199, align 8
  store i8 0, i8* %14, align 1
  %336 = and i32 %334, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = icmp eq i32 %334, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i32 %334, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %345 = and i64 %333, 4294967295
  store i64 %345, i64* %RDI.i1206, align 8
  %346 = add i64 %storemerge29, -598
  %347 = add i64 %storemerge29, 9
  %348 = load i64, i64* %6, align 8
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 %347, i64* %350, align 8
  store i64 %349, i64* %6, align 8
  store i64 %346, i64* %3, align 8
  %351 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.3)
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
  %354 = add i64 %352, 8
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %357 = add i64 %352, add (i64 ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64), i64 8)
  %358 = add i64 %352, 16
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %361 = add i64 %352, add (i64 ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64), i64 16)
  %362 = add i64 %352, 24
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -192
  %367 = load i64, i64* %RAX.i1199, align 8
  %368 = add i64 %352, 31
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i64*
  store i64 %367, i64* %369, align 8
  %370 = load i64, i64* %3, align 8
  %371 = load i64, i64* %312, align 1
  store i64 %371, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %372 = load i64, i64* %307, align 1
  store i64 %372, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  %373 = load i64, i64* %302, align 1
  store i64 %373, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -184
  %376 = add i64 %370, 34
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RAX.i1199, align 8
  %379 = add i64 %374, -168
  %380 = add i64 %370, 41
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i64*
  store i64 %378, i64* %381, align 8
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -172
  %384 = load i64, i64* %3, align 8
  %385 = add i64 %384, 10
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %383 to i32*
  store i32 1, i32* %386, align 4
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -176
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 10
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  store i32 1, i32* %391, align 4
  %.pre96 = load i64, i64* %3, align 8
  %.pre97 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009eb

block_.L_4009eb:                                  ; preds = %block_40159b, %block_.L_400986
  %392 = phi i64 [ %.pre97, %block_.L_400986 ], [ %2683, %block_40159b ]
  %393 = phi i64 [ %.pre96, %block_.L_400986 ], [ %2716, %block_40159b ]
  %MEMORY.4 = phi %struct.Memory* [ %351, %block_.L_400986 ], [ %MEMORY.27, %block_40159b ]
  %394 = add i64 %393, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
  %395 = add i64 %393, 8
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %398 = add i64 %393, add (i64 ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64), i64 8)
  %399 = add i64 %393, 16
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %402 = add i64 %392, -32
  %403 = add i64 %393, 24
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  store i64 0, i64* %404, align 8
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -168
  %407 = load i64, i64* %3, align 8
  %408 = add i64 %407, 8
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409, align 8
  %411 = sext i64 %410 to i128
  %412 = and i128 %411, -18446744073709551616
  %413 = zext i64 %410 to i128
  %414 = or i128 %412, %413
  %415 = mul nsw i128 %414, 12
  %416 = trunc i128 %415 to i64
  store i64 %416, i64* %RAX.i1199, align 8
  %417 = sext i64 %416 to i128
  %418 = icmp ne i128 %417, %415
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %14, align 1
  %420 = trunc i128 %415 to i32
  %421 = and i32 %420, 252
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %426 = lshr i64 %416, 63
  %427 = trunc i64 %426 to i8
  store i8 %427, i8* %32, align 1
  store i8 %419, i8* %38, align 1
  %428 = add i64 %405, -40
  %429 = add i64 %407, 12
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  store i64 %416, i64* %430, align 8
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -168
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 8
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435, align 8
  %437 = sext i64 %436 to i128
  %438 = and i128 %437, -18446744073709551616
  %439 = zext i64 %436 to i128
  %440 = or i128 %438, %439
  %441 = mul nsw i128 %440, 14
  %442 = trunc i128 %441 to i64
  store i64 %442, i64* %RAX.i1199, align 8
  %443 = sext i64 %442 to i128
  %444 = icmp ne i128 %443, %441
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = trunc i128 %441 to i32
  %447 = and i32 %446, 254
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %452 = lshr i64 %442, 63
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %32, align 1
  store i8 %445, i8* %38, align 1
  %454 = add i64 %431, -48
  %455 = add i64 %433, 12
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i64*
  store i64 %442, i64* %456, align 8
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -168
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 11
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i64*
  %462 = load i64, i64* %461, align 8
  %463 = sext i64 %462 to i128
  %464 = and i128 %463, -18446744073709551616
  %465 = zext i64 %462 to i128
  %466 = or i128 %464, %465
  %467 = mul nsw i128 %466, 345
  %468 = trunc i128 %467 to i64
  store i64 %468, i64* %RAX.i1199, align 8
  %469 = sext i64 %468 to i128
  %470 = icmp ne i128 %469, %467
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %14, align 1
  %472 = trunc i128 %467 to i32
  %473 = and i32 %472, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %478 = lshr i64 %468, 63
  %479 = trunc i64 %478 to i8
  store i8 %479, i8* %32, align 1
  store i8 %471, i8* %38, align 1
  %480 = add i64 %457, -56
  %481 = add i64 %459, 15
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i64*
  store i64 %468, i64* %482, align 8
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -168
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, 11
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %484 to i64*
  %488 = load i64, i64* %487, align 8
  %489 = sext i64 %488 to i128
  %490 = and i128 %489, -18446744073709551616
  %491 = zext i64 %488 to i128
  %492 = or i128 %490, %491
  %493 = mul nsw i128 %492, 210
  %494 = trunc i128 %493 to i64
  store i64 %494, i64* %RAX.i1199, align 8
  %495 = sext i64 %494 to i128
  %496 = icmp ne i128 %495, %493
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = trunc i128 %493 to i32
  %499 = and i32 %498, 254
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %504 = lshr i64 %494, 63
  %505 = trunc i64 %504 to i8
  store i8 %505, i8* %32, align 1
  store i8 %497, i8* %38, align 1
  %506 = add i64 %483, -64
  %507 = add i64 %485, 15
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i64*
  store i64 %494, i64* %508, align 8
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -168
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, 7
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = shl i64 %514, 5
  store i64 %515, i64* %RAX.i1199, align 8
  %516 = lshr i64 %514, 59
  %517 = trunc i64 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %14, align 1
  %519 = trunc i64 %515 to i32
  %520 = and i32 %519, 224
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %525 = icmp eq i64 %515, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %29, align 1
  %527 = lshr i64 %514, 58
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %530 = add i64 %509, -72
  %531 = add i64 %511, 15
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  store i64 %515, i64* %532, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -168
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 11
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537, align 8
  %539 = sext i64 %538 to i128
  %540 = and i128 %539, -18446744073709551616
  %541 = zext i64 %538 to i128
  %542 = or i128 %540, %541
  %543 = mul nsw i128 %542, 899
  %544 = trunc i128 %543 to i64
  store i64 %544, i64* %RAX.i1199, align 8
  %545 = sext i64 %544 to i128
  %546 = icmp ne i128 %545, %543
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %14, align 1
  %548 = trunc i128 %543 to i32
  %549 = and i32 %548, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %554 = lshr i64 %544, 63
  %555 = trunc i64 %554 to i8
  store i8 %555, i8* %32, align 1
  store i8 %547, i8* %38, align 1
  %556 = add i64 %533, -80
  %557 = add i64 %535, 15
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i64*
  store i64 %544, i64* %558, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -168
  %561 = load i64, i64* %3, align 8
  %562 = add i64 %561, 11
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %560 to i64*
  %564 = load i64, i64* %563, align 8
  %565 = sext i64 %564 to i128
  %566 = and i128 %565, -18446744073709551616
  %567 = zext i64 %564 to i128
  %568 = or i128 %566, %567
  %569 = mul nsw i128 %568, 616
  %570 = trunc i128 %569 to i64
  store i64 %570, i64* %RAX.i1199, align 8
  %571 = sext i64 %570 to i128
  %572 = icmp ne i128 %571, %569
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = trunc i128 %569 to i32
  %575 = and i32 %574, 248
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575)
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %580 = lshr i64 %570, 63
  %581 = trunc i64 %580 to i8
  store i8 %581, i8* %32, align 1
  store i8 %573, i8* %38, align 1
  %582 = add i64 %559, -88
  %583 = add i64 %561, 15
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  store i64 %570, i64* %584, align 8
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -96
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 8
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i64*
  store i64 0, i64* %589, align 8
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -168
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 8
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594, align 8
  %596 = sext i64 %595 to i128
  %597 = and i128 %596, -18446744073709551616
  %598 = zext i64 %595 to i128
  %599 = or i128 %597, %598
  %600 = mul nsw i128 %599, 93
  %601 = trunc i128 %600 to i64
  store i64 %601, i64* %RAX.i1199, align 8
  %602 = sext i64 %601 to i128
  %603 = icmp ne i128 %602, %600
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %14, align 1
  %605 = trunc i128 %600 to i32
  %606 = and i32 %605, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %611 = lshr i64 %601, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %32, align 1
  store i8 %604, i8* %38, align 1
  %613 = add i64 %590, -104
  %614 = add i64 %592, 12
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  store i64 %601, i64* %615, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -112
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 5
  store i64 %619, i64* %3, align 8
  %620 = load i64, i64* %307, align 1
  %621 = inttoptr i64 %617 to i64*
  store i64 %620, i64* %621, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -120
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, 5
  store i64 %625, i64* %3, align 8
  %626 = load i64, i64* %302, align 1
  %627 = inttoptr i64 %623 to i64*
  store i64 %626, i64* %627, align 8
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -128
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 5
  store i64 %631, i64* %3, align 8
  %632 = load i64, i64* %302, align 1
  %633 = inttoptr i64 %629 to i64*
  store i64 %632, i64* %633, align 8
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -136
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 8
  store i64 %637, i64* %3, align 8
  %638 = load i64, i64* %302, align 1
  %639 = inttoptr i64 %635 to i64*
  store i64 %638, i64* %639, align 8
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -24
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 8
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %641 to i64*
  store i64 1, i64* %644, align 8
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_400a99

block_.L_400a99:                                  ; preds = %block_400aa7, %block_.L_4009eb
  %645 = phi i64 [ %827, %block_400aa7 ], [ %.pre98, %block_.L_4009eb ]
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -24
  %648 = add i64 %645, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX.i1199, align 8
  %651 = add i64 %646, -32
  %652 = add i64 %645, 8
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  %655 = sub i64 %650, %654
  %656 = icmp ult i64 %650, %654
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %14, align 1
  %658 = trunc i64 %655 to i32
  %659 = and i32 %658, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %21, align 1
  %664 = xor i64 %654, %650
  %665 = xor i64 %664, %655
  %666 = lshr i64 %665, 4
  %667 = trunc i64 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %26, align 1
  %669 = icmp eq i64 %655, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %29, align 1
  %671 = lshr i64 %655, 63
  %672 = trunc i64 %671 to i8
  store i8 %672, i8* %32, align 1
  %673 = lshr i64 %650, 63
  %674 = lshr i64 %654, 63
  %675 = xor i64 %674, %673
  %676 = xor i64 %671, %673
  %677 = add nuw nsw i64 %676, %675
  %678 = icmp eq i64 %677, 2
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %38, align 1
  %680 = icmp ne i8 %672, 0
  %681 = xor i1 %680, %678
  %.demorgan = or i1 %669, %681
  %.v140 = select i1 %.demorgan, i64 14, i64 205
  %682 = add i64 %645, %.v140
  store i64 %682, i64* %3, align 8
  br i1 %.demorgan, label %block_400aa7, label %block_.L_400b66

block_400aa7:                                     ; preds = %block_.L_400a99
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %683 = add i64 %646, -112
  %684 = add i64 %682, 15
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %687 = add i64 %646, -120
  %688 = add i64 %682, 20
  store i64 %688, i64* %3, align 8
  %689 = bitcast i64 %686 to double
  %690 = inttoptr i64 %687 to double*
  %691 = load double, double* %690, align 8
  %692 = fadd double %689, %691
  store double %692, double* %301, align 1
  store i64 0, i64* %303, align 1
  %693 = add i64 %646, -128
  %694 = add i64 %682, 25
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to double*
  %696 = load double, double* %695, align 8
  %697 = fadd double %692, %696
  store double %697, double* %301, align 1
  store i64 0, i64* %303, align 1
  %698 = add i64 %646, -136
  %699 = add i64 %682, 33
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to double*
  %701 = load double, double* %700, align 8
  %702 = fsub double %697, %701
  %703 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %704 = fmul double %702, %703
  store double %704, double* %301, align 1
  store i64 0, i64* %303, align 1
  %705 = add i64 %682, 47
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %683 to double*
  store double %704, double* %706, align 8
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -112
  %709 = load i64, i64* %3, align 8
  %710 = add i64 %709, 5
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %708 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %713 = add i64 %707, -120
  %714 = add i64 %709, 10
  store i64 %714, i64* %3, align 8
  %715 = bitcast i64 %712 to double
  %716 = inttoptr i64 %713 to double*
  %717 = load double, double* %716, align 8
  %718 = fadd double %715, %717
  store double %718, double* %301, align 1
  store i64 0, i64* %303, align 1
  %719 = add i64 %707, -128
  %720 = add i64 %709, 15
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to double*
  %722 = load double, double* %721, align 8
  %723 = fsub double %718, %722
  store double %723, double* %301, align 1
  store i64 0, i64* %303, align 1
  %724 = add i64 %707, -136
  %725 = add i64 %709, 23
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to double*
  %727 = load double, double* %726, align 8
  %728 = fadd double %723, %727
  %729 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %730 = fmul double %728, %729
  store double %730, double* %301, align 1
  store i64 0, i64* %303, align 1
  %731 = add i64 %709, 37
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %713 to double*
  store double %730, double* %732, align 8
  %733 = load i64, i64* %RBP.i, align 8
  %734 = add i64 %733, -112
  %735 = load i64, i64* %3, align 8
  %736 = add i64 %735, 5
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %734 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %739 = add i64 %733, -120
  %740 = add i64 %735, 10
  store i64 %740, i64* %3, align 8
  %741 = bitcast i64 %738 to double
  %742 = inttoptr i64 %739 to double*
  %743 = load double, double* %742, align 8
  %744 = fsub double %741, %743
  store double %744, double* %301, align 1
  store i64 0, i64* %303, align 1
  %745 = add i64 %733, -128
  %746 = add i64 %735, 15
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to double*
  %748 = load double, double* %747, align 8
  %749 = fadd double %744, %748
  store double %749, double* %301, align 1
  store i64 0, i64* %303, align 1
  %750 = add i64 %733, -136
  %751 = add i64 %735, 23
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to double*
  %753 = load double, double* %752, align 8
  %754 = fadd double %749, %753
  %755 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %756 = fmul double %754, %755
  store double %756, double* %301, align 1
  store i64 0, i64* %303, align 1
  %757 = add i64 %735, 37
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %745 to double*
  store double %756, double* %758, align 8
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -112
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 5
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763, align 8
  %765 = load i64, i64* %RAX.i1199, align 8
  %766 = xor i64 %765, %764
  store i64 %766, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %767 = trunc i64 %766 to i32
  %768 = and i32 %767, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %21, align 1
  %773 = icmp eq i64 %766, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %29, align 1
  %775 = lshr i64 %766, 63
  %776 = trunc i64 %775 to i8
  store i8 %776, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %766, i64* %302, align 1
  store i64 0, i64* %303, align 1
  %777 = add i64 %759, -120
  %778 = add i64 %761, 23
  store i64 %778, i64* %3, align 8
  %.cast = bitcast i64 %766 to double
  %779 = inttoptr i64 %777 to double*
  %780 = load double, double* %779, align 8
  %781 = fadd double %.cast, %780
  store double %781, double* %301, align 1
  store i64 0, i64* %303, align 1
  %782 = add i64 %759, -128
  %783 = add i64 %761, 28
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to double*
  %785 = load double, double* %784, align 8
  %786 = fadd double %781, %785
  store double %786, double* %301, align 1
  store i64 0, i64* %303, align 1
  %787 = add i64 %759, -136
  %788 = add i64 %761, 36
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to double*
  %790 = load double, double* %789, align 8
  %791 = fadd double %786, %790
  %792 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %793 = fmul double %791, %792
  store double %793, double* %301, align 1
  store i64 0, i64* %303, align 1
  %794 = add i64 %761, 53
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %787 to double*
  store double %793, double* %795, align 8
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -24
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, 4
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i64*
  %801 = load i64, i64* %800, align 8
  %802 = add i64 %801, 1
  store i64 %802, i64* %RAX.i1199, align 8
  %803 = icmp eq i64 %801, -1
  %804 = icmp eq i64 %802, 0
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = trunc i64 %802 to i32
  %808 = and i32 %807, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808)
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %21, align 1
  %813 = xor i64 %802, %801
  %814 = lshr i64 %813, 4
  %815 = trunc i64 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %26, align 1
  %817 = zext i1 %804 to i8
  store i8 %817, i8* %29, align 1
  %818 = lshr i64 %802, 63
  %819 = trunc i64 %818 to i8
  store i8 %819, i8* %32, align 1
  %820 = lshr i64 %801, 63
  %821 = xor i64 %818, %820
  %822 = add nuw nsw i64 %821, %818
  %823 = icmp eq i64 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %38, align 1
  %825 = add i64 %798, 12
  store i64 %825, i64* %3, align 8
  store i64 %802, i64* %800, align 8
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, -200
  store i64 %827, i64* %3, align 8
  br label %block_.L_400a99

block_.L_400b66:                                  ; preds = %block_.L_400a99
  %828 = add i64 %646, -176
  %829 = add i64 %682, 6
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RAX.i1199, align 8
  %833 = add i64 %646, -172
  %834 = add i64 %682, 12
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sub i32 %831, %836
  %838 = icmp ult i32 %831, %836
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %837, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %836, %831
  %846 = xor i32 %845, %837
  %847 = lshr i32 %846, 4
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %26, align 1
  %850 = icmp eq i32 %837, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %29, align 1
  %852 = lshr i32 %837, 31
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %32, align 1
  %854 = lshr i32 %831, 31
  %855 = lshr i32 %836, 31
  %856 = xor i32 %855, %854
  %857 = xor i32 %852, %854
  %858 = add nuw nsw i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %38, align 1
  %.v141 = select i1 %850, i64 18, i64 58
  %861 = add i64 %682, %.v141
  store i64 %861, i64* %3, align 8
  br i1 %850, label %block_400b78, label %block_.L_400ba0

block_400b78:                                     ; preds = %block_.L_400b66
  %862 = add i64 %861, 4
  store i64 %862, i64* %3, align 8
  %863 = load i64, i64* %653, align 8
  store i64 %863, i64* %RDI.i1206, align 8
  %864 = add i64 %861, 8
  store i64 %864, i64* %3, align 8
  %865 = load i64, i64* %653, align 8
  store i64 %865, i64* %RSI.i1110, align 8
  %866 = add i64 %861, 12
  store i64 %866, i64* %3, align 8
  %867 = load i64, i64* %653, align 8
  store i64 %867, i64* %RDX.i596, align 8
  %868 = add i64 %646, -112
  %869 = add i64 %861, 17
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i64*
  %871 = load i64, i64* %870, align 8
  store i64 %871, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %872 = add i64 %646, -120
  %873 = add i64 %861, 22
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %876 = add i64 %646, -128
  %877 = add i64 %861, 27
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %880 = add i64 %646, -136
  %881 = add i64 %861, 35
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %884 = add i64 %861, 2680
  %885 = add i64 %861, 40
  %886 = load i64, i64* %6, align 8
  %887 = add i64 %886, -8
  %888 = inttoptr i64 %887 to i64*
  store i64 %885, i64* %888, align 8
  store i64 %887, i64* %6, align 8
  store i64 %884, i64* %3, align 8
  %call2_400b9b = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %884, %struct.Memory* %MEMORY.4)
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ba0

block_.L_400ba0:                                  ; preds = %block_.L_400b66, %block_400b78
  %889 = phi i64 [ %.pre100, %block_400b78 ], [ %646, %block_.L_400b66 ]
  %890 = phi i64 [ %.pre99, %block_400b78 ], [ %861, %block_.L_400b66 ]
  %891 = add i64 %890, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
  %892 = add i64 %890, 8
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %895 = add i64 %890, add (i64 ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64), i64 8)
  %896 = add i64 %890, 16
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  store i64 %898, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %894, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %894, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %894, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %899 = add i64 %889, -24
  %900 = add i64 %890, 60
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  store i64 1, i64* %901, align 8
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_400bdc

block_.L_400bdc:                                  ; preds = %block_400bea, %block_.L_400ba0
  %902 = phi i64 [ %1005, %block_400bea ], [ %.pre101, %block_.L_400ba0 ]
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -24
  %905 = add i64 %902, 4
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RAX.i1199, align 8
  %908 = add i64 %903, -40
  %909 = add i64 %902, 8
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  %912 = sub i64 %907, %911
  %913 = icmp ult i64 %907, %911
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %14, align 1
  %915 = trunc i64 %912 to i32
  %916 = and i32 %915, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %21, align 1
  %921 = xor i64 %911, %907
  %922 = xor i64 %921, %912
  %923 = lshr i64 %922, 4
  %924 = trunc i64 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %26, align 1
  %926 = icmp eq i64 %912, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %29, align 1
  %928 = lshr i64 %912, 63
  %929 = trunc i64 %928 to i8
  store i8 %929, i8* %32, align 1
  %930 = lshr i64 %907, 63
  %931 = lshr i64 %911, 63
  %932 = xor i64 %931, %930
  %933 = xor i64 %928, %930
  %934 = add nuw nsw i64 %933, %932
  %935 = icmp eq i64 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %38, align 1
  %937 = icmp ne i8 %929, 0
  %938 = xor i1 %937, %935
  %.demorgan130 = or i1 %926, %938
  %.v142 = select i1 %.demorgan130, i64 14, i64 270
  %939 = add i64 %902, %.v142
  store i64 %939, i64* %3, align 8
  br i1 %.demorgan130, label %block_400bea, label %block_.L_400cea

block_400bea:                                     ; preds = %block_.L_400bdc
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %940 = load double, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %941 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %942 = fadd double %940, %941
  %943 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %944 = fadd double %942, %943
  %945 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %946 = fsub double %944, %945
  %947 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %948 = fmul double %946, %947
  store double %948, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %949 = fadd double %948, %941
  %950 = fsub double %949, %943
  %951 = fadd double %950, %945
  %952 = fmul double %951, %947
  store double %952, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %953 = bitcast double %948 to i64
  %954 = fsub double %948, %952
  %955 = fadd double %954, %943
  %956 = fadd double %955, %945
  %957 = fmul double %956, %947
  store double %957, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %958 = xor i64 %953, -9223372036854775808
  store i64 %958, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %959 = trunc i64 %953 to i32
  %960 = and i32 %959, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = icmp eq i64 %958, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %29, align 1
  %967 = lshr i64 %958, 63
  %968 = trunc i64 %967 to i8
  store i8 %968, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %.cast36 = bitcast i64 %958 to double
  %969 = fadd double %.cast36, %952
  %970 = fadd double %969, %957
  %971 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %972 = fadd double %970, %971
  %973 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %974 = fmul double %972, %973
  store double %974, double* %301, align 1
  store i64 0, i64* %303, align 1
  store double %974, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -24
  %977 = add i64 %939, 243
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  %979 = load i64, i64* %978, align 8
  %980 = add i64 %979, 1
  store i64 %980, i64* %RAX.i1199, align 8
  %981 = icmp eq i64 %979, -1
  %982 = icmp eq i64 %980, 0
  %983 = or i1 %981, %982
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %14, align 1
  %985 = trunc i64 %980 to i32
  %986 = and i32 %985, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  %991 = xor i64 %980, %979
  %992 = lshr i64 %991, 4
  %993 = trunc i64 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %26, align 1
  %995 = zext i1 %982 to i8
  store i8 %995, i8* %29, align 1
  %996 = lshr i64 %980, 63
  %997 = trunc i64 %996 to i8
  store i8 %997, i8* %32, align 1
  %998 = lshr i64 %979, 63
  %999 = xor i64 %996, %998
  %1000 = add nuw nsw i64 %999, %996
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %38, align 1
  %1003 = add i64 %939, 251
  store i64 %1003, i64* %3, align 8
  store i64 %980, i64* %978, align 8
  %1004 = load i64, i64* %3, align 8
  %1005 = add i64 %1004, -265
  store i64 %1005, i64* %3, align 8
  br label %block_.L_400bdc

block_.L_400cea:                                  ; preds = %block_.L_400bdc
  %1006 = add i64 %903, -176
  %1007 = add i64 %939, 6
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RAX.i1199, align 8
  %1011 = add i64 %903, -172
  %1012 = add i64 %939, 12
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = sub i32 %1009, %1014
  %1016 = icmp ult i32 %1009, %1014
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %14, align 1
  %1018 = and i32 %1015, 255
  %1019 = tail call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  store i8 %1022, i8* %21, align 1
  %1023 = xor i32 %1014, %1009
  %1024 = xor i32 %1023, %1015
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %26, align 1
  %1028 = icmp eq i32 %1015, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %29, align 1
  %1030 = lshr i32 %1015, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %32, align 1
  %1032 = lshr i32 %1009, 31
  %1033 = lshr i32 %1014, 31
  %1034 = xor i32 %1033, %1032
  %1035 = xor i32 %1030, %1032
  %1036 = add nuw nsw i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %38, align 1
  %.v143 = select i1 %1028, i64 18, i64 71
  %1039 = add i64 %939, %.v143
  store i64 %1039, i64* %3, align 8
  br i1 %1028, label %block_400cfc, label %block_.L_400d31

block_400cfc:                                     ; preds = %block_.L_400cea
  %1040 = add i64 %1039, 4
  store i64 %1040, i64* %3, align 8
  %1041 = load i64, i64* %910, align 8
  store i64 %1041, i64* %RDI.i1206, align 8
  %1042 = add i64 %903, -48
  %1043 = add i64 %1039, 8
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RSI.i1110, align 8
  %1046 = add i64 %1039, 12
  store i64 %1046, i64* %3, align 8
  %1047 = load i64, i64* %910, align 8
  store i64 %1047, i64* %RDX.i596, align 8
  %1048 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1048, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1049 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1049, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1050 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1050, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1051 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  store i64 %1051, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %1052 = add i64 %1039, 2292
  %1053 = add i64 %1039, 53
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, -8
  %1056 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1056, align 8
  store i64 %1055, i64* %6, align 8
  store i64 %1052, i64* %3, align 8
  %call2_400d2c = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %1052, %struct.Memory* %MEMORY.4)
  %.pre102 = load i64, i64* %RBP.i, align 8
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_400d31

block_.L_400d31:                                  ; preds = %block_.L_400cea, %block_400cfc
  %1057 = phi i64 [ %1039, %block_.L_400cea ], [ %.pre103, %block_400cfc ]
  %1058 = phi i64 [ %903, %block_.L_400cea ], [ %.pre102, %block_400cfc ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_.L_400cea ], [ %call2_400d2c, %block_400cfc ]
  %1059 = add i64 %1058, -24
  %1060 = add i64 %1057, 8
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  store i64 1, i64* %1061, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_400d39

block_.L_400d39:                                  ; preds = %block_400d47, %block_.L_400d31
  %1062 = phi i64 [ %1136, %block_400d47 ], [ %.pre104, %block_.L_400d31 ]
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -24
  %1065 = add i64 %1062, 4
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i64*
  %1067 = load i64, i64* %1066, align 8
  store i64 %1067, i64* %RAX.i1199, align 8
  %1068 = add i64 %1063, -48
  %1069 = add i64 %1062, 8
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  %1072 = sub i64 %1067, %1071
  %1073 = icmp ult i64 %1067, %1071
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = trunc i64 %1072 to i32
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i64 %1071, %1067
  %1082 = xor i64 %1081, %1072
  %1083 = lshr i64 %1082, 4
  %1084 = trunc i64 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %26, align 1
  %1086 = icmp eq i64 %1072, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %29, align 1
  %1088 = lshr i64 %1072, 63
  %1089 = trunc i64 %1088 to i8
  store i8 %1089, i8* %32, align 1
  %1090 = lshr i64 %1067, 63
  %1091 = lshr i64 %1071, 63
  %1092 = xor i64 %1091, %1090
  %1093 = xor i64 %1088, %1090
  %1094 = add nuw nsw i64 %1093, %1092
  %1095 = icmp eq i64 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %38, align 1
  %1097 = icmp ne i8 %1089, 0
  %1098 = xor i1 %1097, %1095
  %.demorgan131 = or i1 %1086, %1098
  %.v144 = select i1 %.demorgan131, i64 14, i64 46
  %1099 = add i64 %1062, %.v144
  store i64 %1099, i64* %3, align 8
  br i1 %.demorgan131, label %block_400d47, label %block_.L_400d67

block_400d47:                                     ; preds = %block_.L_400d39
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI.i1206, align 8
  %1100 = add i64 %1099, 2329
  %1101 = add i64 %1099, 15
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %call2_400d51 = tail call %struct.Memory* @sub_401660.PA(%struct.State* nonnull %0, i64 %1100, %struct.Memory* %MEMORY.8)
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -24
  %1107 = load i64, i64* %3, align 8
  %1108 = add i64 %1107, 4
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1106 to i64*
  %1110 = load i64, i64* %1109, align 8
  %1111 = add i64 %1110, 1
  store i64 %1111, i64* %RAX.i1199, align 8
  %1112 = icmp eq i64 %1110, -1
  %1113 = icmp eq i64 %1111, 0
  %1114 = or i1 %1112, %1113
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %14, align 1
  %1116 = trunc i64 %1111 to i32
  %1117 = and i32 %1116, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i64 %1111, %1110
  %1123 = lshr i64 %1122, 4
  %1124 = trunc i64 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %26, align 1
  %1126 = zext i1 %1113 to i8
  store i8 %1126, i8* %29, align 1
  %1127 = lshr i64 %1111, 63
  %1128 = trunc i64 %1127 to i8
  store i8 %1128, i8* %32, align 1
  %1129 = lshr i64 %1110, 63
  %1130 = xor i64 %1127, %1129
  %1131 = add nuw nsw i64 %1130, %1127
  %1132 = icmp eq i64 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %38, align 1
  %1134 = add i64 %1107, 12
  store i64 %1134, i64* %3, align 8
  store i64 %1111, i64* %1109, align 8
  %1135 = load i64, i64* %3, align 8
  %1136 = add i64 %1135, -41
  store i64 %1136, i64* %3, align 8
  br label %block_.L_400d39

block_.L_400d67:                                  ; preds = %block_.L_400d39
  %1137 = add i64 %1063, -176
  %1138 = add i64 %1099, 6
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i1199, align 8
  %1142 = add i64 %1063, -172
  %1143 = add i64 %1099, 12
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sub i32 %1140, %1145
  %1147 = icmp ult i32 %1140, %1145
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %14, align 1
  %1149 = and i32 %1146, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  %1154 = xor i32 %1145, %1140
  %1155 = xor i32 %1154, %1146
  %1156 = lshr i32 %1155, 4
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  store i8 %1158, i8* %26, align 1
  %1159 = icmp eq i32 %1146, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %29, align 1
  %1161 = lshr i32 %1146, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %32, align 1
  %1163 = lshr i32 %1140, 31
  %1164 = lshr i32 %1145, 31
  %1165 = xor i32 %1164, %1163
  %1166 = xor i32 %1161, %1163
  %1167 = add nuw nsw i32 %1166, %1165
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %38, align 1
  %.v145 = select i1 %1159, i64 18, i64 71
  %1170 = add i64 %1099, %.v145
  store i64 %1170, i64* %3, align 8
  br i1 %1159, label %block_400d79, label %block_.L_400dae

block_400d79:                                     ; preds = %block_.L_400d67
  %1171 = add i64 %1170, 4
  store i64 %1171, i64* %3, align 8
  %1172 = load i64, i64* %1070, align 8
  store i64 %1172, i64* %RDI.i1206, align 8
  %1173 = add i64 %1063, -40
  %1174 = add i64 %1170, 8
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RSI.i1110, align 8
  %1177 = add i64 %1170, 12
  store i64 %1177, i64* %3, align 8
  %1178 = load i64, i64* %1175, align 8
  store i64 %1178, i64* %RDX.i596, align 8
  %1179 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1179, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1180 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1180, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1181 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1181, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1182 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  store i64 %1182, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %1183 = add i64 %1170, 2167
  %1184 = add i64 %1170, 53
  %1185 = load i64, i64* %6, align 8
  %1186 = add i64 %1185, -8
  %1187 = inttoptr i64 %1186 to i64*
  store i64 %1184, i64* %1187, align 8
  store i64 %1186, i64* %6, align 8
  store i64 %1183, i64* %3, align 8
  %call2_400da9 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %1183, %struct.Memory* %MEMORY.8)
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400dae

block_.L_400dae:                                  ; preds = %block_.L_400d67, %block_400d79
  %1188 = phi i64 [ %1063, %block_.L_400d67 ], [ %.pre106, %block_400d79 ]
  %1189 = phi i64 [ %1170, %block_.L_400d67 ], [ %.pre105, %block_400d79 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400d67 ], [ %call2_400da9, %block_400d79 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1190 = add i64 %1188, -24
  %1191 = add i64 %1189, 19
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i64*
  store i64 1, i64* %1192, align 8
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_400dc1

block_.L_400dc1:                                  ; preds = %block_.L_400e4a, %block_.L_400dae
  %1193 = phi i32 [ %1284, %block_.L_400e4a ], [ 1, %block_.L_400dae ]
  %1194 = phi i64 [ %1312, %block_.L_400e4a ], [ %.pre107, %block_.L_400dae ]
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -24
  %1197 = add i64 %1194, 4
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RAX.i1199, align 8
  %1200 = add i64 %1195, -56
  %1201 = add i64 %1194, 8
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i64*
  %1203 = load i64, i64* %1202, align 8
  %1204 = sub i64 %1199, %1203
  %1205 = icmp ult i64 %1199, %1203
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %14, align 1
  %1207 = trunc i64 %1204 to i32
  %1208 = and i32 %1207, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  %1213 = xor i64 %1203, %1199
  %1214 = xor i64 %1213, %1204
  %1215 = lshr i64 %1214, 4
  %1216 = trunc i64 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %26, align 1
  %1218 = icmp eq i64 %1204, 0
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %29, align 1
  %1220 = lshr i64 %1204, 63
  %1221 = trunc i64 %1220 to i8
  store i8 %1221, i8* %32, align 1
  %1222 = lshr i64 %1199, 63
  %1223 = lshr i64 %1203, 63
  %1224 = xor i64 %1223, %1222
  %1225 = xor i64 %1220, %1222
  %1226 = add nuw nsw i64 %1225, %1224
  %1227 = icmp eq i64 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %38, align 1
  %1229 = icmp ne i8 %1221, 0
  %1230 = xor i1 %1229, %1227
  %.demorgan132 = or i1 %1218, %1230
  %.v146 = select i1 %.demorgan132, i64 14, i64 159
  %1231 = add i64 %1194, %.v146
  store i64 %1231, i64* %3, align 8
  br i1 %.demorgan132, label %block_400dcf, label %block_.L_400e60

block_400dcf:                                     ; preds = %block_.L_400dc1
  %1232 = add nsw i32 %1193, -1
  %1233 = icmp eq i32 %1193, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %14, align 1
  %1235 = and i32 %1232, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %21, align 1
  %1240 = xor i32 %1232, %1193
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %26, align 1
  %1244 = icmp eq i32 %1232, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %29, align 1
  %1246 = lshr i32 %1232, 31
  %1247 = trunc i32 %1246 to i8
  store i8 %1247, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v161 = select i1 %1244, i64 14, i64 30
  %1248 = add i64 %1231, %.v161
  %1249 = add i64 %1248, 11
  store i64 %1249, i64* %3, align 8
  br i1 %1244, label %block_400ddd, label %block_.L_400ded

block_400ddd:                                     ; preds = %block_400dcf
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1250 = add i64 %1248, 27
  store i64 %1250, i64* %3, align 8
  br label %block_.L_400df8

block_.L_400ded:                                  ; preds = %block_400dcf
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400df8

block_.L_400df8:                                  ; preds = %block_.L_400ded, %block_400ddd
  %1251 = phi i32 [ 1, %block_.L_400ded ], [ 0, %block_400ddd ]
  %1252 = phi i64 [ %1249, %block_.L_400ded ], [ %1250, %block_400ddd ]
  store i8 0, i8* %14, align 1
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1251)
  %1254 = trunc i32 %1253 to i8
  %1255 = xor i8 %1254, 1
  store i8 %1255, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1256 = icmp eq i32 %1251, 0
  %1257 = trunc i32 %1251 to i8
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v162 = select i1 %1256, i64 30, i64 14
  %1259 = add i64 %1252, %.v162
  %1260 = add i64 %1259, 11
  store i64 %1260, i64* %3, align 8
  br i1 %1256, label %block_.L_400e16, label %block_400e06

block_400e06:                                     ; preds = %block_.L_400df8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1261 = add i64 %1259, 27
  store i64 %1261, i64* %3, align 8
  br label %block_.L_400e21

block_.L_400e16:                                  ; preds = %block_.L_400df8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400e21

block_.L_400e21:                                  ; preds = %block_.L_400e16, %block_400e06
  %1262 = phi i32 [ 1, %block_.L_400e16 ], [ 0, %block_400e06 ]
  %1263 = phi i64 [ %1260, %block_.L_400e16 ], [ %1261, %block_400e06 ]
  %1264 = add nsw i32 %1262, -1
  %1265 = trunc i32 %1262 to i8
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %14, align 1
  %1267 = and i32 %1264, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %21, align 1
  %1272 = lshr i32 %1264, 4
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  store i8 %1274, i8* %26, align 1
  %1275 = icmp eq i32 %1264, 0
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %29, align 1
  %1277 = lshr i32 %1264, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1279 = icmp ne i8 %1278, 0
  %.v163 = select i1 %1279, i64 14, i64 30
  %1280 = add i64 %1263, %.v163
  %1281 = add i64 %1280, 11
  store i64 %1281, i64* %3, align 8
  br i1 %1279, label %block_400e2f, label %block_.L_400e3f

block_400e2f:                                     ; preds = %block_.L_400e21
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1282 = add i64 %1280, 27
  store i64 %1282, i64* %3, align 8
  br label %block_.L_400e4a

block_.L_400e3f:                                  ; preds = %block_.L_400e21
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400e4a

block_.L_400e4a:                                  ; preds = %block_.L_400e3f, %block_400e2f
  %1283 = phi i64 [ %1281, %block_.L_400e3f ], [ %1282, %block_400e2f ]
  %1284 = phi i32 [ 0, %block_.L_400e3f ], [ 1, %block_400e2f ]
  %1285 = add i64 %1283, 9
  store i64 %1285, i64* %3, align 8
  %1286 = load i64, i64* %1198, align 8
  %1287 = add i64 %1286, 1
  store i64 %1287, i64* %RAX.i1199, align 8
  %1288 = icmp eq i64 %1286, -1
  %1289 = icmp eq i64 %1287, 0
  %1290 = or i1 %1288, %1289
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %14, align 1
  %1292 = trunc i64 %1287 to i32
  %1293 = and i32 %1292, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %21, align 1
  %1298 = xor i64 %1287, %1286
  %1299 = lshr i64 %1298, 4
  %1300 = trunc i64 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %26, align 1
  %1302 = zext i1 %1289 to i8
  store i8 %1302, i8* %29, align 1
  %1303 = lshr i64 %1287, 63
  %1304 = trunc i64 %1303 to i8
  store i8 %1304, i8* %32, align 1
  %1305 = lshr i64 %1286, 63
  %1306 = xor i64 %1303, %1305
  %1307 = add nuw nsw i64 %1306, %1303
  %1308 = icmp eq i64 %1307, 2
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %38, align 1
  %1310 = add i64 %1283, 17
  store i64 %1310, i64* %3, align 8
  store i64 %1287, i64* %1198, align 8
  %1311 = load i64, i64* %3, align 8
  %1312 = add i64 %1311, -154
  store i64 %1312, i64* %3, align 8
  br label %block_.L_400dc1

block_.L_400e60:                                  ; preds = %block_.L_400dc1
  %1313 = add i64 %1195, -176
  %1314 = add i64 %1231, 6
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX.i1199, align 8
  %1318 = add i64 %1195, -172
  %1319 = add i64 %1231, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = sub i32 %1316, %1321
  %1323 = icmp ult i32 %1316, %1321
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %14, align 1
  %1325 = and i32 %1322, 255
  %1326 = tail call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %21, align 1
  %1330 = xor i32 %1321, %1316
  %1331 = xor i32 %1330, %1322
  %1332 = lshr i32 %1331, 4
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  store i8 %1334, i8* %26, align 1
  %1335 = icmp eq i32 %1322, 0
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %29, align 1
  %1337 = lshr i32 %1322, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %32, align 1
  %1339 = lshr i32 %1316, 31
  %1340 = lshr i32 %1321, 31
  %1341 = xor i32 %1340, %1339
  %1342 = xor i32 %1337, %1339
  %1343 = add nuw nsw i32 %1342, %1341
  %1344 = icmp eq i32 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %38, align 1
  %.v147 = select i1 %1335, i64 18, i64 66
  %1346 = add i64 %1231, %.v147
  store i64 %1346, i64* %3, align 8
  br i1 %1335, label %block_400e72, label %block_.L_400ea2

block_400e72:                                     ; preds = %block_.L_400e60
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %3, align 8
  %1348 = load i64, i64* %1202, align 8
  store i64 %1348, i64* %RDI.i1206, align 8
  %1349 = sext i32 %1193 to i64
  store i64 %1349, i64* %RSI.i1110, align 8
  store i64 %1349, i64* %RDX.i596, align 8
  %1350 = add i64 %1195, -112
  %1351 = add i64 %1346, 25
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1354 = add i64 %1195, -120
  %1355 = add i64 %1346, 30
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1358 = add i64 %1195, -128
  %1359 = add i64 %1346, 35
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1362 = add i64 %1195, -136
  %1363 = add i64 %1346, 43
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i64*
  %1365 = load i64, i64* %1364, align 8
  store i64 %1365, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %1366 = add i64 %1346, 1918
  %1367 = add i64 %1346, 48
  %1368 = load i64, i64* %6, align 8
  %1369 = add i64 %1368, -8
  %1370 = inttoptr i64 %1369 to i64*
  store i64 %1367, i64* %1370, align 8
  store i64 %1369, i64* %6, align 8
  store i64 %1366, i64* %3, align 8
  %call2_400e9d = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %1366, %struct.Memory* %MEMORY.10)
  %.pre108 = load i64, i64* %3, align 8
  %.pre109 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ea2

block_.L_400ea2:                                  ; preds = %block_.L_400e60, %block_400e72
  %1371 = phi i64 [ %1195, %block_.L_400e60 ], [ %.pre109, %block_400e72 ]
  %1372 = phi i64 [ %1346, %block_.L_400e60 ], [ %.pre108, %block_400e72 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e60 ], [ %call2_400e9d, %block_400e72 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1373 = add i64 %1371, -24
  %1374 = add i64 %1372, 41
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i64*
  store i64 1, i64* %1375, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_400ecb

block_.L_400ecb:                                  ; preds = %block_400ed9, %block_.L_400ea2
  %1376 = phi i32 [ %1446, %block_400ed9 ], [ 2, %block_.L_400ea2 ]
  %1377 = phi i64 [ %1515, %block_400ed9 ], [ %.pre110, %block_.L_400ea2 ]
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -24
  %1380 = add i64 %1377, 4
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RAX.i1199, align 8
  %1383 = add i64 %1378, -64
  %1384 = add i64 %1377, 8
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i64*
  %1386 = load i64, i64* %1385, align 8
  %1387 = sub i64 %1382, %1386
  %1388 = icmp ult i64 %1382, %1386
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %14, align 1
  %1390 = trunc i64 %1387 to i32
  %1391 = and i32 %1390, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %21, align 1
  %1396 = xor i64 %1386, %1382
  %1397 = xor i64 %1396, %1387
  %1398 = lshr i64 %1397, 4
  %1399 = trunc i64 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %26, align 1
  %1401 = icmp eq i64 %1387, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i64 %1387, 63
  %1404 = trunc i64 %1403 to i8
  store i8 %1404, i8* %32, align 1
  %1405 = lshr i64 %1382, 63
  %1406 = lshr i64 %1386, 63
  %1407 = xor i64 %1406, %1405
  %1408 = xor i64 %1403, %1405
  %1409 = add nuw nsw i64 %1408, %1407
  %1410 = icmp eq i64 %1409, 2
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %38, align 1
  %1412 = icmp ne i8 %1404, 0
  %1413 = xor i1 %1412, %1410
  %.demorgan133 = or i1 %1401, %1413
  %.v148 = select i1 %.demorgan133, i64 14, i64 259
  %1414 = add i64 %1377, %.v148
  store i64 %1414, i64* %3, align 8
  br i1 %.demorgan133, label %block_400ed9, label %block_.L_400fce

block_400ed9:                                     ; preds = %block_.L_400ecb
  %1415 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1416 = sub i32 %1376, %1415
  %1417 = sext i32 %1415 to i64
  %1418 = sext i32 %1416 to i64
  %1419 = mul nsw i64 %1418, %1417
  %1420 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1421 = sub i32 %1420, %1376
  %1422 = shl i64 %1419, 32
  %1423 = ashr exact i64 %1422, 32
  %1424 = sext i32 %1421 to i64
  %1425 = mul nsw i64 %1424, %1423
  %1426 = trunc i64 %1425 to i32
  store i32 %1426, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1427 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1428 = mul i32 %1427, %1426
  store i32 %1428, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1429 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1430 = sub i32 %1429, %1428
  %1431 = add i32 %1426, %1428
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RCX.i651, align 8
  %1433 = mul i32 %1431, %1430
  store i32 %1433, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1434 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1435 = add i32 %1434, %1426
  %1436 = add i32 %1433, %1435
  %1437 = sitofp i32 %1436 to double
  %1438 = add i32 %1433, -1
  %1439 = sext i32 %1438 to i64
  %1440 = shl nsw i64 %1439, 3
  %1441 = add nsw i64 %1440, 6299840
  %1442 = add i64 %1414, 179
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to double*
  store double %1437, double* %1443, align 8
  %1444 = load i64, i64* %3, align 8
  %1445 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1446 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1447 = sext i32 %1445 to i64
  %1448 = sext i32 %1446 to i64
  %1449 = mul nsw i64 %1448, %1447
  %1450 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1451 = shl i64 %1449, 32
  %1452 = ashr exact i64 %1451, 32
  %1453 = sext i32 %1450 to i64
  %1454 = mul nsw i64 %1453, %1452
  %1455 = trunc i64 %1454 to i32
  %1456 = sitofp i32 %1455 to double
  store double %1456, double* %301, align 1
  %1457 = add i32 %1446, -1
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RAX.i1199, align 8
  %1459 = icmp eq i32 %1446, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = and i32 %1457, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i32 %1457, %1446
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %26, align 1
  %1470 = icmp eq i32 %1457, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %29, align 1
  %1472 = lshr i32 %1457, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %32, align 1
  %1474 = lshr i32 %1446, 31
  %1475 = xor i32 %1472, %1474
  %1476 = add nuw nsw i32 %1475, %1474
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %38, align 1
  %1479 = sext i32 %1457 to i64
  store i64 %1479, i64* %RDX.i596, align 8
  %1480 = shl nsw i64 %1479, 3
  %1481 = add nsw i64 %1480, 6299840
  %1482 = add i64 %1444, 49
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to double*
  store double %1456, double* %1483, align 8
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -24
  %1486 = load i64, i64* %3, align 8
  %1487 = add i64 %1486, 4
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1485 to i64*
  %1489 = load i64, i64* %1488, align 8
  %1490 = add i64 %1489, 1
  store i64 %1490, i64* %RAX.i1199, align 8
  %1491 = icmp eq i64 %1489, -1
  %1492 = icmp eq i64 %1490, 0
  %1493 = or i1 %1491, %1492
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %14, align 1
  %1495 = trunc i64 %1490 to i32
  %1496 = and i32 %1495, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %21, align 1
  %1501 = xor i64 %1490, %1489
  %1502 = lshr i64 %1501, 4
  %1503 = trunc i64 %1502 to i8
  %1504 = and i8 %1503, 1
  store i8 %1504, i8* %26, align 1
  %1505 = zext i1 %1492 to i8
  store i8 %1505, i8* %29, align 1
  %1506 = lshr i64 %1490, 63
  %1507 = trunc i64 %1506 to i8
  store i8 %1507, i8* %32, align 1
  %1508 = lshr i64 %1489, 63
  %1509 = xor i64 %1506, %1508
  %1510 = add nuw nsw i64 %1509, %1506
  %1511 = icmp eq i64 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %38, align 1
  %1513 = add i64 %1486, 12
  store i64 %1513, i64* %3, align 8
  store i64 %1490, i64* %1488, align 8
  %1514 = load i64, i64* %3, align 8
  %1515 = add i64 %1514, -254
  store i64 %1515, i64* %3, align 8
  br label %block_.L_400ecb

block_.L_400fce:                                  ; preds = %block_.L_400ecb
  %1516 = add i64 %1378, -176
  %1517 = add i64 %1414, 6
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RAX.i1199, align 8
  %1521 = add i64 %1378, -172
  %1522 = add i64 %1414, 12
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = sub i32 %1519, %1524
  %1526 = icmp ult i32 %1519, %1524
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %14, align 1
  %1528 = and i32 %1525, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %21, align 1
  %1533 = xor i32 %1524, %1519
  %1534 = xor i32 %1533, %1525
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %26, align 1
  %1538 = icmp eq i32 %1525, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %29, align 1
  %1540 = lshr i32 %1525, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %32, align 1
  %1542 = lshr i32 %1519, 31
  %1543 = lshr i32 %1524, 31
  %1544 = xor i32 %1543, %1542
  %1545 = xor i32 %1540, %1542
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %38, align 1
  %.v149 = select i1 %1538, i64 18, i64 79
  %1549 = add i64 %1414, %.v149
  store i64 %1549, i64* %3, align 8
  br i1 %1538, label %block_400fe0, label %block_.L_40101d

block_400fe0:                                     ; preds = %block_.L_400fce
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %3, align 8
  %1551 = load i64, i64* %1385, align 8
  store i64 %1551, i64* %RDI.i1206, align 8
  %1552 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RSI.i1110, align 8
  %1554 = sext i32 %1376 to i64
  store i64 %1554, i64* %RDX.i596, align 8
  %1555 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1555, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1556 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1556, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1557 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1557, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1558 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  store i64 %1558, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %1559 = add i64 %1549, 1552
  %1560 = add i64 %1549, 61
  %1561 = load i64, i64* %6, align 8
  %1562 = add i64 %1561, -8
  %1563 = inttoptr i64 %1562 to i64*
  store i64 %1560, i64* %1563, align 8
  store i64 %1562, i64* %6, align 8
  store i64 %1559, i64* %3, align 8
  %call2_401018 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %1559, %struct.Memory* %MEMORY.15)
  %.pre111 = load i64, i64* %3, align 8
  %.pre112 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40101d

block_.L_40101d:                                  ; preds = %block_.L_400fce, %block_400fe0
  %1564 = phi i64 [ %1378, %block_.L_400fce ], [ %.pre112, %block_400fe0 ]
  %1565 = phi i64 [ %1549, %block_.L_400fce ], [ %.pre111, %block_400fe0 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400fce ], [ %call2_401018, %block_400fe0 ]
  %1566 = add i64 %1565, ptrtoint (%G_0x90b__rip__type* @G_0x90b__rip_ to i64)
  %1567 = add i64 %1565, 8
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i64*
  %1569 = load i64, i64* %1568, align 8
  store i64 %1569, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1570 = add i64 %1564, -144
  %1571 = add i64 %1565, 16
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i64*
  store i64 %1569, i64* %1572, align 8
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -152
  %1575 = load i64, i64* %3, align 8
  %1576 = add i64 %1575, 8
  store i64 %1576, i64* %3, align 8
  %1577 = load i64, i64* %302, align 1
  %1578 = inttoptr i64 %1574 to i64*
  store i64 %1577, i64* %1578, align 8
  %1579 = load i64, i64* %RBP.i, align 8
  %1580 = add i64 %1579, -24
  %1581 = load i64, i64* %3, align 8
  %1582 = add i64 %1581, 8
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1580 to i64*
  store i64 1, i64* %1583, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_40103d

block_.L_40103d:                                  ; preds = %block_40104b, %block_.L_40101d
  %1584 = phi i64 [ %.pre113, %block_.L_40101d ], [ %1953, %block_40104b ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_40101d ], [ %call2_40120a, %block_40104b ]
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -24
  %1587 = add i64 %1584, 4
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i64*
  %1589 = load i64, i64* %1588, align 8
  store i64 %1589, i64* %RAX.i1199, align 8
  %1590 = add i64 %1585, -72
  %1591 = add i64 %1584, 8
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i64*
  %1593 = load i64, i64* %1592, align 8
  %1594 = sub i64 %1589, %1593
  %1595 = icmp ult i64 %1589, %1593
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %14, align 1
  %1597 = trunc i64 %1594 to i32
  %1598 = and i32 %1597, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %21, align 1
  %1603 = xor i64 %1593, %1589
  %1604 = xor i64 %1603, %1594
  %1605 = lshr i64 %1604, 4
  %1606 = trunc i64 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %26, align 1
  %1608 = icmp eq i64 %1594, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %29, align 1
  %1610 = lshr i64 %1594, 63
  %1611 = trunc i64 %1610 to i8
  store i8 %1611, i8* %32, align 1
  %1612 = lshr i64 %1589, 63
  %1613 = lshr i64 %1593, 63
  %1614 = xor i64 %1613, %1612
  %1615 = xor i64 %1610, %1612
  %1616 = add nuw nsw i64 %1615, %1614
  %1617 = icmp eq i64 %1616, 2
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %38, align 1
  %1619 = icmp ne i8 %1611, 0
  %1620 = xor i1 %1619, %1617
  %.demorgan134 = or i1 %1608, %1620
  %.v150 = select i1 %.demorgan134, i64 14, i64 503
  %1621 = add i64 %1584, %.v150
  store i64 %1621, i64* %3, align 8
  br i1 %.demorgan134, label %block_40104b, label %block_.L_401234

block_40104b:                                     ; preds = %block_.L_40103d
  %1622 = add i64 %1621, ptrtoint (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64)
  %1623 = add i64 %1621, 8
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1626 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1626, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1627 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1627, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1628 = add i64 %1585, -144
  %1629 = add i64 %1621, 34
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %316, align 1
  store double 0.000000e+00, double* %318, align 1
  %1632 = add i64 %1585, -224
  %1633 = add i64 %1621, 42
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  store i64 %1625, i64* %1634, align 8
  %1635 = load i64, i64* %3, align 8
  %1636 = load <2 x i32>, <2 x i32>* %319, align 1
  %1637 = load <2 x i32>, <2 x i32>* %320, align 1
  %1638 = extractelement <2 x i32> %1636, i32 0
  store i32 %1638, i32* %321, align 1
  %1639 = extractelement <2 x i32> %1636, i32 1
  store i32 %1639, i32* %323, align 1
  %1640 = extractelement <2 x i32> %1637, i32 0
  store i32 %1640, i32* %324, align 1
  %1641 = extractelement <2 x i32> %1637, i32 1
  store i32 %1641, i32* %326, align 1
  %1642 = load i64, i64* %RBP.i, align 8
  %1643 = add i64 %1642, -232
  %1644 = add i64 %1635, 11
  store i64 %1644, i64* %3, align 8
  %1645 = load i64, i64* %312, align 1
  %1646 = inttoptr i64 %1643 to i64*
  store i64 %1645, i64* %1646, align 8
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -240
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 8
  store i64 %1650, i64* %3, align 8
  %1651 = load i64, i64* %307, align 1
  %1652 = inttoptr i64 %1648 to i64*
  store i64 %1651, i64* %1652, align 8
  %1653 = load i64, i64* %3, align 8
  %1654 = add i64 %1653, -2360
  %1655 = add i64 %1653, 5
  %1656 = load i64, i64* %6, align 8
  %1657 = add i64 %1656, -8
  %1658 = inttoptr i64 %1657 to i64*
  store i64 %1655, i64* %1658, align 8
  store i64 %1657, i64* %6, align 8
  store i64 %1654, i64* %3, align 8
  %call2_401088 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %1654, %struct.Memory* %MEMORY.18)
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -232
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, 8
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1660 to double*
  %1664 = load double, double* %1663, align 8
  %1665 = load double, double* %301, align 1
  %1666 = fmul double %1664, %1665
  store double %1666, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1667 = add i64 %1659, -144
  %1668 = add i64 %1661, 20
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i64*
  %1670 = load i64, i64* %1669, align 8
  store i64 %1670, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1671 = add i64 %1659, -248
  %1672 = add i64 %1661, 28
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to double*
  store double %1666, double* %1673, align 8
  %1674 = load i64, i64* %3, align 8
  %1675 = add i64 %1674, -2457
  %1676 = add i64 %1674, 5
  %1677 = load i64, i64* %6, align 8
  %1678 = add i64 %1677, -8
  %1679 = inttoptr i64 %1678 to i64*
  store i64 %1676, i64* %1679, align 8
  store i64 %1678, i64* %6, align 8
  store i64 %1675, i64* %3, align 8
  %call2_4010a9 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1675, %struct.Memory* %call2_401088)
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -248
  %1682 = load i64, i64* %3, align 8
  %1683 = add i64 %1682, 8
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1681 to double*
  %1685 = load double, double* %1684, align 8
  %1686 = load double, double* %301, align 1
  %1687 = fmul double %1685, %1686
  store double %1687, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1688 = add i64 %1680, -144
  %1689 = add i64 %1682, 20
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i64*
  %1691 = load i64, i64* %1690, align 8
  store i64 %1691, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1692 = add i64 %1680, -152
  %1693 = add i64 %1682, 28
  store i64 %1693, i64* %3, align 8
  %1694 = bitcast i64 %1691 to double
  %1695 = inttoptr i64 %1692 to double*
  %1696 = load double, double* %1695, align 8
  %1697 = fadd double %1694, %1696
  store double %1697, double* %301, align 1
  store i64 0, i64* %303, align 1
  %1698 = add i64 %1680, -256
  %1699 = add i64 %1682, 36
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to double*
  store double %1687, double* %1700, align 8
  %1701 = load i64, i64* %3, align 8
  %1702 = add i64 %1701, -2498
  %1703 = add i64 %1701, 5
  %1704 = load i64, i64* %6, align 8
  %1705 = add i64 %1704, -8
  %1706 = inttoptr i64 %1705 to i64*
  store i64 %1703, i64* %1706, align 8
  store i64 %1705, i64* %6, align 8
  store i64 %1702, i64* %3, align 8
  %call2_4010d2 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1702, %struct.Memory* %call2_4010a9)
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -144
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, 8
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711, align 8
  store i64 %1712, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1713 = add i64 %1707, -152
  %1714 = add i64 %1709, 16
  store i64 %1714, i64* %3, align 8
  %1715 = bitcast i64 %1712 to double
  %1716 = inttoptr i64 %1713 to double*
  %1717 = load double, double* %1716, align 8
  %1718 = fsub double %1715, %1717
  store double %1718, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1719 = add i64 %1707, -264
  %1720 = add i64 %1709, 24
  store i64 %1720, i64* %3, align 8
  %1721 = load i64, i64* %302, align 1
  %1722 = inttoptr i64 %1719 to i64*
  store i64 %1721, i64* %1722, align 8
  %1723 = load i64, i64* %3, align 8
  %1724 = load <2 x i32>, <2 x i32>* %327, align 1
  %1725 = load <2 x i32>, <2 x i32>* %328, align 1
  %1726 = extractelement <2 x i32> %1724, i32 0
  store i32 %1726, i32* %321, align 1
  %1727 = extractelement <2 x i32> %1724, i32 1
  store i32 %1727, i32* %323, align 1
  %1728 = extractelement <2 x i32> %1725, i32 0
  store i32 %1728, i32* %324, align 1
  %1729 = extractelement <2 x i32> %1725, i32 1
  store i32 %1729, i32* %326, align 1
  %1730 = add i64 %1723, -2527
  %1731 = add i64 %1723, 8
  %1732 = load i64, i64* %6, align 8
  %1733 = add i64 %1732, -8
  %1734 = inttoptr i64 %1733 to i64*
  store i64 %1731, i64* %1734, align 8
  store i64 %1733, i64* %6, align 8
  store i64 %1730, i64* %3, align 8
  %call2_4010f2 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1730, %struct.Memory* %call2_4010d2)
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -264
  %1737 = load i64, i64* %3, align 8
  %1738 = add i64 %1737, 8
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1736 to double*
  %1740 = load double, double* %1739, align 8
  %1741 = load double, double* %301, align 1
  %1742 = fadd double %1740, %1741
  store double %1742, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1743 = add i64 %1735, -224
  %1744 = add i64 %1737, 20
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %.cast41 = bitcast i64 %1746 to double
  %1747 = fsub double %1742, %.cast41
  store double %1747, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1748 = add i64 %1735, -256
  %1749 = add i64 %1737, 32
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to double*
  %1751 = load double, double* %1750, align 8
  %1752 = fdiv double %1751, %1747
  store double %1752, double* %311, align 1
  store i64 0, i64* %313, align 1
  %.cast43 = bitcast double %1752 to <2 x i32>
  %1753 = extractelement <2 x i32> %.cast43, i32 0
  store i32 %1753, i32* %321, align 1
  %1754 = extractelement <2 x i32> %.cast43, i32 1
  store i32 %1754, i32* %323, align 1
  store i32 0, i32* %324, align 1
  store i32 0, i32* %326, align 1
  %1755 = add i64 %1737, -2583
  %1756 = add i64 %1737, 44
  %1757 = load i64, i64* %6, align 8
  %1758 = add i64 %1757, -8
  %1759 = inttoptr i64 %1758 to i64*
  store i64 %1756, i64* %1759, align 8
  store i64 %1758, i64* %6, align 8
  store i64 %1755, i64* %3, align 8
  %call2_40111e = tail call %struct.Memory* @ext_atan(%struct.State* nonnull %0, i64 %1755, %struct.Memory* %call2_4010f2)
  %1760 = load i64, i64* %3, align 8
  %1761 = add i64 %1760, ptrtoint (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64)
  %1762 = add i64 %1760, 8
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -240
  %1767 = add i64 %1760, 16
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to double*
  %1769 = load double, double* %1768, align 8
  %1770 = load double, double* %301, align 1
  %1771 = fmul double %1769, %1770
  %1772 = add i64 %1765, -144
  %1773 = add i64 %1760, 28
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to double*
  store double %1771, double* %1774, align 8
  %1775 = load i64, i64* %3, align 8
  %1776 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1776, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1777 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1777, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -152
  %1780 = add i64 %1775, 26
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i64*
  %1782 = load i64, i64* %1781, align 8
  store i64 %1782, i64* %316, align 1
  store double 0.000000e+00, double* %318, align 1
  %1783 = add i64 %1778, -272
  %1784 = add i64 %1775, 34
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i64*
  store i64 %1776, i64* %1785, align 8
  %1786 = load i64, i64* %3, align 8
  %1787 = load <2 x i32>, <2 x i32>* %319, align 1
  %1788 = load <2 x i32>, <2 x i32>* %320, align 1
  %1789 = extractelement <2 x i32> %1787, i32 0
  store i32 %1789, i32* %321, align 1
  %1790 = extractelement <2 x i32> %1787, i32 1
  store i32 %1790, i32* %323, align 1
  %1791 = extractelement <2 x i32> %1788, i32 0
  store i32 %1791, i32* %324, align 1
  %1792 = extractelement <2 x i32> %1788, i32 1
  store i32 %1792, i32* %326, align 1
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -280
  %1795 = add i64 %1786, 11
  store i64 %1795, i64* %3, align 8
  %1796 = load i64, i64* %307, align 1
  %1797 = inttoptr i64 %1794 to i64*
  store i64 %1796, i64* %1797, align 8
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add i64 %1798, -288
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 8
  store i64 %1801, i64* %3, align 8
  %1802 = load i64, i64* %312, align 1
  %1803 = inttoptr i64 %1799 to i64*
  store i64 %1802, i64* %1803, align 8
  %1804 = load i64, i64* %3, align 8
  %1805 = add i64 %1804, -2596
  %1806 = add i64 %1804, 5
  %1807 = load i64, i64* %6, align 8
  %1808 = add i64 %1807, -8
  %1809 = inttoptr i64 %1808 to i64*
  store i64 %1806, i64* %1809, align 8
  store i64 %1808, i64* %6, align 8
  store i64 %1805, i64* %3, align 8
  %call2_401174 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %1805, %struct.Memory* %call2_40111e)
  %1810 = load i64, i64* %RBP.i, align 8
  %1811 = add i64 %1810, -288
  %1812 = load i64, i64* %3, align 8
  %1813 = add i64 %1812, 8
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1811 to double*
  %1815 = load double, double* %1814, align 8
  %1816 = load double, double* %301, align 1
  %1817 = fmul double %1815, %1816
  store double %1817, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1818 = add i64 %1810, -152
  %1819 = add i64 %1812, 20
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1822 = add i64 %1810, -296
  %1823 = add i64 %1812, 28
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to double*
  store double %1817, double* %1824, align 8
  %1825 = load i64, i64* %3, align 8
  %1826 = add i64 %1825, -2693
  %1827 = add i64 %1825, 5
  %1828 = load i64, i64* %6, align 8
  %1829 = add i64 %1828, -8
  %1830 = inttoptr i64 %1829 to i64*
  store i64 %1827, i64* %1830, align 8
  store i64 %1829, i64* %6, align 8
  store i64 %1826, i64* %3, align 8
  %call2_401195 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1826, %struct.Memory* %call2_401174)
  %1831 = load i64, i64* %RBP.i, align 8
  %1832 = add i64 %1831, -296
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, 8
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1832 to double*
  %1836 = load double, double* %1835, align 8
  %1837 = load double, double* %301, align 1
  %1838 = fmul double %1836, %1837
  store double %1838, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1839 = add i64 %1831, -144
  %1840 = add i64 %1833, 20
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1843 = add i64 %1831, -152
  %1844 = add i64 %1833, 28
  store i64 %1844, i64* %3, align 8
  %1845 = bitcast i64 %1842 to double
  %1846 = inttoptr i64 %1843 to double*
  %1847 = load double, double* %1846, align 8
  %1848 = fadd double %1845, %1847
  store double %1848, double* %301, align 1
  store i64 0, i64* %303, align 1
  %1849 = add i64 %1831, -304
  %1850 = add i64 %1833, 36
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to double*
  store double %1838, double* %1851, align 8
  %1852 = load i64, i64* %3, align 8
  %1853 = add i64 %1852, -2734
  %1854 = add i64 %1852, 5
  %1855 = load i64, i64* %6, align 8
  %1856 = add i64 %1855, -8
  %1857 = inttoptr i64 %1856 to i64*
  store i64 %1854, i64* %1857, align 8
  store i64 %1856, i64* %6, align 8
  store i64 %1853, i64* %3, align 8
  %call2_4011be = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1853, %struct.Memory* %call2_401195)
  %1858 = load i64, i64* %RBP.i, align 8
  %1859 = add i64 %1858, -144
  %1860 = load i64, i64* %3, align 8
  %1861 = add i64 %1860, 8
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1859 to i64*
  %1863 = load i64, i64* %1862, align 8
  store i64 %1863, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1864 = add i64 %1858, -152
  %1865 = add i64 %1860, 16
  store i64 %1865, i64* %3, align 8
  %1866 = bitcast i64 %1863 to double
  %1867 = inttoptr i64 %1864 to double*
  %1868 = load double, double* %1867, align 8
  %1869 = fsub double %1866, %1868
  store double %1869, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1870 = add i64 %1858, -312
  %1871 = add i64 %1860, 24
  store i64 %1871, i64* %3, align 8
  %1872 = load i64, i64* %302, align 1
  %1873 = inttoptr i64 %1870 to i64*
  store i64 %1872, i64* %1873, align 8
  %1874 = load i64, i64* %3, align 8
  %1875 = load <2 x i32>, <2 x i32>* %327, align 1
  %1876 = load <2 x i32>, <2 x i32>* %328, align 1
  %1877 = extractelement <2 x i32> %1875, i32 0
  store i32 %1877, i32* %321, align 1
  %1878 = extractelement <2 x i32> %1875, i32 1
  store i32 %1878, i32* %323, align 1
  %1879 = extractelement <2 x i32> %1876, i32 0
  store i32 %1879, i32* %324, align 1
  %1880 = extractelement <2 x i32> %1876, i32 1
  store i32 %1880, i32* %326, align 1
  %1881 = add i64 %1874, -2763
  %1882 = add i64 %1874, 8
  %1883 = load i64, i64* %6, align 8
  %1884 = add i64 %1883, -8
  %1885 = inttoptr i64 %1884 to i64*
  store i64 %1882, i64* %1885, align 8
  store i64 %1884, i64* %6, align 8
  store i64 %1881, i64* %3, align 8
  %call2_4011de = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %1881, %struct.Memory* %call2_4011be)
  %1886 = load i64, i64* %RBP.i, align 8
  %1887 = add i64 %1886, -312
  %1888 = load i64, i64* %3, align 8
  %1889 = add i64 %1888, 8
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1887 to double*
  %1891 = load double, double* %1890, align 8
  %1892 = load double, double* %301, align 1
  %1893 = fadd double %1891, %1892
  store double %1893, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1894 = add i64 %1886, -280
  %1895 = add i64 %1888, 20
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i64*
  %1897 = load i64, i64* %1896, align 8
  store i64 %1897, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %.cast48 = bitcast i64 %1897 to double
  %1898 = fsub double %1893, %.cast48
  store double %1898, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1899 = add i64 %1886, -304
  %1900 = add i64 %1888, 32
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to double*
  %1902 = load double, double* %1901, align 8
  %1903 = fdiv double %1902, %1898
  store double %1903, double* %311, align 1
  store i64 0, i64* %313, align 1
  %.cast50 = bitcast double %1903 to <2 x i32>
  %1904 = extractelement <2 x i32> %.cast50, i32 0
  store i32 %1904, i32* %321, align 1
  %1905 = extractelement <2 x i32> %.cast50, i32 1
  store i32 %1905, i32* %323, align 1
  store i32 0, i32* %324, align 1
  store i32 0, i32* %326, align 1
  %1906 = add i64 %1888, -2819
  %1907 = add i64 %1888, 44
  %1908 = load i64, i64* %6, align 8
  %1909 = add i64 %1908, -8
  %1910 = inttoptr i64 %1909 to i64*
  store i64 %1907, i64* %1910, align 8
  store i64 %1909, i64* %6, align 8
  store i64 %1906, i64* %3, align 8
  %call2_40120a = tail call %struct.Memory* @ext_atan(%struct.State* nonnull %0, i64 %1906, %struct.Memory* %call2_4011de)
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -272
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 8
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1912 to double*
  %1916 = load double, double* %1915, align 8
  %1917 = load double, double* %301, align 1
  %1918 = fmul double %1916, %1917
  store double %1918, double* %306, align 1
  store i64 0, i64* %308, align 1
  %1919 = add i64 %1911, -152
  %1920 = add i64 %1913, 20
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to double*
  store double %1918, double* %1921, align 8
  %1922 = load i64, i64* %RBP.i, align 8
  %1923 = add i64 %1922, -24
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1923 to i64*
  %1927 = load i64, i64* %1926, align 8
  %1928 = add i64 %1927, 1
  store i64 %1928, i64* %RAX.i1199, align 8
  %1929 = icmp eq i64 %1927, -1
  %1930 = icmp eq i64 %1928, 0
  %1931 = or i1 %1929, %1930
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %14, align 1
  %1933 = trunc i64 %1928 to i32
  %1934 = and i32 %1933, 255
  %1935 = tail call i32 @llvm.ctpop.i32(i32 %1934)
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  %1938 = xor i8 %1937, 1
  store i8 %1938, i8* %21, align 1
  %1939 = xor i64 %1928, %1927
  %1940 = lshr i64 %1939, 4
  %1941 = trunc i64 %1940 to i8
  %1942 = and i8 %1941, 1
  store i8 %1942, i8* %26, align 1
  %1943 = zext i1 %1930 to i8
  store i8 %1943, i8* %29, align 1
  %1944 = lshr i64 %1928, 63
  %1945 = trunc i64 %1944 to i8
  store i8 %1945, i8* %32, align 1
  %1946 = lshr i64 %1927, 63
  %1947 = xor i64 %1944, %1946
  %1948 = add nuw nsw i64 %1947, %1944
  %1949 = icmp eq i64 %1948, 2
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %38, align 1
  %1951 = add i64 %1924, 12
  store i64 %1951, i64* %3, align 8
  store i64 %1928, i64* %1926, align 8
  %1952 = load i64, i64* %3, align 8
  %1953 = add i64 %1952, -498
  store i64 %1953, i64* %3, align 8
  br label %block_.L_40103d

block_.L_401234:                                  ; preds = %block_.L_40103d
  %1954 = add i64 %1585, -176
  %1955 = add i64 %1621, 6
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX.i1199, align 8
  %1959 = add i64 %1585, -172
  %1960 = add i64 %1621, 12
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = sub i32 %1957, %1962
  %1964 = icmp ult i32 %1957, %1962
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %14, align 1
  %1966 = and i32 %1963, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966)
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %21, align 1
  %1971 = xor i32 %1962, %1957
  %1972 = xor i32 %1971, %1963
  %1973 = lshr i32 %1972, 4
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  store i8 %1975, i8* %26, align 1
  %1976 = icmp eq i32 %1963, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %29, align 1
  %1978 = lshr i32 %1963, 31
  %1979 = trunc i32 %1978 to i8
  store i8 %1979, i8* %32, align 1
  %1980 = lshr i32 %1957, 31
  %1981 = lshr i32 %1962, 31
  %1982 = xor i32 %1981, %1980
  %1983 = xor i32 %1978, %1980
  %1984 = add nuw nsw i32 %1983, %1982
  %1985 = icmp eq i32 %1984, 2
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %38, align 1
  %.v151 = select i1 %1976, i64 18, i64 75
  %1987 = add i64 %1621, %.v151
  store i64 %1987, i64* %3, align 8
  br i1 %1976, label %block_401246, label %block_.L_40127f

block_401246:                                     ; preds = %block_.L_401234
  %1988 = add i64 %1987, 4
  store i64 %1988, i64* %3, align 8
  %1989 = load i64, i64* %1592, align 8
  store i64 %1989, i64* %RDI.i1206, align 8
  %1990 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1991 = sext i32 %1990 to i64
  store i64 %1991, i64* %RSI.i1110, align 8
  %1992 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1993 = sext i32 %1992 to i64
  store i64 %1993, i64* %RDX.i596, align 8
  %1994 = add i64 %1585, -144
  %1995 = add i64 %1987, 28
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %1998 = add i64 %1987, 36
  store i64 %1998, i64* %3, align 8
  %1999 = load i64, i64* %1996, align 8
  store i64 %1999, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2000 = add i64 %1585, -152
  %2001 = add i64 %1987, 44
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %2004 = add i64 %1987, 52
  store i64 %2004, i64* %3, align 8
  %2005 = load i64, i64* %2002, align 8
  store i64 %2005, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %2006 = add i64 %1987, 938
  %2007 = add i64 %1987, 57
  %2008 = load i64, i64* %6, align 8
  %2009 = add i64 %2008, -8
  %2010 = inttoptr i64 %2009 to i64*
  store i64 %2007, i64* %2010, align 8
  store i64 %2009, i64* %6, align 8
  store i64 %2006, i64* %3, align 8
  %call2_40127a = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %2006, %struct.Memory* %MEMORY.18)
  %.pre114 = load i64, i64* %3, align 8
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40127f

block_.L_40127f:                                  ; preds = %block_.L_401234, %block_401246
  %2011 = phi i64 [ %1585, %block_.L_401234 ], [ %.pre115, %block_401246 ]
  %2012 = phi i64 [ %1987, %block_.L_401234 ], [ %.pre114, %block_401246 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_401234 ], [ %call2_40127a, %block_401246 ]
  %2013 = add i64 %2012, ptrtoint (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64)
  %2014 = add i64 %2012, 8
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2017 = add i64 %2011, -144
  %2018 = add i64 %2012, 16
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i64*
  store i64 %2016, i64* %2019, align 8
  %2020 = load i64, i64* %RBP.i, align 8
  %2021 = add i64 %2020, -152
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, 8
  store i64 %2023, i64* %3, align 8
  %2024 = load i64, i64* %302, align 1
  %2025 = inttoptr i64 %2021 to i64*
  store i64 %2024, i64* %2025, align 8
  %2026 = load i64, i64* %RBP.i, align 8
  %2027 = add i64 %2026, -160
  %2028 = load i64, i64* %3, align 8
  %2029 = add i64 %2028, 8
  store i64 %2029, i64* %3, align 8
  %2030 = load i64, i64* %302, align 1
  %2031 = inttoptr i64 %2027 to i64*
  store i64 %2030, i64* %2031, align 8
  %2032 = load i64, i64* %RBP.i, align 8
  %2033 = add i64 %2032, -24
  %2034 = load i64, i64* %3, align 8
  %2035 = add i64 %2034, 8
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2033 to i64*
  store i64 1, i64* %2036, align 8
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_4012a7

block_.L_4012a7:                                  ; preds = %block_4012b5, %block_.L_40127f
  %2037 = phi i64 [ %2120, %block_4012b5 ], [ %.pre116, %block_.L_40127f ]
  %2038 = load i64, i64* %RBP.i, align 8
  %2039 = add i64 %2038, -24
  %2040 = add i64 %2037, 4
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  store i64 %2042, i64* %RAX.i1199, align 8
  %2043 = add i64 %2038, -80
  %2044 = add i64 %2037, 8
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  %2047 = sub i64 %2042, %2046
  %2048 = icmp ult i64 %2042, %2046
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = trunc i64 %2047 to i32
  %2051 = and i32 %2050, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %21, align 1
  %2056 = xor i64 %2046, %2042
  %2057 = xor i64 %2056, %2047
  %2058 = lshr i64 %2057, 4
  %2059 = trunc i64 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %26, align 1
  %2061 = icmp eq i64 %2047, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %29, align 1
  %2063 = lshr i64 %2047, 63
  %2064 = trunc i64 %2063 to i8
  store i8 %2064, i8* %32, align 1
  %2065 = lshr i64 %2042, 63
  %2066 = lshr i64 %2046, 63
  %2067 = xor i64 %2066, %2065
  %2068 = xor i64 %2063, %2065
  %2069 = add nuw nsw i64 %2068, %2067
  %2070 = icmp eq i64 %2069, 2
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %38, align 1
  %2072 = icmp ne i8 %2064, 0
  %2073 = xor i1 %2072, %2070
  %.demorgan135 = or i1 %2061, %2073
  %.v152 = select i1 %.demorgan135, i64 14, i64 59
  %2074 = add i64 %2037, %.v152
  store i64 %2074, i64* %3, align 8
  br i1 %.demorgan135, label %block_4012b5, label %block_.L_4012e2

block_4012b5:                                     ; preds = %block_.L_4012a7
  %2075 = add i64 %2038, -160
  store i64 %2075, i64* %RDI.i1206, align 8
  %2076 = add i64 %2038, -144
  %2077 = add i64 %2074, 15
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i64*
  %2079 = load i64, i64* %2078, align 8
  store i64 %2079, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2080 = add i64 %2038, -152
  %2081 = add i64 %2074, 23
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i64*
  %2083 = load i64, i64* %2082, align 8
  store i64 %2083, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2084 = add i64 %2074, 1243
  %2085 = add i64 %2074, 28
  %2086 = load i64, i64* %6, align 8
  %2087 = add i64 %2086, -8
  %2088 = inttoptr i64 %2087 to i64*
  store i64 %2085, i64* %2088, align 8
  store i64 %2087, i64* %6, align 8
  store i64 %2084, i64* %3, align 8
  %call2_4012cc = tail call %struct.Memory* @sub_401790.P3(%struct.State* nonnull %0, i64 %2084, %struct.Memory* %MEMORY.19)
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -24
  %2091 = load i64, i64* %3, align 8
  %2092 = add i64 %2091, 4
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2090 to i64*
  %2094 = load i64, i64* %2093, align 8
  %2095 = add i64 %2094, 1
  store i64 %2095, i64* %RAX.i1199, align 8
  %2096 = icmp eq i64 %2094, -1
  %2097 = icmp eq i64 %2095, 0
  %2098 = or i1 %2096, %2097
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %14, align 1
  %2100 = trunc i64 %2095 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %21, align 1
  %2106 = xor i64 %2095, %2094
  %2107 = lshr i64 %2106, 4
  %2108 = trunc i64 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %26, align 1
  %2110 = zext i1 %2097 to i8
  store i8 %2110, i8* %29, align 1
  %2111 = lshr i64 %2095, 63
  %2112 = trunc i64 %2111 to i8
  store i8 %2112, i8* %32, align 1
  %2113 = lshr i64 %2094, 63
  %2114 = xor i64 %2111, %2113
  %2115 = add nuw nsw i64 %2114, %2111
  %2116 = icmp eq i64 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %38, align 1
  %2118 = add i64 %2091, 12
  store i64 %2118, i64* %3, align 8
  store i64 %2095, i64* %2093, align 8
  %2119 = load i64, i64* %3, align 8
  %2120 = add i64 %2119, -54
  store i64 %2120, i64* %3, align 8
  br label %block_.L_4012a7

block_.L_4012e2:                                  ; preds = %block_.L_4012a7
  %2121 = add i64 %2038, -176
  %2122 = add i64 %2074, 6
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RAX.i1199, align 8
  %2126 = add i64 %2038, -172
  %2127 = add i64 %2074, 12
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sub i32 %2124, %2129
  %2131 = icmp ult i32 %2124, %2129
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %14, align 1
  %2133 = and i32 %2130, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %21, align 1
  %2138 = xor i32 %2129, %2124
  %2139 = xor i32 %2138, %2130
  %2140 = lshr i32 %2139, 4
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  store i8 %2142, i8* %26, align 1
  %2143 = icmp eq i32 %2130, 0
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %29, align 1
  %2145 = lshr i32 %2130, 31
  %2146 = trunc i32 %2145 to i8
  store i8 %2146, i8* %32, align 1
  %2147 = lshr i32 %2124, 31
  %2148 = lshr i32 %2129, 31
  %2149 = xor i32 %2148, %2147
  %2150 = xor i32 %2145, %2147
  %2151 = add nuw nsw i32 %2150, %2149
  %2152 = icmp eq i32 %2151, 2
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %38, align 1
  %.v153 = select i1 %2143, i64 18, i64 75
  %2154 = add i64 %2074, %.v153
  store i64 %2154, i64* %3, align 8
  br i1 %2143, label %block_4012f4, label %block_.L_40132d

block_4012f4:                                     ; preds = %block_.L_4012e2
  %2155 = add i64 %2154, 4
  store i64 %2155, i64* %3, align 8
  %2156 = load i64, i64* %2045, align 8
  store i64 %2156, i64* %RDI.i1206, align 8
  %2157 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2158 = sext i32 %2157 to i64
  store i64 %2158, i64* %RSI.i1110, align 8
  %2159 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2160 = sext i32 %2159 to i64
  store i64 %2160, i64* %RDX.i596, align 8
  %2161 = add i64 %2038, -144
  %2162 = add i64 %2154, 28
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  store i64 %2164, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2165 = add i64 %2038, -152
  %2166 = add i64 %2154, 36
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2169 = add i64 %2038, -160
  %2170 = add i64 %2154, 44
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  %2172 = load i64, i64* %2171, align 8
  store i64 %2172, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %2173 = add i64 %2154, 52
  store i64 %2173, i64* %3, align 8
  %2174 = load i64, i64* %2171, align 8
  store i64 %2174, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %2175 = add i64 %2154, 764
  %2176 = add i64 %2154, 57
  %2177 = load i64, i64* %6, align 8
  %2178 = add i64 %2177, -8
  %2179 = inttoptr i64 %2178 to i64*
  store i64 %2176, i64* %2179, align 8
  store i64 %2178, i64* %6, align 8
  store i64 %2175, i64* %3, align 8
  %call2_401328 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %2175, %struct.Memory* %MEMORY.19)
  %.pre117 = load i64, i64* %3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40132d

block_.L_40132d:                                  ; preds = %block_.L_4012e2, %block_4012f4
  %2180 = phi i64 [ %2038, %block_.L_4012e2 ], [ %.pre118, %block_4012f4 ]
  %2181 = phi i64 [ %2154, %block_.L_4012e2 ], [ %.pre117, %block_4012f4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_4012e2 ], [ %call2_401328, %block_4012f4 ]
  %2182 = add i64 %2181, ptrtoint (%G_0x603__rip__type* @G_0x603__rip_ to i64)
  %2183 = add i64 %2181, 8
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i64*
  %2185 = load i64, i64* %2184, align 8
  store i64 %2185, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2186 = add i64 %2181, add (i64 ptrtoint (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64), i64 8)
  %2187 = add i64 %2181, 16
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i64*
  %2189 = load i64, i64* %2188, align 8
  store i64 %2189, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2190 = add i64 %2181, add (i64 ptrtoint (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64), i64 16)
  %2191 = add i64 %2181, 24
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i64*
  %2193 = load i64, i64* %2192, align 8
  store i64 %2193, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  store i64 %2193, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2189, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2185, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %2194 = add i64 %2180, -24
  %2195 = add i64 %2181, 92
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i64*
  store i64 1, i64* %2196, align 8
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_401389

block_.L_401389:                                  ; preds = %block_401397, %block_.L_40132d
  %2197 = phi i64 [ %2271, %block_401397 ], [ %.pre119, %block_.L_40132d ]
  %2198 = load i64, i64* %RBP.i, align 8
  %2199 = add i64 %2198, -24
  %2200 = add i64 %2197, 4
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RAX.i1199, align 8
  %2203 = add i64 %2198, -88
  %2204 = add i64 %2197, 8
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i64*
  %2206 = load i64, i64* %2205, align 8
  %2207 = sub i64 %2202, %2206
  %2208 = icmp ult i64 %2202, %2206
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = trunc i64 %2207 to i32
  %2211 = and i32 %2210, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %21, align 1
  %2216 = xor i64 %2206, %2202
  %2217 = xor i64 %2216, %2207
  %2218 = lshr i64 %2217, 4
  %2219 = trunc i64 %2218 to i8
  %2220 = and i8 %2219, 1
  store i8 %2220, i8* %26, align 1
  %2221 = icmp eq i64 %2207, 0
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %29, align 1
  %2223 = lshr i64 %2207, 63
  %2224 = trunc i64 %2223 to i8
  store i8 %2224, i8* %32, align 1
  %2225 = lshr i64 %2202, 63
  %2226 = lshr i64 %2206, 63
  %2227 = xor i64 %2226, %2225
  %2228 = xor i64 %2223, %2225
  %2229 = add nuw nsw i64 %2228, %2227
  %2230 = icmp eq i64 %2229, 2
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %38, align 1
  %2232 = icmp ne i8 %2224, 0
  %2233 = xor i1 %2232, %2230
  %.demorgan136 = or i1 %2221, %2233
  %.v154 = select i1 %.demorgan136, i64 14, i64 36
  %2234 = add i64 %2197, %.v154
  store i64 %2234, i64* %3, align 8
  br i1 %.demorgan136, label %block_401397, label %block_.L_4013ad

block_401397:                                     ; preds = %block_.L_401389
  %2235 = add i64 %2234, 1145
  %2236 = add i64 %2234, 5
  %2237 = load i64, i64* %6, align 8
  %2238 = add i64 %2237, -8
  %2239 = inttoptr i64 %2238 to i64*
  store i64 %2236, i64* %2239, align 8
  store i64 %2238, i64* %6, align 8
  store i64 %2235, i64* %3, align 8
  %call2_401397 = tail call %struct.Memory* @sub_401810.P0(%struct.State* nonnull %0, i64 %2235, %struct.Memory* %MEMORY.21)
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -24
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2241 to i64*
  %2245 = load i64, i64* %2244, align 8
  %2246 = add i64 %2245, 1
  store i64 %2246, i64* %RAX.i1199, align 8
  %2247 = icmp eq i64 %2245, -1
  %2248 = icmp eq i64 %2246, 0
  %2249 = or i1 %2247, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %14, align 1
  %2251 = trunc i64 %2246 to i32
  %2252 = and i32 %2251, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252)
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %21, align 1
  %2257 = xor i64 %2246, %2245
  %2258 = lshr i64 %2257, 4
  %2259 = trunc i64 %2258 to i8
  %2260 = and i8 %2259, 1
  store i8 %2260, i8* %26, align 1
  %2261 = zext i1 %2248 to i8
  store i8 %2261, i8* %29, align 1
  %2262 = lshr i64 %2246, 63
  %2263 = trunc i64 %2262 to i8
  store i8 %2263, i8* %32, align 1
  %2264 = lshr i64 %2245, 63
  %2265 = xor i64 %2262, %2264
  %2266 = add nuw nsw i64 %2265, %2262
  %2267 = icmp eq i64 %2266, 2
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %38, align 1
  %2269 = add i64 %2242, 12
  store i64 %2269, i64* %3, align 8
  store i64 %2246, i64* %2244, align 8
  %2270 = load i64, i64* %3, align 8
  %2271 = add i64 %2270, -31
  store i64 %2271, i64* %3, align 8
  br label %block_.L_401389

block_.L_4013ad:                                  ; preds = %block_.L_401389
  %2272 = add i64 %2198, -176
  %2273 = add i64 %2234, 6
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RAX.i1199, align 8
  %2277 = add i64 %2198, -172
  %2278 = add i64 %2234, 12
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i32*
  %2280 = load i32, i32* %2279, align 4
  %2281 = sub i32 %2275, %2280
  %2282 = icmp ult i32 %2275, %2280
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %14, align 1
  %2284 = and i32 %2281, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %21, align 1
  %2289 = xor i32 %2280, %2275
  %2290 = xor i32 %2289, %2281
  %2291 = lshr i32 %2290, 4
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  store i8 %2293, i8* %26, align 1
  %2294 = icmp eq i32 %2281, 0
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %29, align 1
  %2296 = lshr i32 %2281, 31
  %2297 = trunc i32 %2296 to i8
  store i8 %2297, i8* %32, align 1
  %2298 = lshr i32 %2275, 31
  %2299 = lshr i32 %2280, 31
  %2300 = xor i32 %2299, %2298
  %2301 = xor i32 %2296, %2298
  %2302 = add nuw nsw i32 %2301, %2300
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %38, align 1
  %.v155 = select i1 %2294, i64 18, i64 79
  %2305 = add i64 %2234, %.v155
  store i64 %2305, i64* %3, align 8
  br i1 %2294, label %block_4013bf, label %block_.L_4013fc

block_4013bf:                                     ; preds = %block_.L_4013ad
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %3, align 8
  %2307 = load i64, i64* %2205, align 8
  store i64 %2307, i64* %RDI.i1206, align 8
  %2308 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2309 = sext i32 %2308 to i64
  store i64 %2309, i64* %RSI.i1110, align 8
  %2310 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2311 = sext i32 %2310 to i64
  store i64 %2311, i64* %RDX.i596, align 8
  %2312 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2312, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2313 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2313, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2314 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %2314, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %2315 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  store i64 %2315, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %2316 = add i64 %2305, 561
  %2317 = add i64 %2305, 61
  %2318 = load i64, i64* %6, align 8
  %2319 = add i64 %2318, -8
  %2320 = inttoptr i64 %2319 to i64*
  store i64 %2317, i64* %2320, align 8
  store i64 %2319, i64* %6, align 8
  store i64 %2316, i64* %3, align 8
  %call2_4013f7 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %2316, %struct.Memory* %MEMORY.21)
  %.pre120 = load i64, i64* %3, align 8
  %.pre121 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013fc

block_.L_4013fc:                                  ; preds = %block_.L_4013ad, %block_4013bf
  %2321 = phi i64 [ %2198, %block_.L_4013ad ], [ %.pre121, %block_4013bf ]
  %2322 = phi i64 [ %2305, %block_.L_4013ad ], [ %.pre120, %block_4013bf ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4013ad ], [ %call2_4013f7, %block_4013bf ]
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2323 = add i64 %2321, -24
  %2324 = add i64 %2322, 30
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i64*
  store i64 1, i64* %2325, align 8
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_40141a

block_.L_40141a:                                  ; preds = %block_401428, %block_.L_4013fc
  %2326 = phi i32 [ %2327, %block_401428 ], [ 3, %block_.L_4013fc ]
  %2327 = phi i32 [ %2326, %block_401428 ], [ 2, %block_.L_4013fc ]
  %2328 = phi i64 [ %2421, %block_401428 ], [ %.pre122, %block_.L_4013fc ]
  %2329 = load i64, i64* %RBP.i, align 8
  %2330 = add i64 %2329, -24
  %2331 = add i64 %2328, 4
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i64*
  %2333 = load i64, i64* %2332, align 8
  store i64 %2333, i64* %RAX.i1199, align 8
  %2334 = add i64 %2329, -96
  %2335 = add i64 %2328, 8
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  %2338 = sub i64 %2333, %2337
  %2339 = icmp ult i64 %2333, %2337
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %14, align 1
  %2341 = trunc i64 %2338 to i32
  %2342 = and i32 %2341, 255
  %2343 = tail call i32 @llvm.ctpop.i32(i32 %2342)
  %2344 = trunc i32 %2343 to i8
  %2345 = and i8 %2344, 1
  %2346 = xor i8 %2345, 1
  store i8 %2346, i8* %21, align 1
  %2347 = xor i64 %2337, %2333
  %2348 = xor i64 %2347, %2338
  %2349 = lshr i64 %2348, 4
  %2350 = trunc i64 %2349 to i8
  %2351 = and i8 %2350, 1
  store i8 %2351, i8* %26, align 1
  %2352 = icmp eq i64 %2338, 0
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %29, align 1
  %2354 = lshr i64 %2338, 63
  %2355 = trunc i64 %2354 to i8
  store i8 %2355, i8* %32, align 1
  %2356 = lshr i64 %2333, 63
  %2357 = lshr i64 %2337, 63
  %2358 = xor i64 %2357, %2356
  %2359 = xor i64 %2354, %2356
  %2360 = add nuw nsw i64 %2359, %2358
  %2361 = icmp eq i64 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %38, align 1
  %2363 = icmp ne i8 %2355, 0
  %2364 = xor i1 %2363, %2361
  %.demorgan137 = or i1 %2352, %2364
  %.v156 = select i1 %.demorgan137, i64 14, i64 122
  %2365 = add i64 %2328, %.v156
  store i64 %2365, i64* %3, align 8
  br i1 %.demorgan137, label %block_401428, label %block_.L_401494

block_401428:                                     ; preds = %block_.L_40141a
  %2366 = zext i32 %2327 to i64
  %2367 = add i32 %2326, %2327
  %2368 = icmp ult i32 %2367, %2326
  %2369 = lshr i32 %2367, 31
  %2370 = lshr i32 %2327, 31
  %2371 = lshr i32 %2326, 31
  %2372 = xor i32 %2369, %2370
  %2373 = xor i32 %2369, %2371
  %2374 = add nuw nsw i32 %2372, %2373
  %2375 = icmp eq i32 %2374, 2
  %2376 = zext i1 %2375 to i8
  %2377 = xor i32 %2326, %2367
  store i32 %2326, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i64 %2366, i64* %RAX.i1199, align 8
  %2378 = zext i1 %2368 to i8
  store i8 %2378, i8* %14, align 1
  %2379 = and i32 %2327, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i32 %2377, %2327
  %2385 = lshr i32 %2384, 4
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  store i8 %2387, i8* %26, align 1
  %2388 = icmp eq i32 %2327, 0
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %29, align 1
  %2390 = trunc i32 %2370 to i8
  store i8 %2390, i8* %32, align 1
  store i8 %2376, i8* %38, align 1
  store i32 %2327, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -24
  %2393 = add i64 %2365, 95
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i64*
  %2395 = load i64, i64* %2394, align 8
  %2396 = add i64 %2395, 1
  store i64 %2396, i64* %RAX.i1199, align 8
  %2397 = icmp eq i64 %2395, -1
  %2398 = icmp eq i64 %2396, 0
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %14, align 1
  %2401 = trunc i64 %2396 to i32
  %2402 = and i32 %2401, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %21, align 1
  %2407 = xor i64 %2396, %2395
  %2408 = lshr i64 %2407, 4
  %2409 = trunc i64 %2408 to i8
  %2410 = and i8 %2409, 1
  store i8 %2410, i8* %26, align 1
  %2411 = zext i1 %2398 to i8
  store i8 %2411, i8* %29, align 1
  %2412 = lshr i64 %2396, 63
  %2413 = trunc i64 %2412 to i8
  store i8 %2413, i8* %32, align 1
  %2414 = lshr i64 %2395, 63
  %2415 = xor i64 %2412, %2414
  %2416 = add nuw nsw i64 %2415, %2412
  %2417 = icmp eq i64 %2416, 2
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %38, align 1
  %2419 = add i64 %2365, 103
  store i64 %2419, i64* %3, align 8
  store i64 %2396, i64* %2394, align 8
  %2420 = load i64, i64* %3, align 8
  %2421 = add i64 %2420, -117
  store i64 %2421, i64* %3, align 8
  br label %block_.L_40141a

block_.L_401494:                                  ; preds = %block_.L_40141a
  %2422 = add i64 %2329, -176
  %2423 = add i64 %2365, 6
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RAX.i1199, align 8
  %2427 = add i64 %2329, -172
  %2428 = add i64 %2365, 12
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = sub i32 %2425, %2430
  %2432 = icmp ult i32 %2425, %2430
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %14, align 1
  %2434 = and i32 %2431, 255
  %2435 = tail call i32 @llvm.ctpop.i32(i32 %2434)
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = xor i8 %2437, 1
  store i8 %2438, i8* %21, align 1
  %2439 = xor i32 %2430, %2425
  %2440 = xor i32 %2439, %2431
  %2441 = lshr i32 %2440, 4
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  store i8 %2443, i8* %26, align 1
  %2444 = icmp eq i32 %2431, 0
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %29, align 1
  %2446 = lshr i32 %2431, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %32, align 1
  %2448 = lshr i32 %2425, 31
  %2449 = lshr i32 %2430, 31
  %2450 = xor i32 %2449, %2448
  %2451 = xor i32 %2446, %2448
  %2452 = add nuw nsw i32 %2451, %2450
  %2453 = icmp eq i32 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %38, align 1
  %.v157 = select i1 %2444, i64 18, i64 66
  %2455 = add i64 %2365, %.v157
  store i64 %2455, i64* %3, align 8
  br i1 %2444, label %block_4014a6, label %block_.L_4014d6

block_4014a6:                                     ; preds = %block_.L_401494
  %2456 = add i64 %2455, 4
  store i64 %2456, i64* %3, align 8
  %2457 = load i64, i64* %2336, align 8
  store i64 %2457, i64* %RDI.i1206, align 8
  %2458 = sext i32 %2327 to i64
  store i64 %2458, i64* %RSI.i1110, align 8
  %2459 = sext i32 %2326 to i64
  store i64 %2459, i64* %RDX.i596, align 8
  %2460 = add i64 %2329, -112
  %2461 = add i64 %2455, 25
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2464 = add i64 %2329, -120
  %2465 = add i64 %2455, 30
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i64*
  %2467 = load i64, i64* %2466, align 8
  store i64 %2467, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2468 = add i64 %2329, -128
  %2469 = add i64 %2455, 35
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i64*
  %2471 = load i64, i64* %2470, align 8
  store i64 %2471, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %2472 = add i64 %2329, -136
  %2473 = add i64 %2455, 43
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i64*
  %2475 = load i64, i64* %2474, align 8
  store i64 %2475, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %2476 = add i64 %2455, 330
  %2477 = add i64 %2455, 48
  %2478 = load i64, i64* %6, align 8
  %2479 = add i64 %2478, -8
  %2480 = inttoptr i64 %2479 to i64*
  store i64 %2477, i64* %2480, align 8
  store i64 %2479, i64* %6, align 8
  store i64 %2476, i64* %3, align 8
  %call2_4014d1 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %2476, %struct.Memory* %MEMORY.23)
  %.pre123 = load i64, i64* %3, align 8
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4014d6

block_.L_4014d6:                                  ; preds = %block_.L_401494, %block_4014a6
  %2481 = phi i64 [ %2329, %block_.L_401494 ], [ %.pre124, %block_4014a6 ]
  %2482 = phi i64 [ %2455, %block_.L_401494 ], [ %.pre123, %block_4014a6 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401494 ], [ %call2_4014d1, %block_4014a6 ]
  %2483 = add i64 %2482, ptrtoint (%G_0x462__rip__type* @G_0x462__rip_ to i64)
  %2484 = add i64 %2482, 8
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i64*
  %2486 = load i64, i64* %2485, align 8
  store i64 %2486, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2487 = add i64 %2481, -144
  %2488 = add i64 %2482, 16
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i64*
  store i64 %2486, i64* %2489, align 8
  %2490 = load i64, i64* %RBP.i, align 8
  %2491 = add i64 %2490, -24
  %2492 = load i64, i64* %3, align 8
  %2493 = add i64 %2492, 8
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2491 to i64*
  store i64 1, i64* %2494, align 8
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_4014ee

block_.L_4014ee:                                  ; preds = %block_4014fc, %block_.L_4014d6
  %2495 = phi i64 [ %.pre125, %block_.L_4014d6 ], [ %2596, %block_4014fc ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_4014d6 ], [ %call2_401517, %block_4014fc ]
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -24
  %2498 = add i64 %2495, 4
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i64*
  %2500 = load i64, i64* %2499, align 8
  store i64 %2500, i64* %RAX.i1199, align 8
  %2501 = add i64 %2496, -104
  %2502 = add i64 %2495, 8
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i64*
  %2504 = load i64, i64* %2503, align 8
  %2505 = sub i64 %2500, %2504
  %2506 = icmp ult i64 %2500, %2504
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %14, align 1
  %2508 = trunc i64 %2505 to i32
  %2509 = and i32 %2508, 255
  %2510 = tail call i32 @llvm.ctpop.i32(i32 %2509)
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = xor i8 %2512, 1
  store i8 %2513, i8* %21, align 1
  %2514 = xor i64 %2504, %2500
  %2515 = xor i64 %2514, %2505
  %2516 = lshr i64 %2515, 4
  %2517 = trunc i64 %2516 to i8
  %2518 = and i8 %2517, 1
  store i8 %2518, i8* %26, align 1
  %2519 = icmp eq i64 %2505, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %29, align 1
  %2521 = lshr i64 %2505, 63
  %2522 = trunc i64 %2521 to i8
  store i8 %2522, i8* %32, align 1
  %2523 = lshr i64 %2500, 63
  %2524 = lshr i64 %2504, 63
  %2525 = xor i64 %2524, %2523
  %2526 = xor i64 %2521, %2523
  %2527 = add nuw nsw i64 %2526, %2525
  %2528 = icmp eq i64 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %38, align 1
  %2530 = icmp ne i8 %2522, 0
  %2531 = xor i1 %2530, %2528
  %.demorgan138 = or i1 %2519, %2531
  %.v158 = select i1 %.demorgan138, i64 14, i64 71
  %2532 = add i64 %2495, %.v158
  store i64 %2532, i64* %3, align 8
  br i1 %.demorgan138, label %block_4014fc, label %block_.L_401535

block_4014fc:                                     ; preds = %block_.L_4014ee
  %2533 = add i64 %2496, -144
  %2534 = add i64 %2532, 8
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i64*
  %2536 = load i64, i64* %2535, align 8
  store i64 %2536, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2537 = add i64 %2532, -3580
  %2538 = add i64 %2532, 13
  %2539 = load i64, i64* %6, align 8
  %2540 = add i64 %2539, -8
  %2541 = inttoptr i64 %2540 to i64*
  store i64 %2538, i64* %2541, align 8
  store i64 %2540, i64* %6, align 8
  store i64 %2537, i64* %3, align 8
  %2542 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.26)
  %2543 = load i64, i64* %3, align 8
  %2544 = load double, double* %301, align 1
  %2545 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %2546 = fdiv double %2544, %2545
  store double %2546, double* %301, align 1
  %2547 = add i64 %2543, -3641
  %2548 = add i64 %2543, 14
  %2549 = load i64, i64* %6, align 8
  %2550 = add i64 %2549, -8
  %2551 = inttoptr i64 %2550 to i64*
  store i64 %2548, i64* %2551, align 8
  store i64 %2550, i64* %6, align 8
  store i64 %2547, i64* %3, align 8
  %2552 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2542)
  %2553 = load i64, i64* %3, align 8
  %2554 = add i64 %2553, -3511
  %2555 = add i64 %2553, 5
  %2556 = load i64, i64* %6, align 8
  %2557 = add i64 %2556, -8
  %2558 = inttoptr i64 %2557 to i64*
  store i64 %2555, i64* %2558, align 8
  store i64 %2557, i64* %6, align 8
  store i64 %2554, i64* %3, align 8
  %call2_401517 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %2554, %struct.Memory* %2552)
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -144
  %2561 = load i64, i64* %3, align 8
  %2562 = add i64 %2561, 8
  store i64 %2562, i64* %3, align 8
  %2563 = load i64, i64* %302, align 1
  %2564 = inttoptr i64 %2560 to i64*
  store i64 %2563, i64* %2564, align 8
  %2565 = load i64, i64* %RBP.i, align 8
  %2566 = add i64 %2565, -24
  %2567 = load i64, i64* %3, align 8
  %2568 = add i64 %2567, 4
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2566 to i64*
  %2570 = load i64, i64* %2569, align 8
  %2571 = add i64 %2570, 1
  store i64 %2571, i64* %RAX.i1199, align 8
  %2572 = icmp eq i64 %2570, -1
  %2573 = icmp eq i64 %2571, 0
  %2574 = or i1 %2572, %2573
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %14, align 1
  %2576 = trunc i64 %2571 to i32
  %2577 = and i32 %2576, 255
  %2578 = tail call i32 @llvm.ctpop.i32(i32 %2577)
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = xor i8 %2580, 1
  store i8 %2581, i8* %21, align 1
  %2582 = xor i64 %2571, %2570
  %2583 = lshr i64 %2582, 4
  %2584 = trunc i64 %2583 to i8
  %2585 = and i8 %2584, 1
  store i8 %2585, i8* %26, align 1
  %2586 = zext i1 %2573 to i8
  store i8 %2586, i8* %29, align 1
  %2587 = lshr i64 %2571, 63
  %2588 = trunc i64 %2587 to i8
  store i8 %2588, i8* %32, align 1
  %2589 = lshr i64 %2570, 63
  %2590 = xor i64 %2587, %2589
  %2591 = add nuw nsw i64 %2590, %2587
  %2592 = icmp eq i64 %2591, 2
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %38, align 1
  %2594 = add i64 %2567, 12
  store i64 %2594, i64* %3, align 8
  store i64 %2571, i64* %2569, align 8
  %2595 = load i64, i64* %3, align 8
  %2596 = add i64 %2595, -66
  store i64 %2596, i64* %3, align 8
  br label %block_.L_4014ee

block_.L_401535:                                  ; preds = %block_.L_4014ee
  %2597 = add i64 %2496, -176
  %2598 = add i64 %2532, 6
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i1199, align 8
  %2602 = add i64 %2496, -172
  %2603 = add i64 %2532, 12
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = sub i32 %2600, %2605
  %2607 = icmp ult i32 %2600, %2605
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %14, align 1
  %2609 = and i32 %2606, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %21, align 1
  %2614 = xor i32 %2605, %2600
  %2615 = xor i32 %2614, %2606
  %2616 = lshr i32 %2615, 4
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %26, align 1
  %2619 = icmp eq i32 %2606, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %29, align 1
  %2621 = lshr i32 %2606, 31
  %2622 = trunc i32 %2621 to i8
  store i8 %2622, i8* %32, align 1
  %2623 = lshr i32 %2600, 31
  %2624 = lshr i32 %2605, 31
  %2625 = xor i32 %2624, %2623
  %2626 = xor i32 %2621, %2623
  %2627 = add nuw nsw i32 %2626, %2625
  %2628 = icmp eq i32 %2627, 2
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %38, align 1
  %.v159 = select i1 %2619, i64 18, i64 75
  %2630 = add i64 %2532, %.v159
  store i64 %2630, i64* %3, align 8
  br i1 %2619, label %block_401547, label %block_.L_401580

block_401547:                                     ; preds = %block_.L_401535
  %2631 = add i64 %2630, 4
  store i64 %2631, i64* %3, align 8
  %2632 = load i64, i64* %2503, align 8
  store i64 %2632, i64* %RDI.i1206, align 8
  %2633 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2634 = sext i32 %2633 to i64
  store i64 %2634, i64* %RSI.i1110, align 8
  %2635 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2636 = sext i32 %2635 to i64
  store i64 %2636, i64* %RDX.i596, align 8
  %2637 = add i64 %2496, -144
  %2638 = add i64 %2630, 28
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %302, align 1
  store double 0.000000e+00, double* %304, align 1
  %2641 = add i64 %2630, 36
  store i64 %2641, i64* %3, align 8
  %2642 = load i64, i64* %2639, align 8
  store i64 %2642, i64* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %2643 = add i64 %2630, 44
  store i64 %2643, i64* %3, align 8
  %2644 = load i64, i64* %2639, align 8
  store i64 %2644, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %2645 = add i64 %2630, 52
  store i64 %2645, i64* %3, align 8
  %2646 = load i64, i64* %2639, align 8
  store i64 %2646, i64* %329, align 1
  store double 0.000000e+00, double* %318, align 1
  %2647 = add i64 %2630, 169
  %2648 = add i64 %2630, 57
  %2649 = load i64, i64* %6, align 8
  %2650 = add i64 %2649, -8
  %2651 = inttoptr i64 %2650 to i64*
  store i64 %2648, i64* %2651, align 8
  store i64 %2650, i64* %6, align 8
  store i64 %2647, i64* %3, align 8
  %call2_40157b = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %2647, %struct.Memory* %MEMORY.26)
  %.pre126 = load i64, i64* %RBP.i, align 8
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_401580

block_.L_401580:                                  ; preds = %block_.L_401535, %block_401547
  %2652 = phi i64 [ %2630, %block_.L_401535 ], [ %.pre127, %block_401547 ]
  %2653 = phi i64 [ %2496, %block_.L_401535 ], [ %.pre126, %block_401547 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_401535 ], [ %call2_40157b, %block_401547 ]
  %2654 = add i64 %2653, -176
  %2655 = add i64 %2652, 6
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = add i32 %2657, 1
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RAX.i1199, align 8
  %2660 = icmp eq i32 %2657, -1
  %2661 = icmp eq i32 %2658, 0
  %2662 = or i1 %2660, %2661
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %14, align 1
  %2664 = and i32 %2658, 255
  %2665 = tail call i32 @llvm.ctpop.i32(i32 %2664)
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  store i8 %2668, i8* %21, align 1
  %2669 = xor i32 %2658, %2657
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %26, align 1
  %2673 = zext i1 %2661 to i8
  store i8 %2673, i8* %29, align 1
  %2674 = lshr i32 %2658, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %32, align 1
  %2676 = lshr i32 %2657, 31
  %2677 = xor i32 %2674, %2676
  %2678 = add nuw nsw i32 %2677, %2674
  %2679 = icmp eq i32 %2678, 2
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %38, align 1
  %2681 = add i64 %2652, 15
  store i64 %2681, i64* %3, align 8
  store i32 %2658, i32* %2656, align 4
  %2682 = load i32, i32* %EAX.i1220, align 4
  %2683 = load i64, i64* %RBP.i, align 8
  %2684 = add i64 %2683, -172
  %2685 = load i64, i64* %3, align 8
  %2686 = add i64 %2685, 6
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2684 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sub i32 %2682, %2688
  %2690 = icmp ult i32 %2682, %2688
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %14, align 1
  %2692 = and i32 %2689, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %21, align 1
  %2697 = xor i32 %2688, %2682
  %2698 = xor i32 %2697, %2689
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %26, align 1
  %2702 = icmp eq i32 %2689, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %29, align 1
  %2704 = lshr i32 %2689, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %32, align 1
  %2706 = lshr i32 %2682, 31
  %2707 = lshr i32 %2688, 31
  %2708 = xor i32 %2707, %2706
  %2709 = xor i32 %2704, %2706
  %2710 = add nuw nsw i32 %2709, %2708
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %38, align 1
  %2713 = icmp ne i8 %2705, 0
  %2714 = xor i1 %2713, %2711
  %.demorgan139 = or i1 %2702, %2714
  %.v160 = select i1 %.demorgan139, i64 12, i64 17
  %2715 = add i64 %2685, %.v160
  store i64 %2715, i64* %3, align 8
  br i1 %.demorgan139, label %block_40159b, label %block_.L_4015a0

block_40159b:                                     ; preds = %block_.L_401580
  %2716 = add i64 %2715, -2992
  store i64 %2716, i64* %3, align 8
  br label %block_.L_4009eb

block_.L_4015a0:                                  ; preds = %block_.L_401580
  store i64 0, i64* %RAX.i1199, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i1206, align 8
  %2717 = add i64 %2715, -3696
  %2718 = add i64 %2715, 9
  %2719 = load i64, i64* %6, align 8
  %2720 = add i64 %2719, -8
  %2721 = inttoptr i64 %2720 to i64*
  store i64 %2718, i64* %2721, align 8
  store i64 %2720, i64* %6, align 8
  store i64 %2717, i64* %3, align 8
  %2722 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.27)
  %2723 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401965_type* @G__0x401965 to i64), i64* %RDI.i1206, align 8
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -200
  %2726 = load i64, i64* %RAX.i1199, align 8
  %2727 = add i64 %2723, 17
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2725 to i64*
  store i64 %2726, i64* %2728, align 8
  %2729 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %2730 = add i64 %2729, -3786
  %2731 = add i64 %2729, 7
  %2732 = load i64, i64* %6, align 8
  %2733 = add i64 %2732, -8
  %2734 = inttoptr i64 %2733 to i64*
  store i64 %2731, i64* %2734, align 8
  store i64 %2733, i64* %6, align 8
  store i64 %2730, i64* %3, align 8
  %2735 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2722)
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -208
  %2738 = load i64, i64* %3, align 8
  %2739 = add i64 %2738, 7
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2737 to i32*
  %2741 = load i32, i32* %2740, align 4
  store i8 0, i8* %14, align 1
  %2742 = and i32 %2741, 255
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2747 = icmp eq i32 %2741, 0
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %29, align 1
  %2749 = lshr i32 %2741, 31
  %2750 = trunc i32 %2749 to i8
  store i8 %2750, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2751 = add i64 %2736, -316
  %2752 = load i32, i32* %EAX.i1220, align 4
  %2753 = add i64 %2738, 13
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2751 to i32*
  store i32 %2752, i32* %2754, align 4
  %2755 = load i64, i64* %3, align 8
  %2756 = load i8, i8* %29, align 1
  %2757 = icmp ne i8 %2756, 0
  %.v212 = select i1 %2757, i64 11, i64 6
  %2758 = add i64 %2755, %.v212
  store i64 %2758, i64* %3, align 8
  %cmpBr_4015ce = icmp eq i8 %2756, 1
  br i1 %cmpBr_4015ce, label %block_.L_4015d9, label %block_4015d4

block_4015d4:                                     ; preds = %block_.L_4015a0
  %2759 = add i64 %2758, -3150
  %2760 = add i64 %2758, 5
  store i64 %2760, i64* %3, align 8
  %.pre95 = load i64, i64* %RAX.i1199, align 8
  %2761 = trunc i64 %.pre95 to i32
  br label %block_.L_400986

block_.L_4015d9:                                  ; preds = %block_.L_4015a0
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -4
  %2764 = add i64 %2758, 7
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  store i32 0, i32* %2765, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_4015e0

block_.L_4015e0:                                  ; preds = %block_.L_4015d9, %block_.L_40093d
  %2766 = phi i64 [ %.pre128, %block_.L_4015d9 ], [ %266, %block_.L_40093d ]
  %MEMORY.28 = phi %struct.Memory* [ %2735, %block_.L_4015d9 ], [ %253, %block_.L_40093d ]
  %2767 = load i64, i64* %RBP.i, align 8
  %2768 = add i64 %2767, -4
  %2769 = add i64 %2766, 3
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RAX.i1199, align 8
  %2773 = load i64, i64* %6, align 8
  %2774 = add i64 %2773, 320
  store i64 %2774, i64* %6, align 8
  %2775 = icmp ugt i64 %2773, -321
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %14, align 1
  %2777 = trunc i64 %2774 to i32
  %2778 = and i32 %2777, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %21, align 1
  %2783 = xor i64 %2774, %2773
  %2784 = lshr i64 %2783, 4
  %2785 = trunc i64 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %26, align 1
  %2787 = icmp eq i64 %2774, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %29, align 1
  %2789 = lshr i64 %2774, 63
  %2790 = trunc i64 %2789 to i8
  store i8 %2790, i8* %32, align 1
  %2791 = lshr i64 %2773, 63
  %2792 = xor i64 %2789, %2791
  %2793 = add nuw nsw i64 %2792, %2789
  %2794 = icmp eq i64 %2793, 2
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %38, align 1
  %2796 = add i64 %2766, 11
  store i64 %2796, i64* %3, align 8
  %2797 = add i64 %2773, 328
  %2798 = inttoptr i64 %2774 to i64*
  %2799 = load i64, i64* %2798, align 8
  store i64 %2799, i64* %RBP.i, align 8
  store i64 %2797, i64* %6, align 8
  %2800 = add i64 %2766, 12
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2797 to i64*
  %2802 = load i64, i64* %2801, align 8
  store i64 %2802, i64* %3, align 8
  %2803 = add i64 %2773, 336
  store i64 %2803, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 320
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
define %struct.Memory* @routine_movq__0x186a0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 100000, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_400981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401948___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401948_type* @G__0x401948 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_4008f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x63___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -99
  %8 = icmp ult i32 %4, 99
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
define %struct.Memory* @routine_jne_.L_4008ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40096d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.atol_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40093d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400968(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40194b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40194b_type* @G__0x40194b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4015e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400898(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400986(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.time_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf71__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf71__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x602098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 12
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 252
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xe__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 14
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x159__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 345
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xd2__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 210
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x383__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 899
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x268__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 616
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 248
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5d__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 93
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
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
define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400b66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
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
define %struct.Memory* @routine_jmpq_.L_400a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jne_.L_400ba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.POUT(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd78__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xd78__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400cea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020c8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020e0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6020c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.PA(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400dae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_400ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
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
define %struct.Memory* @routine_jle_.L_400e16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400e4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400ea2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x602090___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x602090___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400fce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020a8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl__eax__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c0___rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 1
  %10 = inttoptr i64 %5 to i64*
  store i64 %9, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ecb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40101d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x6020ac___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x90b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x90b__rip__type* @G_0x90b__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401234(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8d5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602098___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020b0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.cos_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atan_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x7fd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x138__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x130__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40103d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40127f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6a1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4012e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4012a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40132d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x603__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x603__rip__type* @G_0x603__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x5cb__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x5e3__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4013ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401389(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4013fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_jmpq_.L_40141a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4014d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x462__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x462__rip__type* @G_0x462__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd_0x6020a0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_jg_.L_4015a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401965___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401965_type* @G__0x401965 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4015d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -321
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
