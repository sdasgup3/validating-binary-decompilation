; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x58332f_type = type <{ [8 x i8] }>
%G__0x583348_type = type <{ [8 x i8] }>
%G__0x58335a_type = type <{ [8 x i8] }>
%G__0x583360_type = type <{ [8 x i8] }>
%G__0x583366_type = type <{ [8 x i8] }>
%G__0x58339c_type = type <{ [8 x i8] }>
%G__0x5833d6_type = type <{ [8 x i8] }>
%G__0x5833e8_type = type <{ [8 x i8] }>
%G__0x5833f9_type = type <{ [8 x i8] }>
%G__0x583402_type = type <{ [8 x i8] }>
%G__0x583405_type = type <{ [8 x i8] }>
%G__0x583418_type = type <{ [8 x i8] }>
%G__0x58342a_type = type <{ [8 x i8] }>
%G__0x583443_type = type <{ [8 x i8] }>
%G__0x58345b_type = type <{ [8 x i8] }>
%G__0x583475_type = type <{ [8 x i8] }>
%G__0x58348e_type = type <{ [8 x i8] }>
%G__0x58349c_type = type <{ [8 x i8] }>
%G__0x5834b9_type = type <{ [8 x i8] }>
%G__0x5834c5_type = type <{ [8 x i8] }>
%G__0x5834d8_type = type <{ [8 x i8] }>
%G__0x5834ea_type = type <{ [8 x i8] }>
%G__0x5834fd_type = type <{ [8 x i8] }>
%G__0x58350f_type = type <{ [8 x i8] }>
%G__0x58352b_type = type <{ [8 x i8] }>
%G__0x583546_type = type <{ [8 x i8] }>
%G__0x583569_type = type <{ [8 x i8] }>
%G__0x58358c_type = type <{ [8 x i8] }>
%G__0x588988_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G__0x58332f = global %G__0x58332f_type zeroinitializer
@G__0x583348 = global %G__0x583348_type zeroinitializer
@G__0x58335a = global %G__0x58335a_type zeroinitializer
@G__0x583360 = global %G__0x583360_type zeroinitializer
@G__0x583366 = global %G__0x583366_type zeroinitializer
@G__0x58339c = global %G__0x58339c_type zeroinitializer
@G__0x5833d6 = global %G__0x5833d6_type zeroinitializer
@G__0x5833e8 = global %G__0x5833e8_type zeroinitializer
@G__0x5833f9 = global %G__0x5833f9_type zeroinitializer
@G__0x583402 = global %G__0x583402_type zeroinitializer
@G__0x583405 = global %G__0x583405_type zeroinitializer
@G__0x583418 = global %G__0x583418_type zeroinitializer
@G__0x58342a = global %G__0x58342a_type zeroinitializer
@G__0x583443 = global %G__0x583443_type zeroinitializer
@G__0x58345b = global %G__0x58345b_type zeroinitializer
@G__0x583475 = global %G__0x583475_type zeroinitializer
@G__0x58348e = global %G__0x58348e_type zeroinitializer
@G__0x58349c = global %G__0x58349c_type zeroinitializer
@G__0x5834b9 = global %G__0x5834b9_type zeroinitializer
@G__0x5834c5 = global %G__0x5834c5_type zeroinitializer
@G__0x5834d8 = global %G__0x5834d8_type zeroinitializer
@G__0x5834ea = global %G__0x5834ea_type zeroinitializer
@G__0x5834fd = global %G__0x5834fd_type zeroinitializer
@G__0x58350f = global %G__0x58350f_type zeroinitializer
@G__0x58352b = global %G__0x58352b_type zeroinitializer
@G__0x583546 = global %G__0x583546_type zeroinitializer
@G__0x583569 = global %G__0x583569_type zeroinitializer
@G__0x58358c = global %G__0x58358c_type zeroinitializer
@G__0x588988 = global %G__0x588988_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452720.result_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @report_worm(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 192
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i967 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i967, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RSI.i964 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %56, 20
  %58 = add i32 %57, 21
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RSI.i964, align 8
  %60 = icmp ugt i32 %57, -22
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %14, align 1
  %62 = and i32 %58, 253
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1
  %67 = xor i32 %57, 16
  %68 = xor i32 %67, %58
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %72 = lshr i32 %58, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %32, align 1
  %74 = lshr i32 %57, 31
  %75 = xor i32 %72, %74
  %76 = add nuw nsw i32 %75, %72
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %38, align 1
  %79 = add i64 %51, -8
  %80 = add i64 %53, 10
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %58
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RSI.i964, align 8
  %85 = icmp ult i32 %83, %58
  %86 = icmp ult i32 %83, %82
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %14, align 1
  %89 = and i32 %83, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %21, align 1
  %94 = xor i32 %82, %58
  %95 = xor i32 %94, %83
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %26, align 1
  %99 = icmp eq i32 %83, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %29, align 1
  %101 = lshr i32 %83, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %32, align 1
  %103 = lshr i32 %82, 31
  %104 = xor i32 %101, %72
  %105 = xor i32 %101, %103
  %106 = add nuw nsw i32 %104, %105
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %38, align 1
  %109 = add i64 %51, -12
  %110 = add i64 %53, 13
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  store i32 %83, i32* %111, align 4
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i953 = getelementptr inbounds %union.anon, %union.anon* %112, i64 0, i32 0
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -12
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %114 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %RAX.i953, align 8
  %120 = add nsw i64 %119, 12099168
  %121 = add i64 %115, 12
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i8*
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  store i64 %124, i64* %RSI.i964, align 8
  %125 = zext i8 %123 to i32
  store i8 0, i8* %14, align 1
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %130 = icmp eq i8 %123, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %130, i64 21, i64 49
  %132 = add i64 %115, %.v
  %RDI.i933 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %133 = add i64 %132, 10
  store i64 %133, i64* %3, align 8
  br i1 %130, label %block_48ad03, label %block_.L_48ad1f

block_48ad03:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x58332f_type* @G__0x58332f to i64), i64* %RDI.i933, align 8
  %134 = add i64 %132, 13
  store i64 %134, i64* %3, align 8
  %135 = load i32, i32* %117, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RSI.i964, align 8
  %AL.i940 = bitcast %union.anon* %112 to i8*
  store i8 0, i8* %AL.i940, align 1
  %137 = add i64 %132, -233299
  %138 = add i64 %132, 20
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_48ad12 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %137, %struct.Memory* %2)
  %EAX.i936 = bitcast %union.anon* %112 to i32*
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -20
  %144 = load i32, i32* %EAX.i936, align 4
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 3
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %143 to i32*
  store i32 %144, i32* %147, align 4
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 2150
  br label %block_.L_48b580

block_.L_48ad1f:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x583348_type* @G__0x583348 to i64), i64* %RDI.i933, align 8
  %150 = add i64 %132, 13
  store i64 %150, i64* %3, align 8
  %151 = load i32, i32* %117, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RSI.i964, align 8
  %AL.i928 = bitcast %union.anon* %112 to i8*
  store i8 0, i8* %AL.i928, align 1
  %153 = add i64 %132, -233327
  %154 = add i64 %132, 20
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157, align 8
  store i64 %156, i64* %6, align 8
  store i64 %153, i64* %3, align 8
  %call2_48ad2e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %153, %struct.Memory* %2)
  %158 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x583366_type* @G__0x583366 to i64), i64* %RDI.i933, align 8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i923 = getelementptr inbounds %union.anon, %union.anon* %159, i64 0, i32 0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i923, align 8
  %RDX.i921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x583360_type* @G__0x583360 to i64), i64* %RDX.i921, align 8
  %R8.i919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 ptrtoint (%G__0x58335a_type* @G__0x58335a to i64), i64* %R8.i919, align 8
  %R9.i917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -12
  %162 = add i64 %158, 44
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = mul nsw i64 %165, 380
  store i64 %166, i64* %R9.i917, align 8
  %167 = lshr i64 %166, 63
  %R10.i912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %168 = add i64 %166, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %168, i64* %R10.i912, align 8
  %169 = icmp ult i64 %168, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %170 = icmp ult i64 %168, %166
  %171 = or i1 %169, %170
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %14, align 1
  %173 = trunc i64 %168 to i32
  %174 = and i32 %173, 252
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  %179 = xor i64 %166, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %180 = xor i64 %179, %168
  %181 = lshr i64 %180, 4
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %26, align 1
  %184 = icmp eq i64 %168, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %29, align 1
  %186 = lshr i64 %168, 63
  %187 = trunc i64 %186 to i8
  store i8 %187, i8* %32, align 1
  %188 = xor i64 %186, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %189 = xor i64 %186, %167
  %190 = add nuw nsw i64 %188, %189
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %38, align 1
  %193 = inttoptr i64 %168 to i32*
  %194 = add i64 %158, 61
  store i64 %194, i64* %3, align 8
  %195 = load i32, i32* %193, align 4
  %196 = add i32 %195, -1
  %197 = icmp eq i32 %195, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %14, align 1
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  %204 = xor i32 %196, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %26, align 1
  %208 = icmp eq i32 %196, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %29, align 1
  %210 = lshr i32 %196, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %32, align 1
  %212 = lshr i32 %195, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %38, align 1
  %217 = load i64, i64* %R8.i919, align 8
  %218 = load i64, i64* %RDX.i921, align 8
  %219 = select i1 %208, i64 %217, i64 %218
  store i64 %219, i64* %RDX.i921, align 8
  %220 = load i64, i64* %RBP.i, align 8
  %221 = add i64 %220, -12
  %222 = add i64 %158, 69
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = mul nsw i64 %225, 380
  store i64 %226, i64* %R8.i919, align 8
  %227 = lshr i64 %226, 63
  %228 = load i64, i64* %RCX.i923, align 8
  %229 = add i64 %226, %228
  store i64 %229, i64* %R9.i917, align 8
  %230 = icmp ult i64 %229, %228
  %231 = icmp ult i64 %229, %226
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %14, align 1
  %234 = trunc i64 %229 to i32
  %235 = and i32 %234, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  %240 = xor i64 %226, %228
  %241 = xor i64 %240, %229
  %242 = lshr i64 %241, 4
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %26, align 1
  %245 = icmp eq i64 %229, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %29, align 1
  %247 = lshr i64 %229, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %32, align 1
  %249 = lshr i64 %228, 63
  %250 = xor i64 %247, %249
  %251 = xor i64 %247, %227
  %252 = add nuw nsw i64 %250, %251
  %253 = icmp eq i64 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %38, align 1
  %255 = add i64 %229, 12
  %256 = add i64 %158, 86
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RSI.i964, align 8
  %260 = add i64 %158, 90
  store i64 %260, i64* %3, align 8
  %261 = load i32, i32* %223, align 4
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %262, 380
  store i64 %263, i64* %R8.i919, align 8
  %264 = lshr i64 %263, 63
  %265 = add i64 %263, %228
  store i64 %265, i64* %R9.i917, align 8
  %266 = icmp ult i64 %265, %228
  %267 = icmp ult i64 %265, %263
  %268 = or i1 %266, %267
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %14, align 1
  %270 = trunc i64 %265 to i32
  %271 = and i32 %270, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %21, align 1
  %276 = xor i64 %263, %228
  %277 = xor i64 %276, %265
  %278 = lshr i64 %277, 4
  %279 = trunc i64 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %26, align 1
  %281 = icmp eq i64 %265, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %29, align 1
  %283 = lshr i64 %265, 63
  %284 = trunc i64 %283 to i8
  store i8 %284, i8* %32, align 1
  %285 = xor i64 %283, %249
  %286 = xor i64 %283, %264
  %287 = add nuw nsw i64 %285, %286
  %288 = icmp eq i64 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %38, align 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i876 = bitcast %union.anon* %290 to i32*
  %291 = getelementptr inbounds %union.anon, %union.anon* %290, i64 0, i32 0
  %292 = add i64 %265, 4
  %293 = add i64 %158, 107
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %291, align 8
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -12
  %299 = add i64 %158, 111
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %302, 380
  store i64 %303, i64* %R8.i919, align 8
  %304 = lshr i64 %303, 63
  %305 = load i64, i64* %RCX.i923, align 8
  %306 = add i64 %303, %305
  store i64 %306, i64* %RCX.i923, align 8
  %307 = icmp ult i64 %306, %305
  %308 = icmp ult i64 %306, %303
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %14, align 1
  %311 = trunc i64 %306 to i32
  %312 = and i32 %311, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %21, align 1
  %317 = xor i64 %303, %305
  %318 = xor i64 %317, %306
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %26, align 1
  %322 = icmp eq i64 %306, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %29, align 1
  %324 = lshr i64 %306, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %32, align 1
  %326 = lshr i64 %305, 63
  %327 = xor i64 %324, %326
  %328 = xor i64 %324, %304
  %329 = add nuw nsw i64 %327, %328
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %38, align 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %333 = add i64 %306, 8
  %334 = add i64 %158, 126
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to float*
  %336 = load float, float* %335, align 4
  %337 = fpext float %336 to double
  %338 = bitcast %union.VectorReg* %332 to double*
  store double %337, double* %338, align 1
  %339 = add i64 %297, -24
  %340 = load i32, i32* %ESI.i967, align 4
  %341 = add i64 %158, 129
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %342, align 4
  %343 = load i64, i64* %RDX.i921, align 8
  %344 = load i64, i64* %3, align 8
  store i64 %343, i64* %RSI.i964, align 8
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -24
  %347 = add i64 %344, 6
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RDX.i921, align 8
  %351 = load i32, i32* %R11D.i876, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RCX.i923, align 8
  %EAX.i851 = bitcast %union.anon* %112 to i32*
  %353 = add i64 %345, -28
  %354 = load i32, i32* %EAX.i851, align 4
  %355 = add i64 %344, 12
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %353 to i32*
  store i32 %354, i32* %356, align 4
  %357 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i928, align 1
  %358 = add i64 %357, -233488
  %359 = add i64 %357, 7
  %360 = load i64, i64* %6, align 8
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %359, i64* %362, align 8
  store i64 %361, i64* %6, align 8
  store i64 %358, i64* %3, align 8
  %call2_48adc2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %358, %struct.Memory* %call2_48ad2e)
  %363 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58339c_type* @G__0x58339c to i64), i64* %RDI.i933, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i964, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -12
  %366 = add i64 %363, 24
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = mul nsw i64 %369, 380
  store i64 %370, i64* %R8.i919, align 8
  %371 = lshr i64 %370, 63
  %372 = add i64 %370, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %372, i64* %R9.i917, align 8
  %373 = icmp ult i64 %372, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %374 = icmp ult i64 %372, %370
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %14, align 1
  %377 = trunc i64 %372 to i32
  %378 = and i32 %377, 252
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %21, align 1
  %383 = xor i64 %370, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %384 = xor i64 %383, %372
  %385 = lshr i64 %384, 4
  %386 = trunc i64 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %26, align 1
  %388 = icmp eq i64 %372, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %29, align 1
  %390 = lshr i64 %372, 63
  %391 = trunc i64 %390 to i8
  store i8 %391, i8* %32, align 1
  %392 = xor i64 %390, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %393 = xor i64 %390, %371
  %394 = add nuw nsw i64 %392, %393
  %395 = icmp eq i64 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1
  %397 = add i64 %370, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 16)
  %398 = add i64 %363, 41
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RCX.i923, align 8
  %402 = add i64 %363, 45
  store i64 %402, i64* %3, align 8
  %403 = load i32, i32* %367, align 4
  %404 = sext i32 %403 to i64
  %405 = mul nsw i64 %404, 380
  store i64 %405, i64* %R8.i919, align 8
  %406 = lshr i64 %405, 63
  %407 = load i64, i64* %RSI.i964, align 8
  %408 = add i64 %405, %407
  store i64 %408, i64* %R9.i917, align 8
  %409 = icmp ult i64 %408, %407
  %410 = icmp ult i64 %408, %405
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = trunc i64 %408 to i32
  %414 = and i32 %413, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  %419 = xor i64 %405, %407
  %420 = xor i64 %419, %408
  %421 = lshr i64 %420, 4
  %422 = trunc i64 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %26, align 1
  %424 = icmp eq i64 %408, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %29, align 1
  %426 = lshr i64 %408, 63
  %427 = trunc i64 %426 to i8
  store i8 %427, i8* %32, align 1
  %428 = lshr i64 %407, 63
  %429 = xor i64 %426, %428
  %430 = xor i64 %426, %406
  %431 = add nuw nsw i64 %429, %430
  %432 = icmp eq i64 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %38, align 1
  %434 = add i64 %408, 20
  %435 = add i64 %363, 62
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RDX.i921, align 8
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -12
  %441 = add i64 %363, 66
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = mul nsw i64 %444, 380
  store i64 %445, i64* %R8.i919, align 8
  %446 = lshr i64 %445, 63
  %447 = add i64 %445, %407
  store i64 %447, i64* %R9.i917, align 8
  %448 = icmp ult i64 %447, %407
  %449 = icmp ult i64 %447, %445
  %450 = or i1 %448, %449
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %14, align 1
  %452 = trunc i64 %447 to i32
  %453 = and i32 %452, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i64 %445, %407
  %459 = xor i64 %458, %447
  %460 = lshr i64 %459, 4
  %461 = trunc i64 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %26, align 1
  %463 = icmp eq i64 %447, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %29, align 1
  %465 = lshr i64 %447, 63
  %466 = trunc i64 %465 to i8
  store i8 %466, i8* %32, align 1
  %467 = xor i64 %465, %428
  %468 = xor i64 %465, %446
  %469 = add nuw nsw i64 %467, %468
  %470 = icmp eq i64 %469, 2
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %38, align 1
  %472 = add i64 %447, 24
  %473 = add i64 %363, 83
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %291, align 8
  %477 = add i64 %363, 87
  store i64 %477, i64* %3, align 8
  %478 = load i32, i32* %442, align 4
  %479 = sext i32 %478 to i64
  %480 = mul nsw i64 %479, 380
  store i64 %480, i64* %R8.i919, align 8
  %481 = lshr i64 %480, 63
  %482 = load i64, i64* %RSI.i964, align 8
  %483 = add i64 %480, %482
  store i64 %483, i64* %RSI.i964, align 8
  %484 = icmp ult i64 %483, %482
  %485 = icmp ult i64 %483, %480
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %14, align 1
  %488 = trunc i64 %483 to i32
  %489 = and i32 %488, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %21, align 1
  %494 = xor i64 %480, %482
  %495 = xor i64 %494, %483
  %496 = lshr i64 %495, 4
  %497 = trunc i64 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %26, align 1
  %499 = icmp eq i64 %483, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %29, align 1
  %501 = lshr i64 %483, 63
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %32, align 1
  %503 = lshr i64 %482, 63
  %504 = xor i64 %501, %503
  %505 = xor i64 %501, %481
  %506 = add nuw nsw i64 %504, %505
  %507 = icmp eq i64 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %38, align 1
  %509 = add i64 %483, 28
  %510 = add i64 %363, 101
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %R8.i919, align 8
  %ECX.i = bitcast %union.anon* %159 to i32*
  %514 = load i32, i32* %ECX.i, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RSI.i964, align 8
  store i64 %476, i64* %RCX.i923, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -32
  %518 = load i32, i32* %EAX.i851, align 4
  %519 = add i64 %363, 109
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %517 to i32*
  store i32 %518, i32* %520, align 4
  %521 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i928, align 1
  %522 = add i64 %521, -233604
  %523 = add i64 %521, 7
  %524 = load i64, i64* %6, align 8
  %525 = add i64 %524, -8
  %526 = inttoptr i64 %525 to i64*
  store i64 %523, i64* %526, align 8
  store i64 %525, i64* %6, align 8
  store i64 %522, i64* %3, align 8
  %call2_48ae36 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %522, %struct.Memory* %call2_48adc2)
  %527 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDI.i933, align 8
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -12
  %530 = add i64 %527, 14
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = sext i32 %532 to i64
  %534 = mul nsw i64 %533, 380
  store i64 %534, i64* %R9.i917, align 8
  %535 = lshr i64 %534, 63
  %536 = add i64 %534, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %536, i64* %RDI.i933, align 8
  %537 = icmp ult i64 %536, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %538 = icmp ult i64 %536, %534
  %539 = or i1 %537, %538
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %14, align 1
  %541 = trunc i64 %536 to i32
  %542 = and i32 %541, 252
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  %547 = xor i64 %534, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %548 = xor i64 %547, %536
  %549 = lshr i64 %548, 4
  %550 = trunc i64 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %26, align 1
  %552 = icmp eq i64 %536, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %29, align 1
  %554 = lshr i64 %536, 63
  %555 = trunc i64 %554 to i8
  store i8 %555, i8* %32, align 1
  %556 = xor i64 %554, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %557 = xor i64 %554, %535
  %558 = add nuw nsw i64 %556, %557
  %559 = icmp eq i64 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %38, align 1
  %561 = add i64 %534, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %562 = add i64 %527, 28
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  store i8 0, i8* %14, align 1
  %565 = and i32 %564, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %570 = icmp eq i32 %564, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %29, align 1
  %572 = lshr i32 %564, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %574 = add i64 %528, -36
  %575 = load i32, i32* %EAX.i851, align 4
  %576 = add i64 %527, 31
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %574 to i32*
  store i32 %575, i32* %577, align 4
  %578 = load i64, i64* %3, align 8
  %579 = load i8, i8* %29, align 1
  %580 = icmp eq i8 %579, 0
  %.v70 = select i1 %580, i64 31, i64 6
  %581 = add i64 %578, %.v70
  %582 = add i64 %581, 10
  store i64 %582, i64* %3, align 8
  br i1 %580, label %block_.L_48ae79, label %block_48ae60

block_48ae60:                                     ; preds = %block_.L_48ad1f
  store i64 ptrtoint (%G__0x5833d6_type* @G__0x5833d6 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %583 = add i64 %581, -233648
  %584 = add i64 %581, 17
  %585 = load i64, i64* %6, align 8
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %584, i64* %587, align 8
  store i64 %586, i64* %6, align 8
  store i64 %583, i64* %3, align 8
  %call2_48ae6c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %583, %struct.Memory* %call2_48ae36)
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -40
  %590 = load i32, i32* %EAX.i851, align 4
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 3
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %589 to i32*
  store i32 %590, i32* %593, align 4
  %594 = load i64, i64* %3, align 8
  %595 = add i64 %594, 226
  store i64 %595, i64* %3, align 8
  br label %block_.L_48af56

block_.L_48ae79:                                  ; preds = %block_.L_48ad1f
  store i64 ptrtoint (%G__0x5833e8_type* @G__0x5833e8 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %596 = add i64 %581, -233673
  %597 = add i64 %581, 17
  %598 = load i64, i64* %6, align 8
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %6, align 8
  store i64 %596, i64* %3, align 8
  %call2_48ae85 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %596, %struct.Memory* %call2_48ae36)
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -16
  %603 = load i64, i64* %3, align 8
  %604 = add i64 %603, 7
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %602 to i32*
  store i32 0, i32* %605, align 4
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -44
  %608 = load i32, i32* %EAX.i851, align 4
  %609 = load i64, i64* %3, align 8
  %610 = add i64 %609, 3
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %607 to i32*
  store i32 %608, i32* %611, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_48ae94

block_.L_48ae94:                                  ; preds = %block_.L_48aed9, %block_.L_48ae79
  %612 = phi i64 [ %.pre, %block_.L_48ae79 ], [ %845, %block_.L_48aed9 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_48ae85, %block_.L_48ae79 ], [ %call2_48af2c, %block_.L_48aed9 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -12
  %615 = add i64 %612, 14
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = mul nsw i64 %618, 380
  store i64 %619, i64* %RCX.i923, align 8
  %620 = lshr i64 %619, 63
  %621 = add i64 %619, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %621, i64* %RAX.i953, align 8
  %622 = icmp ult i64 %621, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %623 = icmp ult i64 %621, %619
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = trunc i64 %621 to i32
  %627 = and i32 %626, 252
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i64 %619, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %633 = xor i64 %632, %621
  %634 = lshr i64 %633, 4
  %635 = trunc i64 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %26, align 1
  %637 = icmp eq i64 %621, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i64 %621, 63
  %640 = trunc i64 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = xor i64 %639, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %642 = xor i64 %639, %620
  %643 = add nuw nsw i64 %641, %642
  %644 = icmp eq i64 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %38, align 1
  %646 = add i64 %613, -16
  %647 = add i64 %612, 28
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sext i32 %649 to i64
  store i64 %650, i64* %RCX.i923, align 8
  %651 = shl nsw i64 %650, 2
  %652 = add i64 %619, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %653 = add i64 %652, %651
  %654 = add i64 %612, 33
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  store i8 0, i8* %14, align 1
  %657 = and i32 %656, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %662 = icmp eq i32 %656, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %656, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v65 = select i1 %662, i64 174, i64 39
  %666 = add i64 %612, %.v65
  store i64 %666, i64* %3, align 8
  br i1 %662, label %block_.L_48af42, label %block_48aebb

block_48aebb:                                     ; preds = %block_.L_48ae94
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -16
  %669 = add i64 %666, 4
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  store i8 0, i8* %14, align 1
  %672 = and i32 %671, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %677 = icmp eq i32 %671, 0
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %29, align 1
  %679 = lshr i32 %671, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %681 = icmp ne i8 %680, 0
  %682 = or i1 %677, %681
  %.v66 = select i1 %682, i64 30, i64 10
  %683 = add i64 %666, %.v66
  store i64 %683, i64* %3, align 8
  br i1 %682, label %block_.L_48aed9, label %block_48aec5

block_48aec5:                                     ; preds = %block_48aebb
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %684 = add i64 %683, -233749
  %685 = add i64 %683, 17
  %686 = load i64, i64* %6, align 8
  %687 = add i64 %686, -8
  %688 = inttoptr i64 %687 to i64*
  store i64 %685, i64* %688, align 8
  store i64 %687, i64* %6, align 8
  store i64 %684, i64* %3, align 8
  %call2_48aed1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %684, %struct.Memory* %MEMORY.0)
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -48
  %691 = load i32, i32* %EAX.i851, align 4
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, 3
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %690 to i32*
  store i32 %691, i32* %694, align 4
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48aed9

block_.L_48aed9:                                  ; preds = %block_48aec5, %block_48aebb
  %695 = phi i64 [ %.pre30, %block_48aec5 ], [ %667, %block_48aebb ]
  %696 = phi i64 [ %.pre29, %block_48aec5 ], [ %683, %block_48aebb ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %697 = add i64 %695, -12
  %698 = add i64 %696, 14
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = sext i32 %700 to i64
  %702 = mul nsw i64 %701, 380
  store i64 %702, i64* %RCX.i923, align 8
  %703 = lshr i64 %702, 63
  %704 = add i64 %702, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %704, i64* %RDX.i921, align 8
  %705 = icmp ult i64 %704, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %706 = icmp ult i64 %704, %702
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %14, align 1
  %709 = trunc i64 %704 to i32
  %710 = and i32 %709, 252
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i64 %702, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %716 = xor i64 %715, %704
  %717 = lshr i64 %716, 4
  %718 = trunc i64 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %26, align 1
  %720 = icmp eq i64 %704, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %29, align 1
  %722 = lshr i64 %704, 63
  %723 = trunc i64 %722 to i8
  store i8 %723, i8* %32, align 1
  %724 = xor i64 %722, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %725 = xor i64 %722, %703
  %726 = add nuw nsw i64 %724, %725
  %727 = icmp eq i64 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %38, align 1
  %729 = add i64 %695, -16
  %730 = add i64 %696, 31
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RCX.i923, align 8
  %734 = shl nsw i64 %733, 2
  %735 = add i64 %702, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %736 = add i64 %735, %734
  %737 = add i64 %696, 35
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RSI.i964, align 8
  %741 = add i64 %696, 39
  store i64 %741, i64* %3, align 8
  %742 = load i32, i32* %699, align 4
  %743 = sext i32 %742 to i64
  %744 = mul nsw i64 %743, 380
  store i64 %744, i64* %RCX.i923, align 8
  %745 = lshr i64 %744, 63
  %746 = load i64, i64* %RAX.i953, align 8
  %747 = add i64 %744, %746
  store i64 %747, i64* %RAX.i953, align 8
  %748 = icmp ult i64 %747, %746
  %749 = icmp ult i64 %747, %744
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %14, align 1
  %752 = trunc i64 %747 to i32
  %753 = and i32 %752, 255
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %21, align 1
  %758 = xor i64 %744, %746
  %759 = xor i64 %758, %747
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %26, align 1
  %763 = icmp eq i64 %747, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %29, align 1
  %765 = lshr i64 %747, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %32, align 1
  %767 = lshr i64 %746, 63
  %768 = xor i64 %765, %767
  %769 = xor i64 %765, %745
  %770 = add nuw nsw i64 %768, %769
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %38, align 1
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -16
  %775 = add i64 %696, 53
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RCX.i923, align 8
  %779 = shl nsw i64 %778, 2
  %780 = add i64 %747, 100
  %781 = add i64 %780, %779
  %782 = add i64 %696, 57
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RDI.i933, align 8
  %786 = add i64 %773, -52
  %787 = add i64 %696, 60
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 %739, i32* %788, align 4
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, -231413
  %791 = add i64 %789, 5
  %792 = load i64, i64* %6, align 8
  %793 = add i64 %792, -8
  %794 = inttoptr i64 %793 to i64*
  store i64 %791, i64* %794, align 8
  store i64 %793, i64* %6, align 8
  store i64 %790, i64* %3, align 8
  %call2_48af15 = tail call %struct.Memory* @sub_452720.result_to_string(%struct.State* nonnull %0, i64 %790, %struct.Memory* %MEMORY.0)
  %795 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i933, align 8
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -52
  %798 = add i64 %795, 13
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RSI.i964, align 8
  %802 = load i64, i64* %RAX.i953, align 8
  store i64 %802, i64* %RDX.i921, align 8
  store i8 0, i8* %AL.i928, align 1
  %803 = add i64 %795, -233834
  %804 = add i64 %795, 23
  %805 = load i64, i64* %6, align 8
  %806 = add i64 %805, -8
  %807 = inttoptr i64 %806 to i64*
  store i64 %804, i64* %807, align 8
  store i64 %806, i64* %6, align 8
  store i64 %803, i64* %3, align 8
  %call2_48af2c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %803, %struct.Memory* %call2_48af15)
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -16
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, 1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RSI.i964, align 8
  %816 = icmp eq i32 %813, -1
  %817 = icmp eq i32 %814, 0
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %14, align 1
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %21, align 1
  %825 = xor i32 %814, %813
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %26, align 1
  %829 = zext i1 %817 to i8
  store i8 %829, i8* %29, align 1
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %32, align 1
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %38, align 1
  %837 = add i64 %810, 9
  store i64 %837, i64* %3, align 8
  store i32 %814, i32* %812, align 4
  %838 = load i64, i64* %RBP.i, align 8
  %839 = add i64 %838, -56
  %840 = load i32, i32* %EAX.i851, align 4
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, 3
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %843, align 4
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, -169
  store i64 %845, i64* %3, align 8
  br label %block_.L_48ae94

block_.L_48af42:                                  ; preds = %block_.L_48ae94
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %846 = add i64 %666, -233874
  %847 = add i64 %666, 17
  %848 = load i64, i64* %6, align 8
  %849 = add i64 %848, -8
  %850 = inttoptr i64 %849 to i64*
  store i64 %847, i64* %850, align 8
  store i64 %849, i64* %6, align 8
  store i64 %846, i64* %3, align 8
  %call2_48af4e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %846, %struct.Memory* %MEMORY.0)
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -60
  %853 = load i32, i32* %EAX.i851, align 4
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 3
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %852 to i32*
  store i32 %853, i32* %856, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_48af56

block_.L_48af56:                                  ; preds = %block_.L_48af42, %block_48ae60
  %857 = phi i64 [ %.pre31, %block_.L_48af42 ], [ %595, %block_48ae60 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_48af4e, %block_.L_48af42 ], [ %call2_48ae6c, %block_48ae60 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -12
  %860 = add i64 %857, 14
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  %864 = mul nsw i64 %863, 380
  store i64 %864, i64* %RCX.i923, align 8
  %865 = lshr i64 %864, 63
  %866 = add i64 %864, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %866, i64* %RAX.i953, align 8
  %867 = icmp ult i64 %866, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %868 = icmp ult i64 %866, %864
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = trunc i64 %866 to i32
  %872 = and i32 %871, 252
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i64 %864, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %878 = xor i64 %877, %866
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %26, align 1
  %882 = icmp eq i64 %866, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %29, align 1
  %884 = lshr i64 %866, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %32, align 1
  %886 = xor i64 %884, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %887 = xor i64 %884, %865
  %888 = add nuw nsw i64 %886, %887
  %889 = icmp eq i64 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %38, align 1
  %891 = add i64 %864, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 140)
  %892 = add i64 %857, 31
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  store i8 0, i8* %14, align 1
  %895 = and i32 %894, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %900 = icmp eq i32 %894, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %29, align 1
  %902 = lshr i32 %894, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %900, i64 37, i64 62
  %904 = add i64 %857, %.v49
  %905 = add i64 %904, 10
  store i64 %905, i64* %3, align 8
  br i1 %900, label %block_48af7b, label %block_.L_48af94

block_48af7b:                                     ; preds = %block_.L_48af56
  store i64 ptrtoint (%G__0x583405_type* @G__0x583405 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %906 = add i64 %904, -233931
  %907 = add i64 %904, 17
  %908 = load i64, i64* %6, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %907, i64* %910, align 8
  store i64 %909, i64* %6, align 8
  store i64 %906, i64* %3, align 8
  %call2_48af87 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %906, %struct.Memory* %MEMORY.2)
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -64
  %913 = load i32, i32* %EAX.i851, align 4
  %914 = load i64, i64* %3, align 8
  %915 = add i64 %914, 3
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %912 to i32*
  store i32 %913, i32* %916, align 4
  %917 = load i64, i64* %3, align 8
  %918 = add i64 %917, 235
  store i64 %918, i64* %3, align 8
  br label %block_.L_48b07a

block_.L_48af94:                                  ; preds = %block_.L_48af56
  store i64 ptrtoint (%G__0x583418_type* @G__0x583418 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %919 = add i64 %904, -233956
  %920 = add i64 %904, 17
  %921 = load i64, i64* %6, align 8
  %922 = add i64 %921, -8
  %923 = inttoptr i64 %922 to i64*
  store i64 %920, i64* %923, align 8
  store i64 %922, i64* %6, align 8
  store i64 %919, i64* %3, align 8
  %call2_48afa0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %919, %struct.Memory* %MEMORY.2)
  %924 = load i64, i64* %RBP.i, align 8
  %925 = add i64 %924, -16
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, 7
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %925 to i32*
  store i32 0, i32* %928, align 4
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -68
  %931 = load i32, i32* %EAX.i851, align 4
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 3
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %930 to i32*
  store i32 %931, i32* %934, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_48afaf

block_.L_48afaf:                                  ; preds = %block_.L_48aff7, %block_.L_48af94
  %935 = phi i64 [ %.pre32, %block_.L_48af94 ], [ %1168, %block_.L_48aff7 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_48afa0, %block_.L_48af94 ], [ %call2_48b050, %block_.L_48aff7 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -12
  %938 = add i64 %935, 14
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = sext i32 %940 to i64
  %942 = mul nsw i64 %941, 380
  store i64 %942, i64* %RCX.i923, align 8
  %943 = lshr i64 %942, 63
  %944 = add i64 %942, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %944, i64* %RAX.i953, align 8
  %945 = icmp ult i64 %944, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %946 = icmp ult i64 %944, %942
  %947 = or i1 %945, %946
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %14, align 1
  %949 = trunc i64 %944 to i32
  %950 = and i32 %949, 252
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %21, align 1
  %955 = xor i64 %942, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %956 = xor i64 %955, %944
  %957 = lshr i64 %956, 4
  %958 = trunc i64 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %26, align 1
  %960 = icmp eq i64 %944, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i64 %944, 63
  %963 = trunc i64 %962 to i8
  store i8 %963, i8* %32, align 1
  %964 = xor i64 %962, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %965 = xor i64 %962, %943
  %966 = add nuw nsw i64 %964, %965
  %967 = icmp eq i64 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %38, align 1
  %969 = add i64 %936, -16
  %970 = add i64 %935, 28
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RCX.i923, align 8
  %974 = shl nsw i64 %973, 2
  %975 = add i64 %942, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 140)
  %976 = add i64 %975, %974
  %977 = add i64 %935, 36
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  store i8 0, i8* %14, align 1
  %980 = and i32 %979, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %985 = icmp eq i32 %979, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %29, align 1
  %987 = lshr i32 %979, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %985, i64 183, i64 42
  %989 = add i64 %935, %.v50
  store i64 %989, i64* %3, align 8
  br i1 %985, label %block_.L_48b066, label %block_48afd9

block_48afd9:                                     ; preds = %block_.L_48afaf
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -16
  %992 = add i64 %989, 4
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  store i8 0, i8* %14, align 1
  %995 = and i32 %994, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1000 = icmp eq i32 %994, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %29, align 1
  %1002 = lshr i32 %994, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1004 = icmp ne i8 %1003, 0
  %1005 = or i1 %1000, %1004
  %.v51 = select i1 %1005, i64 30, i64 10
  %1006 = add i64 %989, %.v51
  store i64 %1006, i64* %3, align 8
  br i1 %1005, label %block_.L_48aff7, label %block_48afe3

block_48afe3:                                     ; preds = %block_48afd9
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1007 = add i64 %1006, -234035
  %1008 = add i64 %1006, 17
  %1009 = load i64, i64* %6, align 8
  %1010 = add i64 %1009, -8
  %1011 = inttoptr i64 %1010 to i64*
  store i64 %1008, i64* %1011, align 8
  store i64 %1010, i64* %6, align 8
  store i64 %1007, i64* %3, align 8
  %call2_48afef = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1007, %struct.Memory* %MEMORY.3)
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -72
  %1014 = load i32, i32* %EAX.i851, align 4
  %1015 = load i64, i64* %3, align 8
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1013 to i32*
  store i32 %1014, i32* %1017, align 4
  %.pre33 = load i64, i64* %3, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48aff7

block_.L_48aff7:                                  ; preds = %block_48afe3, %block_48afd9
  %1018 = phi i64 [ %.pre34, %block_48afe3 ], [ %990, %block_48afd9 ]
  %1019 = phi i64 [ %.pre33, %block_48afe3 ], [ %1006, %block_48afd9 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1020 = add i64 %1018, -12
  %1021 = add i64 %1019, 14
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = mul nsw i64 %1024, 380
  store i64 %1025, i64* %RCX.i923, align 8
  %1026 = lshr i64 %1025, 63
  %1027 = add i64 %1025, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1027, i64* %RDX.i921, align 8
  %1028 = icmp ult i64 %1027, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1029 = icmp ult i64 %1027, %1025
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %14, align 1
  %1032 = trunc i64 %1027 to i32
  %1033 = and i32 %1032, 252
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %21, align 1
  %1038 = xor i64 %1025, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1039 = xor i64 %1038, %1027
  %1040 = lshr i64 %1039, 4
  %1041 = trunc i64 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %26, align 1
  %1043 = icmp eq i64 %1027, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %29, align 1
  %1045 = lshr i64 %1027, 63
  %1046 = trunc i64 %1045 to i8
  store i8 %1046, i8* %32, align 1
  %1047 = xor i64 %1045, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1048 = xor i64 %1045, %1026
  %1049 = add nuw nsw i64 %1047, %1048
  %1050 = icmp eq i64 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %38, align 1
  %1052 = add i64 %1018, -16
  %1053 = add i64 %1019, 31
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = sext i32 %1055 to i64
  store i64 %1056, i64* %RCX.i923, align 8
  %1057 = shl nsw i64 %1056, 2
  %1058 = add i64 %1025, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 140)
  %1059 = add i64 %1058, %1057
  %1060 = add i64 %1019, 38
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RSI.i964, align 8
  %1064 = add i64 %1019, 42
  store i64 %1064, i64* %3, align 8
  %1065 = load i32, i32* %1022, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = mul nsw i64 %1066, 380
  store i64 %1067, i64* %RCX.i923, align 8
  %1068 = lshr i64 %1067, 63
  %1069 = load i64, i64* %RAX.i953, align 8
  %1070 = add i64 %1067, %1069
  store i64 %1070, i64* %RAX.i953, align 8
  %1071 = icmp ult i64 %1070, %1069
  %1072 = icmp ult i64 %1070, %1067
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = trunc i64 %1070 to i32
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i64 %1067, %1069
  %1082 = xor i64 %1081, %1070
  %1083 = lshr i64 %1082, 4
  %1084 = trunc i64 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %26, align 1
  %1086 = icmp eq i64 %1070, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %29, align 1
  %1088 = lshr i64 %1070, 63
  %1089 = trunc i64 %1088 to i8
  store i8 %1089, i8* %32, align 1
  %1090 = lshr i64 %1069, 63
  %1091 = xor i64 %1088, %1090
  %1092 = xor i64 %1088, %1068
  %1093 = add nuw nsw i64 %1091, %1092
  %1094 = icmp eq i64 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %38, align 1
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -16
  %1098 = add i64 %1019, 56
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i923, align 8
  %1102 = shl nsw i64 %1101, 2
  %1103 = add i64 %1070, 180
  %1104 = add i64 %1103, %1102
  %1105 = add i64 %1019, 63
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RDI.i933, align 8
  %1109 = add i64 %1096, -76
  %1110 = add i64 %1019, 66
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  store i32 %1062, i32* %1111, align 4
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, -231705
  %1114 = add i64 %1112, 5
  %1115 = load i64, i64* %6, align 8
  %1116 = add i64 %1115, -8
  %1117 = inttoptr i64 %1116 to i64*
  store i64 %1114, i64* %1117, align 8
  store i64 %1116, i64* %6, align 8
  store i64 %1113, i64* %3, align 8
  %call2_48b039 = tail call %struct.Memory* @sub_452720.result_to_string(%struct.State* nonnull %0, i64 %1113, %struct.Memory* %MEMORY.3)
  %1118 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i933, align 8
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -76
  %1121 = add i64 %1118, 13
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RSI.i964, align 8
  %1125 = load i64, i64* %RAX.i953, align 8
  store i64 %1125, i64* %RDX.i921, align 8
  store i8 0, i8* %AL.i928, align 1
  %1126 = add i64 %1118, -234126
  %1127 = add i64 %1118, 23
  %1128 = load i64, i64* %6, align 8
  %1129 = add i64 %1128, -8
  %1130 = inttoptr i64 %1129 to i64*
  store i64 %1127, i64* %1130, align 8
  store i64 %1129, i64* %6, align 8
  store i64 %1126, i64* %3, align 8
  %call2_48b050 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1126, %struct.Memory* %call2_48b039)
  %1131 = load i64, i64* %RBP.i, align 8
  %1132 = add i64 %1131, -16
  %1133 = load i64, i64* %3, align 8
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = add i32 %1136, 1
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RSI.i964, align 8
  %1139 = icmp eq i32 %1136, -1
  %1140 = icmp eq i32 %1137, 0
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %14, align 1
  %1143 = and i32 %1137, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %21, align 1
  %1148 = xor i32 %1137, %1136
  %1149 = lshr i32 %1148, 4
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  store i8 %1151, i8* %26, align 1
  %1152 = zext i1 %1140 to i8
  store i8 %1152, i8* %29, align 1
  %1153 = lshr i32 %1137, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %32, align 1
  %1155 = lshr i32 %1136, 31
  %1156 = xor i32 %1153, %1155
  %1157 = add nuw nsw i32 %1156, %1153
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %38, align 1
  %1160 = add i64 %1133, 9
  store i64 %1160, i64* %3, align 8
  store i32 %1137, i32* %1135, align 4
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -80
  %1163 = load i32, i32* %EAX.i851, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1162 to i32*
  store i32 %1163, i32* %1166, align 4
  %1167 = load i64, i64* %3, align 8
  %1168 = add i64 %1167, -178
  store i64 %1168, i64* %3, align 8
  br label %block_.L_48afaf

block_.L_48b066:                                  ; preds = %block_.L_48afaf
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1169 = add i64 %989, -234166
  %1170 = add i64 %989, 17
  %1171 = load i64, i64* %6, align 8
  %1172 = add i64 %1171, -8
  %1173 = inttoptr i64 %1172 to i64*
  store i64 %1170, i64* %1173, align 8
  store i64 %1172, i64* %6, align 8
  store i64 %1169, i64* %3, align 8
  %call2_48b072 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1169, %struct.Memory* %MEMORY.3)
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -84
  %1176 = load i32, i32* %EAX.i851, align 4
  %1177 = load i64, i64* %3, align 8
  %1178 = add i64 %1177, 3
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1175 to i32*
  store i32 %1176, i32* %1179, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_48b07a

block_.L_48b07a:                                  ; preds = %block_.L_48b066, %block_48af7b
  %1180 = phi i64 [ %.pre35, %block_.L_48b066 ], [ %918, %block_48af7b ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_48b072, %block_.L_48b066 ], [ %call2_48af87, %block_48af7b ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -12
  %1183 = add i64 %1180, 14
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i32*
  %1185 = load i32, i32* %1184, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = mul nsw i64 %1186, 380
  store i64 %1187, i64* %RCX.i923, align 8
  %1188 = lshr i64 %1187, 63
  %1189 = add i64 %1187, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1189, i64* %RAX.i953, align 8
  %1190 = icmp ult i64 %1189, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1191 = icmp ult i64 %1189, %1187
  %1192 = or i1 %1190, %1191
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %14, align 1
  %1194 = trunc i64 %1189 to i32
  %1195 = and i32 %1194, 252
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i64 %1187, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1201 = xor i64 %1200, %1189
  %1202 = lshr i64 %1201, 4
  %1203 = trunc i64 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %26, align 1
  %1205 = icmp eq i64 %1189, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %29, align 1
  %1207 = lshr i64 %1189, 63
  %1208 = trunc i64 %1207 to i8
  store i8 %1208, i8* %32, align 1
  %1209 = xor i64 %1207, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1210 = xor i64 %1207, %1188
  %1211 = add nuw nsw i64 %1209, %1210
  %1212 = icmp eq i64 %1211, 2
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %38, align 1
  %1214 = add i64 %1187, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 220)
  %1215 = add i64 %1180, 31
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  store i8 0, i8* %14, align 1
  %1218 = and i32 %1217, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1223 = icmp eq i32 %1217, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %29, align 1
  %1225 = lshr i32 %1217, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %1223, i64 37, i64 62
  %1227 = add i64 %1180, %.v52
  %1228 = add i64 %1227, 10
  store i64 %1228, i64* %3, align 8
  br i1 %1223, label %block_48b09f, label %block_.L_48b0b8

block_48b09f:                                     ; preds = %block_.L_48b07a
  store i64 ptrtoint (%G__0x58342a_type* @G__0x58342a to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1229 = add i64 %1227, -234223
  %1230 = add i64 %1227, 17
  %1231 = load i64, i64* %6, align 8
  %1232 = add i64 %1231, -8
  %1233 = inttoptr i64 %1232 to i64*
  store i64 %1230, i64* %1233, align 8
  store i64 %1232, i64* %6, align 8
  store i64 %1229, i64* %3, align 8
  %call2_48b0ab = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1229, %struct.Memory* %MEMORY.5)
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -88
  %1236 = load i32, i32* %EAX.i851, align 4
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1235 to i32*
  store i32 %1236, i32* %1239, align 4
  %1240 = load i64, i64* %3, align 8
  %1241 = add i64 %1240, 235
  store i64 %1241, i64* %3, align 8
  br label %block_.L_48b19e

block_.L_48b0b8:                                  ; preds = %block_.L_48b07a
  store i64 ptrtoint (%G__0x583443_type* @G__0x583443 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1242 = add i64 %1227, -234248
  %1243 = add i64 %1227, 17
  %1244 = load i64, i64* %6, align 8
  %1245 = add i64 %1244, -8
  %1246 = inttoptr i64 %1245 to i64*
  store i64 %1243, i64* %1246, align 8
  store i64 %1245, i64* %6, align 8
  store i64 %1242, i64* %3, align 8
  %call2_48b0c4 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1242, %struct.Memory* %MEMORY.5)
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -16
  %1249 = load i64, i64* %3, align 8
  %1250 = add i64 %1249, 7
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1248 to i32*
  store i32 0, i32* %1251, align 4
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -92
  %1254 = load i32, i32* %EAX.i851, align 4
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 3
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1253 to i32*
  store i32 %1254, i32* %1257, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_48b0d3

block_.L_48b0d3:                                  ; preds = %block_.L_48b11b, %block_.L_48b0b8
  %1258 = phi i64 [ %.pre36, %block_.L_48b0b8 ], [ %1491, %block_.L_48b11b ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_48b0c4, %block_.L_48b0b8 ], [ %call2_48b174, %block_.L_48b11b ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -12
  %1261 = add i64 %1258, 14
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i32*
  %1263 = load i32, i32* %1262, align 4
  %1264 = sext i32 %1263 to i64
  %1265 = mul nsw i64 %1264, 380
  store i64 %1265, i64* %RCX.i923, align 8
  %1266 = lshr i64 %1265, 63
  %1267 = add i64 %1265, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1267, i64* %RAX.i953, align 8
  %1268 = icmp ult i64 %1267, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1269 = icmp ult i64 %1267, %1265
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %14, align 1
  %1272 = trunc i64 %1267 to i32
  %1273 = and i32 %1272, 252
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  %1278 = xor i64 %1265, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1279 = xor i64 %1278, %1267
  %1280 = lshr i64 %1279, 4
  %1281 = trunc i64 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %26, align 1
  %1283 = icmp eq i64 %1267, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %29, align 1
  %1285 = lshr i64 %1267, 63
  %1286 = trunc i64 %1285 to i8
  store i8 %1286, i8* %32, align 1
  %1287 = xor i64 %1285, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1288 = xor i64 %1285, %1266
  %1289 = add nuw nsw i64 %1287, %1288
  %1290 = icmp eq i64 %1289, 2
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %38, align 1
  %1292 = add i64 %1259, -16
  %1293 = add i64 %1258, 28
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = sext i32 %1295 to i64
  store i64 %1296, i64* %RCX.i923, align 8
  %1297 = shl nsw i64 %1296, 2
  %1298 = add i64 %1265, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 220)
  %1299 = add i64 %1298, %1297
  %1300 = add i64 %1258, 36
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  store i8 0, i8* %14, align 1
  %1303 = and i32 %1302, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1308 = icmp eq i32 %1302, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %29, align 1
  %1310 = lshr i32 %1302, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %1308, i64 183, i64 42
  %1312 = add i64 %1258, %.v53
  store i64 %1312, i64* %3, align 8
  br i1 %1308, label %block_.L_48b18a, label %block_48b0fd

block_48b0fd:                                     ; preds = %block_.L_48b0d3
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -16
  %1315 = add i64 %1312, 4
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  store i8 0, i8* %14, align 1
  %1318 = and i32 %1317, 255
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1323 = icmp eq i32 %1317, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %29, align 1
  %1325 = lshr i32 %1317, 31
  %1326 = trunc i32 %1325 to i8
  store i8 %1326, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1327 = icmp ne i8 %1326, 0
  %1328 = or i1 %1323, %1327
  %.v54 = select i1 %1328, i64 30, i64 10
  %1329 = add i64 %1312, %.v54
  store i64 %1329, i64* %3, align 8
  br i1 %1328, label %block_.L_48b11b, label %block_48b107

block_48b107:                                     ; preds = %block_48b0fd
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1330 = add i64 %1329, -234327
  %1331 = add i64 %1329, 17
  %1332 = load i64, i64* %6, align 8
  %1333 = add i64 %1332, -8
  %1334 = inttoptr i64 %1333 to i64*
  store i64 %1331, i64* %1334, align 8
  store i64 %1333, i64* %6, align 8
  store i64 %1330, i64* %3, align 8
  %call2_48b113 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1330, %struct.Memory* %MEMORY.6)
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -96
  %1337 = load i32, i32* %EAX.i851, align 4
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, 3
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1336 to i32*
  store i32 %1337, i32* %1340, align 4
  %.pre37 = load i64, i64* %3, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48b11b

block_.L_48b11b:                                  ; preds = %block_48b107, %block_48b0fd
  %1341 = phi i64 [ %.pre38, %block_48b107 ], [ %1313, %block_48b0fd ]
  %1342 = phi i64 [ %.pre37, %block_48b107 ], [ %1329, %block_48b0fd ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1343 = add i64 %1341, -12
  %1344 = add i64 %1342, 14
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = mul nsw i64 %1347, 380
  store i64 %1348, i64* %RCX.i923, align 8
  %1349 = lshr i64 %1348, 63
  %1350 = add i64 %1348, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1350, i64* %RDX.i921, align 8
  %1351 = icmp ult i64 %1350, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1352 = icmp ult i64 %1350, %1348
  %1353 = or i1 %1351, %1352
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %14, align 1
  %1355 = trunc i64 %1350 to i32
  %1356 = and i32 %1355, 252
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %21, align 1
  %1361 = xor i64 %1348, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1362 = xor i64 %1361, %1350
  %1363 = lshr i64 %1362, 4
  %1364 = trunc i64 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %26, align 1
  %1366 = icmp eq i64 %1350, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %29, align 1
  %1368 = lshr i64 %1350, 63
  %1369 = trunc i64 %1368 to i8
  store i8 %1369, i8* %32, align 1
  %1370 = xor i64 %1368, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1371 = xor i64 %1368, %1349
  %1372 = add nuw nsw i64 %1370, %1371
  %1373 = icmp eq i64 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %38, align 1
  %1375 = add i64 %1341, -16
  %1376 = add i64 %1342, 31
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = sext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i923, align 8
  %1380 = shl nsw i64 %1379, 2
  %1381 = add i64 %1348, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 220)
  %1382 = add i64 %1381, %1380
  %1383 = add i64 %1342, 38
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RSI.i964, align 8
  %1387 = add i64 %1342, 42
  store i64 %1387, i64* %3, align 8
  %1388 = load i32, i32* %1345, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = mul nsw i64 %1389, 380
  store i64 %1390, i64* %RCX.i923, align 8
  %1391 = lshr i64 %1390, 63
  %1392 = load i64, i64* %RAX.i953, align 8
  %1393 = add i64 %1390, %1392
  store i64 %1393, i64* %RAX.i953, align 8
  %1394 = icmp ult i64 %1393, %1392
  %1395 = icmp ult i64 %1393, %1390
  %1396 = or i1 %1394, %1395
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %14, align 1
  %1398 = trunc i64 %1393 to i32
  %1399 = and i32 %1398, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  %1404 = xor i64 %1390, %1392
  %1405 = xor i64 %1404, %1393
  %1406 = lshr i64 %1405, 4
  %1407 = trunc i64 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %26, align 1
  %1409 = icmp eq i64 %1393, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %29, align 1
  %1411 = lshr i64 %1393, 63
  %1412 = trunc i64 %1411 to i8
  store i8 %1412, i8* %32, align 1
  %1413 = lshr i64 %1392, 63
  %1414 = xor i64 %1411, %1413
  %1415 = xor i64 %1411, %1391
  %1416 = add nuw nsw i64 %1414, %1415
  %1417 = icmp eq i64 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %38, align 1
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -16
  %1421 = add i64 %1342, 56
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sext i32 %1423 to i64
  store i64 %1424, i64* %RCX.i923, align 8
  %1425 = shl nsw i64 %1424, 2
  %1426 = add i64 %1393, 260
  %1427 = add i64 %1426, %1425
  %1428 = add i64 %1342, 63
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RDI.i933, align 8
  %1432 = add i64 %1419, -100
  %1433 = add i64 %1342, 66
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  store i32 %1385, i32* %1434, align 4
  %1435 = load i64, i64* %3, align 8
  %1436 = add i64 %1435, -231997
  %1437 = add i64 %1435, 5
  %1438 = load i64, i64* %6, align 8
  %1439 = add i64 %1438, -8
  %1440 = inttoptr i64 %1439 to i64*
  store i64 %1437, i64* %1440, align 8
  store i64 %1439, i64* %6, align 8
  store i64 %1436, i64* %3, align 8
  %call2_48b15d = tail call %struct.Memory* @sub_452720.result_to_string(%struct.State* nonnull %0, i64 %1436, %struct.Memory* %MEMORY.6)
  %1441 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i933, align 8
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -100
  %1444 = add i64 %1441, 13
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RSI.i964, align 8
  %1448 = load i64, i64* %RAX.i953, align 8
  store i64 %1448, i64* %RDX.i921, align 8
  store i8 0, i8* %AL.i928, align 1
  %1449 = add i64 %1441, -234418
  %1450 = add i64 %1441, 23
  %1451 = load i64, i64* %6, align 8
  %1452 = add i64 %1451, -8
  %1453 = inttoptr i64 %1452 to i64*
  store i64 %1450, i64* %1453, align 8
  store i64 %1452, i64* %6, align 8
  store i64 %1449, i64* %3, align 8
  %call2_48b174 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1449, %struct.Memory* %call2_48b15d)
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -16
  %1456 = load i64, i64* %3, align 8
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1455 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = add i32 %1459, 1
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RSI.i964, align 8
  %1462 = icmp eq i32 %1459, -1
  %1463 = icmp eq i32 %1460, 0
  %1464 = or i1 %1462, %1463
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %14, align 1
  %1466 = and i32 %1460, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i32 %1460, %1459
  %1472 = lshr i32 %1471, 4
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %26, align 1
  %1475 = zext i1 %1463 to i8
  store i8 %1475, i8* %29, align 1
  %1476 = lshr i32 %1460, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %32, align 1
  %1478 = lshr i32 %1459, 31
  %1479 = xor i32 %1476, %1478
  %1480 = add nuw nsw i32 %1479, %1476
  %1481 = icmp eq i32 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %38, align 1
  %1483 = add i64 %1456, 9
  store i64 %1483, i64* %3, align 8
  store i32 %1460, i32* %1458, align 4
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -104
  %1486 = load i32, i32* %EAX.i851, align 4
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1485 to i32*
  store i32 %1486, i32* %1489, align 4
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, -178
  store i64 %1491, i64* %3, align 8
  br label %block_.L_48b0d3

block_.L_48b18a:                                  ; preds = %block_.L_48b0d3
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1492 = add i64 %1312, -234458
  %1493 = add i64 %1312, 17
  %1494 = load i64, i64* %6, align 8
  %1495 = add i64 %1494, -8
  %1496 = inttoptr i64 %1495 to i64*
  store i64 %1493, i64* %1496, align 8
  store i64 %1495, i64* %6, align 8
  store i64 %1492, i64* %3, align 8
  %call2_48b196 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1492, %struct.Memory* %MEMORY.6)
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -108
  %1499 = load i32, i32* %EAX.i851, align 4
  %1500 = load i64, i64* %3, align 8
  %1501 = add i64 %1500, 3
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1498 to i32*
  store i32 %1499, i32* %1502, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_48b19e

block_.L_48b19e:                                  ; preds = %block_.L_48b18a, %block_48b09f
  %1503 = phi i64 [ %.pre39, %block_.L_48b18a ], [ %1241, %block_48b09f ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_48b196, %block_.L_48b18a ], [ %call2_48b0ab, %block_48b09f ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1504 = load i64, i64* %RBP.i, align 8
  %1505 = add i64 %1504, -12
  %1506 = add i64 %1503, 14
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  %1510 = mul nsw i64 %1509, 380
  store i64 %1510, i64* %RCX.i923, align 8
  %1511 = lshr i64 %1510, 63
  %1512 = add i64 %1510, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1512, i64* %RAX.i953, align 8
  %1513 = icmp ult i64 %1512, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1514 = icmp ult i64 %1512, %1510
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = trunc i64 %1512 to i32
  %1518 = and i32 %1517, 252
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  %1523 = xor i64 %1510, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1524 = xor i64 %1523, %1512
  %1525 = lshr i64 %1524, 4
  %1526 = trunc i64 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %26, align 1
  %1528 = icmp eq i64 %1512, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %29, align 1
  %1530 = lshr i64 %1512, 63
  %1531 = trunc i64 %1530 to i8
  store i8 %1531, i8* %32, align 1
  %1532 = xor i64 %1530, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1533 = xor i64 %1530, %1511
  %1534 = add nuw nsw i64 %1532, %1533
  %1535 = icmp eq i64 %1534, 2
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %38, align 1
  %1537 = add i64 %1510, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 300)
  %1538 = add i64 %1503, 31
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  store i8 0, i8* %14, align 1
  %1541 = and i32 %1540, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1546 = icmp eq i32 %1540, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %29, align 1
  %1548 = lshr i32 %1540, 31
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v55 = select i1 %1546, i64 37, i64 62
  %1550 = add i64 %1503, %.v55
  %1551 = add i64 %1550, 10
  store i64 %1551, i64* %3, align 8
  br i1 %1546, label %block_48b1c3, label %block_.L_48b1dc

block_48b1c3:                                     ; preds = %block_.L_48b19e
  store i64 ptrtoint (%G__0x58345b_type* @G__0x58345b to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1552 = add i64 %1550, -234515
  %1553 = add i64 %1550, 17
  %1554 = load i64, i64* %6, align 8
  %1555 = add i64 %1554, -8
  %1556 = inttoptr i64 %1555 to i64*
  store i64 %1553, i64* %1556, align 8
  store i64 %1555, i64* %6, align 8
  store i64 %1552, i64* %3, align 8
  %call2_48b1cf = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1552, %struct.Memory* %MEMORY.8)
  %1557 = load i64, i64* %RBP.i, align 8
  %1558 = add i64 %1557, -112
  %1559 = load i32, i32* %EAX.i851, align 4
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 3
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1562, align 4
  %1563 = load i64, i64* %3, align 8
  %1564 = add i64 %1563, 238
  store i64 %1564, i64* %3, align 8
  br label %block_.L_48b2c5

block_.L_48b1dc:                                  ; preds = %block_.L_48b19e
  store i64 ptrtoint (%G__0x583475_type* @G__0x583475 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1565 = add i64 %1550, -234540
  %1566 = add i64 %1550, 17
  %1567 = load i64, i64* %6, align 8
  %1568 = add i64 %1567, -8
  %1569 = inttoptr i64 %1568 to i64*
  store i64 %1566, i64* %1569, align 8
  store i64 %1568, i64* %6, align 8
  store i64 %1565, i64* %3, align 8
  %call2_48b1e8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1565, %struct.Memory* %MEMORY.8)
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -16
  %1572 = load i64, i64* %3, align 8
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1571 to i32*
  store i32 0, i32* %1574, align 4
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -116
  %1577 = load i32, i32* %EAX.i851, align 4
  %1578 = load i64, i64* %3, align 8
  %1579 = add i64 %1578, 3
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1576 to i32*
  store i32 %1577, i32* %1580, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_48b1f7

block_.L_48b1f7:                                  ; preds = %block_.L_48b23f, %block_.L_48b1dc
  %1581 = phi i64 [ %.pre40, %block_.L_48b1dc ], [ %1814, %block_.L_48b23f ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_48b1e8, %block_.L_48b1dc ], [ %call2_48b298, %block_.L_48b23f ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -12
  %1584 = add i64 %1581, 14
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = sext i32 %1586 to i64
  %1588 = mul nsw i64 %1587, 380
  store i64 %1588, i64* %RCX.i923, align 8
  %1589 = lshr i64 %1588, 63
  %1590 = add i64 %1588, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1590, i64* %RAX.i953, align 8
  %1591 = icmp ult i64 %1590, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1592 = icmp ult i64 %1590, %1588
  %1593 = or i1 %1591, %1592
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %14, align 1
  %1595 = trunc i64 %1590 to i32
  %1596 = and i32 %1595, 252
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %21, align 1
  %1601 = xor i64 %1588, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1602 = xor i64 %1601, %1590
  %1603 = lshr i64 %1602, 4
  %1604 = trunc i64 %1603 to i8
  %1605 = and i8 %1604, 1
  store i8 %1605, i8* %26, align 1
  %1606 = icmp eq i64 %1590, 0
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %29, align 1
  %1608 = lshr i64 %1590, 63
  %1609 = trunc i64 %1608 to i8
  store i8 %1609, i8* %32, align 1
  %1610 = xor i64 %1608, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1611 = xor i64 %1608, %1589
  %1612 = add nuw nsw i64 %1610, %1611
  %1613 = icmp eq i64 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %38, align 1
  %1615 = add i64 %1582, -16
  %1616 = add i64 %1581, 28
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = sext i32 %1618 to i64
  store i64 %1619, i64* %RCX.i923, align 8
  %1620 = shl nsw i64 %1619, 2
  %1621 = add i64 %1588, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 300)
  %1622 = add i64 %1621, %1620
  %1623 = add i64 %1581, 36
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  store i8 0, i8* %14, align 1
  %1626 = and i32 %1625, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1631 = icmp eq i32 %1625, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %29, align 1
  %1633 = lshr i32 %1625, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v56 = select i1 %1631, i64 183, i64 42
  %1635 = add i64 %1581, %.v56
  store i64 %1635, i64* %3, align 8
  br i1 %1631, label %block_.L_48b2ae, label %block_48b221

block_48b221:                                     ; preds = %block_.L_48b1f7
  %1636 = load i64, i64* %RBP.i, align 8
  %1637 = add i64 %1636, -16
  %1638 = add i64 %1635, 4
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  store i8 0, i8* %14, align 1
  %1641 = and i32 %1640, 255
  %1642 = tail call i32 @llvm.ctpop.i32(i32 %1641)
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  store i8 %1645, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1646 = icmp eq i32 %1640, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %29, align 1
  %1648 = lshr i32 %1640, 31
  %1649 = trunc i32 %1648 to i8
  store i8 %1649, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1650 = icmp ne i8 %1649, 0
  %1651 = or i1 %1646, %1650
  %.v57 = select i1 %1651, i64 30, i64 10
  %1652 = add i64 %1635, %.v57
  store i64 %1652, i64* %3, align 8
  br i1 %1651, label %block_.L_48b23f, label %block_48b22b

block_48b22b:                                     ; preds = %block_48b221
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1653 = add i64 %1652, -234619
  %1654 = add i64 %1652, 17
  %1655 = load i64, i64* %6, align 8
  %1656 = add i64 %1655, -8
  %1657 = inttoptr i64 %1656 to i64*
  store i64 %1654, i64* %1657, align 8
  store i64 %1656, i64* %6, align 8
  store i64 %1653, i64* %3, align 8
  %call2_48b237 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1653, %struct.Memory* %MEMORY.9)
  %1658 = load i64, i64* %RBP.i, align 8
  %1659 = add i64 %1658, -120
  %1660 = load i32, i32* %EAX.i851, align 4
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1659 to i32*
  store i32 %1660, i32* %1663, align 4
  %.pre41 = load i64, i64* %3, align 8
  %.pre42 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48b23f

block_.L_48b23f:                                  ; preds = %block_48b22b, %block_48b221
  %1664 = phi i64 [ %.pre42, %block_48b22b ], [ %1636, %block_48b221 ]
  %1665 = phi i64 [ %.pre41, %block_48b22b ], [ %1652, %block_48b221 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1666 = add i64 %1664, -12
  %1667 = add i64 %1665, 14
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = mul nsw i64 %1670, 380
  store i64 %1671, i64* %RCX.i923, align 8
  %1672 = lshr i64 %1671, 63
  %1673 = add i64 %1671, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1673, i64* %RDX.i921, align 8
  %1674 = icmp ult i64 %1673, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1675 = icmp ult i64 %1673, %1671
  %1676 = or i1 %1674, %1675
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %14, align 1
  %1678 = trunc i64 %1673 to i32
  %1679 = and i32 %1678, 252
  %1680 = tail call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  store i8 %1683, i8* %21, align 1
  %1684 = xor i64 %1671, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1685 = xor i64 %1684, %1673
  %1686 = lshr i64 %1685, 4
  %1687 = trunc i64 %1686 to i8
  %1688 = and i8 %1687, 1
  store i8 %1688, i8* %26, align 1
  %1689 = icmp eq i64 %1673, 0
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %29, align 1
  %1691 = lshr i64 %1673, 63
  %1692 = trunc i64 %1691 to i8
  store i8 %1692, i8* %32, align 1
  %1693 = xor i64 %1691, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1694 = xor i64 %1691, %1672
  %1695 = add nuw nsw i64 %1693, %1694
  %1696 = icmp eq i64 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %38, align 1
  %1698 = add i64 %1664, -16
  %1699 = add i64 %1665, 31
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = sext i32 %1701 to i64
  store i64 %1702, i64* %RCX.i923, align 8
  %1703 = shl nsw i64 %1702, 2
  %1704 = add i64 %1671, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 300)
  %1705 = add i64 %1704, %1703
  %1706 = add i64 %1665, 38
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RSI.i964, align 8
  %1710 = add i64 %1665, 42
  store i64 %1710, i64* %3, align 8
  %1711 = load i32, i32* %1668, align 4
  %1712 = sext i32 %1711 to i64
  %1713 = mul nsw i64 %1712, 380
  store i64 %1713, i64* %RCX.i923, align 8
  %1714 = lshr i64 %1713, 63
  %1715 = load i64, i64* %RAX.i953, align 8
  %1716 = add i64 %1713, %1715
  store i64 %1716, i64* %RAX.i953, align 8
  %1717 = icmp ult i64 %1716, %1715
  %1718 = icmp ult i64 %1716, %1713
  %1719 = or i1 %1717, %1718
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %14, align 1
  %1721 = trunc i64 %1716 to i32
  %1722 = and i32 %1721, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  %1727 = xor i64 %1713, %1715
  %1728 = xor i64 %1727, %1716
  %1729 = lshr i64 %1728, 4
  %1730 = trunc i64 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %26, align 1
  %1732 = icmp eq i64 %1716, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %29, align 1
  %1734 = lshr i64 %1716, 63
  %1735 = trunc i64 %1734 to i8
  store i8 %1735, i8* %32, align 1
  %1736 = lshr i64 %1715, 63
  %1737 = xor i64 %1734, %1736
  %1738 = xor i64 %1734, %1714
  %1739 = add nuw nsw i64 %1737, %1738
  %1740 = icmp eq i64 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %38, align 1
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -16
  %1744 = add i64 %1665, 56
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = sext i32 %1746 to i64
  store i64 %1747, i64* %RCX.i923, align 8
  %1748 = shl nsw i64 %1747, 2
  %1749 = add i64 %1716, 340
  %1750 = add i64 %1749, %1748
  %1751 = add i64 %1665, 63
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = zext i32 %1753 to i64
  store i64 %1754, i64* %RDI.i933, align 8
  %1755 = add i64 %1742, -124
  %1756 = add i64 %1665, 66
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  store i32 %1708, i32* %1757, align 4
  %1758 = load i64, i64* %3, align 8
  %1759 = add i64 %1758, -232289
  %1760 = add i64 %1758, 5
  %1761 = load i64, i64* %6, align 8
  %1762 = add i64 %1761, -8
  %1763 = inttoptr i64 %1762 to i64*
  store i64 %1760, i64* %1763, align 8
  store i64 %1762, i64* %6, align 8
  store i64 %1759, i64* %3, align 8
  %call2_48b281 = tail call %struct.Memory* @sub_452720.result_to_string(%struct.State* nonnull %0, i64 %1759, %struct.Memory* %MEMORY.9)
  %1764 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i933, align 8
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -124
  %1767 = add i64 %1764, 13
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RSI.i964, align 8
  %1771 = load i64, i64* %RAX.i953, align 8
  store i64 %1771, i64* %RDX.i921, align 8
  store i8 0, i8* %AL.i928, align 1
  %1772 = add i64 %1764, -234710
  %1773 = add i64 %1764, 23
  %1774 = load i64, i64* %6, align 8
  %1775 = add i64 %1774, -8
  %1776 = inttoptr i64 %1775 to i64*
  store i64 %1773, i64* %1776, align 8
  store i64 %1775, i64* %6, align 8
  store i64 %1772, i64* %3, align 8
  %call2_48b298 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1772, %struct.Memory* %call2_48b281)
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -16
  %1779 = load i64, i64* %3, align 8
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = add i32 %1782, 1
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RSI.i964, align 8
  %1785 = icmp eq i32 %1782, -1
  %1786 = icmp eq i32 %1783, 0
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = and i32 %1783, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %21, align 1
  %1794 = xor i32 %1783, %1782
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %26, align 1
  %1798 = zext i1 %1786 to i8
  store i8 %1798, i8* %29, align 1
  %1799 = lshr i32 %1783, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %32, align 1
  %1801 = lshr i32 %1782, 31
  %1802 = xor i32 %1799, %1801
  %1803 = add nuw nsw i32 %1802, %1799
  %1804 = icmp eq i32 %1803, 2
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %38, align 1
  %1806 = add i64 %1779, 9
  store i64 %1806, i64* %3, align 8
  store i32 %1783, i32* %1781, align 4
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -128
  %1809 = load i32, i32* %EAX.i851, align 4
  %1810 = load i64, i64* %3, align 8
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1808 to i32*
  store i32 %1809, i32* %1812, align 4
  %1813 = load i64, i64* %3, align 8
  %1814 = add i64 %1813, -178
  store i64 %1814, i64* %3, align 8
  br label %block_.L_48b1f7

block_.L_48b2ae:                                  ; preds = %block_.L_48b1f7
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %1815 = add i64 %1635, -234750
  %1816 = add i64 %1635, 17
  %1817 = load i64, i64* %6, align 8
  %1818 = add i64 %1817, -8
  %1819 = inttoptr i64 %1818 to i64*
  store i64 %1816, i64* %1819, align 8
  store i64 %1818, i64* %6, align 8
  store i64 %1815, i64* %3, align 8
  %call2_48b2ba = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1815, %struct.Memory* %MEMORY.9)
  %1820 = load i64, i64* %RBP.i, align 8
  %1821 = add i64 %1820, -132
  %1822 = load i32, i32* %EAX.i851, align 4
  %1823 = load i64, i64* %3, align 8
  %1824 = add i64 %1823, 6
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1821 to i32*
  store i32 %1822, i32* %1825, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_48b2c5

block_.L_48b2c5:                                  ; preds = %block_.L_48b2ae, %block_48b1c3
  %1826 = phi i64 [ %.pre43, %block_.L_48b2ae ], [ %1564, %block_48b1c3 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_48b2ba, %block_.L_48b2ae ], [ %call2_48b1cf, %block_48b1c3 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -12
  %1829 = add i64 %1826, 14
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sext i32 %1831 to i64
  %1833 = mul nsw i64 %1832, 380
  store i64 %1833, i64* %RCX.i923, align 8
  %1834 = lshr i64 %1833, 63
  %1835 = add i64 %1833, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1835, i64* %RAX.i953, align 8
  %1836 = icmp ult i64 %1835, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1837 = icmp ult i64 %1835, %1833
  %1838 = or i1 %1836, %1837
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %14, align 1
  %1840 = trunc i64 %1835 to i32
  %1841 = and i32 %1840, 252
  %1842 = tail call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  store i8 %1845, i8* %21, align 1
  %1846 = xor i64 %1833, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1847 = xor i64 %1846, %1835
  %1848 = lshr i64 %1847, 4
  %1849 = trunc i64 %1848 to i8
  %1850 = and i8 %1849, 1
  store i8 %1850, i8* %26, align 1
  %1851 = icmp eq i64 %1835, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i64 %1835, 63
  %1854 = trunc i64 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = xor i64 %1853, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1856 = xor i64 %1853, %1834
  %1857 = add nuw nsw i64 %1855, %1856
  %1858 = icmp eq i64 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %38, align 1
  %1860 = add i64 %1833, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 32)
  %1861 = add i64 %1826, 28
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  store i8 0, i8* %14, align 1
  %1864 = and i32 %1863, 255
  %1865 = tail call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  store i8 %1868, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1869 = icmp eq i32 %1863, 0
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %29, align 1
  %1871 = lshr i32 %1863, 31
  %1872 = trunc i32 %1871 to i8
  store i8 %1872, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v58 = select i1 %1869, i64 84, i64 34
  %1873 = add i64 %1826, %.v58
  store i64 %1873, i64* %3, align 8
  br i1 %1869, label %block_.L_48b319, label %block_48b2e7

block_48b2e7:                                     ; preds = %block_.L_48b2c5
  store i64 ptrtoint (%G__0x58348e_type* @G__0x58348e to i64), i64* %RDI.i933, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1874 = add i64 %1873, 24
  store i64 %1874, i64* %3, align 8
  %1875 = load i32, i32* %1830, align 4
  %1876 = sext i32 %1875 to i64
  %1877 = mul nsw i64 %1876, 380
  store i64 %1877, i64* %RCX.i923, align 8
  %1878 = lshr i64 %1877, 63
  %1879 = add i64 %1877, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1879, i64* %RAX.i953, align 8
  %1880 = icmp ult i64 %1879, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1881 = icmp ult i64 %1879, %1877
  %1882 = or i1 %1880, %1881
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %14, align 1
  %1884 = trunc i64 %1879 to i32
  %1885 = and i32 %1884, 252
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  %1890 = xor i64 %1877, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1891 = xor i64 %1890, %1879
  %1892 = lshr i64 %1891, 4
  %1893 = trunc i64 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %26, align 1
  %1895 = icmp eq i64 %1879, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %29, align 1
  %1897 = lshr i64 %1879, 63
  %1898 = trunc i64 %1897 to i8
  store i8 %1898, i8* %32, align 1
  %1899 = xor i64 %1897, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1900 = xor i64 %1897, %1878
  %1901 = add nuw nsw i64 %1899, %1900
  %1902 = icmp eq i64 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %38, align 1
  %1904 = add i64 %1877, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 32)
  %1905 = add i64 %1873, 37
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RSI.i964, align 8
  store i8 0, i8* %AL.i928, align 1
  %1909 = add i64 %1873, -234807
  %1910 = add i64 %1873, 44
  %1911 = load i64, i64* %6, align 8
  %1912 = add i64 %1911, -8
  %1913 = inttoptr i64 %1912 to i64*
  store i64 %1910, i64* %1913, align 8
  store i64 %1912, i64* %6, align 8
  store i64 %1909, i64* %3, align 8
  %call2_48b30e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1909, %struct.Memory* %MEMORY.11)
  %1914 = load i64, i64* %RBP.i, align 8
  %1915 = add i64 %1914, -136
  %1916 = load i32, i32* %EAX.i851, align 4
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 6
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1915 to i32*
  store i32 %1916, i32* %1919, align 4
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48b319

block_.L_48b319:                                  ; preds = %block_48b2e7, %block_.L_48b2c5
  %1920 = phi i64 [ %1827, %block_.L_48b2c5 ], [ %.pre45, %block_48b2e7 ]
  %1921 = phi i64 [ %1873, %block_.L_48b2c5 ], [ %.pre44, %block_48b2e7 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_.L_48b2c5 ], [ %call2_48b30e, %block_48b2e7 ]
  store i64 ptrtoint (%G__0x58349c_type* @G__0x58349c to i64), i64* %RDI.i933, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %1922 = add i64 %1920, -12
  %1923 = add i64 %1921, 24
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = sext i32 %1925 to i64
  %1927 = mul nsw i64 %1926, 380
  store i64 %1927, i64* %RCX.i923, align 8
  %1928 = lshr i64 %1927, 63
  %1929 = add i64 %1927, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1929, i64* %RDX.i921, align 8
  %1930 = icmp ult i64 %1929, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1931 = icmp ult i64 %1929, %1927
  %1932 = or i1 %1930, %1931
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %14, align 1
  %1934 = trunc i64 %1929 to i32
  %1935 = and i32 %1934, 252
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %21, align 1
  %1940 = xor i64 %1927, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1941 = xor i64 %1940, %1929
  %1942 = lshr i64 %1941, 4
  %1943 = trunc i64 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %26, align 1
  %1945 = icmp eq i64 %1929, 0
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %29, align 1
  %1947 = lshr i64 %1929, 63
  %1948 = trunc i64 %1947 to i8
  store i8 %1948, i8* %32, align 1
  %1949 = xor i64 %1947, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1950 = xor i64 %1947, %1928
  %1951 = add nuw nsw i64 %1949, %1950
  %1952 = icmp eq i64 %1951, 2
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %38, align 1
  %1954 = add i64 %1927, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 36)
  %1955 = add i64 %1921, 40
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RSI.i964, align 8
  %1959 = add i64 %1921, 44
  store i64 %1959, i64* %3, align 8
  %1960 = load i32, i32* %1924, align 4
  %1961 = sext i32 %1960 to i64
  %1962 = mul nsw i64 %1961, 380
  store i64 %1962, i64* %RCX.i923, align 8
  %1963 = lshr i64 %1962, 63
  %1964 = load i64, i64* %RAX.i953, align 8
  %1965 = add i64 %1962, %1964
  store i64 %1965, i64* %RAX.i953, align 8
  %1966 = icmp ult i64 %1965, %1964
  %1967 = icmp ult i64 %1965, %1962
  %1968 = or i1 %1966, %1967
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %14, align 1
  %1970 = trunc i64 %1965 to i32
  %1971 = and i32 %1970, 255
  %1972 = tail call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  store i8 %1975, i8* %21, align 1
  %1976 = xor i64 %1962, %1964
  %1977 = xor i64 %1976, %1965
  %1978 = lshr i64 %1977, 4
  %1979 = trunc i64 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %26, align 1
  %1981 = icmp eq i64 %1965, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %29, align 1
  %1983 = lshr i64 %1965, 63
  %1984 = trunc i64 %1983 to i8
  store i8 %1984, i8* %32, align 1
  %1985 = lshr i64 %1964, 63
  %1986 = xor i64 %1983, %1985
  %1987 = xor i64 %1983, %1963
  %1988 = add nuw nsw i64 %1986, %1987
  %1989 = icmp eq i64 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %38, align 1
  %1991 = add i64 %1965, 40
  %1992 = add i64 %1921, 57
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %RDX.i921, align 8
  store i8 0, i8* %AL.i928, align 1
  %1996 = add i64 %1921, -234857
  %1997 = add i64 %1921, 64
  %1998 = load i64, i64* %6, align 8
  %1999 = add i64 %1998, -8
  %2000 = inttoptr i64 %1999 to i64*
  store i64 %1997, i64* %2000, align 8
  store i64 %1999, i64* %6, align 8
  store i64 %1996, i64* %3, align 8
  %call2_48b354 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1996, %struct.Memory* %MEMORY.12)
  %2001 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5834b9_type* @G__0x5834b9 to i64), i64* %RDI.i933, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i923, align 8
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -12
  %2004 = add i64 %2001, 24
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = sext i32 %2006 to i64
  %2008 = mul nsw i64 %2007, 380
  store i64 %2008, i64* %R8.i919, align 8
  %2009 = lshr i64 %2008, 63
  %2010 = add i64 %2008, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2010, i64* %RCX.i923, align 8
  %2011 = icmp ult i64 %2010, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2012 = icmp ult i64 %2010, %2008
  %2013 = or i1 %2011, %2012
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %14, align 1
  %2015 = trunc i64 %2010 to i32
  %2016 = and i32 %2015, 252
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %21, align 1
  %2021 = xor i64 %2008, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2022 = xor i64 %2021, %2010
  %2023 = lshr i64 %2022, 4
  %2024 = trunc i64 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %26, align 1
  %2026 = icmp eq i64 %2010, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %29, align 1
  %2028 = lshr i64 %2010, 63
  %2029 = trunc i64 %2028 to i8
  store i8 %2029, i8* %32, align 1
  %2030 = xor i64 %2028, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2031 = xor i64 %2028, %2009
  %2032 = add nuw nsw i64 %2030, %2031
  %2033 = icmp eq i64 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %38, align 1
  %2035 = add i64 %2008, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 44)
  %2036 = add i64 %2001, 37
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RSI.i964, align 8
  %2040 = add i64 %2002, -140
  %2041 = load i32, i32* %EAX.i851, align 4
  %2042 = add i64 %2001, 43
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2040 to i32*
  store i32 %2041, i32* %2043, align 4
  %2044 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i928, align 1
  %2045 = add i64 %2044, -234964
  %2046 = add i64 %2044, 7
  %2047 = load i64, i64* %6, align 8
  %2048 = add i64 %2047, -8
  %2049 = inttoptr i64 %2048 to i64*
  store i64 %2046, i64* %2049, align 8
  store i64 %2048, i64* %6, align 8
  store i64 %2045, i64* %3, align 8
  %call2_48b386 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2045, %struct.Memory* %call2_48b354)
  %2050 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i923, align 8
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -12
  %2053 = add i64 %2050, 14
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = sext i32 %2055 to i64
  %2057 = mul nsw i64 %2056, 380
  store i64 %2057, i64* %RDI.i933, align 8
  %2058 = lshr i64 %2057, 63
  %2059 = add i64 %2057, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2059, i64* %RCX.i923, align 8
  %2060 = icmp ult i64 %2059, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2061 = icmp ult i64 %2059, %2057
  %2062 = or i1 %2060, %2061
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %14, align 1
  %2064 = trunc i64 %2059 to i32
  %2065 = and i32 %2064, 252
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  %2070 = xor i64 %2057, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2071 = xor i64 %2070, %2059
  %2072 = lshr i64 %2071, 4
  %2073 = trunc i64 %2072 to i8
  %2074 = and i8 %2073, 1
  store i8 %2074, i8* %26, align 1
  %2075 = icmp eq i64 %2059, 0
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %29, align 1
  %2077 = lshr i64 %2059, 63
  %2078 = trunc i64 %2077 to i8
  store i8 %2078, i8* %32, align 1
  %2079 = xor i64 %2077, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2080 = xor i64 %2077, %2058
  %2081 = add nuw nsw i64 %2079, %2080
  %2082 = icmp eq i64 %2081, 2
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %38, align 1
  %2084 = add i64 %2057, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 48)
  %2085 = add i64 %2050, 28
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  store i8 0, i8* %14, align 1
  %2088 = and i32 %2087, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2093 = icmp eq i32 %2087, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %29, align 1
  %2095 = lshr i32 %2087, 31
  %2096 = trunc i32 %2095 to i8
  store i8 %2096, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2097 = add i64 %2051, -144
  %2098 = load i32, i32* %EAX.i851, align 4
  %2099 = add i64 %2050, 34
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2097 to i32*
  store i32 %2098, i32* %2100, align 4
  %2101 = load i64, i64* %3, align 8
  %2102 = load i8, i8* %29, align 1
  %2103 = icmp ne i8 %2102, 0
  %.v71 = select i1 %2103, i64 34, i64 6
  %2104 = add i64 %2101, %.v71
  %cmpBr_48b3ad = icmp eq i8 %2102, 1
  %2105 = add i64 %2104, 10
  store i64 %2105, i64* %3, align 8
  br i1 %cmpBr_48b3ad, label %block_.L_48b3cf, label %block_48b3b3

block_48b3b3:                                     ; preds = %block_.L_48b319
  store i64 ptrtoint (%G__0x5834c5_type* @G__0x5834c5 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2106 = add i64 %2104, -235011
  %2107 = add i64 %2104, 17
  %2108 = load i64, i64* %6, align 8
  %2109 = add i64 %2108, -8
  %2110 = inttoptr i64 %2109 to i64*
  store i64 %2107, i64* %2110, align 8
  store i64 %2109, i64* %6, align 8
  store i64 %2106, i64* %3, align 8
  %call2_48b3bf = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2106, %struct.Memory* %call2_48b386)
  %2111 = load i64, i64* %RBP.i, align 8
  %2112 = add i64 %2111, -148
  %2113 = load i32, i32* %EAX.i851, align 4
  %2114 = load i64, i64* %3, align 8
  %2115 = add i64 %2114, 6
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2112 to i32*
  store i32 %2113, i32* %2116, align 4
  %2117 = load i64, i64* %3, align 8
  %2118 = add i64 %2117, 28
  store i64 %2118, i64* %3, align 8
  br label %block_.L_48b3e6

block_.L_48b3cf:                                  ; preds = %block_.L_48b319
  store i64 ptrtoint (%G__0x5834d8_type* @G__0x5834d8 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2119 = add i64 %2104, -235039
  %2120 = add i64 %2104, 17
  %2121 = load i64, i64* %6, align 8
  %2122 = add i64 %2121, -8
  %2123 = inttoptr i64 %2122 to i64*
  store i64 %2120, i64* %2123, align 8
  store i64 %2122, i64* %6, align 8
  store i64 %2119, i64* %3, align 8
  %call2_48b3db = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2119, %struct.Memory* %call2_48b386)
  %2124 = load i64, i64* %RBP.i, align 8
  %2125 = add i64 %2124, -152
  %2126 = load i32, i32* %EAX.i851, align 4
  %2127 = load i64, i64* %3, align 8
  %2128 = add i64 %2127, 6
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2125 to i32*
  store i32 %2126, i32* %2129, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_48b3e6

block_.L_48b3e6:                                  ; preds = %block_.L_48b3cf, %block_48b3b3
  %2130 = phi i64 [ %.pre46, %block_.L_48b3cf ], [ %2118, %block_48b3b3 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_48b3db, %block_.L_48b3cf ], [ %call2_48b3bf, %block_48b3b3 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -12
  %2133 = add i64 %2130, 14
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = sext i32 %2135 to i64
  %2137 = mul nsw i64 %2136, 380
  store i64 %2137, i64* %RCX.i923, align 8
  %2138 = lshr i64 %2137, 63
  %2139 = add i64 %2137, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2139, i64* %RAX.i953, align 8
  %2140 = icmp ult i64 %2139, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2141 = icmp ult i64 %2139, %2137
  %2142 = or i1 %2140, %2141
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %14, align 1
  %2144 = trunc i64 %2139 to i32
  %2145 = and i32 %2144, 252
  %2146 = tail call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  store i8 %2149, i8* %21, align 1
  %2150 = xor i64 %2137, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2151 = xor i64 %2150, %2139
  %2152 = lshr i64 %2151, 4
  %2153 = trunc i64 %2152 to i8
  %2154 = and i8 %2153, 1
  store i8 %2154, i8* %26, align 1
  %2155 = icmp eq i64 %2139, 0
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %29, align 1
  %2157 = lshr i64 %2139, 63
  %2158 = trunc i64 %2157 to i8
  store i8 %2158, i8* %32, align 1
  %2159 = xor i64 %2157, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2160 = xor i64 %2157, %2138
  %2161 = add nuw nsw i64 %2159, %2160
  %2162 = icmp eq i64 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %38, align 1
  %2164 = add i64 %2137, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 52)
  %2165 = add i64 %2130, 28
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i32*
  %2167 = load i32, i32* %2166, align 4
  store i8 0, i8* %14, align 1
  %2168 = and i32 %2167, 255
  %2169 = tail call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  store i8 %2172, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2173 = icmp eq i32 %2167, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %29, align 1
  %2175 = lshr i32 %2167, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v59 = select i1 %2173, i64 62, i64 34
  %2177 = add i64 %2130, %.v59
  %2178 = add i64 %2177, 10
  store i64 %2178, i64* %3, align 8
  br i1 %2173, label %block_.L_48b424, label %block_48b408

block_48b408:                                     ; preds = %block_.L_48b3e6
  store i64 ptrtoint (%G__0x5834ea_type* @G__0x5834ea to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2179 = add i64 %2177, -235096
  %2180 = add i64 %2177, 17
  %2181 = load i64, i64* %6, align 8
  %2182 = add i64 %2181, -8
  %2183 = inttoptr i64 %2182 to i64*
  store i64 %2180, i64* %2183, align 8
  store i64 %2182, i64* %6, align 8
  store i64 %2179, i64* %3, align 8
  %call2_48b414 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2179, %struct.Memory* %MEMORY.13)
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -156
  %2186 = load i32, i32* %EAX.i851, align 4
  %2187 = load i64, i64* %3, align 8
  %2188 = add i64 %2187, 6
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2185 to i32*
  store i32 %2186, i32* %2189, align 4
  %2190 = load i64, i64* %3, align 8
  %2191 = add i64 %2190, 28
  store i64 %2191, i64* %3, align 8
  br label %block_.L_48b43b

block_.L_48b424:                                  ; preds = %block_.L_48b3e6
  store i64 ptrtoint (%G__0x5834fd_type* @G__0x5834fd to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2192 = add i64 %2177, -235124
  %2193 = add i64 %2177, 17
  %2194 = load i64, i64* %6, align 8
  %2195 = add i64 %2194, -8
  %2196 = inttoptr i64 %2195 to i64*
  store i64 %2193, i64* %2196, align 8
  store i64 %2195, i64* %6, align 8
  store i64 %2192, i64* %3, align 8
  %call2_48b430 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2192, %struct.Memory* %MEMORY.13)
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -160
  %2199 = load i32, i32* %EAX.i851, align 4
  %2200 = load i64, i64* %3, align 8
  %2201 = add i64 %2200, 6
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2198 to i32*
  store i32 %2199, i32* %2202, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_48b43b

block_.L_48b43b:                                  ; preds = %block_.L_48b424, %block_48b408
  %2203 = phi i64 [ %.pre47, %block_.L_48b424 ], [ %2191, %block_48b408 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_48b430, %block_.L_48b424 ], [ %call2_48b414, %block_48b408 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -12
  %2206 = add i64 %2203, 14
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = sext i32 %2208 to i64
  %2210 = mul nsw i64 %2209, 380
  store i64 %2210, i64* %RCX.i923, align 8
  %2211 = lshr i64 %2210, 63
  %2212 = add i64 %2210, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2212, i64* %RAX.i953, align 8
  %2213 = icmp ult i64 %2212, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2214 = icmp ult i64 %2212, %2210
  %2215 = or i1 %2213, %2214
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = trunc i64 %2212 to i32
  %2218 = and i32 %2217, 252
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %21, align 1
  %2223 = xor i64 %2210, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2224 = xor i64 %2223, %2212
  %2225 = lshr i64 %2224, 4
  %2226 = trunc i64 %2225 to i8
  %2227 = and i8 %2226, 1
  store i8 %2227, i8* %26, align 1
  %2228 = icmp eq i64 %2212, 0
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %29, align 1
  %2230 = lshr i64 %2212, 63
  %2231 = trunc i64 %2230 to i8
  store i8 %2231, i8* %32, align 1
  %2232 = xor i64 %2230, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2233 = xor i64 %2230, %2211
  %2234 = add nuw nsw i64 %2232, %2233
  %2235 = icmp eq i64 %2234, 2
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %38, align 1
  %2237 = add i64 %2210, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 56)
  %2238 = add i64 %2203, 28
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = add i32 %2240, -1
  %2242 = icmp eq i32 %2240, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %14, align 1
  %2244 = and i32 %2241, 255
  %2245 = tail call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  store i8 %2248, i8* %21, align 1
  %2249 = xor i32 %2241, %2240
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %26, align 1
  %2253 = icmp eq i32 %2241, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %29, align 1
  %2255 = lshr i32 %2241, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %32, align 1
  %2257 = lshr i32 %2240, 31
  %2258 = xor i32 %2255, %2257
  %2259 = add nuw nsw i32 %2258, %2257
  %2260 = icmp eq i32 %2259, 2
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %38, align 1
  %.v60 = select i1 %2253, i64 34, i64 62
  %2262 = add i64 %2203, %.v60
  %2263 = add i64 %2262, 10
  store i64 %2263, i64* %3, align 8
  br i1 %2253, label %block_48b45d, label %block_.L_48b479

block_48b45d:                                     ; preds = %block_.L_48b43b
  store i64 ptrtoint (%G__0x58350f_type* @G__0x58350f to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2264 = add i64 %2262, -235181
  %2265 = add i64 %2262, 17
  %2266 = load i64, i64* %6, align 8
  %2267 = add i64 %2266, -8
  %2268 = inttoptr i64 %2267 to i64*
  store i64 %2265, i64* %2268, align 8
  store i64 %2267, i64* %6, align 8
  store i64 %2264, i64* %3, align 8
  %call2_48b469 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2264, %struct.Memory* %MEMORY.14)
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -164
  %2271 = load i32, i32* %EAX.i851, align 4
  %2272 = load i64, i64* %3, align 8
  %2273 = add i64 %2272, 6
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2270 to i32*
  store i32 %2271, i32* %2274, align 4
  %2275 = load i64, i64* %3, align 8
  %2276 = add i64 %2275, 268
  br label %block_.L_48b580

block_.L_48b479:                                  ; preds = %block_.L_48b43b
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2277 = load i64, i64* %RBP.i, align 8
  %2278 = add i64 %2277, -12
  %2279 = add i64 %2262, 14
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = sext i32 %2281 to i64
  %2283 = mul nsw i64 %2282, 380
  store i64 %2283, i64* %RCX.i923, align 8
  %2284 = lshr i64 %2283, 63
  %2285 = add i64 %2283, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2285, i64* %RAX.i953, align 8
  %2286 = icmp ult i64 %2285, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2287 = icmp ult i64 %2285, %2283
  %2288 = or i1 %2286, %2287
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %14, align 1
  %2290 = trunc i64 %2285 to i32
  %2291 = and i32 %2290, 252
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i64 %2283, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2297 = xor i64 %2296, %2285
  %2298 = lshr i64 %2297, 4
  %2299 = trunc i64 %2298 to i8
  %2300 = and i8 %2299, 1
  store i8 %2300, i8* %26, align 1
  %2301 = icmp eq i64 %2285, 0
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %29, align 1
  %2303 = lshr i64 %2285, 63
  %2304 = trunc i64 %2303 to i8
  store i8 %2304, i8* %32, align 1
  %2305 = xor i64 %2303, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2306 = xor i64 %2303, %2284
  %2307 = add nuw nsw i64 %2305, %2306
  %2308 = icmp eq i64 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %38, align 1
  %2310 = add i64 %2283, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 56)
  %2311 = add i64 %2262, 28
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  store i8 0, i8* %14, align 1
  %2314 = and i32 %2313, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2319 = icmp eq i32 %2313, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %29, align 1
  %2321 = lshr i32 %2313, 31
  %2322 = trunc i32 %2321 to i8
  store i8 %2322, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v61 = select i1 %2319, i64 34, i64 62
  %2323 = add i64 %2262, %.v61
  %2324 = add i64 %2323, 10
  store i64 %2324, i64* %3, align 8
  br i1 %2319, label %block_48b49b, label %block_.L_48b4b7

block_48b49b:                                     ; preds = %block_.L_48b479
  store i64 ptrtoint (%G__0x58352b_type* @G__0x58352b to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2325 = add i64 %2323, -235243
  %2326 = add i64 %2323, 17
  %2327 = load i64, i64* %6, align 8
  %2328 = add i64 %2327, -8
  %2329 = inttoptr i64 %2328 to i64*
  store i64 %2326, i64* %2329, align 8
  store i64 %2328, i64* %6, align 8
  store i64 %2325, i64* %3, align 8
  %call2_48b4a7 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2325, %struct.Memory* %MEMORY.14)
  %2330 = load i64, i64* %RBP.i, align 8
  %2331 = add i64 %2330, -168
  %2332 = load i32, i32* %EAX.i851, align 4
  %2333 = load i64, i64* %3, align 8
  %2334 = add i64 %2333, 6
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2331 to i32*
  store i32 %2332, i32* %2335, align 4
  %2336 = load i64, i64* %3, align 8
  %2337 = add i64 %2336, 201
  br label %block_.L_48b57b

block_.L_48b4b7:                                  ; preds = %block_.L_48b479
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2338 = add i64 %2323, 14
  store i64 %2338, i64* %3, align 8
  %2339 = load i32, i32* %2280, align 4
  %2340 = sext i32 %2339 to i64
  %2341 = mul nsw i64 %2340, 380
  store i64 %2341, i64* %RCX.i923, align 8
  %2342 = lshr i64 %2341, 63
  %2343 = add i64 %2341, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2343, i64* %RAX.i953, align 8
  %2344 = icmp ult i64 %2343, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2345 = icmp ult i64 %2343, %2341
  %2346 = or i1 %2344, %2345
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %14, align 1
  %2348 = trunc i64 %2343 to i32
  %2349 = and i32 %2348, 252
  %2350 = tail call i32 @llvm.ctpop.i32(i32 %2349)
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  %2353 = xor i8 %2352, 1
  store i8 %2353, i8* %21, align 1
  %2354 = xor i64 %2341, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2355 = xor i64 %2354, %2343
  %2356 = lshr i64 %2355, 4
  %2357 = trunc i64 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %26, align 1
  %2359 = icmp eq i64 %2343, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %29, align 1
  %2361 = lshr i64 %2343, 63
  %2362 = trunc i64 %2361 to i8
  store i8 %2362, i8* %32, align 1
  %2363 = xor i64 %2361, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2364 = xor i64 %2361, %2342
  %2365 = add nuw nsw i64 %2363, %2364
  %2366 = icmp eq i64 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %38, align 1
  %2368 = add i64 %2341, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 56)
  %2369 = add i64 %2323, 28
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = add i32 %2371, -4
  %2373 = icmp ult i32 %2371, 4
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %14, align 1
  %2375 = and i32 %2372, 255
  %2376 = tail call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  store i8 %2379, i8* %21, align 1
  %2380 = xor i32 %2372, %2371
  %2381 = lshr i32 %2380, 4
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  store i8 %2383, i8* %26, align 1
  %2384 = icmp eq i32 %2372, 0
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %29, align 1
  %2386 = lshr i32 %2372, 31
  %2387 = trunc i32 %2386 to i8
  store i8 %2387, i8* %32, align 1
  %2388 = lshr i32 %2371, 31
  %2389 = xor i32 %2386, %2388
  %2390 = add nuw nsw i32 %2389, %2388
  %2391 = icmp eq i32 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %38, align 1
  %.v62 = select i1 %2384, i64 34, i64 62
  %2393 = add i64 %2323, %.v62
  %2394 = add i64 %2393, 10
  store i64 %2394, i64* %3, align 8
  br i1 %2384, label %block_48b4d9, label %block_.L_48b4f5

block_48b4d9:                                     ; preds = %block_.L_48b4b7
  store i64 ptrtoint (%G__0x583546_type* @G__0x583546 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2395 = add i64 %2393, -235305
  %2396 = add i64 %2393, 17
  %2397 = load i64, i64* %6, align 8
  %2398 = add i64 %2397, -8
  %2399 = inttoptr i64 %2398 to i64*
  store i64 %2396, i64* %2399, align 8
  store i64 %2398, i64* %6, align 8
  store i64 %2395, i64* %3, align 8
  %call2_48b4e5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2395, %struct.Memory* %MEMORY.14)
  %2400 = load i64, i64* %RBP.i, align 8
  %2401 = add i64 %2400, -172
  %2402 = load i32, i32* %EAX.i851, align 4
  %2403 = load i64, i64* %3, align 8
  %2404 = add i64 %2403, 6
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2401 to i32*
  store i32 %2402, i32* %2405, align 4
  %2406 = load i64, i64* %3, align 8
  %2407 = add i64 %2406, 134
  br label %block_.L_48b576

block_.L_48b4f5:                                  ; preds = %block_.L_48b4b7
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -12
  %2410 = add i64 %2393, 14
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = sext i32 %2412 to i64
  %2414 = mul nsw i64 %2413, 380
  store i64 %2414, i64* %RCX.i923, align 8
  %2415 = lshr i64 %2414, 63
  %2416 = add i64 %2414, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2416, i64* %RAX.i953, align 8
  %2417 = icmp ult i64 %2416, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2418 = icmp ult i64 %2416, %2414
  %2419 = or i1 %2417, %2418
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %14, align 1
  %2421 = trunc i64 %2416 to i32
  %2422 = and i32 %2421, 252
  %2423 = tail call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  store i8 %2426, i8* %21, align 1
  %2427 = xor i64 %2414, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2428 = xor i64 %2427, %2416
  %2429 = lshr i64 %2428, 4
  %2430 = trunc i64 %2429 to i8
  %2431 = and i8 %2430, 1
  store i8 %2431, i8* %26, align 1
  %2432 = icmp eq i64 %2416, 0
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %29, align 1
  %2434 = lshr i64 %2416, 63
  %2435 = trunc i64 %2434 to i8
  store i8 %2435, i8* %32, align 1
  %2436 = xor i64 %2434, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2437 = xor i64 %2434, %2415
  %2438 = add nuw nsw i64 %2436, %2437
  %2439 = icmp eq i64 %2438, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %38, align 1
  %2441 = add i64 %2414, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 56)
  %2442 = add i64 %2393, 28
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = add i32 %2444, -5
  %2446 = icmp ult i32 %2444, 5
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %14, align 1
  %2448 = and i32 %2445, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %21, align 1
  %2453 = xor i32 %2445, %2444
  %2454 = lshr i32 %2453, 4
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  store i8 %2456, i8* %26, align 1
  %2457 = icmp eq i32 %2445, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %29, align 1
  %2459 = lshr i32 %2445, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %32, align 1
  %2461 = lshr i32 %2444, 31
  %2462 = xor i32 %2459, %2461
  %2463 = add nuw nsw i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %38, align 1
  %.v63 = select i1 %2457, i64 34, i64 62
  %2466 = add i64 %2393, %.v63
  %2467 = add i64 %2466, 10
  store i64 %2467, i64* %3, align 8
  br i1 %2457, label %block_48b517, label %block_.L_48b533

block_48b517:                                     ; preds = %block_.L_48b4f5
  store i64 ptrtoint (%G__0x583569_type* @G__0x583569 to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2468 = add i64 %2466, -235367
  %2469 = add i64 %2466, 17
  %2470 = load i64, i64* %6, align 8
  %2471 = add i64 %2470, -8
  %2472 = inttoptr i64 %2471 to i64*
  store i64 %2469, i64* %2472, align 8
  store i64 %2471, i64* %6, align 8
  store i64 %2468, i64* %3, align 8
  %call2_48b523 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2468, %struct.Memory* %MEMORY.14)
  %2473 = load i64, i64* %RBP.i, align 8
  %2474 = add i64 %2473, -176
  %2475 = load i32, i32* %EAX.i851, align 4
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 6
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2474 to i32*
  store i32 %2475, i32* %2478, align 4
  %2479 = load i64, i64* %3, align 8
  %2480 = add i64 %2479, 67
  br label %block_.L_48b571

block_.L_48b533:                                  ; preds = %block_.L_48b4f5
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i953, align 8
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add i64 %2481, -12
  %2483 = add i64 %2466, 14
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = sext i32 %2485 to i64
  %2487 = mul nsw i64 %2486, 380
  store i64 %2487, i64* %RCX.i923, align 8
  %2488 = lshr i64 %2487, 63
  %2489 = add i64 %2487, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2489, i64* %RAX.i953, align 8
  %2490 = icmp ult i64 %2489, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2491 = icmp ult i64 %2489, %2487
  %2492 = or i1 %2490, %2491
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %14, align 1
  %2494 = trunc i64 %2489 to i32
  %2495 = and i32 %2494, 252
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %21, align 1
  %2500 = xor i64 %2487, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2501 = xor i64 %2500, %2489
  %2502 = lshr i64 %2501, 4
  %2503 = trunc i64 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %26, align 1
  %2505 = icmp eq i64 %2489, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %29, align 1
  %2507 = lshr i64 %2489, 63
  %2508 = trunc i64 %2507 to i8
  store i8 %2508, i8* %32, align 1
  %2509 = xor i64 %2507, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2510 = xor i64 %2507, %2488
  %2511 = add nuw nsw i64 %2509, %2510
  %2512 = icmp eq i64 %2511, 2
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %38, align 1
  %2514 = add i64 %2487, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 56)
  %2515 = add i64 %2466, 28
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i32*
  %2517 = load i32, i32* %2516, align 4
  %2518 = add i32 %2517, -3
  %2519 = icmp ult i32 %2517, 3
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %14, align 1
  %2521 = and i32 %2518, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %21, align 1
  %2526 = xor i32 %2518, %2517
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %26, align 1
  %2530 = icmp eq i32 %2518, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %29, align 1
  %2532 = lshr i32 %2518, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %32, align 1
  %2534 = lshr i32 %2517, 31
  %2535 = xor i32 %2532, %2534
  %2536 = add nuw nsw i32 %2535, %2534
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %38, align 1
  %.v64 = select i1 %2530, i64 34, i64 57
  %2539 = add i64 %2466, %.v64
  store i64 %2539, i64* %3, align 8
  br i1 %2530, label %block_48b555, label %block_.L_48b56c

block_48b555:                                     ; preds = %block_.L_48b533
  store i64 ptrtoint (%G__0x58358c_type* @G__0x58358c to i64), i64* %RDI.i933, align 8
  store i8 0, i8* %AL.i928, align 1
  %2540 = add i64 %2539, -235429
  %2541 = add i64 %2539, 17
  %2542 = load i64, i64* %6, align 8
  %2543 = add i64 %2542, -8
  %2544 = inttoptr i64 %2543 to i64*
  store i64 %2541, i64* %2544, align 8
  store i64 %2543, i64* %6, align 8
  store i64 %2540, i64* %3, align 8
  %call2_48b561 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2540, %struct.Memory* %MEMORY.14)
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -180
  %2547 = load i32, i32* %EAX.i851, align 4
  %2548 = load i64, i64* %3, align 8
  %2549 = add i64 %2548, 6
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2546 to i32*
  store i32 %2547, i32* %2550, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_48b56c

block_.L_48b56c:                                  ; preds = %block_.L_48b533, %block_48b555
  %2551 = phi i64 [ %2539, %block_.L_48b533 ], [ %.pre48, %block_48b555 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_48b533 ], [ %call2_48b561, %block_48b555 ]
  %2552 = add i64 %2551, 5
  store i64 %2552, i64* %3, align 8
  br label %block_.L_48b571

block_.L_48b571:                                  ; preds = %block_.L_48b56c, %block_48b517
  %storemerge22 = phi i64 [ %2480, %block_48b517 ], [ %2552, %block_.L_48b56c ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_48b523, %block_48b517 ], [ %MEMORY.15, %block_.L_48b56c ]
  %2553 = add i64 %storemerge22, 5
  store i64 %2553, i64* %3, align 8
  br label %block_.L_48b576

block_.L_48b576:                                  ; preds = %block_.L_48b571, %block_48b4d9
  %storemerge21 = phi i64 [ %2407, %block_48b4d9 ], [ %2553, %block_.L_48b571 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_48b4e5, %block_48b4d9 ], [ %MEMORY.16, %block_.L_48b571 ]
  %2554 = add i64 %storemerge21, 5
  store i64 %2554, i64* %3, align 8
  br label %block_.L_48b57b

block_.L_48b57b:                                  ; preds = %block_.L_48b576, %block_48b49b
  %storemerge = phi i64 [ %2337, %block_48b49b ], [ %2554, %block_.L_48b576 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_48b4a7, %block_48b49b ], [ %MEMORY.17, %block_.L_48b576 ]
  %2555 = add i64 %storemerge, 5
  br label %block_.L_48b580

block_.L_48b580:                                  ; preds = %block_.L_48b57b, %block_48b45d, %block_48ad03
  %.sink = phi i64 [ %2555, %block_.L_48b57b ], [ %2276, %block_48b45d ], [ %149, %block_48ad03 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_48b57b ], [ %call2_48b469, %block_48b45d ], [ %call2_48ad12, %block_48ad03 ]
  %2556 = load i64, i64* %6, align 8
  %2557 = add i64 %2556, 192
  store i64 %2557, i64* %6, align 8
  %2558 = icmp ugt i64 %2556, -193
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %14, align 1
  %2560 = trunc i64 %2557 to i32
  %2561 = and i32 %2560, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %21, align 1
  %2566 = xor i64 %2557, %2556
  %2567 = lshr i64 %2566, 4
  %2568 = trunc i64 %2567 to i8
  %2569 = and i8 %2568, 1
  store i8 %2569, i8* %26, align 1
  %2570 = icmp eq i64 %2557, 0
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %29, align 1
  %2572 = lshr i64 %2557, 63
  %2573 = trunc i64 %2572 to i8
  store i8 %2573, i8* %32, align 1
  %2574 = lshr i64 %2556, 63
  %2575 = xor i64 %2572, %2574
  %2576 = add nuw nsw i64 %2575, %2572
  %2577 = icmp eq i64 %2576, 2
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %38, align 1
  %2579 = add i64 %.sink, 8
  store i64 %2579, i64* %3, align 8
  %2580 = add i64 %2556, 200
  %2581 = inttoptr i64 %2557 to i64*
  %2582 = load i64, i64* %2581, align 8
  store i64 %2582, i64* %RBP.i, align 8
  store i64 %2580, i64* %6, align 8
  %2583 = add i64 %.sink, 9
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2580 to i64*
  %2585 = load i64, i64* %2584, align 8
  store i64 %2585, i64* %3, align 8
  %2586 = add i64 %2556, 208
  store i64 %2586, i64* %6, align 8
  ret %struct.Memory* %MEMORY.19
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RSI, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
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
define %struct.Memory* @routine_addl__0x15___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -22
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
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
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_48ad1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58332f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58332f_type* @G__0x58332f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48b580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583348___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583348_type* @G__0x583348 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583366___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583366_type* @G__0x583366 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583360___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583360_type* @G__0x583360 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58335a___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58335a_type* @G__0x58335a to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___r9___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R9, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r9___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R10, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____r10_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %R10 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmoveq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RDX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_0xc__r9____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__r9____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x58339c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58339c_type* @G__0x58339c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__r9____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__r9____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__r9____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_0x1c__rsi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0xb0eff0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x3c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jne_.L_48ae79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5833d6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5833d6_type* @G__0x5833d6 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48af56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5833e8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5833e8_type* @G__0x5833e8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x3c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 60
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48af42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jle_.L_48aed9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x3c__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 60
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.result_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_48ae94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 140
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
define %struct.Memory* @routine_jne_.L_48af94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x583405___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583405_type* @G__0x583405 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b07a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583418___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583418_type* @G__0x583418 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 140
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48b066(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_48aff7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x8c__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 140
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 180
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48afaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 220
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
define %struct.Memory* @routine_jne_.L_48b0b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58342a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58342a_type* @G__0x58342a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b19e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583443___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583443_type* @G__0x583443 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xdc__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 220
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48b18a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_48b11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xdc__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 220
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x104__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 260
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b0d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x12c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 300
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
define %struct.Memory* @routine_jne_.L_48b1dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58345b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58345b_type* @G__0x58345b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b2c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583475___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583475_type* @G__0x583475 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x12c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 300
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48b2ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_48b23f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x12c__rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 300
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x154__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 340
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b1f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_je_.L_48b319(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58348e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58348e_type* @G__0x58348e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58349c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58349c_type* @G__0x58349c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5834b9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5834b9_type* @G__0x5834b9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_je_.L_48b3cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5834c5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5834c5_type* @G__0x5834c5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48b3e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5834d8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5834d8_type* @G__0x5834d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_je_.L_48b424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5834ea___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5834ea_type* @G__0x5834ea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48b43b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5834fd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5834fd_type* @G__0x5834fd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_jne_.L_48b479(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58350f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58350f_type* @G__0x58350f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_jne_.L_48b4b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58352b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58352b_type* @G__0x58352b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48b57b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jne_.L_48b4f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x583546___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583546_type* @G__0x583546 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b576(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_48b533(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x583569___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583569_type* @G__0x583569 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_48b571(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_48b56c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58358c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58358c_type* @G__0x58358c to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
