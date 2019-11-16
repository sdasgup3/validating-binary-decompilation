; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xaf3458_type = type <{ [1 x i8] }>
%G__0x579d93_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x588897_type = type <{ [8 x i8] }>
%G__0x588b0b_type = type <{ [8 x i8] }>
%G__0x588b2c_type = type <{ [8 x i8] }>
%G__0x588b35_type = type <{ [8 x i8] }>
%G__0xb8c050_type = type <{ [8 x i8] }>
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
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xaf3458 = local_unnamed_addr global %G_0xaf3458_type zeroinitializer
@G__0x579d93 = global %G__0x579d93_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x588897 = global %G__0x588897_type zeroinitializer
@G__0x588b0b = global %G__0x588b0b_type zeroinitializer
@G__0x588b2c = global %G__0x588b2c_type zeroinitializer
@G__0x588b35 = global %G__0x588b35_type zeroinitializer
@G__0xb8c050 = global %G__0xb8c050_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401030.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @pattern_2_string(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i311, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i413, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %RBX.i434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %20 = load i64, i64* %RBX.i434, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %7, -7240
  store i64 %26, i64* %6, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i487 = getelementptr inbounds %union.anon, %union.anon* %33, i64 0, i32 0
  store i64 35, i64* %RAX.i487, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 7056, i64* %36, align 8
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -7120
  store i64 %38, i64* %RBX.i434, align 8
  store i64 0, i64* %35, align 8
  store i8 0, i8* %27, align 1
  store i8 1, i8* %28, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  store i64 1764, i64* %R14.i413, align 8
  store i64 1764, i64* %R15.i311, align 8
  %RDI.i1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %37, -32
  %40 = load i64, i64* %RDI.i1284, align 8
  %41 = add i64 %25, 44
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1331 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -40
  %46 = load i64, i64* %RSI.i1331, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1328 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -48
  %53 = load i64, i64* %RDX.i1328, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1325 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -52
  %60 = load i32, i32* %ECX.i1325, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %64 to i32*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -56
  %67 = load i32, i32* %R8D.i, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %71 to i32*
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -60
  %74 = load i32, i32* %R9D.i, align 4
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %RCX.i1318 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -56
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, 42
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RCX.i1318, align 8
  %86 = icmp ugt i32 %83, -43
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %27, align 1
  %88 = and i32 %84, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %28, align 1
  %93 = xor i32 %84, %83
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %29, align 1
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %31, align 1
  %101 = lshr i32 %83, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %99
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %32, align 1
  %106 = add i64 %78, -7124
  %107 = add i64 %80, 12
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 %84, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -60
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 3
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 42
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RCX.i1318, align 8
  %117 = icmp ugt i32 %114, -43
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %27, align 1
  %119 = and i32 %115, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %28, align 1
  %124 = xor i32 %115, %114
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %29, align 1
  %128 = icmp eq i32 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i32 %115, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %31, align 1
  %132 = lshr i32 %114, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %32, align 1
  %137 = add i64 %109, -7128
  %138 = add i64 %111, 12
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 %115, i32* %139, align 4
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -48
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, 4
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDI.i1284, align 8
  %146 = load i32, i32* %R10D.i, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RSI.i1331, align 8
  %148 = load i64, i64* %R15.i311, align 8
  store i64 %148, i64* %RDX.i1328, align 8
  %EAX.i1293 = bitcast %union.anon* %33 to i32*
  %149 = add i64 %140, -7160
  %150 = load i32, i32* %EAX.i1293, align 4
  %151 = add i64 %142, 16
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -7168
  %155 = load i64, i64* %36, align 8
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 7
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %154 to i64*
  store i64 %155, i64* %158, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -7176
  %161 = load i64, i64* %RBX.i434, align 8
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, -688686
  %167 = add i64 %165, 5
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %6, align 8
  store i64 %166, i64* %3, align 8
  %171 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -7176
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 7
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RDX.i1328, align 8
  store i64 %177, i64* %RDI.i1284, align 8
  %178 = add i64 %172, -7160
  %179 = add i64 %174, 16
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RSI.i1331, align 8
  %183 = add i64 %172, -7168
  %184 = add i64 %174, 23
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RDX.i1328, align 8
  %187 = add i64 %174, -688691
  %188 = add i64 %174, 28
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %192 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %171)
  %193 = load i64, i64* %3, align 8
  %194 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  store i8 0, i8* %27, align 1
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %200 = icmp eq i32 %194, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i32 %194, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %204 = icmp ne i8 %203, 0
  %205 = or i1 %200, %204
  %.v160 = select i1 %205, i64 45, i64 14
  %206 = add i64 %193, %.v160
  store i64 %206, i64* %3, align 8
  br i1 %205, label %block_.L_4a92ec, label %block_4a92cd

block_4a92cd:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x588b0b_type* @G__0x588b0b to i64), i64* %RSI.i1331, align 8
  %207 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %207, i64* %RDI.i1284, align 8
  %AL.i1261 = bitcast %union.anon* %33 to i8*
  store i8 0, i8* %AL.i1261, align 1
  %208 = add i64 %206, -688637
  %209 = add i64 %206, 25
  %210 = load i64, i64* %6, align 8
  %211 = add i64 %210, -8
  %212 = inttoptr i64 %211 to i64*
  store i64 %209, i64* %212, align 8
  store i64 %211, i64* %6, align 8
  store i64 %208, i64* %3, align 8
  %213 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %192)
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -7180
  %216 = load i32, i32* %EAX.i1293, align 4
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 6
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %215 to i32*
  store i32 %216, i32* %219, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a92ec

block_.L_4a92ec:                                  ; preds = %block_4a92cd, %entry
  %220 = phi i64 [ %206, %entry ], [ %.pre, %block_4a92cd ]
  %MEMORY.0 = phi %struct.Memory* [ %192, %entry ], [ %213, %block_4a92cd ]
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -7144
  %223 = add i64 %220, 10
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 21, i32* %224, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_4a92f6

block_.L_4a92f6:                                  ; preds = %block_.L_4a934e, %block_.L_4a92ec
  %225 = phi i64 [ %387, %block_.L_4a934e ], [ %.pre94, %block_.L_4a92ec ]
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -7144
  %228 = add i64 %225, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, -63
  %232 = icmp ult i32 %230, 63
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %27, align 1
  %234 = and i32 %231, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %28, align 1
  %239 = xor i32 %230, 16
  %240 = xor i32 %239, %231
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %29, align 1
  %244 = icmp eq i32 %231, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %30, align 1
  %246 = lshr i32 %231, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %31, align 1
  %248 = lshr i32 %230, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %32, align 1
  %.v161 = select i1 %244, i64 113, i64 13
  %253 = add i64 %225, %.v161
  store i64 %253, i64* %3, align 8
  br i1 %244, label %block_.L_4a9367, label %block_4a9303

block_4a9303:                                     ; preds = %block_.L_4a92f6
  %254 = add i64 %226, -7148
  %255 = add i64 %253, 10
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 21, i32* %256, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4a930d

block_.L_4a930d:                                  ; preds = %block_4a931a, %block_4a9303
  %257 = phi i64 [ %357, %block_4a931a ], [ %.pre95, %block_4a9303 ]
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -7148
  %260 = add i64 %257, 7
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, -63
  %264 = icmp ult i32 %262, 63
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %27, align 1
  %266 = and i32 %263, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %28, align 1
  %271 = xor i32 %262, 16
  %272 = xor i32 %271, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %29, align 1
  %276 = icmp eq i32 %263, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %30, align 1
  %278 = lshr i32 %263, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %31, align 1
  %280 = lshr i32 %262, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %32, align 1
  %.v = select i1 %276, i64 65, i64 13
  %285 = add i64 %257, %.v
  store i64 %285, i64* %3, align 8
  br i1 %276, label %block_.L_4a934e, label %block_4a931a

block_4a931a:                                     ; preds = %block_.L_4a930d
  %286 = add i64 %258, -7120
  store i64 %286, i64* %RAX.i487, align 8
  %287 = add i64 %258, -7144
  %288 = add i64 %285, 14
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = mul nsw i64 %291, 84
  store i64 %292, i64* %RCX.i1318, align 8
  %293 = lshr i64 %292, 63
  %294 = add i64 %292, %286
  store i64 %294, i64* %RAX.i487, align 8
  %295 = icmp ult i64 %294, %286
  %296 = icmp ult i64 %294, %292
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %27, align 1
  %299 = trunc i64 %294 to i32
  %300 = and i32 %299, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %28, align 1
  %305 = xor i64 %292, %286
  %306 = xor i64 %305, %294
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %29, align 1
  %310 = icmp eq i64 %294, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %30, align 1
  %312 = lshr i64 %294, 63
  %313 = trunc i64 %312 to i8
  store i8 %313, i8* %31, align 1
  %314 = lshr i64 %286, 63
  %315 = xor i64 %312, %314
  %316 = xor i64 %312, %293
  %317 = add nuw nsw i64 %315, %316
  %318 = icmp eq i64 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %32, align 1
  %320 = add i64 %285, 28
  store i64 %320, i64* %3, align 8
  %321 = load i32, i32* %261, align 4
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %RCX.i1318, align 8
  %323 = add i64 %294, %322
  %324 = add i64 %285, 32
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i8*
  store i8 36, i8* %325, align 1
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -7148
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 6
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i487, align 8
  %334 = icmp eq i32 %331, -1
  %335 = icmp eq i32 %332, 0
  %336 = or i1 %334, %335
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %27, align 1
  %338 = and i32 %332, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %28, align 1
  %343 = xor i32 %332, %331
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %29, align 1
  %347 = zext i1 %335 to i8
  store i8 %347, i8* %30, align 1
  %348 = lshr i32 %332, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %31, align 1
  %350 = lshr i32 %331, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %32, align 1
  %355 = add i64 %328, 15
  store i64 %355, i64* %3, align 8
  store i32 %332, i32* %330, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, -60
  store i64 %357, i64* %3, align 8
  br label %block_.L_4a930d

block_.L_4a934e:                                  ; preds = %block_.L_4a930d
  %358 = add i64 %258, -7144
  %359 = add i64 %285, 11
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, 1
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i487, align 8
  %364 = icmp eq i32 %361, -1
  %365 = icmp eq i32 %362, 0
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %27, align 1
  %368 = and i32 %362, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %28, align 1
  %373 = xor i32 %362, %361
  %374 = lshr i32 %373, 4
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %29, align 1
  %377 = zext i1 %365 to i8
  store i8 %377, i8* %30, align 1
  %378 = lshr i32 %362, 31
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %31, align 1
  %380 = lshr i32 %361, 31
  %381 = xor i32 %378, %380
  %382 = add nuw nsw i32 %381, %378
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %32, align 1
  %385 = add i64 %285, 20
  store i64 %385, i64* %3, align 8
  store i32 %362, i32* %360, align 4
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, -108
  store i64 %387, i64* %3, align 8
  br label %block_.L_4a92f6

block_.L_4a9367:                                  ; preds = %block_.L_4a92f6
  %388 = add i64 %226, -32
  %389 = add i64 %253, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i487, align 8
  %392 = add i64 %391, 24
  %393 = add i64 %253, 7
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RCX.i1318, align 8
  %397 = add i64 %226, -7124
  %398 = add i64 %253, 13
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, %395
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RCX.i1318, align 8
  %403 = icmp ult i32 %401, %395
  %404 = icmp ult i32 %401, %400
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %27, align 1
  %407 = and i32 %401, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %28, align 1
  %412 = xor i32 %400, %395
  %413 = xor i32 %412, %401
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %29, align 1
  %417 = icmp eq i32 %401, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %30, align 1
  %419 = lshr i32 %401, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %31, align 1
  %421 = lshr i32 %395, 31
  %422 = lshr i32 %400, 31
  %423 = xor i32 %419, %421
  %424 = xor i32 %419, %422
  %425 = add nuw nsw i32 %423, %424
  %426 = icmp eq i32 %425, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %32, align 1
  %428 = add i64 %253, 19
  store i64 %428, i64* %3, align 8
  store i32 %401, i32* %229, align 4
  %EDX.i1182 = bitcast %union.anon* %50 to i32*
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_4a937a

block_.L_4a937a:                                  ; preds = %block_.L_4a93fd, %block_.L_4a9367
  %429 = phi i64 [ %673, %block_.L_4a93fd ], [ %.pre96, %block_.L_4a9367 ]
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -7144
  %432 = add i64 %429, 6
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i487, align 8
  %436 = add i64 %430, -32
  %437 = add i64 %429, 10
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RCX.i1318, align 8
  %440 = add i64 %439, 32
  %441 = add i64 %429, 13
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDX.i1328, align 8
  %445 = add i64 %430, -7124
  %446 = add i64 %429, 19
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, %443
  %450 = add i32 %449, 1
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RDX.i1328, align 8
  %452 = lshr i32 %450, 31
  %453 = sub i32 %434, %450
  %454 = icmp ult i32 %434, %450
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %27, align 1
  %456 = and i32 %453, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %28, align 1
  %461 = xor i32 %450, %434
  %462 = xor i32 %461, %453
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %29, align 1
  %466 = icmp eq i32 %453, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %30, align 1
  %468 = lshr i32 %453, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %31, align 1
  %470 = lshr i32 %434, 31
  %471 = xor i32 %452, %470
  %472 = xor i32 %468, %470
  %473 = add nuw nsw i32 %472, %471
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %32, align 1
  %.v162 = select i1 %466, i64 156, i64 30
  %476 = add i64 %429, %.v162
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -32
  %479 = add i64 %476, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RAX.i487, align 8
  br i1 %466, label %block_.L_4a9416, label %block_4a9398

block_4a9398:                                     ; preds = %block_.L_4a937a
  %482 = add i64 %481, 28
  %483 = add i64 %476, 7
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RCX.i1318, align 8
  %487 = add i64 %477, -7128
  %488 = add i64 %476, 13
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, %485
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RCX.i1318, align 8
  %493 = icmp ult i32 %491, %485
  %494 = icmp ult i32 %491, %490
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %27, align 1
  %497 = and i32 %491, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %28, align 1
  %502 = xor i32 %490, %485
  %503 = xor i32 %502, %491
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %29, align 1
  %507 = icmp eq i32 %491, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %30, align 1
  %509 = lshr i32 %491, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %31, align 1
  %511 = lshr i32 %485, 31
  %512 = lshr i32 %490, 31
  %513 = xor i32 %509, %511
  %514 = xor i32 %509, %512
  %515 = add nuw nsw i32 %513, %514
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %32, align 1
  %518 = add i64 %477, -7148
  %519 = add i64 %476, 19
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 %491, i32* %520, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_4a93ab

block_.L_4a93ab:                                  ; preds = %block_4a93c9, %block_4a9398
  %521 = phi i64 [ %643, %block_4a93c9 ], [ %.pre97, %block_4a9398 ]
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -7148
  %524 = add i64 %521, 6
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RAX.i487, align 8
  %528 = add i64 %522, -32
  %529 = add i64 %521, 10
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RCX.i1318, align 8
  %532 = add i64 %531, 36
  %533 = add i64 %521, 13
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RDX.i1328, align 8
  %537 = add i64 %522, -7128
  %538 = add i64 %521, 19
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = add i32 %540, %535
  %542 = add i32 %541, 1
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RDX.i1328, align 8
  %544 = lshr i32 %542, 31
  %545 = sub i32 %526, %542
  %546 = icmp ult i32 %526, %542
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %27, align 1
  %548 = and i32 %545, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %28, align 1
  %553 = xor i32 %542, %526
  %554 = xor i32 %553, %545
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %29, align 1
  %558 = icmp eq i32 %545, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %30, align 1
  %560 = lshr i32 %545, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %31, align 1
  %562 = lshr i32 %526, 31
  %563 = xor i32 %544, %562
  %564 = xor i32 %560, %562
  %565 = add nuw nsw i32 %564, %563
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %32, align 1
  %.v163 = select i1 %558, i64 82, i64 30
  %568 = add i64 %521, %.v163
  store i64 %568, i64* %3, align 8
  %569 = load i64, i64* %RBP.i, align 8
  br i1 %558, label %block_.L_4a93fd, label %block_4a93c9

block_4a93c9:                                     ; preds = %block_.L_4a93ab
  %570 = add i64 %569, -7120
  store i64 %570, i64* %RAX.i487, align 8
  %571 = add i64 %569, -7144
  %572 = add i64 %568, 14
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  %576 = mul nsw i64 %575, 84
  store i64 %576, i64* %RCX.i1318, align 8
  %577 = lshr i64 %576, 63
  %578 = add i64 %576, %570
  store i64 %578, i64* %RAX.i487, align 8
  %579 = icmp ult i64 %578, %570
  %580 = icmp ult i64 %578, %576
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %27, align 1
  %583 = trunc i64 %578 to i32
  %584 = and i32 %583, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %28, align 1
  %589 = xor i64 %576, %570
  %590 = xor i64 %589, %578
  %591 = lshr i64 %590, 4
  %592 = trunc i64 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %29, align 1
  %594 = icmp eq i64 %578, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %30, align 1
  %596 = lshr i64 %578, 63
  %597 = trunc i64 %596 to i8
  store i8 %597, i8* %31, align 1
  %598 = lshr i64 %570, 63
  %599 = xor i64 %596, %598
  %600 = xor i64 %596, %577
  %601 = add nuw nsw i64 %599, %600
  %602 = icmp eq i64 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %32, align 1
  %604 = add i64 %569, -7148
  %605 = add i64 %568, 28
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  store i64 %608, i64* %RCX.i1318, align 8
  %609 = add i64 %578, %608
  %610 = add i64 %568, 32
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i8*
  store i8 63, i8* %611, align 1
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -7148
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 6
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = add i32 %617, 1
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RAX.i487, align 8
  %620 = icmp eq i32 %617, -1
  %621 = icmp eq i32 %618, 0
  %622 = or i1 %620, %621
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %27, align 1
  %624 = and i32 %618, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %28, align 1
  %629 = xor i32 %618, %617
  %630 = lshr i32 %629, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %29, align 1
  %633 = zext i1 %621 to i8
  store i8 %633, i8* %30, align 1
  %634 = lshr i32 %618, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %31, align 1
  %636 = lshr i32 %617, 31
  %637 = xor i32 %634, %636
  %638 = add nuw nsw i32 %637, %634
  %639 = icmp eq i32 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = add i64 %614, 15
  store i64 %641, i64* %3, align 8
  store i32 %618, i32* %616, align 4
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, -77
  store i64 %643, i64* %3, align 8
  br label %block_.L_4a93ab

block_.L_4a93fd:                                  ; preds = %block_.L_4a93ab
  %644 = add i64 %569, -7144
  %645 = add i64 %568, 11
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = add i32 %647, 1
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RAX.i487, align 8
  %650 = icmp eq i32 %647, -1
  %651 = icmp eq i32 %648, 0
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %27, align 1
  %654 = and i32 %648, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %28, align 1
  %659 = xor i32 %648, %647
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %29, align 1
  %663 = zext i1 %651 to i8
  store i8 %663, i8* %30, align 1
  %664 = lshr i32 %648, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %31, align 1
  %666 = lshr i32 %647, 31
  %667 = xor i32 %664, %666
  %668 = add nuw nsw i32 %667, %664
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %32, align 1
  %671 = add i64 %568, 20
  store i64 %671, i64* %3, align 8
  store i32 %648, i32* %646, align 4
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, -151
  store i64 %673, i64* %3, align 8
  br label %block_.L_4a937a

block_.L_4a9416:                                  ; preds = %block_.L_4a937a
  %674 = add i64 %481, 48
  %675 = add i64 %476, 7
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = and i32 %677, 2
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RCX.i1318, align 8
  store i8 0, i8* %27, align 1
  %680 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %681 = trunc i32 %680 to i8
  %682 = xor i8 %681, 1
  store i8 %682, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %683 = icmp eq i32 %678, 0
  %.lobit150 = lshr exact i32 %678, 1
  %684 = trunc i32 %.lobit150 to i8
  %685 = xor i8 %684, 1
  store i8 %685, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v164 = select i1 %683, i64 159, i64 19
  %686 = add i64 %476, %.v164
  store i64 %686, i64* %3, align 8
  br i1 %683, label %block_.L_4a94b5, label %block_4a9429

block_4a9429:                                     ; preds = %block_.L_4a9416
  %687 = add i64 %477, -7124
  %688 = add i64 %686, 6
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX.i487, align 8
  %692 = add i64 %686, 10
  store i64 %692, i64* %3, align 8
  %693 = load i64, i64* %480, align 8
  store i64 %693, i64* %RCX.i1318, align 8
  %694 = add i64 %693, 32
  %695 = add i64 %686, 13
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = add i32 %697, %690
  %699 = lshr i32 %698, 31
  %700 = add i32 %698, 1
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX.i487, align 8
  %702 = icmp eq i32 %698, -1
  %703 = icmp eq i32 %700, 0
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %27, align 1
  %706 = and i32 %700, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %28, align 1
  %711 = xor i32 %700, %698
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %29, align 1
  %715 = zext i1 %703 to i8
  store i8 %715, i8* %30, align 1
  %716 = lshr i32 %700, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %31, align 1
  %718 = xor i32 %716, %699
  %719 = add nuw nsw i32 %718, %716
  %720 = icmp eq i32 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %32, align 1
  %722 = add i64 %477, -7144
  %723 = add i64 %686, 22
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  store i32 %700, i32* %724, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_4a943f

block_.L_4a943f:                                  ; preds = %block_.L_4a9497, %block_4a9429
  %725 = phi i64 [ %887, %block_.L_4a9497 ], [ %.pre98, %block_4a9429 ]
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -7144
  %728 = add i64 %725, 7
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, -63
  %732 = icmp ult i32 %730, 63
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %27, align 1
  %734 = and i32 %731, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %28, align 1
  %739 = xor i32 %730, 16
  %740 = xor i32 %739, %731
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %29, align 1
  %744 = icmp eq i32 %731, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %30, align 1
  %746 = lshr i32 %731, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %31, align 1
  %748 = lshr i32 %730, 31
  %749 = xor i32 %746, %748
  %750 = add nuw nsw i32 %749, %748
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %32, align 1
  %.v165 = select i1 %744, i64 113, i64 13
  %753 = add i64 %725, %.v165
  store i64 %753, i64* %3, align 8
  br i1 %744, label %block_.L_4a94b0, label %block_4a944c

block_4a944c:                                     ; preds = %block_.L_4a943f
  %754 = add i64 %726, -7148
  %755 = add i64 %753, 10
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  store i32 0, i32* %756, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_4a9456

block_.L_4a9456:                                  ; preds = %block_4a9463, %block_4a944c
  %757 = phi i64 [ %857, %block_4a9463 ], [ %.pre99, %block_4a944c ]
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -7148
  %760 = add i64 %757, 7
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, -63
  %764 = icmp ult i32 %762, 63
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %27, align 1
  %766 = and i32 %763, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %28, align 1
  %771 = xor i32 %762, 16
  %772 = xor i32 %771, %763
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  store i8 %775, i8* %29, align 1
  %776 = icmp eq i32 %763, 0
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %30, align 1
  %778 = lshr i32 %763, 31
  %779 = trunc i32 %778 to i8
  store i8 %779, i8* %31, align 1
  %780 = lshr i32 %762, 31
  %781 = xor i32 %778, %780
  %782 = add nuw nsw i32 %781, %780
  %783 = icmp eq i32 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %32, align 1
  %.v151 = select i1 %776, i64 65, i64 13
  %785 = add i64 %757, %.v151
  store i64 %785, i64* %3, align 8
  br i1 %776, label %block_.L_4a9497, label %block_4a9463

block_4a9463:                                     ; preds = %block_.L_4a9456
  %786 = add i64 %758, -7120
  store i64 %786, i64* %RAX.i487, align 8
  %787 = add i64 %758, -7144
  %788 = add i64 %785, 14
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  %792 = mul nsw i64 %791, 84
  store i64 %792, i64* %RCX.i1318, align 8
  %793 = lshr i64 %792, 63
  %794 = add i64 %792, %786
  store i64 %794, i64* %RAX.i487, align 8
  %795 = icmp ult i64 %794, %786
  %796 = icmp ult i64 %794, %792
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %27, align 1
  %799 = trunc i64 %794 to i32
  %800 = and i32 %799, 255
  %801 = tail call i32 @llvm.ctpop.i32(i32 %800)
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  store i8 %804, i8* %28, align 1
  %805 = xor i64 %792, %786
  %806 = xor i64 %805, %794
  %807 = lshr i64 %806, 4
  %808 = trunc i64 %807 to i8
  %809 = and i8 %808, 1
  store i8 %809, i8* %29, align 1
  %810 = icmp eq i64 %794, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %30, align 1
  %812 = lshr i64 %794, 63
  %813 = trunc i64 %812 to i8
  store i8 %813, i8* %31, align 1
  %814 = lshr i64 %786, 63
  %815 = xor i64 %812, %814
  %816 = xor i64 %812, %793
  %817 = add nuw nsw i64 %815, %816
  %818 = icmp eq i64 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %32, align 1
  %820 = add i64 %785, 28
  store i64 %820, i64* %3, align 8
  %821 = load i32, i32* %761, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RCX.i1318, align 8
  %823 = add i64 %794, %822
  %824 = add i64 %785, 32
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i8*
  store i8 45, i8* %825, align 1
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -7148
  %828 = load i64, i64* %3, align 8
  %829 = add i64 %828, 6
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = add i32 %831, 1
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RAX.i487, align 8
  %834 = icmp eq i32 %831, -1
  %835 = icmp eq i32 %832, 0
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %27, align 1
  %838 = and i32 %832, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %28, align 1
  %843 = xor i32 %832, %831
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %29, align 1
  %847 = zext i1 %835 to i8
  store i8 %847, i8* %30, align 1
  %848 = lshr i32 %832, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %31, align 1
  %850 = lshr i32 %831, 31
  %851 = xor i32 %848, %850
  %852 = add nuw nsw i32 %851, %848
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %32, align 1
  %855 = add i64 %828, 15
  store i64 %855, i64* %3, align 8
  store i32 %832, i32* %830, align 4
  %856 = load i64, i64* %3, align 8
  %857 = add i64 %856, -60
  store i64 %857, i64* %3, align 8
  br label %block_.L_4a9456

block_.L_4a9497:                                  ; preds = %block_.L_4a9456
  %858 = add i64 %758, -7144
  %859 = add i64 %785, 11
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, 1
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RAX.i487, align 8
  %864 = icmp eq i32 %861, -1
  %865 = icmp eq i32 %862, 0
  %866 = or i1 %864, %865
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %27, align 1
  %868 = and i32 %862, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %28, align 1
  %873 = xor i32 %862, %861
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %29, align 1
  %877 = zext i1 %865 to i8
  store i8 %877, i8* %30, align 1
  %878 = lshr i32 %862, 31
  %879 = trunc i32 %878 to i8
  store i8 %879, i8* %31, align 1
  %880 = lshr i32 %861, 31
  %881 = xor i32 %878, %880
  %882 = add nuw nsw i32 %881, %878
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %32, align 1
  %885 = add i64 %785, 20
  store i64 %885, i64* %3, align 8
  store i32 %862, i32* %860, align 4
  %886 = load i64, i64* %3, align 8
  %887 = add i64 %886, -108
  store i64 %887, i64* %3, align 8
  br label %block_.L_4a943f

block_.L_4a94b0:                                  ; preds = %block_.L_4a943f
  %888 = add i64 %753, 5
  store i64 %888, i64* %3, align 8
  br label %block_.L_4a94b5

block_.L_4a94b5:                                  ; preds = %block_.L_4a94b0, %block_.L_4a9416
  %889 = phi i64 [ %888, %block_.L_4a94b0 ], [ %686, %block_.L_4a9416 ]
  %890 = phi i64 [ %726, %block_.L_4a94b0 ], [ %477, %block_.L_4a9416 ]
  %891 = add i64 %890, -32
  %892 = add i64 %889, 4
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %RAX.i487, align 8
  %895 = add i64 %894, 48
  %896 = add i64 %889, 7
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = and i32 %898, 4
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RCX.i1318, align 8
  store i8 0, i8* %27, align 1
  %901 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %902 = trunc i32 %901 to i8
  %903 = xor i8 %902, 1
  store i8 %903, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %904 = icmp eq i32 %899, 0
  %.lobit152 = lshr exact i32 %899, 2
  %905 = trunc i32 %.lobit152 to i8
  %906 = xor i8 %905, 1
  store i8 %906, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v166 = select i1 %904, i64 159, i64 19
  %907 = add i64 %889, %.v166
  store i64 %907, i64* %3, align 8
  br i1 %904, label %block_.L_4a9554, label %block_4a94c8

block_4a94c8:                                     ; preds = %block_.L_4a94b5
  %908 = add i64 %890, -7144
  %909 = add i64 %907, 10
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  store i32 0, i32* %910, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_4a94d2

block_.L_4a94d2:                                  ; preds = %block_.L_4a9536, %block_4a94c8
  %911 = phi i64 [ %1110, %block_.L_4a9536 ], [ %.pre100, %block_4a94c8 ]
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -7144
  %914 = add i64 %911, 7
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, -63
  %918 = icmp ult i32 %916, 63
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %27, align 1
  %920 = and i32 %917, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %28, align 1
  %925 = xor i32 %916, 16
  %926 = xor i32 %925, %917
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %29, align 1
  %930 = icmp eq i32 %917, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %30, align 1
  %932 = lshr i32 %917, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %31, align 1
  %934 = lshr i32 %916, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %32, align 1
  %.v167 = select i1 %930, i64 125, i64 13
  %939 = add i64 %911, %.v167
  store i64 %939, i64* %3, align 8
  br i1 %930, label %block_.L_4a954f, label %block_4a94df

block_4a94df:                                     ; preds = %block_.L_4a94d2
  %940 = add i64 %912, -7128
  %941 = add i64 %939, 6
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i487, align 8
  %945 = add i64 %912, -32
  %946 = add i64 %939, 10
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RCX.i1318, align 8
  %949 = add i64 %948, 36
  %950 = add i64 %939, 13
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = add i32 %952, %943
  %954 = lshr i32 %953, 31
  %955 = add i32 %953, 1
  %956 = zext i32 %955 to i64
  store i64 %956, i64* %RAX.i487, align 8
  %957 = icmp eq i32 %953, -1
  %958 = icmp eq i32 %955, 0
  %959 = or i1 %957, %958
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %27, align 1
  %961 = and i32 %955, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %28, align 1
  %966 = xor i32 %955, %953
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %29, align 1
  %970 = zext i1 %958 to i8
  store i8 %970, i8* %30, align 1
  %971 = lshr i32 %955, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %31, align 1
  %973 = xor i32 %971, %954
  %974 = add nuw nsw i32 %973, %971
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %32, align 1
  %977 = add i64 %912, -7148
  %978 = add i64 %939, 22
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  store i32 %955, i32* %979, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_4a94f5

block_.L_4a94f5:                                  ; preds = %block_4a9502, %block_4a94df
  %980 = phi i64 [ %1080, %block_4a9502 ], [ %.pre101, %block_4a94df ]
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -7148
  %983 = add i64 %980, 7
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = add i32 %985, -63
  %987 = icmp ult i32 %985, 63
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %27, align 1
  %989 = and i32 %986, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %28, align 1
  %994 = xor i32 %985, 16
  %995 = xor i32 %994, %986
  %996 = lshr i32 %995, 4
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %29, align 1
  %999 = icmp eq i32 %986, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %30, align 1
  %1001 = lshr i32 %986, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %31, align 1
  %1003 = lshr i32 %985, 31
  %1004 = xor i32 %1001, %1003
  %1005 = add nuw nsw i32 %1004, %1003
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %32, align 1
  %.v153 = select i1 %999, i64 65, i64 13
  %1008 = add i64 %980, %.v153
  store i64 %1008, i64* %3, align 8
  br i1 %999, label %block_.L_4a9536, label %block_4a9502

block_4a9502:                                     ; preds = %block_.L_4a94f5
  %1009 = add i64 %981, -7120
  store i64 %1009, i64* %RAX.i487, align 8
  %1010 = add i64 %981, -7144
  %1011 = add i64 %1008, 14
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = mul nsw i64 %1014, 84
  store i64 %1015, i64* %RCX.i1318, align 8
  %1016 = lshr i64 %1015, 63
  %1017 = add i64 %1015, %1009
  store i64 %1017, i64* %RAX.i487, align 8
  %1018 = icmp ult i64 %1017, %1009
  %1019 = icmp ult i64 %1017, %1015
  %1020 = or i1 %1018, %1019
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %27, align 1
  %1022 = trunc i64 %1017 to i32
  %1023 = and i32 %1022, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %28, align 1
  %1028 = xor i64 %1015, %1009
  %1029 = xor i64 %1028, %1017
  %1030 = lshr i64 %1029, 4
  %1031 = trunc i64 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %29, align 1
  %1033 = icmp eq i64 %1017, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %30, align 1
  %1035 = lshr i64 %1017, 63
  %1036 = trunc i64 %1035 to i8
  store i8 %1036, i8* %31, align 1
  %1037 = lshr i64 %1009, 63
  %1038 = xor i64 %1035, %1037
  %1039 = xor i64 %1035, %1016
  %1040 = add nuw nsw i64 %1038, %1039
  %1041 = icmp eq i64 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %32, align 1
  %1043 = add i64 %1008, 28
  store i64 %1043, i64* %3, align 8
  %1044 = load i32, i32* %984, align 4
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RCX.i1318, align 8
  %1046 = add i64 %1017, %1045
  %1047 = add i64 %1008, 32
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i8*
  store i8 124, i8* %1048, align 1
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -7148
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 6
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = add i32 %1054, 1
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RAX.i487, align 8
  %1057 = icmp eq i32 %1054, -1
  %1058 = icmp eq i32 %1055, 0
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %27, align 1
  %1061 = and i32 %1055, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %28, align 1
  %1066 = xor i32 %1055, %1054
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %29, align 1
  %1070 = zext i1 %1058 to i8
  store i8 %1070, i8* %30, align 1
  %1071 = lshr i32 %1055, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %31, align 1
  %1073 = lshr i32 %1054, 31
  %1074 = xor i32 %1071, %1073
  %1075 = add nuw nsw i32 %1074, %1071
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %32, align 1
  %1078 = add i64 %1051, 15
  store i64 %1078, i64* %3, align 8
  store i32 %1055, i32* %1053, align 4
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, -60
  store i64 %1080, i64* %3, align 8
  br label %block_.L_4a94f5

block_.L_4a9536:                                  ; preds = %block_.L_4a94f5
  %1081 = add i64 %981, -7144
  %1082 = add i64 %1008, 11
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = add i32 %1084, 1
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RAX.i487, align 8
  %1087 = icmp eq i32 %1084, -1
  %1088 = icmp eq i32 %1085, 0
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %27, align 1
  %1091 = and i32 %1085, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %28, align 1
  %1096 = xor i32 %1085, %1084
  %1097 = lshr i32 %1096, 4
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %29, align 1
  %1100 = zext i1 %1088 to i8
  store i8 %1100, i8* %30, align 1
  %1101 = lshr i32 %1085, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %31, align 1
  %1103 = lshr i32 %1084, 31
  %1104 = xor i32 %1101, %1103
  %1105 = add nuw nsw i32 %1104, %1101
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %32, align 1
  %1108 = add i64 %1008, 20
  store i64 %1108, i64* %3, align 8
  store i32 %1085, i32* %1083, align 4
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, -120
  store i64 %1110, i64* %3, align 8
  br label %block_.L_4a94d2

block_.L_4a954f:                                  ; preds = %block_.L_4a94d2
  %1111 = add i64 %939, 5
  store i64 %1111, i64* %3, align 8
  br label %block_.L_4a9554

block_.L_4a9554:                                  ; preds = %block_.L_4a954f, %block_.L_4a94b5
  %1112 = phi i64 [ %1111, %block_.L_4a954f ], [ %907, %block_.L_4a94b5 ]
  %1113 = phi i64 [ %912, %block_.L_4a954f ], [ %890, %block_.L_4a94b5 ]
  %1114 = add i64 %1113, -32
  %1115 = add i64 %1112, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i487, align 8
  %1118 = add i64 %1117, 48
  %1119 = add i64 %1112, 7
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = and i32 %1121, 1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RCX.i1318, align 8
  store i8 0, i8* %27, align 1
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1125 = trunc i32 %1124 to i8
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %1127 = icmp eq i32 %1122, 0
  %1128 = trunc i32 %1122 to i8
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v168 = select i1 %1127, i64 161, i64 19
  %1130 = add i64 %1112, %.v168
  store i64 %1130, i64* %3, align 8
  br i1 %1127, label %block_.L_4a95f5, label %block_4a9567

block_4a9567:                                     ; preds = %block_.L_4a9554
  %1131 = add i64 %1113, -7144
  %1132 = add i64 %1130, 10
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  store i32 0, i32* %1133, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_4a9571

block_.L_4a9571:                                  ; preds = %block_.L_4a95d7, %block_4a9567
  %1134 = phi i64 [ %1314, %block_.L_4a95d7 ], [ %.pre102, %block_4a9567 ]
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -7144
  %1137 = add i64 %1134, 6
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i487, align 8
  %1141 = add i64 %1135, -7124
  %1142 = add i64 %1134, 12
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RCX.i1318, align 8
  %1146 = add i64 %1135, -32
  %1147 = add i64 %1134, 16
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %RDX.i1328, align 8
  %1150 = add i64 %1149, 24
  %1151 = add i64 %1134, 19
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = add i32 %1153, %1144
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i1318, align 8
  %1156 = lshr i32 %1154, 31
  %1157 = sub i32 %1139, %1154
  %1158 = icmp ult i32 %1139, %1154
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %27, align 1
  %1160 = and i32 %1157, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %28, align 1
  %1165 = xor i32 %1154, %1139
  %1166 = xor i32 %1165, %1157
  %1167 = lshr i32 %1166, 4
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %29, align 1
  %1170 = icmp eq i32 %1157, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %30, align 1
  %1172 = lshr i32 %1157, 31
  %1173 = trunc i32 %1172 to i8
  store i8 %1173, i8* %31, align 1
  %1174 = lshr i32 %1139, 31
  %1175 = xor i32 %1156, %1174
  %1176 = xor i32 %1172, %1174
  %1177 = add nuw nsw i32 %1176, %1175
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %32, align 1
  %.v169 = select i1 %1170, i64 127, i64 27
  %1180 = add i64 %1134, %.v169
  store i64 %1180, i64* %3, align 8
  br i1 %1170, label %block_.L_4a95f0, label %block_4a958c

block_4a958c:                                     ; preds = %block_.L_4a9571
  %1181 = add i64 %1135, -7148
  %1182 = add i64 %1180, 10
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  store i32 0, i32* %1183, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_4a9596

block_.L_4a9596:                                  ; preds = %block_4a95a3, %block_4a958c
  %1184 = phi i64 [ %1284, %block_4a95a3 ], [ %.pre103, %block_4a958c ]
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -7148
  %1187 = add i64 %1184, 7
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = add i32 %1189, -84
  %1191 = icmp ult i32 %1189, 84
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %27, align 1
  %1193 = and i32 %1190, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %28, align 1
  %1198 = xor i32 %1189, 16
  %1199 = xor i32 %1198, %1190
  %1200 = lshr i32 %1199, 4
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  store i8 %1202, i8* %29, align 1
  %1203 = icmp eq i32 %1190, 0
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %30, align 1
  %1205 = lshr i32 %1190, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %31, align 1
  %1207 = lshr i32 %1189, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1207
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %32, align 1
  %.v154 = select i1 %1203, i64 65, i64 13
  %1212 = add i64 %1184, %.v154
  store i64 %1212, i64* %3, align 8
  br i1 %1203, label %block_.L_4a95d7, label %block_4a95a3

block_4a95a3:                                     ; preds = %block_.L_4a9596
  %1213 = add i64 %1185, -7120
  store i64 %1213, i64* %RAX.i487, align 8
  %1214 = add i64 %1185, -7144
  %1215 = add i64 %1212, 14
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = sext i32 %1217 to i64
  %1219 = mul nsw i64 %1218, 84
  store i64 %1219, i64* %RCX.i1318, align 8
  %1220 = lshr i64 %1219, 63
  %1221 = add i64 %1219, %1213
  store i64 %1221, i64* %RAX.i487, align 8
  %1222 = icmp ult i64 %1221, %1213
  %1223 = icmp ult i64 %1221, %1219
  %1224 = or i1 %1222, %1223
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %27, align 1
  %1226 = trunc i64 %1221 to i32
  %1227 = and i32 %1226, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %28, align 1
  %1232 = xor i64 %1219, %1213
  %1233 = xor i64 %1232, %1221
  %1234 = lshr i64 %1233, 4
  %1235 = trunc i64 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %29, align 1
  %1237 = icmp eq i64 %1221, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %30, align 1
  %1239 = lshr i64 %1221, 63
  %1240 = trunc i64 %1239 to i8
  store i8 %1240, i8* %31, align 1
  %1241 = lshr i64 %1213, 63
  %1242 = xor i64 %1239, %1241
  %1243 = xor i64 %1239, %1220
  %1244 = add nuw nsw i64 %1242, %1243
  %1245 = icmp eq i64 %1244, 2
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %32, align 1
  %1247 = add i64 %1212, 28
  store i64 %1247, i64* %3, align 8
  %1248 = load i32, i32* %1188, align 4
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RCX.i1318, align 8
  %1250 = add i64 %1221, %1249
  %1251 = add i64 %1212, 32
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i8*
  store i8 45, i8* %1252, align 1
  %1253 = load i64, i64* %RBP.i, align 8
  %1254 = add i64 %1253, -7148
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 6
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1254 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = add i32 %1258, 1
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i487, align 8
  %1261 = icmp eq i32 %1258, -1
  %1262 = icmp eq i32 %1259, 0
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %27, align 1
  %1265 = and i32 %1259, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %28, align 1
  %1270 = xor i32 %1259, %1258
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %29, align 1
  %1274 = zext i1 %1262 to i8
  store i8 %1274, i8* %30, align 1
  %1275 = lshr i32 %1259, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %31, align 1
  %1277 = lshr i32 %1258, 31
  %1278 = xor i32 %1275, %1277
  %1279 = add nuw nsw i32 %1278, %1275
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %32, align 1
  %1282 = add i64 %1255, 15
  store i64 %1282, i64* %3, align 8
  store i32 %1259, i32* %1257, align 4
  %1283 = load i64, i64* %3, align 8
  %1284 = add i64 %1283, -60
  store i64 %1284, i64* %3, align 8
  br label %block_.L_4a9596

block_.L_4a95d7:                                  ; preds = %block_.L_4a9596
  %1285 = add i64 %1185, -7144
  %1286 = add i64 %1212, 11
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = add i32 %1288, 1
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RAX.i487, align 8
  %1291 = icmp eq i32 %1288, -1
  %1292 = icmp eq i32 %1289, 0
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %27, align 1
  %1295 = and i32 %1289, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %28, align 1
  %1300 = xor i32 %1289, %1288
  %1301 = lshr i32 %1300, 4
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %29, align 1
  %1304 = zext i1 %1292 to i8
  store i8 %1304, i8* %30, align 1
  %1305 = lshr i32 %1289, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %31, align 1
  %1307 = lshr i32 %1288, 31
  %1308 = xor i32 %1305, %1307
  %1309 = add nuw nsw i32 %1308, %1305
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %32, align 1
  %1312 = add i64 %1212, 20
  store i64 %1312, i64* %3, align 8
  store i32 %1289, i32* %1287, align 4
  %1313 = load i64, i64* %3, align 8
  %1314 = add i64 %1313, -122
  store i64 %1314, i64* %3, align 8
  br label %block_.L_4a9571

block_.L_4a95f0:                                  ; preds = %block_.L_4a9571
  %1315 = add i64 %1180, 5
  store i64 %1315, i64* %3, align 8
  br label %block_.L_4a95f5

block_.L_4a95f5:                                  ; preds = %block_.L_4a95f0, %block_.L_4a9554
  %1316 = phi i64 [ %1315, %block_.L_4a95f0 ], [ %1130, %block_.L_4a9554 ]
  %1317 = phi i64 [ %1135, %block_.L_4a95f0 ], [ %1113, %block_.L_4a9554 ]
  %1318 = add i64 %1317, -32
  %1319 = add i64 %1316, 4
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %RAX.i487, align 8
  %1322 = add i64 %1321, 48
  %1323 = add i64 %1316, 7
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = and i32 %1325, 8
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i1318, align 8
  store i8 0, i8* %27, align 1
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1329 = trunc i32 %1328 to i8
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %1331 = icmp eq i32 %1326, 0
  %.lobit155 = lshr exact i32 %1326, 3
  %1332 = trunc i32 %.lobit155 to i8
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v170 = select i1 %1331, i64 351, i64 19
  %1334 = add i64 %1316, %.v170
  store i64 %1334, i64* %3, align 8
  br i1 %1331, label %block_.L_4a9754, label %block_4a9608

block_4a9608:                                     ; preds = %block_.L_4a95f5
  %1335 = add i64 %1317, -7144
  %1336 = add i64 %1334, 10
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  store i32 0, i32* %1337, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_4a9612

block_.L_4a9612:                                  ; preds = %block_.L_4a9689, %block_4a9608
  %1338 = phi i64 [ %1538, %block_.L_4a9689 ], [ %.pre105, %block_4a9608 ]
  %1339 = load i64, i64* %RBP.i, align 8
  %1340 = add i64 %1339, -7144
  %1341 = add i64 %1338, 6
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i487, align 8
  %1345 = add i64 %1339, -7124
  %1346 = add i64 %1338, 12
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i1318, align 8
  %1350 = add i64 %1339, -32
  %1351 = add i64 %1338, 16
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RDX.i1328, align 8
  %1354 = add i64 %1353, 32
  %1355 = add i64 %1338, 19
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = add i32 %1357, %1348
  %1359 = add i32 %1358, 1
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RCX.i1318, align 8
  %1361 = lshr i32 %1359, 31
  %1362 = sub i32 %1343, %1359
  %1363 = icmp ult i32 %1343, %1359
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %27, align 1
  %1365 = and i32 %1362, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %28, align 1
  %1370 = xor i32 %1359, %1343
  %1371 = xor i32 %1370, %1362
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %29, align 1
  %1375 = icmp eq i32 %1362, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %30, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %31, align 1
  %1379 = lshr i32 %1343, 31
  %1380 = xor i32 %1361, %1379
  %1381 = xor i32 %1377, %1379
  %1382 = add nuw nsw i32 %1381, %1380
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %32, align 1
  %.v171 = select i1 %1375, i64 144, i64 30
  %1385 = add i64 %1338, %.v171
  store i64 %1385, i64* %3, align 8
  %1386 = load i64, i64* %RBP.i, align 8
  br i1 %1375, label %block_.L_4a96a2, label %block_4a9630

block_4a9630:                                     ; preds = %block_.L_4a9612
  %1387 = add i64 %1386, -7148
  %1388 = add i64 %1385, 10
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  store i32 0, i32* %1389, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_4a963a

block_.L_4a963a:                                  ; preds = %block_4a9655, %block_4a9630
  %1390 = phi i64 [ %1508, %block_4a9655 ], [ %.pre106, %block_4a9630 ]
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -7148
  %1393 = add i64 %1390, 6
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RAX.i487, align 8
  %1397 = add i64 %1391, -7128
  %1398 = add i64 %1390, 12
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RCX.i1318, align 8
  %1402 = add i64 %1391, -32
  %1403 = add i64 %1390, 16
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %RDX.i1328, align 8
  %1406 = add i64 %1405, 28
  %1407 = add i64 %1390, 19
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, %1400
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i1318, align 8
  %1412 = lshr i32 %1410, 31
  %1413 = sub i32 %1395, %1410
  %1414 = icmp ult i32 %1395, %1410
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %27, align 1
  %1416 = and i32 %1413, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %28, align 1
  %1421 = xor i32 %1410, %1395
  %1422 = xor i32 %1421, %1413
  %1423 = lshr i32 %1422, 4
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  store i8 %1425, i8* %29, align 1
  %1426 = icmp eq i32 %1413, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %30, align 1
  %1428 = lshr i32 %1413, 31
  %1429 = trunc i32 %1428 to i8
  store i8 %1429, i8* %31, align 1
  %1430 = lshr i32 %1395, 31
  %1431 = xor i32 %1412, %1430
  %1432 = xor i32 %1428, %1430
  %1433 = add nuw nsw i32 %1432, %1431
  %1434 = icmp eq i32 %1433, 2
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %32, align 1
  %.v156 = select i1 %1426, i64 79, i64 27
  %1436 = add i64 %1390, %.v156
  store i64 %1436, i64* %3, align 8
  br i1 %1426, label %block_.L_4a9689, label %block_4a9655

block_4a9655:                                     ; preds = %block_.L_4a963a
  %1437 = add i64 %1391, -7120
  store i64 %1437, i64* %RAX.i487, align 8
  %1438 = add i64 %1391, -7144
  %1439 = add i64 %1436, 14
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = sext i32 %1441 to i64
  %1443 = mul nsw i64 %1442, 84
  store i64 %1443, i64* %RCX.i1318, align 8
  %1444 = lshr i64 %1443, 63
  %1445 = add i64 %1443, %1437
  store i64 %1445, i64* %RAX.i487, align 8
  %1446 = icmp ult i64 %1445, %1437
  %1447 = icmp ult i64 %1445, %1443
  %1448 = or i1 %1446, %1447
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %27, align 1
  %1450 = trunc i64 %1445 to i32
  %1451 = and i32 %1450, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %28, align 1
  %1456 = xor i64 %1443, %1437
  %1457 = xor i64 %1456, %1445
  %1458 = lshr i64 %1457, 4
  %1459 = trunc i64 %1458 to i8
  %1460 = and i8 %1459, 1
  store i8 %1460, i8* %29, align 1
  %1461 = icmp eq i64 %1445, 0
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %30, align 1
  %1463 = lshr i64 %1445, 63
  %1464 = trunc i64 %1463 to i8
  store i8 %1464, i8* %31, align 1
  %1465 = lshr i64 %1437, 63
  %1466 = xor i64 %1463, %1465
  %1467 = xor i64 %1463, %1444
  %1468 = add nuw nsw i64 %1466, %1467
  %1469 = icmp eq i64 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %32, align 1
  %1471 = add i64 %1436, 28
  store i64 %1471, i64* %3, align 8
  %1472 = load i32, i32* %1394, align 4
  %1473 = sext i32 %1472 to i64
  store i64 %1473, i64* %RCX.i1318, align 8
  %1474 = add i64 %1445, %1473
  %1475 = add i64 %1436, 32
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i8*
  store i8 124, i8* %1476, align 1
  %1477 = load i64, i64* %RBP.i, align 8
  %1478 = add i64 %1477, -7148
  %1479 = load i64, i64* %3, align 8
  %1480 = add i64 %1479, 6
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1478 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, 1
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RAX.i487, align 8
  %1485 = icmp eq i32 %1482, -1
  %1486 = icmp eq i32 %1483, 0
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %27, align 1
  %1489 = and i32 %1483, 255
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %28, align 1
  %1494 = xor i32 %1483, %1482
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %29, align 1
  %1498 = zext i1 %1486 to i8
  store i8 %1498, i8* %30, align 1
  %1499 = lshr i32 %1483, 31
  %1500 = trunc i32 %1499 to i8
  store i8 %1500, i8* %31, align 1
  %1501 = lshr i32 %1482, 31
  %1502 = xor i32 %1499, %1501
  %1503 = add nuw nsw i32 %1502, %1499
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %32, align 1
  %1506 = add i64 %1479, 15
  store i64 %1506, i64* %3, align 8
  store i32 %1483, i32* %1481, align 4
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, -74
  store i64 %1508, i64* %3, align 8
  br label %block_.L_4a963a

block_.L_4a9689:                                  ; preds = %block_.L_4a963a
  %1509 = add i64 %1391, -7144
  %1510 = add i64 %1436, 11
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = add i32 %1512, 1
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i487, align 8
  %1515 = icmp eq i32 %1512, -1
  %1516 = icmp eq i32 %1513, 0
  %1517 = or i1 %1515, %1516
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %27, align 1
  %1519 = and i32 %1513, 255
  %1520 = tail call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %28, align 1
  %1524 = xor i32 %1513, %1512
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %29, align 1
  %1528 = zext i1 %1516 to i8
  store i8 %1528, i8* %30, align 1
  %1529 = lshr i32 %1513, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %31, align 1
  %1531 = lshr i32 %1512, 31
  %1532 = xor i32 %1529, %1531
  %1533 = add nuw nsw i32 %1532, %1529
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %32, align 1
  %1536 = add i64 %1436, 20
  store i64 %1536, i64* %3, align 8
  store i32 %1513, i32* %1511, align 4
  %1537 = load i64, i64* %3, align 8
  %1538 = add i64 %1537, -139
  store i64 %1538, i64* %3, align 8
  br label %block_.L_4a9612

block_.L_4a96a2:                                  ; preds = %block_.L_4a9612
  %1539 = add i64 %1386, -32
  %1540 = add i64 %1385, 4
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RAX.i487, align 8
  %1543 = add i64 %1542, 48
  %1544 = add i64 %1385, 7
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = and i32 %1546, 2
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RCX.i1318, align 8
  store i8 0, i8* %27, align 1
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1547)
  %1550 = trunc i32 %1549 to i8
  %1551 = xor i8 %1550, 1
  store i8 %1551, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %.lobit157 = lshr exact i32 %1547, 1
  %1552 = trunc i32 %.lobit157 to i8
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %1554 = icmp eq i8 %1553, 0
  %.v172 = select i1 %1554, i64 173, i64 19
  %1555 = add i64 %1385, %.v172
  store i64 %1555, i64* %3, align 8
  br i1 %1554, label %block_.L_4a974f, label %block_4a96b5

block_4a96b5:                                     ; preds = %block_.L_4a96a2
  %1556 = add i64 %1386, -7124
  %1557 = add i64 %1555, 6
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = zext i32 %1559 to i64
  store i64 %1560, i64* %RAX.i487, align 8
  %1561 = add i64 %1555, 10
  store i64 %1561, i64* %3, align 8
  %1562 = load i64, i64* %1541, align 8
  store i64 %1562, i64* %RCX.i1318, align 8
  %1563 = add i64 %1562, 32
  %1564 = add i64 %1555, 13
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, %1559
  %1568 = lshr i32 %1567, 31
  %1569 = add i32 %1567, 1
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX.i487, align 8
  %1571 = icmp eq i32 %1567, -1
  %1572 = icmp eq i32 %1569, 0
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %27, align 1
  %1575 = and i32 %1569, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %28, align 1
  %1580 = xor i32 %1569, %1567
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %29, align 1
  %1584 = zext i1 %1572 to i8
  store i8 %1584, i8* %30, align 1
  %1585 = lshr i32 %1569, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %31, align 1
  %1587 = xor i32 %1585, %1568
  %1588 = add nuw nsw i32 %1587, %1585
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %32, align 1
  %1591 = add i64 %1386, -7144
  %1592 = add i64 %1555, 22
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  store i32 %1569, i32* %1593, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_4a96cb

block_.L_4a96cb:                                  ; preds = %block_.L_4a9731, %block_4a96b5
  %1594 = phi i64 [ %1774, %block_.L_4a9731 ], [ %.pre107, %block_4a96b5 ]
  %1595 = load i64, i64* %RBP.i, align 8
  %1596 = add i64 %1595, -7144
  %1597 = add i64 %1594, 7
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = add i32 %1599, -63
  %1601 = icmp ult i32 %1599, 63
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %27, align 1
  %1603 = and i32 %1600, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %28, align 1
  %1608 = xor i32 %1599, 16
  %1609 = xor i32 %1608, %1600
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %29, align 1
  %1613 = icmp eq i32 %1600, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %30, align 1
  %1615 = lshr i32 %1600, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %31, align 1
  %1617 = lshr i32 %1599, 31
  %1618 = xor i32 %1615, %1617
  %1619 = add nuw nsw i32 %1618, %1617
  %1620 = icmp eq i32 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %32, align 1
  %.v173 = select i1 %1613, i64 127, i64 13
  %1622 = add i64 %1594, %.v173
  store i64 %1622, i64* %3, align 8
  br i1 %1613, label %block_.L_4a974a, label %block_4a96d8

block_4a96d8:                                     ; preds = %block_.L_4a96cb
  %1623 = add i64 %1595, -7148
  %1624 = add i64 %1622, 10
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  store i32 0, i32* %1625, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_4a96e2

block_.L_4a96e2:                                  ; preds = %block_4a96fd, %block_4a96d8
  %1626 = phi i64 [ %1744, %block_4a96fd ], [ %.pre108, %block_4a96d8 ]
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -7148
  %1629 = add i64 %1626, 6
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  %1632 = zext i32 %1631 to i64
  store i64 %1632, i64* %RAX.i487, align 8
  %1633 = add i64 %1627, -7128
  %1634 = add i64 %1626, 12
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i32*
  %1636 = load i32, i32* %1635, align 4
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RCX.i1318, align 8
  %1638 = add i64 %1627, -32
  %1639 = add i64 %1626, 16
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RDX.i1328, align 8
  %1642 = add i64 %1641, 28
  %1643 = add i64 %1626, 19
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, %1636
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RCX.i1318, align 8
  %1648 = lshr i32 %1646, 31
  %1649 = sub i32 %1631, %1646
  %1650 = icmp ult i32 %1631, %1646
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %27, align 1
  %1652 = and i32 %1649, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %28, align 1
  %1657 = xor i32 %1646, %1631
  %1658 = xor i32 %1657, %1649
  %1659 = lshr i32 %1658, 4
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  store i8 %1661, i8* %29, align 1
  %1662 = icmp eq i32 %1649, 0
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %30, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %31, align 1
  %1666 = lshr i32 %1631, 31
  %1667 = xor i32 %1648, %1666
  %1668 = xor i32 %1664, %1666
  %1669 = add nuw nsw i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %32, align 1
  %.v158 = select i1 %1662, i64 79, i64 27
  %1672 = add i64 %1626, %.v158
  store i64 %1672, i64* %3, align 8
  br i1 %1662, label %block_.L_4a9731, label %block_4a96fd

block_4a96fd:                                     ; preds = %block_.L_4a96e2
  %1673 = add i64 %1627, -7120
  store i64 %1673, i64* %RAX.i487, align 8
  %1674 = add i64 %1627, -7144
  %1675 = add i64 %1672, 14
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = mul nsw i64 %1678, 84
  store i64 %1679, i64* %RCX.i1318, align 8
  %1680 = lshr i64 %1679, 63
  %1681 = add i64 %1679, %1673
  store i64 %1681, i64* %RAX.i487, align 8
  %1682 = icmp ult i64 %1681, %1673
  %1683 = icmp ult i64 %1681, %1679
  %1684 = or i1 %1682, %1683
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %27, align 1
  %1686 = trunc i64 %1681 to i32
  %1687 = and i32 %1686, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %28, align 1
  %1692 = xor i64 %1679, %1673
  %1693 = xor i64 %1692, %1681
  %1694 = lshr i64 %1693, 4
  %1695 = trunc i64 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %29, align 1
  %1697 = icmp eq i64 %1681, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %30, align 1
  %1699 = lshr i64 %1681, 63
  %1700 = trunc i64 %1699 to i8
  store i8 %1700, i8* %31, align 1
  %1701 = lshr i64 %1673, 63
  %1702 = xor i64 %1699, %1701
  %1703 = xor i64 %1699, %1680
  %1704 = add nuw nsw i64 %1702, %1703
  %1705 = icmp eq i64 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %32, align 1
  %1707 = add i64 %1672, 28
  store i64 %1707, i64* %3, align 8
  %1708 = load i32, i32* %1630, align 4
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i1318, align 8
  %1710 = add i64 %1681, %1709
  %1711 = add i64 %1672, 32
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i8*
  store i8 124, i8* %1712, align 1
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -7148
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 6
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1714 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = add i32 %1718, 1
  %1720 = zext i32 %1719 to i64
  store i64 %1720, i64* %RAX.i487, align 8
  %1721 = icmp eq i32 %1718, -1
  %1722 = icmp eq i32 %1719, 0
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %27, align 1
  %1725 = and i32 %1719, 255
  %1726 = tail call i32 @llvm.ctpop.i32(i32 %1725)
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = xor i8 %1728, 1
  store i8 %1729, i8* %28, align 1
  %1730 = xor i32 %1719, %1718
  %1731 = lshr i32 %1730, 4
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %29, align 1
  %1734 = zext i1 %1722 to i8
  store i8 %1734, i8* %30, align 1
  %1735 = lshr i32 %1719, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %31, align 1
  %1737 = lshr i32 %1718, 31
  %1738 = xor i32 %1735, %1737
  %1739 = add nuw nsw i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %32, align 1
  %1742 = add i64 %1715, 15
  store i64 %1742, i64* %3, align 8
  store i32 %1719, i32* %1717, align 4
  %1743 = load i64, i64* %3, align 8
  %1744 = add i64 %1743, -74
  store i64 %1744, i64* %3, align 8
  br label %block_.L_4a96e2

block_.L_4a9731:                                  ; preds = %block_.L_4a96e2
  %1745 = add i64 %1627, -7144
  %1746 = add i64 %1672, 11
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = add i32 %1748, 1
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RAX.i487, align 8
  %1751 = icmp eq i32 %1748, -1
  %1752 = icmp eq i32 %1749, 0
  %1753 = or i1 %1751, %1752
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %27, align 1
  %1755 = and i32 %1749, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %28, align 1
  %1760 = xor i32 %1749, %1748
  %1761 = lshr i32 %1760, 4
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  store i8 %1763, i8* %29, align 1
  %1764 = zext i1 %1752 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1749, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %31, align 1
  %1767 = lshr i32 %1748, 31
  %1768 = xor i32 %1765, %1767
  %1769 = add nuw nsw i32 %1768, %1765
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %32, align 1
  %1772 = add i64 %1672, 20
  store i64 %1772, i64* %3, align 8
  store i32 %1749, i32* %1747, align 4
  %1773 = load i64, i64* %3, align 8
  %1774 = add i64 %1773, -122
  store i64 %1774, i64* %3, align 8
  br label %block_.L_4a96cb

block_.L_4a974a:                                  ; preds = %block_.L_4a96cb
  %1775 = add i64 %1622, 5
  store i64 %1775, i64* %3, align 8
  br label %block_.L_4a974f

block_.L_4a974f:                                  ; preds = %block_.L_4a974a, %block_.L_4a96a2
  %1776 = phi i64 [ %1595, %block_.L_4a974a ], [ %1386, %block_.L_4a96a2 ]
  %1777 = phi i64 [ %1775, %block_.L_4a974a ], [ %1555, %block_.L_4a96a2 ]
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %3, align 8
  br label %block_.L_4a9754

block_.L_4a9754:                                  ; preds = %block_.L_4a974f, %block_.L_4a95f5
  %1779 = phi i64 [ %1776, %block_.L_4a974f ], [ %1317, %block_.L_4a95f5 ]
  %1780 = phi i64 [ %1778, %block_.L_4a974f ], [ %1334, %block_.L_4a95f5 ]
  %1781 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %1782 = add i32 %1781, -4
  %1783 = icmp ult i32 %1781, 4
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %27, align 1
  %1785 = and i32 %1782, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %28, align 1
  %1790 = xor i32 %1782, %1781
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %29, align 1
  %1794 = icmp eq i32 %1782, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %30, align 1
  %1796 = lshr i32 %1782, 31
  %1797 = trunc i32 %1796 to i8
  store i8 %1797, i8* %31, align 1
  %1798 = lshr i32 %1781, 31
  %1799 = xor i32 %1796, %1798
  %1800 = add nuw nsw i32 %1799, %1798
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %32, align 1
  %1803 = icmp ne i8 %1797, 0
  %1804 = xor i1 %1803, %1801
  %1805 = or i1 %1794, %1804
  %.v174 = select i1 %1805, i64 302, i64 14
  %1806 = add i64 %1780, %.v174
  store i64 %1806, i64* %3, align 8
  br i1 %1805, label %block_.L_4a9882, label %block_4a9762

block_4a9762:                                     ; preds = %block_.L_4a9754
  %1807 = add i64 %1779, -7144
  %1808 = add i64 %1806, 10
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1807 to i32*
  store i32 20, i32* %1809, align 4
  %AL.i671 = bitcast %union.anon* %33 to i8*
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_4a976c

block_.L_4a976c:                                  ; preds = %block_.L_4a9830, %block_4a9762
  %1810 = phi i64 [ %.pre109, %block_4a9762 ], [ %2081, %block_.L_4a9830 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.0, %block_4a9762 ], [ %2043, %block_.L_4a9830 ]
  %1811 = load i64, i64* %RBP.i, align 8
  %1812 = add i64 %1811, -7144
  %1813 = add i64 %1810, 7
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = add i32 %1815, -64
  %1817 = icmp ult i32 %1815, 64
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %27, align 1
  %1819 = and i32 %1816, 255
  %1820 = tail call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  store i8 %1823, i8* %28, align 1
  %1824 = xor i32 %1816, %1815
  %1825 = lshr i32 %1824, 4
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  store i8 %1827, i8* %29, align 1
  %1828 = icmp eq i32 %1816, 0
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %30, align 1
  %1830 = lshr i32 %1816, 31
  %1831 = trunc i32 %1830 to i8
  store i8 %1831, i8* %31, align 1
  %1832 = lshr i32 %1815, 31
  %1833 = xor i32 %1830, %1832
  %1834 = add nuw nsw i32 %1833, %1832
  %1835 = icmp eq i32 %1834, 2
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %32, align 1
  %.v175 = select i1 %1828, i64 247, i64 13
  %1837 = add i64 %1810, %.v175
  store i64 %1837, i64* %3, align 8
  br i1 %1828, label %block_.L_4a9863, label %block_4a9779

block_4a9779:                                     ; preds = %block_.L_4a976c
  %1838 = add i64 %1811, -7148
  %1839 = add i64 %1837, 10
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  store i32 20, i32* %1840, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_4a9783

block_.L_4a9783:                                  ; preds = %block_.L_4a9817, %block_4a9779
  %1841 = phi i64 [ %.pre110, %block_4a9779 ], [ %2036, %block_.L_4a9817 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_4a9779 ], [ %MEMORY.23, %block_.L_4a9817 ]
  %1842 = load i64, i64* %RBP.i, align 8
  %1843 = add i64 %1842, -7148
  %1844 = add i64 %1841, 7
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = add i32 %1846, -64
  %1848 = icmp ult i32 %1846, 64
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %27, align 1
  %1850 = and i32 %1847, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %28, align 1
  %1855 = xor i32 %1847, %1846
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %29, align 1
  %1859 = icmp eq i32 %1847, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %30, align 1
  %1861 = lshr i32 %1847, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %31, align 1
  %1863 = lshr i32 %1846, 31
  %1864 = xor i32 %1861, %1863
  %1865 = add nuw nsw i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %32, align 1
  %.v176 = select i1 %1859, i64 173, i64 13
  %1868 = add i64 %1841, %.v176
  store i64 %1868, i64* %3, align 8
  br i1 %1859, label %block_.L_4a9830, label %block_4a9790

block_4a9790:                                     ; preds = %block_.L_4a9783
  %1869 = add i64 %1842, -7144
  %1870 = add i64 %1868, 6
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RAX.i487, align 8
  %1874 = add i64 %1842, -7124
  %1875 = add i64 %1868, 12
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  %1877 = load i32, i32* %1876, align 4
  %1878 = sub i32 %1872, %1877
  %1879 = icmp ult i32 %1872, %1877
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %27, align 1
  %1881 = and i32 %1878, 255
  %1882 = tail call i32 @llvm.ctpop.i32(i32 %1881)
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  store i8 %1885, i8* %28, align 1
  %1886 = xor i32 %1877, %1872
  %1887 = xor i32 %1886, %1878
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %29, align 1
  %1891 = icmp eq i32 %1878, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %30, align 1
  %1893 = lshr i32 %1878, 31
  %1894 = trunc i32 %1893 to i8
  store i8 %1894, i8* %31, align 1
  %1895 = lshr i32 %1872, 31
  %1896 = lshr i32 %1877, 31
  %1897 = xor i32 %1896, %1895
  %1898 = xor i32 %1893, %1895
  %1899 = add nuw nsw i32 %1898, %1897
  %1900 = icmp eq i32 %1899, 2
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %32, align 1
  %.v177 = select i1 %1891, i64 18, i64 72
  %1902 = add i64 %1868, %.v177
  store i64 %1902, i64* %3, align 8
  br i1 %1891, label %block_4a97a2, label %block_.L_4a97d8

block_4a97a2:                                     ; preds = %block_4a9790
  %1903 = add i64 %1902, 6
  store i64 %1903, i64* %3, align 8
  %1904 = load i32, i32* %1845, align 4
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i487, align 8
  %1906 = add i64 %1842, -7128
  %1907 = add i64 %1902, 12
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = sub i32 %1904, %1909
  %1911 = icmp ult i32 %1904, %1909
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %27, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %28, align 1
  %1918 = xor i32 %1909, %1904
  %1919 = xor i32 %1918, %1910
  %1920 = lshr i32 %1919, 4
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  store i8 %1922, i8* %29, align 1
  %1923 = icmp eq i32 %1910, 0
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %30, align 1
  %1925 = lshr i32 %1910, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %31, align 1
  %1927 = lshr i32 %1904, 31
  %1928 = lshr i32 %1909, 31
  %1929 = xor i32 %1928, %1927
  %1930 = xor i32 %1925, %1927
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %32, align 1
  %.v178 = select i1 %1923, i64 18, i64 54
  %1934 = add i64 %1902, %.v178
  store i64 %1934, i64* %3, align 8
  br i1 %1923, label %block_4a97b4, label %block_.L_4a97d8

block_4a97b4:                                     ; preds = %block_4a97a2
  store i64 ptrtoint (%G__0x588897_type* @G__0x588897 to i64), i64* %RSI.i1331, align 8
  %1935 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1935, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i671, align 1
  %1936 = add i64 %1934, -689892
  %1937 = add i64 %1934, 25
  %1938 = load i64, i64* %6, align 8
  %1939 = add i64 %1938, -8
  %1940 = inttoptr i64 %1939 to i64*
  store i64 %1937, i64* %1940, align 8
  store i64 %1939, i64* %6, align 8
  store i64 %1936, i64* %3, align 8
  %1941 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %1942 = load i64, i64* %RBP.i, align 8
  %1943 = add i64 %1942, -7184
  %1944 = load i32, i32* %EAX.i1293, align 4
  %1945 = load i64, i64* %3, align 8
  %1946 = add i64 %1945, 6
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1943 to i32*
  store i32 %1944, i32* %1947, align 4
  %1948 = load i64, i64* %3, align 8
  %1949 = add i64 %1948, 68
  store i64 %1949, i64* %3, align 8
  br label %block_.L_4a9817

block_.L_4a97d8:                                  ; preds = %block_4a97a2, %block_4a9790
  %1950 = phi i64 [ %1934, %block_4a97a2 ], [ %1902, %block_4a9790 ]
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RSI.i1331, align 8
  %1951 = add i64 %1842, -7120
  store i64 %1951, i64* %RAX.i487, align 8
  %1952 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1952, i64* %RDI.i1284, align 8
  %1953 = add i64 %1950, 32
  store i64 %1953, i64* %3, align 8
  %1954 = load i32, i32* %1871, align 4
  %1955 = sext i32 %1954 to i64
  %1956 = mul nsw i64 %1955, 84
  store i64 %1956, i64* %RCX.i1318, align 8
  %1957 = lshr i64 %1956, 63
  %1958 = add i64 %1956, %1951
  store i64 %1958, i64* %RAX.i487, align 8
  %1959 = icmp ult i64 %1958, %1951
  %1960 = icmp ult i64 %1958, %1956
  %1961 = or i1 %1959, %1960
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %27, align 1
  %1963 = trunc i64 %1958 to i32
  %1964 = and i32 %1963, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %28, align 1
  %1969 = xor i64 %1956, %1951
  %1970 = xor i64 %1969, %1958
  %1971 = lshr i64 %1970, 4
  %1972 = trunc i64 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %29, align 1
  %1974 = icmp eq i64 %1958, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %30, align 1
  %1976 = lshr i64 %1958, 63
  %1977 = trunc i64 %1976 to i8
  store i8 %1977, i8* %31, align 1
  %1978 = lshr i64 %1951, 63
  %1979 = xor i64 %1976, %1978
  %1980 = xor i64 %1976, %1957
  %1981 = add nuw nsw i64 %1979, %1980
  %1982 = icmp eq i64 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %32, align 1
  %1984 = add i64 %1950, 46
  store i64 %1984, i64* %3, align 8
  %1985 = load i32, i32* %1845, align 4
  %1986 = sext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i1318, align 8
  %1987 = add i64 %1958, %1986
  %1988 = add i64 %1950, 50
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i8*
  %1990 = load i8, i8* %1989, align 1
  %1991 = sext i8 %1990 to i64
  %1992 = and i64 %1991, 4294967295
  store i64 %1992, i64* %RDX.i1328, align 8
  store i8 0, i8* %AL.i671, align 1
  %1993 = add i64 %1950, -689928
  %1994 = add i64 %1950, 57
  %1995 = load i64, i64* %6, align 8
  %1996 = add i64 %1995, -8
  %1997 = inttoptr i64 %1996 to i64*
  store i64 %1994, i64* %1997, align 8
  store i64 %1996, i64* %6, align 8
  store i64 %1993, i64* %3, align 8
  %1998 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -7188
  %2001 = load i32, i32* %EAX.i1293, align 4
  %2002 = load i64, i64* %3, align 8
  %2003 = add i64 %2002, 6
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2000 to i32*
  store i32 %2001, i32* %2004, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_4a9817

block_.L_4a9817:                                  ; preds = %block_.L_4a97d8, %block_4a97b4
  %2005 = phi i64 [ %.pre111, %block_.L_4a97d8 ], [ %1949, %block_4a97b4 ]
  %MEMORY.23 = phi %struct.Memory* [ %1998, %block_.L_4a97d8 ], [ %1941, %block_4a97b4 ]
  %2006 = load i64, i64* %RBP.i, align 8
  %2007 = add i64 %2006, -7148
  %2008 = add i64 %2005, 11
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = add i32 %2010, 1
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i487, align 8
  %2013 = icmp eq i32 %2010, -1
  %2014 = icmp eq i32 %2011, 0
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %27, align 1
  %2017 = and i32 %2011, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %28, align 1
  %2022 = xor i32 %2011, %2010
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %29, align 1
  %2026 = zext i1 %2014 to i8
  store i8 %2026, i8* %30, align 1
  %2027 = lshr i32 %2011, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %31, align 1
  %2029 = lshr i32 %2010, 31
  %2030 = xor i32 %2027, %2029
  %2031 = add nuw nsw i32 %2030, %2027
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %32, align 1
  %2034 = add i64 %2005, 20
  store i64 %2034, i64* %3, align 8
  store i32 %2011, i32* %2009, align 4
  %2035 = load i64, i64* %3, align 8
  %2036 = add i64 %2035, -168
  store i64 %2036, i64* %3, align 8
  br label %block_.L_4a9783

block_.L_4a9830:                                  ; preds = %block_.L_4a9783
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i1331, align 8
  %2037 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2037, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i671, align 1
  %2038 = add i64 %1868, -690016
  %2039 = add i64 %1868, 25
  %2040 = load i64, i64* %6, align 8
  %2041 = add i64 %2040, -8
  %2042 = inttoptr i64 %2041 to i64*
  store i64 %2039, i64* %2042, align 8
  store i64 %2041, i64* %6, align 8
  store i64 %2038, i64* %3, align 8
  %2043 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %2044 = load i64, i64* %RBP.i, align 8
  %2045 = add i64 %2044, -7192
  %2046 = load i32, i32* %EAX.i1293, align 4
  %2047 = load i64, i64* %3, align 8
  %2048 = add i64 %2047, 6
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2045 to i32*
  store i32 %2046, i32* %2049, align 4
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -7144
  %2052 = load i64, i64* %3, align 8
  %2053 = add i64 %2052, 6
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = add i32 %2055, 1
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RAX.i487, align 8
  %2058 = icmp eq i32 %2055, -1
  %2059 = icmp eq i32 %2056, 0
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %27, align 1
  %2062 = and i32 %2056, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %28, align 1
  %2067 = xor i32 %2056, %2055
  %2068 = lshr i32 %2067, 4
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  store i8 %2070, i8* %29, align 1
  %2071 = zext i1 %2059 to i8
  store i8 %2071, i8* %30, align 1
  %2072 = lshr i32 %2056, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %31, align 1
  %2074 = lshr i32 %2055, 31
  %2075 = xor i32 %2072, %2074
  %2076 = add nuw nsw i32 %2075, %2072
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %32, align 1
  %2079 = add i64 %2052, 15
  store i64 %2079, i64* %3, align 8
  store i32 %2056, i32* %2054, align 4
  %2080 = load i64, i64* %3, align 8
  %2081 = add i64 %2080, -242
  store i64 %2081, i64* %3, align 8
  br label %block_.L_4a976c

block_.L_4a9863:                                  ; preds = %block_.L_4a976c
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i1331, align 8
  %2082 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2082, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i671, align 1
  %2083 = add i64 %1837, -690067
  %2084 = add i64 %1837, 25
  %2085 = load i64, i64* %6, align 8
  %2086 = add i64 %2085, -8
  %2087 = inttoptr i64 %2086 to i64*
  store i64 %2084, i64* %2087, align 8
  store i64 %2086, i64* %6, align 8
  store i64 %2083, i64* %3, align 8
  %2088 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.20)
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -7196
  %2091 = load i32, i32* %EAX.i1293, align 4
  %2092 = load i64, i64* %3, align 8
  %2093 = add i64 %2092, 6
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2090 to i32*
  store i32 %2091, i32* %2094, align 4
  %.pre112 = load i64, i64* %RBP.i, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_4a9882

block_.L_4a9882:                                  ; preds = %block_.L_4a9863, %block_.L_4a9754
  %2095 = phi i64 [ %1806, %block_.L_4a9754 ], [ %.pre113, %block_.L_4a9863 ]
  %2096 = phi i64 [ %1779, %block_.L_4a9754 ], [ %.pre112, %block_.L_4a9863 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4a9754 ], [ %2088, %block_.L_4a9863 ]
  %2097 = add i64 %2096, -7152
  %2098 = add i64 %2095, 10
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  store i32 0, i32* %2099, align 4
  %SIL.i591 = bitcast %union.anon* %43 to i8*
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_4a988c

block_.L_4a988c:                                  ; preds = %block_4a989f, %block_.L_4a9882
  %2100 = phi i64 [ %2443, %block_4a989f ], [ %.pre114, %block_.L_4a9882 ]
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -7152
  %2103 = add i64 %2100, 6
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i487, align 8
  %2107 = add i64 %2101, -32
  %2108 = add i64 %2100, 10
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %RCX.i1318, align 8
  %2111 = add i64 %2110, 8
  %2112 = add i64 %2100, 13
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = sub i32 %2105, %2114
  %2116 = icmp ult i32 %2105, %2114
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %27, align 1
  %2118 = and i32 %2115, 255
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %28, align 1
  %2123 = xor i32 %2114, %2105
  %2124 = xor i32 %2123, %2115
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  store i8 %2127, i8* %29, align 1
  %2128 = icmp eq i32 %2115, 0
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %30, align 1
  %2130 = lshr i32 %2115, 31
  %2131 = trunc i32 %2130 to i8
  store i8 %2131, i8* %31, align 1
  %2132 = lshr i32 %2105, 31
  %2133 = lshr i32 %2114, 31
  %2134 = xor i32 %2133, %2132
  %2135 = xor i32 %2130, %2132
  %2136 = add nuw nsw i32 %2135, %2134
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %32, align 1
  %.v179 = select i1 %2128, i64 166, i64 19
  %2139 = add i64 %2100, %.v179
  store i64 %2139, i64* %3, align 8
  br i1 %2128, label %block_.L_4a9932, label %block_4a989f

block_4a989f:                                     ; preds = %block_.L_4a988c
  %2140 = add i64 %2101, -7120
  store i64 %2140, i64* %RAX.i487, align 8
  %2141 = add i64 %2101, -40
  %2142 = add i64 %2139, 11
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i64*
  %2144 = load i64, i64* %2143, align 8
  store i64 %2144, i64* %RCX.i1318, align 8
  %2145 = add i64 %2139, 18
  store i64 %2145, i64* %3, align 8
  %2146 = load i32, i32* %2104, align 4
  %2147 = sext i32 %2146 to i64
  %2148 = mul nsw i64 %2147, 12
  store i64 %2148, i64* %RDX.i1328, align 8
  %2149 = lshr i64 %2148, 63
  %2150 = add i64 %2148, %2144
  store i64 %2150, i64* %RCX.i1318, align 8
  %2151 = icmp ult i64 %2150, %2144
  %2152 = icmp ult i64 %2150, %2148
  %2153 = or i1 %2151, %2152
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %27, align 1
  %2155 = trunc i64 %2150 to i32
  %2156 = and i32 %2155, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %28, align 1
  %2161 = xor i64 %2148, %2144
  %2162 = xor i64 %2161, %2150
  %2163 = lshr i64 %2162, 4
  %2164 = trunc i64 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %29, align 1
  %2166 = icmp eq i64 %2150, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %30, align 1
  %2168 = lshr i64 %2150, 63
  %2169 = trunc i64 %2168 to i8
  store i8 %2169, i8* %31, align 1
  %2170 = lshr i64 %2144, 63
  %2171 = xor i64 %2168, %2170
  %2172 = xor i64 %2168, %2149
  %2173 = add nuw nsw i64 %2171, %2172
  %2174 = icmp eq i64 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %32, align 1
  %2176 = add i64 %2150, 8
  %2177 = add i64 %2139, 29
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = sext i32 %2179 to i64
  store i64 %2180, i64* %RCX.i1318, align 8
  %2181 = add nsw i64 %2180, 5138880
  %2182 = add i64 %2139, 37
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i8*
  %2184 = load i8, i8* %2183, align 1
  store i8 %2184, i8* %SIL.i591, align 1
  %2185 = add i64 %2101, -7153
  %2186 = add i64 %2139, 44
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i8*
  store i8 %2184, i8* %2187, align 1
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -7153
  %2190 = load i64, i64* %3, align 8
  %2191 = add i64 %2190, 7
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2189 to i8*
  %2193 = load i8, i8* %2192, align 1
  store i8 %2193, i8* %SIL.i591, align 1
  %2194 = add i64 %2188, -7124
  %2195 = add i64 %2190, 13
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RDI.i1284, align 8
  %2199 = add i64 %2188, -40
  %2200 = add i64 %2190, 17
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RCX.i1318, align 8
  %2203 = add i64 %2188, -7152
  %2204 = add i64 %2190, 24
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = sext i32 %2206 to i64
  %2208 = mul nsw i64 %2207, 12
  store i64 %2208, i64* %RDX.i1328, align 8
  %2209 = lshr i64 %2208, 63
  %2210 = add i64 %2208, %2202
  store i64 %2210, i64* %RCX.i1318, align 8
  %2211 = icmp ult i64 %2210, %2202
  %2212 = icmp ult i64 %2210, %2208
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %27, align 1
  %2215 = trunc i64 %2210 to i32
  %2216 = and i32 %2215, 255
  %2217 = tail call i32 @llvm.ctpop.i32(i32 %2216)
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  %2220 = xor i8 %2219, 1
  store i8 %2220, i8* %28, align 1
  %2221 = xor i64 %2208, %2202
  %2222 = xor i64 %2221, %2210
  %2223 = lshr i64 %2222, 4
  %2224 = trunc i64 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %29, align 1
  %2226 = icmp eq i64 %2210, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %30, align 1
  %2228 = lshr i64 %2210, 63
  %2229 = trunc i64 %2228 to i8
  store i8 %2229, i8* %31, align 1
  %2230 = lshr i64 %2202, 63
  %2231 = xor i64 %2228, %2230
  %2232 = xor i64 %2228, %2209
  %2233 = add nuw nsw i64 %2231, %2232
  %2234 = icmp eq i64 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %32, align 1
  %2236 = inttoptr i64 %2210 to i32*
  %2237 = add i64 %2190, 33
  store i64 %2237, i64* %3, align 8
  %2238 = load i32, i32* %2236, align 4
  %2239 = add i32 %2238, %2197
  %2240 = zext i32 %2239 to i64
  store i64 %2240, i64* %RDI.i1284, align 8
  %2241 = icmp ult i32 %2239, %2197
  %2242 = icmp ult i32 %2239, %2238
  %2243 = or i1 %2241, %2242
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %27, align 1
  %2245 = and i32 %2239, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %28, align 1
  %2250 = xor i32 %2238, %2197
  %2251 = xor i32 %2250, %2239
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %29, align 1
  %2255 = icmp eq i32 %2239, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %30, align 1
  %2257 = lshr i32 %2239, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %31, align 1
  %2259 = lshr i32 %2197, 31
  %2260 = lshr i32 %2238, 31
  %2261 = xor i32 %2257, %2259
  %2262 = xor i32 %2257, %2260
  %2263 = add nuw nsw i32 %2261, %2262
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %32, align 1
  %2266 = load i64, i64* %RBP.i, align 8
  %2267 = add i64 %2266, -56
  %2268 = add i64 %2190, 36
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2267 to i32*
  %2270 = load i32, i32* %2269, align 4
  %2271 = sub i32 %2239, %2270
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RDI.i1284, align 8
  %2273 = sext i32 %2271 to i64
  %2274 = mul nsw i64 %2273, 84
  store i64 %2274, i64* %RCX.i1318, align 8
  %2275 = lshr i64 %2274, 63
  %2276 = load i64, i64* %RAX.i487, align 8
  %2277 = add i64 %2274, %2276
  store i64 %2277, i64* %RAX.i487, align 8
  %2278 = icmp ult i64 %2277, %2276
  %2279 = icmp ult i64 %2277, %2274
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %27, align 1
  %2282 = trunc i64 %2277 to i32
  %2283 = and i32 %2282, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %28, align 1
  %2288 = xor i64 %2274, %2276
  %2289 = xor i64 %2288, %2277
  %2290 = lshr i64 %2289, 4
  %2291 = trunc i64 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %29, align 1
  %2293 = icmp eq i64 %2277, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %30, align 1
  %2295 = lshr i64 %2277, 63
  %2296 = trunc i64 %2295 to i8
  store i8 %2296, i8* %31, align 1
  %2297 = lshr i64 %2276, 63
  %2298 = xor i64 %2295, %2297
  %2299 = xor i64 %2295, %2275
  %2300 = add nuw nsw i64 %2298, %2299
  %2301 = icmp eq i64 %2300, 2
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %32, align 1
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -7128
  %2305 = add i64 %2190, 52
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RDI.i1284, align 8
  %2309 = add i64 %2303, -40
  %2310 = add i64 %2190, 56
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RCX.i1318, align 8
  %2313 = add i64 %2303, -7152
  %2314 = add i64 %2190, 63
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = sext i32 %2316 to i64
  %2318 = mul nsw i64 %2317, 12
  store i64 %2318, i64* %RDX.i1328, align 8
  %2319 = lshr i64 %2318, 63
  %2320 = add i64 %2318, %2312
  store i64 %2320, i64* %RCX.i1318, align 8
  %2321 = icmp ult i64 %2320, %2312
  %2322 = icmp ult i64 %2320, %2318
  %2323 = or i1 %2321, %2322
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %27, align 1
  %2325 = trunc i64 %2320 to i32
  %2326 = and i32 %2325, 255
  %2327 = tail call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  store i8 %2330, i8* %28, align 1
  %2331 = xor i64 %2318, %2312
  %2332 = xor i64 %2331, %2320
  %2333 = lshr i64 %2332, 4
  %2334 = trunc i64 %2333 to i8
  %2335 = and i8 %2334, 1
  store i8 %2335, i8* %29, align 1
  %2336 = icmp eq i64 %2320, 0
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %30, align 1
  %2338 = lshr i64 %2320, 63
  %2339 = trunc i64 %2338 to i8
  store i8 %2339, i8* %31, align 1
  %2340 = lshr i64 %2312, 63
  %2341 = xor i64 %2338, %2340
  %2342 = xor i64 %2338, %2319
  %2343 = add nuw nsw i64 %2341, %2342
  %2344 = icmp eq i64 %2343, 2
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %32, align 1
  %2346 = add i64 %2320, 4
  %2347 = add i64 %2190, 73
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i32*
  %2349 = load i32, i32* %2348, align 4
  %2350 = add i32 %2349, %2307
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RDI.i1284, align 8
  %2352 = icmp ult i32 %2350, %2307
  %2353 = icmp ult i32 %2350, %2349
  %2354 = or i1 %2352, %2353
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %27, align 1
  %2356 = and i32 %2350, 255
  %2357 = tail call i32 @llvm.ctpop.i32(i32 %2356)
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  %2360 = xor i8 %2359, 1
  store i8 %2360, i8* %28, align 1
  %2361 = xor i32 %2349, %2307
  %2362 = xor i32 %2361, %2350
  %2363 = lshr i32 %2362, 4
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  store i8 %2365, i8* %29, align 1
  %2366 = icmp eq i32 %2350, 0
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %30, align 1
  %2368 = lshr i32 %2350, 31
  %2369 = trunc i32 %2368 to i8
  store i8 %2369, i8* %31, align 1
  %2370 = lshr i32 %2307, 31
  %2371 = lshr i32 %2349, 31
  %2372 = xor i32 %2368, %2370
  %2373 = xor i32 %2368, %2371
  %2374 = add nuw nsw i32 %2372, %2373
  %2375 = icmp eq i32 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %32, align 1
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -60
  %2379 = add i64 %2190, 76
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = sub i32 %2350, %2381
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RDI.i1284, align 8
  %2384 = icmp ult i32 %2350, %2381
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %27, align 1
  %2386 = and i32 %2382, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %28, align 1
  %2391 = xor i32 %2381, %2350
  %2392 = xor i32 %2391, %2382
  %2393 = lshr i32 %2392, 4
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %29, align 1
  %2396 = icmp eq i32 %2382, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %30, align 1
  %2398 = lshr i32 %2382, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %31, align 1
  %2400 = lshr i32 %2381, 31
  %2401 = xor i32 %2400, %2368
  %2402 = xor i32 %2398, %2368
  %2403 = add nuw nsw i32 %2402, %2401
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %32, align 1
  %2406 = sext i32 %2382 to i64
  store i64 %2406, i64* %RCX.i1318, align 8
  %2407 = load i64, i64* %RAX.i487, align 8
  %2408 = add i64 %2407, %2406
  %2409 = load i8, i8* %SIL.i591, align 1
  %2410 = add i64 %2190, 83
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2408 to i8*
  store i8 %2409, i8* %2411, align 1
  %2412 = load i64, i64* %RBP.i, align 8
  %2413 = add i64 %2412, -7152
  %2414 = load i64, i64* %3, align 8
  %2415 = add i64 %2414, 6
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2413 to i32*
  %2417 = load i32, i32* %2416, align 4
  %2418 = add i32 %2417, 1
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i487, align 8
  %2420 = icmp eq i32 %2417, -1
  %2421 = icmp eq i32 %2418, 0
  %2422 = or i1 %2420, %2421
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %27, align 1
  %2424 = and i32 %2418, 255
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %28, align 1
  %2429 = xor i32 %2418, %2417
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  store i8 %2432, i8* %29, align 1
  %2433 = zext i1 %2421 to i8
  store i8 %2433, i8* %30, align 1
  %2434 = lshr i32 %2418, 31
  %2435 = trunc i32 %2434 to i8
  store i8 %2435, i8* %31, align 1
  %2436 = lshr i32 %2417, 31
  %2437 = xor i32 %2434, %2436
  %2438 = add nuw nsw i32 %2437, %2434
  %2439 = icmp eq i32 %2438, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %32, align 1
  %2441 = add i64 %2414, 15
  store i64 %2441, i64* %3, align 8
  store i32 %2418, i32* %2416, align 4
  %2442 = load i64, i64* %3, align 8
  %2443 = add i64 %2442, -161
  store i64 %2443, i64* %3, align 8
  br label %block_.L_4a988c

block_.L_4a9932:                                  ; preds = %block_.L_4a988c
  %2444 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %2445 = add i32 %2444, -3
  %2446 = icmp ult i32 %2444, 3
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %27, align 1
  %2448 = and i32 %2445, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %28, align 1
  %2453 = xor i32 %2445, %2444
  %2454 = lshr i32 %2453, 4
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  store i8 %2456, i8* %29, align 1
  %2457 = icmp eq i32 %2445, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %30, align 1
  %2459 = lshr i32 %2445, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %31, align 1
  %2461 = lshr i32 %2444, 31
  %2462 = xor i32 %2459, %2461
  %2463 = add nuw nsw i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %32, align 1
  %2466 = icmp ne i8 %2460, 0
  %2467 = xor i1 %2466, %2464
  %2468 = or i1 %2457, %2467
  %.v180 = select i1 %2468, i64 302, i64 14
  %2469 = add i64 %2139, %.v180
  store i64 %2469, i64* %3, align 8
  br i1 %2468, label %block_.L_4a9932.block_.L_4a9a60_crit_edge, label %block_4a9940

block_.L_4a9932.block_.L_4a9a60_crit_edge:        ; preds = %block_.L_4a9932
  %.pre149 = bitcast %union.anon* %33 to i8*
  br label %block_.L_4a9a60

block_4a9940:                                     ; preds = %block_.L_4a9932
  %2470 = add i64 %2101, -7144
  %2471 = add i64 %2469, 10
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  store i32 20, i32* %2472, align 4
  %AL.i459 = bitcast %union.anon* %33 to i8*
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_4a994a

block_.L_4a994a:                                  ; preds = %block_.L_4a9a0e, %block_4a9940
  %2473 = phi i64 [ %.pre115, %block_4a9940 ], [ %2744, %block_.L_4a9a0e ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.24, %block_4a9940 ], [ %2706, %block_.L_4a9a0e ]
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -7144
  %2476 = add i64 %2473, 7
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = add i32 %2478, -64
  %2480 = icmp ult i32 %2478, 64
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %27, align 1
  %2482 = and i32 %2479, 255
  %2483 = tail call i32 @llvm.ctpop.i32(i32 %2482)
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  %2486 = xor i8 %2485, 1
  store i8 %2486, i8* %28, align 1
  %2487 = xor i32 %2479, %2478
  %2488 = lshr i32 %2487, 4
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  store i8 %2490, i8* %29, align 1
  %2491 = icmp eq i32 %2479, 0
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %30, align 1
  %2493 = lshr i32 %2479, 31
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %31, align 1
  %2495 = lshr i32 %2478, 31
  %2496 = xor i32 %2493, %2495
  %2497 = add nuw nsw i32 %2496, %2495
  %2498 = icmp eq i32 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %32, align 1
  %.v181 = select i1 %2491, i64 247, i64 13
  %2500 = add i64 %2473, %.v181
  store i64 %2500, i64* %3, align 8
  br i1 %2491, label %block_.L_4a9a41, label %block_4a9957

block_4a9957:                                     ; preds = %block_.L_4a994a
  %2501 = add i64 %2474, -7148
  %2502 = add i64 %2500, 10
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i32*
  store i32 20, i32* %2503, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_4a9961

block_.L_4a9961:                                  ; preds = %block_.L_4a99f5, %block_4a9957
  %2504 = phi i64 [ %.pre116, %block_4a9957 ], [ %2699, %block_.L_4a99f5 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_4a9957 ], [ %MEMORY.29, %block_.L_4a99f5 ]
  %2505 = load i64, i64* %RBP.i, align 8
  %2506 = add i64 %2505, -7148
  %2507 = add i64 %2504, 7
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i32*
  %2509 = load i32, i32* %2508, align 4
  %2510 = add i32 %2509, -64
  %2511 = icmp ult i32 %2509, 64
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %27, align 1
  %2513 = and i32 %2510, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %28, align 1
  %2518 = xor i32 %2510, %2509
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %29, align 1
  %2522 = icmp eq i32 %2510, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %30, align 1
  %2524 = lshr i32 %2510, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %31, align 1
  %2526 = lshr i32 %2509, 31
  %2527 = xor i32 %2524, %2526
  %2528 = add nuw nsw i32 %2527, %2526
  %2529 = icmp eq i32 %2528, 2
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %32, align 1
  %.v182 = select i1 %2522, i64 173, i64 13
  %2531 = add i64 %2504, %.v182
  store i64 %2531, i64* %3, align 8
  br i1 %2522, label %block_.L_4a9a0e, label %block_4a996e

block_4a996e:                                     ; preds = %block_.L_4a9961
  %2532 = add i64 %2505, -7144
  %2533 = add i64 %2531, 6
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = zext i32 %2535 to i64
  store i64 %2536, i64* %RAX.i487, align 8
  %2537 = add i64 %2505, -7124
  %2538 = add i64 %2531, 12
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = sub i32 %2535, %2540
  %2542 = icmp ult i32 %2535, %2540
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %27, align 1
  %2544 = and i32 %2541, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %28, align 1
  %2549 = xor i32 %2540, %2535
  %2550 = xor i32 %2549, %2541
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  store i8 %2553, i8* %29, align 1
  %2554 = icmp eq i32 %2541, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %30, align 1
  %2556 = lshr i32 %2541, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %31, align 1
  %2558 = lshr i32 %2535, 31
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2559, %2558
  %2561 = xor i32 %2556, %2558
  %2562 = add nuw nsw i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %32, align 1
  %.v183 = select i1 %2554, i64 18, i64 72
  %2565 = add i64 %2531, %.v183
  store i64 %2565, i64* %3, align 8
  br i1 %2554, label %block_4a9980, label %block_.L_4a99b6

block_4a9980:                                     ; preds = %block_4a996e
  %2566 = add i64 %2565, 6
  store i64 %2566, i64* %3, align 8
  %2567 = load i32, i32* %2508, align 4
  %2568 = zext i32 %2567 to i64
  store i64 %2568, i64* %RAX.i487, align 8
  %2569 = add i64 %2505, -7128
  %2570 = add i64 %2565, 12
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = sub i32 %2567, %2572
  %2574 = icmp ult i32 %2567, %2572
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %27, align 1
  %2576 = and i32 %2573, 255
  %2577 = tail call i32 @llvm.ctpop.i32(i32 %2576)
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  store i8 %2580, i8* %28, align 1
  %2581 = xor i32 %2572, %2567
  %2582 = xor i32 %2581, %2573
  %2583 = lshr i32 %2582, 4
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  store i8 %2585, i8* %29, align 1
  %2586 = icmp eq i32 %2573, 0
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %30, align 1
  %2588 = lshr i32 %2573, 31
  %2589 = trunc i32 %2588 to i8
  store i8 %2589, i8* %31, align 1
  %2590 = lshr i32 %2567, 31
  %2591 = lshr i32 %2572, 31
  %2592 = xor i32 %2591, %2590
  %2593 = xor i32 %2588, %2590
  %2594 = add nuw nsw i32 %2593, %2592
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %32, align 1
  %.v184 = select i1 %2586, i64 18, i64 54
  %2597 = add i64 %2565, %.v184
  store i64 %2597, i64* %3, align 8
  br i1 %2586, label %block_4a9992, label %block_.L_4a99b6

block_4a9992:                                     ; preds = %block_4a9980
  store i64 ptrtoint (%G__0x588897_type* @G__0x588897 to i64), i64* %RSI.i1331, align 8
  %2598 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2598, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i459, align 1
  %2599 = add i64 %2597, -690370
  %2600 = add i64 %2597, 25
  %2601 = load i64, i64* %6, align 8
  %2602 = add i64 %2601, -8
  %2603 = inttoptr i64 %2602 to i64*
  store i64 %2600, i64* %2603, align 8
  store i64 %2602, i64* %6, align 8
  store i64 %2599, i64* %3, align 8
  %2604 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -7200
  %2607 = load i32, i32* %EAX.i1293, align 4
  %2608 = load i64, i64* %3, align 8
  %2609 = add i64 %2608, 6
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2606 to i32*
  store i32 %2607, i32* %2610, align 4
  %2611 = load i64, i64* %3, align 8
  %2612 = add i64 %2611, 68
  store i64 %2612, i64* %3, align 8
  br label %block_.L_4a99f5

block_.L_4a99b6:                                  ; preds = %block_4a9980, %block_4a996e
  %2613 = phi i64 [ %2597, %block_4a9980 ], [ %2565, %block_4a996e ]
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RSI.i1331, align 8
  %2614 = add i64 %2505, -7120
  store i64 %2614, i64* %RAX.i487, align 8
  %2615 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2615, i64* %RDI.i1284, align 8
  %2616 = add i64 %2613, 32
  store i64 %2616, i64* %3, align 8
  %2617 = load i32, i32* %2534, align 4
  %2618 = sext i32 %2617 to i64
  %2619 = mul nsw i64 %2618, 84
  store i64 %2619, i64* %RCX.i1318, align 8
  %2620 = lshr i64 %2619, 63
  %2621 = add i64 %2619, %2614
  store i64 %2621, i64* %RAX.i487, align 8
  %2622 = icmp ult i64 %2621, %2614
  %2623 = icmp ult i64 %2621, %2619
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %27, align 1
  %2626 = trunc i64 %2621 to i32
  %2627 = and i32 %2626, 255
  %2628 = tail call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  store i8 %2631, i8* %28, align 1
  %2632 = xor i64 %2619, %2614
  %2633 = xor i64 %2632, %2621
  %2634 = lshr i64 %2633, 4
  %2635 = trunc i64 %2634 to i8
  %2636 = and i8 %2635, 1
  store i8 %2636, i8* %29, align 1
  %2637 = icmp eq i64 %2621, 0
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %30, align 1
  %2639 = lshr i64 %2621, 63
  %2640 = trunc i64 %2639 to i8
  store i8 %2640, i8* %31, align 1
  %2641 = lshr i64 %2614, 63
  %2642 = xor i64 %2639, %2641
  %2643 = xor i64 %2639, %2620
  %2644 = add nuw nsw i64 %2642, %2643
  %2645 = icmp eq i64 %2644, 2
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %32, align 1
  %2647 = add i64 %2613, 46
  store i64 %2647, i64* %3, align 8
  %2648 = load i32, i32* %2508, align 4
  %2649 = sext i32 %2648 to i64
  store i64 %2649, i64* %RCX.i1318, align 8
  %2650 = add i64 %2621, %2649
  %2651 = add i64 %2613, 50
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i8*
  %2653 = load i8, i8* %2652, align 1
  %2654 = sext i8 %2653 to i64
  %2655 = and i64 %2654, 4294967295
  store i64 %2655, i64* %RDX.i1328, align 8
  store i8 0, i8* %AL.i459, align 1
  %2656 = add i64 %2613, -690406
  %2657 = add i64 %2613, 57
  %2658 = load i64, i64* %6, align 8
  %2659 = add i64 %2658, -8
  %2660 = inttoptr i64 %2659 to i64*
  store i64 %2657, i64* %2660, align 8
  store i64 %2659, i64* %6, align 8
  store i64 %2656, i64* %3, align 8
  %2661 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2662 = load i64, i64* %RBP.i, align 8
  %2663 = add i64 %2662, -7204
  %2664 = load i32, i32* %EAX.i1293, align 4
  %2665 = load i64, i64* %3, align 8
  %2666 = add i64 %2665, 6
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2663 to i32*
  store i32 %2664, i32* %2667, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4a99f5

block_.L_4a99f5:                                  ; preds = %block_.L_4a99b6, %block_4a9992
  %2668 = phi i64 [ %.pre117, %block_.L_4a99b6 ], [ %2612, %block_4a9992 ]
  %MEMORY.29 = phi %struct.Memory* [ %2661, %block_.L_4a99b6 ], [ %2604, %block_4a9992 ]
  %2669 = load i64, i64* %RBP.i, align 8
  %2670 = add i64 %2669, -7148
  %2671 = add i64 %2668, 11
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = add i32 %2673, 1
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RAX.i487, align 8
  %2676 = icmp eq i32 %2673, -1
  %2677 = icmp eq i32 %2674, 0
  %2678 = or i1 %2676, %2677
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %27, align 1
  %2680 = and i32 %2674, 255
  %2681 = tail call i32 @llvm.ctpop.i32(i32 %2680)
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = xor i8 %2683, 1
  store i8 %2684, i8* %28, align 1
  %2685 = xor i32 %2674, %2673
  %2686 = lshr i32 %2685, 4
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  store i8 %2688, i8* %29, align 1
  %2689 = zext i1 %2677 to i8
  store i8 %2689, i8* %30, align 1
  %2690 = lshr i32 %2674, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %31, align 1
  %2692 = lshr i32 %2673, 31
  %2693 = xor i32 %2690, %2692
  %2694 = add nuw nsw i32 %2693, %2690
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %32, align 1
  %2697 = add i64 %2668, 20
  store i64 %2697, i64* %3, align 8
  store i32 %2674, i32* %2672, align 4
  %2698 = load i64, i64* %3, align 8
  %2699 = add i64 %2698, -168
  store i64 %2699, i64* %3, align 8
  br label %block_.L_4a9961

block_.L_4a9a0e:                                  ; preds = %block_.L_4a9961
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i1331, align 8
  %2700 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2700, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i459, align 1
  %2701 = add i64 %2531, -690494
  %2702 = add i64 %2531, 25
  %2703 = load i64, i64* %6, align 8
  %2704 = add i64 %2703, -8
  %2705 = inttoptr i64 %2704 to i64*
  store i64 %2702, i64* %2705, align 8
  store i64 %2704, i64* %6, align 8
  store i64 %2701, i64* %3, align 8
  %2706 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2707 = load i64, i64* %RBP.i, align 8
  %2708 = add i64 %2707, -7208
  %2709 = load i32, i32* %EAX.i1293, align 4
  %2710 = load i64, i64* %3, align 8
  %2711 = add i64 %2710, 6
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2708 to i32*
  store i32 %2709, i32* %2712, align 4
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -7144
  %2715 = load i64, i64* %3, align 8
  %2716 = add i64 %2715, 6
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2714 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = add i32 %2718, 1
  %2720 = zext i32 %2719 to i64
  store i64 %2720, i64* %RAX.i487, align 8
  %2721 = icmp eq i32 %2718, -1
  %2722 = icmp eq i32 %2719, 0
  %2723 = or i1 %2721, %2722
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %27, align 1
  %2725 = and i32 %2719, 255
  %2726 = tail call i32 @llvm.ctpop.i32(i32 %2725)
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  %2729 = xor i8 %2728, 1
  store i8 %2729, i8* %28, align 1
  %2730 = xor i32 %2719, %2718
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  store i8 %2733, i8* %29, align 1
  %2734 = zext i1 %2722 to i8
  store i8 %2734, i8* %30, align 1
  %2735 = lshr i32 %2719, 31
  %2736 = trunc i32 %2735 to i8
  store i8 %2736, i8* %31, align 1
  %2737 = lshr i32 %2718, 31
  %2738 = xor i32 %2735, %2737
  %2739 = add nuw nsw i32 %2738, %2735
  %2740 = icmp eq i32 %2739, 2
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %32, align 1
  %2742 = add i64 %2715, 15
  store i64 %2742, i64* %3, align 8
  store i32 %2719, i32* %2717, align 4
  %2743 = load i64, i64* %3, align 8
  %2744 = add i64 %2743, -242
  store i64 %2744, i64* %3, align 8
  br label %block_.L_4a994a

block_.L_4a9a41:                                  ; preds = %block_.L_4a994a
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI.i1331, align 8
  %2745 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2745, i64* %RDI.i1284, align 8
  store i8 0, i8* %AL.i459, align 1
  %2746 = add i64 %2500, -690545
  %2747 = add i64 %2500, 25
  %2748 = load i64, i64* %6, align 8
  %2749 = add i64 %2748, -8
  %2750 = inttoptr i64 %2749 to i64*
  store i64 %2747, i64* %2750, align 8
  store i64 %2749, i64* %6, align 8
  store i64 %2746, i64* %3, align 8
  %2751 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.26)
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -7212
  %2754 = load i32, i32* %EAX.i1293, align 4
  %2755 = load i64, i64* %3, align 8
  %2756 = add i64 %2755, 6
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2753 to i32*
  store i32 %2754, i32* %2757, align 4
  %.pre118 = load i64, i64* %RBP.i, align 8
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_4a9a60

block_.L_4a9a60:                                  ; preds = %block_.L_4a9932.block_.L_4a9a60_crit_edge, %block_.L_4a9a41
  %AL.i382.pre-phi = phi i8* [ %.pre149, %block_.L_4a9932.block_.L_4a9a60_crit_edge ], [ %AL.i459, %block_.L_4a9a41 ]
  %2758 = phi i64 [ %2469, %block_.L_4a9932.block_.L_4a9a60_crit_edge ], [ %.pre119, %block_.L_4a9a41 ]
  %2759 = phi i64 [ %2101, %block_.L_4a9932.block_.L_4a9a60_crit_edge ], [ %.pre118, %block_.L_4a9a41 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.24, %block_.L_4a9932.block_.L_4a9a60_crit_edge ], [ %2751, %block_.L_4a9a41 ]
  %2760 = add i64 %2759, -32
  %2761 = add i64 %2758, 4
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i64*
  %2763 = load i64, i64* %2762, align 8
  store i64 %2763, i64* %RAX.i487, align 8
  %2764 = add i64 %2763, 8
  %2765 = add i64 %2758, 7
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RCX.i1318, align 8
  %2769 = add i64 %2759, -7140
  %2770 = add i64 %2758, 13
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  store i32 %2767, i32* %2771, align 4
  %2772 = load i64, i64* %RBP.i, align 8
  %2773 = add i64 %2772, -32
  %2774 = load i64, i64* %3, align 8
  %2775 = add i64 %2774, 4
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2773 to i64*
  %2777 = load i64, i64* %2776, align 8
  store i64 %2777, i64* %RAX.i487, align 8
  %2778 = add i64 %2777, 48
  %2779 = add i64 %2774, 7
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2778 to i32*
  %2781 = load i32, i32* %2780, align 4
  %2782 = zext i32 %2781 to i64
  store i64 %2782, i64* %RCX.i1318, align 8
  %2783 = add i64 %2772, -7132
  %2784 = add i64 %2774, 13
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i32*
  store i32 %2781, i32* %2785, align 4
  %2786 = load i64, i64* %RBP.i, align 8
  %2787 = add i64 %2786, -7136
  %2788 = load i64, i64* %3, align 8
  %2789 = add i64 %2788, 10
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2787 to i32*
  store i32 15, i32* %2790, align 4
  %2791 = load i64, i64* %RBP.i, align 8
  %2792 = add i64 %2791, -7152
  %2793 = load i64, i64* %3, align 8
  %2794 = add i64 %2793, 10
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2792 to i32*
  store i32 0, i32* %2795, align 4
  %CL.i383 = bitcast %union.anon* %57 to i8*
  %ESI.i317 = bitcast %union.anon* %43 to i32*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_4a9a8e

block_.L_4a9a8e:                                  ; preds = %block_.L_4a9d68, %block_.L_4a9a60
  %2797 = phi i64 [ %.pre120, %block_.L_4a9a60 ], [ %3982, %block_.L_4a9d68 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_4a9a60 ], [ %call2_4a9ccc, %block_.L_4a9d68 ]
  store i64 0, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  store i8 1, i8* %28, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %CL.i383, align 1
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -7152
  %2800 = add i64 %2797, 14
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i32*
  %2802 = load i32, i32* %2801, align 4
  %2803 = add i32 %2802, -1763
  %2804 = icmp ult i32 %2802, 1763
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %27, align 1
  %2806 = and i32 %2803, 255
  %2807 = tail call i32 @llvm.ctpop.i32(i32 %2806)
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  %2810 = xor i8 %2809, 1
  store i8 %2810, i8* %28, align 1
  %2811 = xor i32 %2803, %2802
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %29, align 1
  %2815 = icmp eq i32 %2803, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %30, align 1
  %2817 = lshr i32 %2803, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %31, align 1
  %2819 = lshr i32 %2802, 31
  %2820 = xor i32 %2817, %2819
  %2821 = add nuw nsw i32 %2820, %2819
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %32, align 1
  %2824 = add i64 %2798, -7213
  %2825 = add i64 %2797, 20
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i8*
  store i8 0, i8* %2826, align 1
  %2827 = load i64, i64* %3, align 8
  %2828 = load i8, i8* %30, align 1
  %2829 = icmp ne i8 %2828, 0
  %.v234 = select i1 %2829, i64 76, i64 6
  %2830 = add i64 %2827, %.v234
  store i64 %2830, i64* %3, align 8
  %cmpBr_4a9aa2 = icmp eq i8 %2828, 1
  br i1 %cmpBr_4a9aa2, label %block_.L_4a9aee, label %block_4a9aa8

block_4a9aa8:                                     ; preds = %block_.L_4a9a8e
  store i8 1, i8* %AL.i382.pre-phi, align 1
  %2831 = load i64, i64* %RBP.i, align 8
  %2832 = add i64 %2831, -7136
  %2833 = add i64 %2830, 9
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  store i8 0, i8* %27, align 1
  %2836 = and i32 %2835, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %2841 = icmp eq i32 %2835, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %30, align 1
  %2843 = lshr i32 %2835, 31
  %2844 = trunc i32 %2843 to i8
  store i8 %2844, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %2845 = add i64 %2831, -7214
  %2846 = add i64 %2830, 15
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i8*
  store i8 1, i8* %2847, align 1
  %2848 = load i64, i64* %3, align 8
  %2849 = add i64 %2848, 43
  %2850 = add i64 %2848, 6
  %2851 = load i8, i8* %30, align 1
  %2852 = icmp eq i8 %2851, 0
  %2853 = load i8, i8* %31, align 1
  %2854 = icmp ne i8 %2853, 0
  %2855 = load i8, i8* %32, align 1
  %2856 = icmp ne i8 %2855, 0
  %2857 = xor i1 %2854, %2856
  %2858 = xor i1 %2857, true
  %2859 = and i1 %2852, %2858
  %2860 = select i1 %2859, i64 %2849, i64 %2850
  store i64 %2860, i64* %3, align 8
  br i1 %2859, label %block_.L_4a9ae2, label %block_4a9abd

block_4a9abd:                                     ; preds = %block_4a9aa8
  store i8 1, i8* %AL.i382.pre-phi, align 1
  %2861 = load i64, i64* %RBP.i, align 8
  %2862 = add i64 %2861, -7132
  %2863 = add i64 %2860, 9
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2862 to i32*
  %2865 = load i32, i32* %2864, align 4
  store i8 0, i8* %27, align 1
  %2866 = and i32 %2865, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %2871 = icmp eq i32 %2865, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %30, align 1
  %2873 = lshr i32 %2865, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %2875 = add i64 %2861, -7214
  %2876 = add i64 %2860, 15
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i8*
  store i8 1, i8* %2877, align 1
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, 22
  %2880 = add i64 %2878, 6
  %2881 = load i8, i8* %30, align 1
  %2882 = icmp eq i8 %2881, 0
  %2883 = select i1 %2882, i64 %2879, i64 %2880
  store i64 %2883, i64* %3, align 8
  br i1 %2882, label %block_.L_4a9ae2, label %block_4a9ad2

block_4a9ad2:                                     ; preds = %block_4a9abd
  %2884 = load i64, i64* %RBP.i, align 8
  %2885 = add i64 %2884, -7140
  %2886 = add i64 %2883, 7
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i32*
  %2888 = load i32, i32* %2887, align 4
  store i8 0, i8* %27, align 1
  %2889 = and i32 %2888, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %2894 = icmp eq i32 %2888, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %30, align 1
  %2896 = lshr i32 %2888, 31
  %2897 = trunc i32 %2896 to i8
  store i8 %2897, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %2898 = xor i1 %2894, true
  %2899 = icmp eq i8 %2897, 0
  %2900 = and i1 %2899, %2898
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %AL.i382.pre-phi, align 1
  %2902 = add i64 %2884, -7214
  %2903 = add i64 %2883, 16
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i8*
  store i8 %2901, i8* %2904, align 1
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4a9ae2

block_.L_4a9ae2:                                  ; preds = %block_4a9ad2, %block_4a9abd, %block_4a9aa8
  %2905 = phi i64 [ %.pre121, %block_4a9ad2 ], [ %2879, %block_4a9abd ], [ %2849, %block_4a9aa8 ]
  %2906 = load i64, i64* %RBP.i, align 8
  %2907 = add i64 %2906, -7214
  %2908 = add i64 %2905, 6
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i8*
  %2910 = load i8, i8* %2909, align 1
  store i8 %2910, i8* %AL.i382.pre-phi, align 1
  %2911 = add i64 %2906, -7213
  %2912 = add i64 %2905, 12
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i8*
  store i8 %2910, i8* %2913, align 1
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_4a9aee

block_.L_4a9aee:                                  ; preds = %block_.L_4a9ae2, %block_.L_4a9a8e
  %2914 = phi i64 [ %.pre122, %block_.L_4a9ae2 ], [ %2830, %block_.L_4a9a8e ]
  %2915 = load i64, i64* %RBP.i, align 8
  %2916 = add i64 %2915, -7213
  %2917 = add i64 %2914, 6
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i8*
  %2919 = load i8, i8* %2918, align 1
  store i8 %2919, i8* %AL.i382.pre-phi, align 1
  %2920 = and i8 %2919, 1
  store i8 0, i8* %27, align 1
  %2921 = zext i8 %2920 to i32
  %2922 = tail call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = xor i8 %2923, 1
  store i8 %2924, i8* %28, align 1
  %2925 = xor i8 %2920, 1
  store i8 %2925, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %2926 = icmp eq i8 %2925, 0
  %.v159 = select i1 %2926, i64 19, i64 14
  %2927 = add i64 %2914, %.v159
  store i64 %2927, i64* %3, align 8
  br i1 %2926, label %block_.L_4a9b01, label %block_4a9afc

block_4a9afc:                                     ; preds = %block_.L_4a9aee
  %2928 = add i64 %2915, -48
  %2929 = add i64 %2927, 649
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RAX.i487, align 8
  %2932 = add i64 %2915, -7152
  %2933 = add i64 %2927, 656
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = sext i32 %2935 to i64
  store i64 %2936, i64* %RCX.i1318, align 8
  %2937 = add i64 %2931, %2936
  %2938 = add i64 %2927, 660
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i8*
  store i8 0, i8* %2939, align 1
  %2940 = load i64, i64* %6, align 8
  %2941 = load i64, i64* %3, align 8
  %2942 = add i64 %2940, 7208
  store i64 %2942, i64* %6, align 8
  %2943 = icmp ugt i64 %2940, -7209
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %27, align 1
  %2945 = trunc i64 %2942 to i32
  %2946 = and i32 %2945, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %28, align 1
  %2951 = xor i64 %2942, %2940
  %2952 = lshr i64 %2951, 4
  %2953 = trunc i64 %2952 to i8
  %2954 = and i8 %2953, 1
  store i8 %2954, i8* %29, align 1
  %2955 = icmp eq i64 %2942, 0
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %30, align 1
  %2957 = lshr i64 %2942, 63
  %2958 = trunc i64 %2957 to i8
  store i8 %2958, i8* %31, align 1
  %2959 = lshr i64 %2940, 63
  %2960 = xor i64 %2957, %2959
  %2961 = add nuw nsw i64 %2960, %2957
  %2962 = icmp eq i64 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %32, align 1
  %2964 = add i64 %2941, 8
  store i64 %2964, i64* %3, align 8
  %2965 = add i64 %2940, 7216
  %2966 = inttoptr i64 %2942 to i64*
  %2967 = load i64, i64* %2966, align 8
  store i64 %2967, i64* %RBX.i434, align 8
  store i64 %2965, i64* %6, align 8
  %2968 = add i64 %2941, 10
  store i64 %2968, i64* %3, align 8
  %2969 = add i64 %2940, 7224
  %2970 = inttoptr i64 %2965 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %R14.i413, align 8
  store i64 %2969, i64* %6, align 8
  %2972 = add i64 %2941, 12
  store i64 %2972, i64* %3, align 8
  %2973 = add i64 %2940, 7232
  %2974 = inttoptr i64 %2969 to i64*
  %2975 = load i64, i64* %2974, align 8
  store i64 %2975, i64* %R15.i311, align 8
  store i64 %2973, i64* %6, align 8
  %2976 = add i64 %2941, 13
  store i64 %2976, i64* %3, align 8
  %2977 = add i64 %2940, 7240
  %2978 = inttoptr i64 %2973 to i64*
  %2979 = load i64, i64* %2978, align 8
  store i64 %2979, i64* %RBP.i, align 8
  store i64 %2977, i64* %6, align 8
  %2980 = add i64 %2941, 14
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2977 to i64*
  %2982 = load i64, i64* %2981, align 8
  store i64 %2982, i64* %3, align 8
  %2983 = add i64 %2940, 7248
  store i64 %2983, i64* %6, align 8
  ret %struct.Memory* %MEMORY.31

block_.L_4a9b01:                                  ; preds = %block_.L_4a9aee
  store i64 84, i64* %RAX.i487, align 8
  store i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64* %RCX.i1318, align 8
  %2984 = add i64 %2915, -7152
  %2985 = add i64 %2927, 22
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = sext i32 %2987 to i64
  %2989 = shl nsw i64 %2988, 5
  store i64 %2989, i64* %RDX.i1328, align 8
  %2990 = add i64 %2989, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  store i64 %2990, i64* %RCX.i1318, align 8
  %2991 = icmp ult i64 %2990, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  %2992 = icmp ult i64 %2990, %2989
  %2993 = or i1 %2991, %2992
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %27, align 1
  %2995 = trunc i64 %2990 to i32
  %2996 = and i32 %2995, 248
  %2997 = tail call i32 @llvm.ctpop.i32(i32 %2996)
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  %3000 = xor i8 %2999, 1
  store i8 %3000, i8* %28, align 1
  %3001 = xor i64 %2990, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  %3002 = lshr i64 %3001, 4
  %3003 = trunc i64 %3002 to i8
  %3004 = and i8 %3003, 1
  store i8 %3004, i8* %29, align 1
  %3005 = icmp eq i64 %2990, 0
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %30, align 1
  %3007 = lshr i64 %2990, 63
  %3008 = trunc i64 %3007 to i8
  store i8 %3008, i8* %31, align 1
  %3009 = lshr i64 %2988, 58
  %3010 = and i64 %3009, 1
  %3011 = xor i64 %3007, lshr (i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64 63)
  %3012 = xor i64 %3007, %3010
  %3013 = add nuw nsw i64 %3011, %3012
  %3014 = icmp eq i64 %3013, 2
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %32, align 1
  %3016 = add i64 %2915, -52
  %3017 = add i64 %2927, 33
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = sext i32 %3019 to i64
  store i64 %3020, i64* %RDX.i1328, align 8
  %3021 = shl nsw i64 %3020, 2
  %3022 = add i64 %3021, %2990
  %3023 = add i64 %2927, 36
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RSI.i1331, align 8
  %3027 = add i64 %2915, -7220
  %3028 = add i64 %2927, 42
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i32*
  store i32 84, i32* %3029, align 4
  %3030 = load i32, i32* %ESI.i317, align 4
  %3031 = zext i32 %3030 to i64
  %3032 = load i64, i64* %3, align 8
  store i64 %3031, i64* %RAX.i487, align 8
  %3033 = sext i32 %3030 to i64
  %3034 = lshr i64 %3033, 32
  store i64 %3034, i64* %2796, align 8
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -7220
  %3037 = add i64 %3032, 9
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i32*
  %3039 = load i32, i32* %3038, align 4
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RSI.i1331, align 8
  %3041 = add i64 %3032, 11
  store i64 %3041, i64* %3, align 8
  %3042 = sext i32 %3039 to i64
  %3043 = shl nuw i64 %3034, 32
  %3044 = or i64 %3043, %3031
  %3045 = sdiv i64 %3044, %3042
  %3046 = shl i64 %3045, 32
  %3047 = ashr exact i64 %3046, 32
  %3048 = icmp eq i64 %3045, %3047
  br i1 %3048, label %3051, label %3049

; <label>:3049:                                   ; preds = %block_.L_4a9b01
  %3050 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3041, %struct.Memory* %MEMORY.31)
  %.pre123 = load i64, i64* %RBP.i, align 8
  %.pre124 = load i32, i32* %EDX.i1182, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit309

; <label>:3051:                                   ; preds = %block_.L_4a9b01
  %3052 = srem i64 %3044, %3042
  %3053 = and i64 %3045, 4294967295
  store i64 %3053, i64* %RAX.i487, align 8
  %3054 = and i64 %3052, 4294967295
  store i64 %3054, i64* %RDX.i1328, align 8
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %3055 = trunc i64 %3052 to i32
  br label %routine_idivl__esi.exit309

routine_idivl__esi.exit309:                       ; preds = %3051, %3049
  %3056 = phi i64 [ %.pre125, %3049 ], [ %3041, %3051 ]
  %3057 = phi i32 [ %.pre124, %3049 ], [ %3055, %3051 ]
  %3058 = phi i64 [ %.pre123, %3049 ], [ %3035, %3051 ]
  %3059 = phi %struct.Memory* [ %3050, %3049 ], [ %MEMORY.31, %3051 ]
  %3060 = add i64 %3058, -7148
  %3061 = add i64 %3056, 6
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i32*
  store i32 %3057, i32* %3062, align 4
  %3063 = load i64, i64* %RBP.i, align 8
  %3064 = add i64 %3063, -7148
  %3065 = load i64, i64* %3, align 8
  %3066 = add i64 %3065, 7
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3064 to i32*
  %3068 = load i32, i32* %3067, align 4
  %3069 = add i32 %3068, -42
  %3070 = icmp ult i32 %3068, 42
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %27, align 1
  %3072 = and i32 %3069, 255
  %3073 = tail call i32 @llvm.ctpop.i32(i32 %3072)
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = xor i8 %3075, 1
  store i8 %3076, i8* %28, align 1
  %3077 = xor i32 %3069, %3068
  %3078 = lshr i32 %3077, 4
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  store i8 %3080, i8* %29, align 1
  %3081 = icmp eq i32 %3069, 0
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %30, align 1
  %3083 = lshr i32 %3069, 31
  %3084 = trunc i32 %3083 to i8
  store i8 %3084, i8* %31, align 1
  %3085 = lshr i32 %3068, 31
  %3086 = xor i32 %3083, %3085
  %3087 = add nuw nsw i32 %3086, %3085
  %3088 = icmp eq i32 %3087, 2
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %32, align 1
  %3090 = icmp ne i8 %3084, 0
  %3091 = xor i1 %3090, %3088
  %.v185 = select i1 %3091, i64 28, i64 13
  %3092 = add i64 %3065, %.v185
  store i64 %3092, i64* %3, align 8
  br i1 %3091, label %block_.L_4a9b58, label %block_4a9b49

block_4a9b49:                                     ; preds = %routine_idivl__esi.exit309
  %3093 = add i64 %3092, 6
  store i64 %3093, i64* %3, align 8
  %3094 = load i32, i32* %3067, align 4
  %3095 = add i32 %3094, -84
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i487, align 8
  %3097 = icmp ult i32 %3094, 84
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %27, align 1
  %3099 = and i32 %3095, 255
  %3100 = tail call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  store i8 %3103, i8* %28, align 1
  %3104 = xor i32 %3094, 16
  %3105 = xor i32 %3104, %3095
  %3106 = lshr i32 %3105, 4
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  store i8 %3108, i8* %29, align 1
  %3109 = icmp eq i32 %3095, 0
  %3110 = zext i1 %3109 to i8
  store i8 %3110, i8* %30, align 1
  %3111 = lshr i32 %3095, 31
  %3112 = trunc i32 %3111 to i8
  store i8 %3112, i8* %31, align 1
  %3113 = lshr i32 %3094, 31
  %3114 = xor i32 %3111, %3113
  %3115 = add nuw nsw i32 %3114, %3113
  %3116 = icmp eq i32 %3115, 2
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %32, align 1
  %3118 = add i64 %3092, 15
  store i64 %3118, i64* %3, align 8
  store i32 %3095, i32* %3067, align 4
  %.pre126 = load i64, i64* %RBP.i, align 8
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4a9b58

block_.L_4a9b58:                                  ; preds = %block_4a9b49, %routine_idivl__esi.exit309
  %3119 = phi i64 [ %.pre127, %block_4a9b49 ], [ %3092, %routine_idivl__esi.exit309 ]
  %3120 = phi i64 [ %.pre126, %block_4a9b49 ], [ %3063, %routine_idivl__esi.exit309 ]
  %3121 = add i64 %3120, -7148
  %3122 = add i64 %3119, 7
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = add i32 %3124, 42
  %3126 = icmp ult i32 %3124, -42
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %27, align 1
  %3128 = and i32 %3125, 255
  %3129 = tail call i32 @llvm.ctpop.i32(i32 %3128)
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = xor i8 %3131, 1
  store i8 %3132, i8* %28, align 1
  %3133 = xor i32 %3124, 16
  %3134 = xor i32 %3133, %3125
  %3135 = lshr i32 %3134, 4
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  store i8 %3137, i8* %29, align 1
  %3138 = icmp eq i32 %3125, 0
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %30, align 1
  %3140 = lshr i32 %3125, 31
  %3141 = trunc i32 %3140 to i8
  store i8 %3141, i8* %31, align 1
  %3142 = lshr i32 %3124, 31
  %3143 = xor i32 %3142, 1
  %3144 = xor i32 %3140, %3142
  %3145 = add nuw nsw i32 %3144, %3143
  %3146 = icmp eq i32 %3145, 2
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %32, align 1
  %3148 = icmp ne i8 %3141, 0
  %3149 = xor i1 %3148, %3146
  %.v186 = select i1 %3149, i64 13, i64 28
  %3150 = add i64 %3119, %.v186
  store i64 %3150, i64* %3, align 8
  br i1 %3149, label %block_4a9b65, label %block_.L_4a9b74

block_4a9b65:                                     ; preds = %block_.L_4a9b58
  %3151 = add i64 %3150, 6
  store i64 %3151, i64* %3, align 8
  %3152 = load i32, i32* %3123, align 4
  %3153 = add i32 %3152, 84
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RAX.i487, align 8
  %3155 = icmp ugt i32 %3152, -85
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %27, align 1
  %3157 = and i32 %3153, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %28, align 1
  %3162 = xor i32 %3152, 16
  %3163 = xor i32 %3162, %3153
  %3164 = lshr i32 %3163, 4
  %3165 = trunc i32 %3164 to i8
  %3166 = and i8 %3165, 1
  store i8 %3166, i8* %29, align 1
  %3167 = icmp eq i32 %3153, 0
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %30, align 1
  %3169 = lshr i32 %3153, 31
  %3170 = trunc i32 %3169 to i8
  store i8 %3170, i8* %31, align 1
  %3171 = lshr i32 %3152, 31
  %3172 = xor i32 %3169, %3171
  %3173 = add nuw nsw i32 %3172, %3169
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %32, align 1
  %3176 = add i64 %3150, 15
  store i64 %3176, i64* %3, align 8
  store i32 %3153, i32* %3123, align 4
  %.pre128 = load i64, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a9b74

block_.L_4a9b74:                                  ; preds = %block_.L_4a9b58, %block_4a9b65
  %3177 = phi i64 [ %3120, %block_.L_4a9b58 ], [ %.pre129, %block_4a9b65 ]
  %3178 = phi i64 [ %3150, %block_.L_4a9b58 ], [ %.pre128, %block_4a9b65 ]
  store i64 84, i64* %RAX.i487, align 8
  store i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64* %RCX.i1318, align 8
  %3179 = add i64 %3177, -7152
  %3180 = add i64 %3178, 22
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i32*
  %3182 = load i32, i32* %3181, align 4
  %3183 = sext i32 %3182 to i64
  %3184 = shl nsw i64 %3183, 5
  store i64 %3184, i64* %RDX.i1328, align 8
  %3185 = add i64 %3184, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  store i64 %3185, i64* %RCX.i1318, align 8
  %3186 = icmp ult i64 %3185, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  %3187 = icmp ult i64 %3185, %3184
  %3188 = or i1 %3186, %3187
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %27, align 1
  %3190 = trunc i64 %3185 to i32
  %3191 = and i32 %3190, 248
  %3192 = tail call i32 @llvm.ctpop.i32(i32 %3191)
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %28, align 1
  %3196 = xor i64 %3185, ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64)
  %3197 = lshr i64 %3196, 4
  %3198 = trunc i64 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %29, align 1
  %3200 = icmp eq i64 %3185, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %30, align 1
  %3202 = lshr i64 %3185, 63
  %3203 = trunc i64 %3202 to i8
  store i8 %3203, i8* %31, align 1
  %3204 = lshr i64 %3183, 58
  %3205 = and i64 %3204, 1
  %3206 = xor i64 %3202, lshr (i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64 63)
  %3207 = xor i64 %3202, %3205
  %3208 = add nuw nsw i64 %3206, %3207
  %3209 = icmp eq i64 %3208, 2
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %32, align 1
  %3211 = add i64 %3177, -52
  %3212 = add i64 %3178, 33
  store i64 %3212, i64* %3, align 8
  %3213 = inttoptr i64 %3211 to i32*
  %3214 = load i32, i32* %3213, align 4
  %3215 = sext i32 %3214 to i64
  store i64 %3215, i64* %RDX.i1328, align 8
  %3216 = shl nsw i64 %3215, 2
  %3217 = add i64 %3216, %3185
  %3218 = add i64 %3178, 36
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i32*
  %3220 = load i32, i32* %3219, align 4
  %3221 = zext i32 %3220 to i64
  store i64 %3221, i64* %RSI.i1331, align 8
  %3222 = add i64 %3177, -7148
  %3223 = add i64 %3178, 42
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i32*
  %3225 = load i32, i32* %3224, align 4
  %3226 = sub i32 %3220, %3225
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RSI.i1331, align 8
  %3228 = icmp ult i32 %3220, %3225
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %27, align 1
  %3230 = and i32 %3226, 255
  %3231 = tail call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  store i8 %3234, i8* %28, align 1
  %3235 = xor i32 %3225, %3220
  %3236 = xor i32 %3235, %3226
  %3237 = lshr i32 %3236, 4
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %29, align 1
  %3240 = icmp eq i32 %3226, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %30, align 1
  %3242 = lshr i32 %3226, 31
  %3243 = trunc i32 %3242 to i8
  store i8 %3243, i8* %31, align 1
  %3244 = lshr i32 %3220, 31
  %3245 = lshr i32 %3225, 31
  %3246 = xor i32 %3245, %3244
  %3247 = xor i32 %3242, %3244
  %3248 = add nuw nsw i32 %3247, %3246
  %3249 = icmp eq i32 %3248, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %32, align 1
  %3251 = load i64, i64* %RBP.i, align 8
  %3252 = add i64 %3251, -7224
  %3253 = load i32, i32* %EAX.i1293, align 4
  %3254 = add i64 %3178, 48
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3252 to i32*
  store i32 %3253, i32* %3255, align 4
  %3256 = load i32, i32* %ESI.i317, align 4
  %3257 = zext i32 %3256 to i64
  %3258 = load i64, i64* %3, align 8
  store i64 %3257, i64* %RAX.i487, align 8
  %3259 = sext i32 %3256 to i64
  %3260 = lshr i64 %3259, 32
  store i64 %3260, i64* %2796, align 8
  %3261 = load i64, i64* %RBP.i, align 8
  %3262 = add i64 %3261, -7224
  %3263 = add i64 %3258, 9
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RSI.i1331, align 8
  %3267 = add i64 %3258, 11
  store i64 %3267, i64* %3, align 8
  %3268 = sext i32 %3265 to i64
  %3269 = shl nuw i64 %3260, 32
  %3270 = or i64 %3269, %3257
  %3271 = sdiv i64 %3270, %3268
  %3272 = shl i64 %3271, 32
  %3273 = ashr exact i64 %3272, 32
  %3274 = icmp eq i64 %3271, %3273
  br i1 %3274, label %3277, label %3275

; <label>:3275:                                   ; preds = %block_.L_4a9b74
  %3276 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3267, %struct.Memory* %3059)
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i32, i32* %EAX.i1293, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:3277:                                   ; preds = %block_.L_4a9b74
  %3278 = srem i64 %3270, %3268
  %3279 = and i64 %3271, 4294967295
  store i64 %3279, i64* %RAX.i487, align 8
  %3280 = and i64 %3278, 4294967295
  store i64 %3280, i64* %RDX.i1328, align 8
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %3281 = trunc i64 %3271 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3277, %3275
  %3282 = phi i64 [ %.pre132, %3275 ], [ %3267, %3277 ]
  %3283 = phi i32 [ %.pre131, %3275 ], [ %3281, %3277 ]
  %3284 = phi i64 [ %.pre130, %3275 ], [ %3261, %3277 ]
  %3285 = phi %struct.Memory* [ %3276, %3275 ], [ %3059, %3277 ]
  %3286 = add i64 %3284, -7144
  %3287 = add i64 %3282, 6
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i32*
  store i32 %3283, i32* %3288, align 4
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -7144
  %3291 = load i64, i64* %3, align 8
  %3292 = add i64 %3291, 6
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3290 to i32*
  %3294 = load i32, i32* %3293, align 4
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RAX.i487, align 8
  %3296 = add i64 %3289, -32
  %3297 = add i64 %3291, 10
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to i64*
  %3299 = load i64, i64* %3298, align 8
  store i64 %3299, i64* %RCX.i1318, align 8
  %3300 = add i64 %3299, 32
  %3301 = add i64 %3291, 13
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i32*
  %3303 = load i32, i32* %3302, align 4
  %3304 = sub i32 %3294, %3303
  %3305 = icmp ult i32 %3294, %3303
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %27, align 1
  %3307 = and i32 %3304, 255
  %3308 = tail call i32 @llvm.ctpop.i32(i32 %3307)
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = xor i8 %3310, 1
  store i8 %3311, i8* %28, align 1
  %3312 = xor i32 %3303, %3294
  %3313 = xor i32 %3312, %3304
  %3314 = lshr i32 %3313, 4
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  store i8 %3316, i8* %29, align 1
  %3317 = icmp eq i32 %3304, 0
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %30, align 1
  %3319 = lshr i32 %3304, 31
  %3320 = trunc i32 %3319 to i8
  store i8 %3320, i8* %31, align 1
  %3321 = lshr i32 %3294, 31
  %3322 = lshr i32 %3303, 31
  %3323 = xor i32 %3322, %3321
  %3324 = xor i32 %3319, %3321
  %3325 = add nuw nsw i32 %3324, %3323
  %3326 = icmp eq i32 %3325, 2
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %32, align 1
  %.v187 = select i1 %3317, i64 19, i64 34
  %3328 = add i64 %3291, %.v187
  store i64 %3328, i64* %3, align 8
  br i1 %3317, label %block_4a9bc8, label %block_.L_4a9bd7

block_4a9bc8:                                     ; preds = %routine_idivl__esi.exit
  %3329 = add i64 %3289, -7136
  %3330 = add i64 %3328, 6
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i32*
  %3332 = load i32, i32* %3331, align 4
  %3333 = and i32 %3332, -3
  %3334 = and i32 %3332, -3
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3336 = and i32 %3332, 253
  %3337 = tail call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  store i8 %3340, i8* %28, align 1
  %3341 = icmp eq i32 %3333, 0
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %30, align 1
  %3343 = lshr i32 %3332, 31
  %3344 = trunc i32 %3343 to i8
  store i8 %3344, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3345 = add i64 %3328, 15
  store i64 %3345, i64* %3, align 8
  store i32 %3334, i32* %3331, align 4
  %.pre133 = load i64, i64* %RBP.i, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_4a9bd7

block_.L_4a9bd7:                                  ; preds = %routine_idivl__esi.exit, %block_4a9bc8
  %3346 = phi i64 [ %.pre134, %block_4a9bc8 ], [ %3328, %routine_idivl__esi.exit ]
  %3347 = phi i64 [ %.pre133, %block_4a9bc8 ], [ %3289, %routine_idivl__esi.exit ]
  %3348 = add i64 %3347, -7144
  %3349 = add i64 %3346, 6
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RAX.i487, align 8
  %3353 = add i64 %3347, -32
  %3354 = add i64 %3346, 10
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3353 to i64*
  %3356 = load i64, i64* %3355, align 8
  store i64 %3356, i64* %RCX.i1318, align 8
  %3357 = add i64 %3356, 24
  %3358 = add i64 %3346, 13
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = sub i32 %3351, %3360
  %3362 = icmp ult i32 %3351, %3360
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %27, align 1
  %3364 = and i32 %3361, 255
  %3365 = tail call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %28, align 1
  %3369 = xor i32 %3360, %3351
  %3370 = xor i32 %3369, %3361
  %3371 = lshr i32 %3370, 4
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  store i8 %3373, i8* %29, align 1
  %3374 = icmp eq i32 %3361, 0
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %30, align 1
  %3376 = lshr i32 %3361, 31
  %3377 = trunc i32 %3376 to i8
  store i8 %3377, i8* %31, align 1
  %3378 = lshr i32 %3351, 31
  %3379 = lshr i32 %3360, 31
  %3380 = xor i32 %3379, %3378
  %3381 = xor i32 %3376, %3378
  %3382 = add nuw nsw i32 %3381, %3380
  %3383 = icmp eq i32 %3382, 2
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %32, align 1
  %.v188 = select i1 %3374, i64 19, i64 34
  %3385 = add i64 %3346, %.v188
  store i64 %3385, i64* %3, align 8
  br i1 %3374, label %block_4a9bea, label %block_.L_4a9bf9

block_4a9bea:                                     ; preds = %block_.L_4a9bd7
  %3386 = add i64 %3347, -7136
  %3387 = add i64 %3385, 6
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i32*
  %3389 = load i32, i32* %3388, align 4
  %3390 = and i32 %3389, -2
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3392 = and i32 %3389, 254
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %28, align 1
  %3397 = icmp ult i32 %3389, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %30, align 1
  %3399 = lshr i32 %3389, 31
  %3400 = trunc i32 %3399 to i8
  store i8 %3400, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3401 = add i64 %3385, 15
  store i64 %3401, i64* %3, align 8
  store i32 %3390, i32* %3388, align 4
  %.pre135 = load i64, i64* %RBP.i, align 8
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_4a9bf9

block_.L_4a9bf9:                                  ; preds = %block_.L_4a9bd7, %block_4a9bea
  %3402 = phi i64 [ %.pre136, %block_4a9bea ], [ %3385, %block_.L_4a9bd7 ]
  %3403 = phi i64 [ %.pre135, %block_4a9bea ], [ %3347, %block_.L_4a9bd7 ]
  %3404 = add i64 %3403, -7148
  %3405 = add i64 %3402, 6
  store i64 %3405, i64* %3, align 8
  %3406 = inttoptr i64 %3404 to i32*
  %3407 = load i32, i32* %3406, align 4
  %3408 = zext i32 %3407 to i64
  store i64 %3408, i64* %RAX.i487, align 8
  %3409 = add i64 %3403, -32
  %3410 = add i64 %3402, 10
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3409 to i64*
  %3412 = load i64, i64* %3411, align 8
  store i64 %3412, i64* %RCX.i1318, align 8
  %3413 = add i64 %3412, 36
  %3414 = add i64 %3402, 13
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i32*
  %3416 = load i32, i32* %3415, align 4
  %3417 = sub i32 %3407, %3416
  %3418 = icmp ult i32 %3407, %3416
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %27, align 1
  %3420 = and i32 %3417, 255
  %3421 = tail call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  store i8 %3424, i8* %28, align 1
  %3425 = xor i32 %3416, %3407
  %3426 = xor i32 %3425, %3417
  %3427 = lshr i32 %3426, 4
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  store i8 %3429, i8* %29, align 1
  %3430 = icmp eq i32 %3417, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %30, align 1
  %3432 = lshr i32 %3417, 31
  %3433 = trunc i32 %3432 to i8
  store i8 %3433, i8* %31, align 1
  %3434 = lshr i32 %3407, 31
  %3435 = lshr i32 %3416, 31
  %3436 = xor i32 %3435, %3434
  %3437 = xor i32 %3432, %3434
  %3438 = add nuw nsw i32 %3437, %3436
  %3439 = icmp eq i32 %3438, 2
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %32, align 1
  %.v189 = select i1 %3430, i64 19, i64 34
  %3441 = add i64 %3402, %.v189
  store i64 %3441, i64* %3, align 8
  br i1 %3430, label %block_4a9c0c, label %block_.L_4a9c1b

block_4a9c0c:                                     ; preds = %block_.L_4a9bf9
  %3442 = add i64 %3403, -7136
  %3443 = add i64 %3441, 6
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = and i32 %3445, -5
  %3447 = and i32 %3445, -5
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3449 = and i32 %3445, 251
  %3450 = tail call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  %3453 = xor i8 %3452, 1
  store i8 %3453, i8* %28, align 1
  %3454 = icmp eq i32 %3446, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %30, align 1
  %3456 = lshr i32 %3445, 31
  %3457 = trunc i32 %3456 to i8
  store i8 %3457, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3458 = add i64 %3441, 15
  store i64 %3458, i64* %3, align 8
  store i32 %3447, i32* %3444, align 4
  %.pre137 = load i64, i64* %RBP.i, align 8
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_4a9c1b

block_.L_4a9c1b:                                  ; preds = %block_.L_4a9bf9, %block_4a9c0c
  %3459 = phi i64 [ %.pre138, %block_4a9c0c ], [ %3441, %block_.L_4a9bf9 ]
  %3460 = phi i64 [ %.pre137, %block_4a9c0c ], [ %3403, %block_.L_4a9bf9 ]
  %3461 = add i64 %3460, -7148
  %3462 = add i64 %3459, 6
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = zext i32 %3464 to i64
  store i64 %3465, i64* %RAX.i487, align 8
  %3466 = add i64 %3460, -32
  %3467 = add i64 %3459, 10
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i64*
  %3469 = load i64, i64* %3468, align 8
  store i64 %3469, i64* %RCX.i1318, align 8
  %3470 = add i64 %3469, 28
  %3471 = add i64 %3459, 13
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = sub i32 %3464, %3473
  %3475 = icmp ult i32 %3464, %3473
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %27, align 1
  %3477 = and i32 %3474, 255
  %3478 = tail call i32 @llvm.ctpop.i32(i32 %3477)
  %3479 = trunc i32 %3478 to i8
  %3480 = and i8 %3479, 1
  %3481 = xor i8 %3480, 1
  store i8 %3481, i8* %28, align 1
  %3482 = xor i32 %3473, %3464
  %3483 = xor i32 %3482, %3474
  %3484 = lshr i32 %3483, 4
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  store i8 %3486, i8* %29, align 1
  %3487 = icmp eq i32 %3474, 0
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %30, align 1
  %3489 = lshr i32 %3474, 31
  %3490 = trunc i32 %3489 to i8
  store i8 %3490, i8* %31, align 1
  %3491 = lshr i32 %3464, 31
  %3492 = lshr i32 %3473, 31
  %3493 = xor i32 %3492, %3491
  %3494 = xor i32 %3489, %3491
  %3495 = add nuw nsw i32 %3494, %3493
  %3496 = icmp eq i32 %3495, 2
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %32, align 1
  %.v190 = select i1 %3487, i64 19, i64 34
  %3498 = add i64 %3459, %.v190
  store i64 %3498, i64* %3, align 8
  br i1 %3487, label %block_4a9c2e, label %block_.L_4a9c3d

block_4a9c2e:                                     ; preds = %block_.L_4a9c1b
  %3499 = add i64 %3460, -7136
  %3500 = add i64 %3498, 6
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = and i32 %3502, -9
  %3504 = and i32 %3502, -9
  %3505 = zext i32 %3504 to i64
  store i64 %3505, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3506 = and i32 %3502, 247
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506)
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %28, align 1
  %3511 = icmp eq i32 %3503, 0
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %30, align 1
  %3513 = lshr i32 %3502, 31
  %3514 = trunc i32 %3513 to i8
  store i8 %3514, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3515 = add i64 %3498, 15
  store i64 %3515, i64* %3, align 8
  store i32 %3504, i32* %3501, align 4
  %.pre139 = load i64, i64* %3, align 8
  %.pre140 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a9c3d

block_.L_4a9c3d:                                  ; preds = %block_.L_4a9c1b, %block_4a9c2e
  %3516 = phi i64 [ %.pre140, %block_4a9c2e ], [ %3460, %block_.L_4a9c1b ]
  %3517 = phi i64 [ %.pre139, %block_4a9c2e ], [ %3498, %block_.L_4a9c1b ]
  store i64 ptrtoint (%G__0x588b2c_type* @G__0x588b2c to i64), i64* %RDI.i1284, align 8
  %3518 = add i64 %3516, -7120
  store i64 %3518, i64* %RAX.i487, align 8
  %3519 = add i64 %3516, -7124
  %3520 = add i64 %3517, 23
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = zext i32 %3522 to i64
  store i64 %3523, i64* %RCX.i1318, align 8
  %3524 = add i64 %3516, -7144
  %3525 = add i64 %3517, 29
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = add i32 %3527, %3522
  %3529 = zext i32 %3528 to i64
  store i64 %3529, i64* %RCX.i1318, align 8
  %3530 = sext i32 %3528 to i64
  %3531 = mul nsw i64 %3530, 84
  store i64 %3531, i64* %RDX.i1328, align 8
  %3532 = lshr i64 %3531, 63
  %3533 = add i64 %3531, %3518
  store i64 %3533, i64* %RAX.i487, align 8
  %3534 = icmp ult i64 %3533, %3518
  %3535 = icmp ult i64 %3533, %3531
  %3536 = or i1 %3534, %3535
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %27, align 1
  %3538 = trunc i64 %3533 to i32
  %3539 = and i32 %3538, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539)
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %28, align 1
  %3544 = xor i64 %3531, %3518
  %3545 = xor i64 %3544, %3533
  %3546 = lshr i64 %3545, 4
  %3547 = trunc i64 %3546 to i8
  %3548 = and i8 %3547, 1
  store i8 %3548, i8* %29, align 1
  %3549 = icmp eq i64 %3533, 0
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %30, align 1
  %3551 = lshr i64 %3533, 63
  %3552 = trunc i64 %3551 to i8
  store i8 %3552, i8* %31, align 1
  %3553 = lshr i64 %3518, 63
  %3554 = xor i64 %3551, %3553
  %3555 = xor i64 %3551, %3532
  %3556 = add nuw nsw i64 %3554, %3555
  %3557 = icmp eq i64 %3556, 2
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %32, align 1
  %3559 = load i64, i64* %RBP.i, align 8
  %3560 = add i64 %3559, -7128
  %3561 = add i64 %3517, 45
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3560 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i1318, align 8
  %3565 = add i64 %3559, -7148
  %3566 = add i64 %3517, 51
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3565 to i32*
  %3568 = load i32, i32* %3567, align 4
  %3569 = add i32 %3568, %3563
  %3570 = zext i32 %3569 to i64
  store i64 %3570, i64* %RCX.i1318, align 8
  %3571 = icmp ult i32 %3569, %3563
  %3572 = icmp ult i32 %3569, %3568
  %3573 = or i1 %3571, %3572
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %27, align 1
  %3575 = and i32 %3569, 255
  %3576 = tail call i32 @llvm.ctpop.i32(i32 %3575)
  %3577 = trunc i32 %3576 to i8
  %3578 = and i8 %3577, 1
  %3579 = xor i8 %3578, 1
  store i8 %3579, i8* %28, align 1
  %3580 = xor i32 %3568, %3563
  %3581 = xor i32 %3580, %3569
  %3582 = lshr i32 %3581, 4
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %29, align 1
  %3585 = icmp eq i32 %3569, 0
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %30, align 1
  %3587 = lshr i32 %3569, 31
  %3588 = trunc i32 %3587 to i8
  store i8 %3588, i8* %31, align 1
  %3589 = lshr i32 %3563, 31
  %3590 = lshr i32 %3568, 31
  %3591 = xor i32 %3587, %3589
  %3592 = xor i32 %3587, %3590
  %3593 = add nuw nsw i32 %3591, %3592
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %32, align 1
  %3596 = sext i32 %3569 to i64
  store i64 %3596, i64* %RDX.i1328, align 8
  %3597 = add i64 %3533, %3596
  %3598 = add i64 %3517, 58
  store i64 %3598, i64* %3, align 8
  %3599 = inttoptr i64 %3597 to i8*
  %3600 = load i8, i8* %3599, align 1
  store i8 %3600, i8* %SIL.i591, align 1
  %3601 = add i64 %3559, -48
  %3602 = add i64 %3517, 62
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i64*
  %3604 = load i64, i64* %3603, align 8
  store i64 %3604, i64* %RAX.i487, align 8
  %3605 = add i64 %3559, -7152
  %3606 = add i64 %3517, 69
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = sext i32 %3608 to i64
  store i64 %3609, i64* %RDX.i1328, align 8
  %3610 = add i64 %3604, %3609
  %3611 = add i64 %3517, 73
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i8*
  store i8 %3600, i8* %3612, align 1
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -48
  %3615 = load i64, i64* %3, align 8
  %3616 = add i64 %3615, 4
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i64*
  %3618 = load i64, i64* %3617, align 8
  store i64 %3618, i64* %RAX.i487, align 8
  %3619 = add i64 %3613, -7152
  %3620 = add i64 %3615, 11
  store i64 %3620, i64* %3, align 8
  %3621 = inttoptr i64 %3619 to i32*
  %3622 = load i32, i32* %3621, align 4
  %3623 = sext i32 %3622 to i64
  store i64 %3623, i64* %RDX.i1328, align 8
  %3624 = add i64 %3618, %3623
  %3625 = add i64 %3615, 15
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i8*
  %3627 = load i8, i8* %3626, align 1
  %3628 = sext i8 %3627 to i64
  %3629 = and i64 %3628, 4294967295
  store i64 %3629, i64* %RSI.i1331, align 8
  %3630 = add i64 %3615, -691286
  %3631 = add i64 %3615, 20
  %3632 = load i64, i64* %6, align 8
  %3633 = add i64 %3632, -8
  %3634 = inttoptr i64 %3633 to i64*
  store i64 %3631, i64* %3634, align 8
  store i64 %3633, i64* %6, align 8
  store i64 %3630, i64* %3, align 8
  %call2_4a9c95 = tail call %struct.Memory* @sub_401030.strchr_plt(%struct.State* nonnull %0, i64 %3630, %struct.Memory* %3285)
  %3635 = load i64, i64* %RAX.i487, align 8
  %3636 = load i64, i64* %3, align 8
  store i8 0, i8* %27, align 1
  %3637 = trunc i64 %3635 to i32
  %3638 = and i32 %3637, 255
  %3639 = tail call i32 @llvm.ctpop.i32(i32 %3638)
  %3640 = trunc i32 %3639 to i8
  %3641 = and i8 %3640, 1
  %3642 = xor i8 %3641, 1
  store i8 %3642, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %3643 = icmp eq i64 %3635, 0
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %30, align 1
  %3645 = lshr i64 %3635, 63
  %3646 = trunc i64 %3645 to i8
  store i8 %3646, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v191 = select i1 %3643, i64 25, i64 10
  %3647 = add i64 %3636, %.v191
  store i64 %3647, i64* %3, align 8
  br i1 %3643, label %block_.L_4a9cb3, label %block_4a9ca4

block_4a9ca4:                                     ; preds = %block_.L_4a9c3d
  %3648 = load i64, i64* %RBP.i, align 8
  %3649 = add i64 %3648, -7140
  %3650 = add i64 %3647, 6
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i32*
  %3652 = load i32, i32* %3651, align 4
  %3653 = add i32 %3652, -1
  %3654 = zext i32 %3653 to i64
  store i64 %3654, i64* %RAX.i487, align 8
  %3655 = icmp ne i32 %3652, 0
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %27, align 1
  %3657 = and i32 %3653, 255
  %3658 = tail call i32 @llvm.ctpop.i32(i32 %3657)
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = xor i8 %3660, 1
  store i8 %3661, i8* %28, align 1
  %3662 = xor i32 %3652, 16
  %3663 = xor i32 %3662, %3653
  %3664 = lshr i32 %3663, 4
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  store i8 %3666, i8* %29, align 1
  %3667 = icmp eq i32 %3653, 0
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %30, align 1
  %3669 = lshr i32 %3653, 31
  %3670 = trunc i32 %3669 to i8
  store i8 %3670, i8* %31, align 1
  %3671 = lshr i32 %3652, 31
  %3672 = xor i32 %3669, %3671
  %3673 = xor i32 %3669, 1
  %3674 = add nuw nsw i32 %3672, %3673
  %3675 = icmp eq i32 %3674, 2
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %32, align 1
  %3677 = add i64 %3647, 15
  store i64 %3677, i64* %3, align 8
  store i32 %3653, i32* %3651, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_4a9cb3

block_.L_4a9cb3:                                  ; preds = %block_4a9ca4, %block_.L_4a9c3d
  %3678 = phi i64 [ %.pre141, %block_4a9ca4 ], [ %3647, %block_.L_4a9c3d ]
  store i64 ptrtoint (%G__0x588b35_type* @G__0x588b35 to i64), i64* %RDI.i1284, align 8
  %3679 = load i64, i64* %RBP.i, align 8
  %3680 = add i64 %3679, -48
  %3681 = add i64 %3678, 14
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i64*
  %3683 = load i64, i64* %3682, align 8
  store i64 %3683, i64* %RAX.i487, align 8
  %3684 = add i64 %3679, -7152
  %3685 = add i64 %3678, 21
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = sext i32 %3687 to i64
  store i64 %3688, i64* %RCX.i1318, align 8
  %3689 = add i64 %3683, %3688
  %3690 = add i64 %3678, 25
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i8*
  %3692 = load i8, i8* %3691, align 1
  %3693 = sext i8 %3692 to i64
  %3694 = and i64 %3693, 4294967295
  store i64 %3694, i64* %RSI.i1331, align 8
  %3695 = add i64 %3678, -691331
  %3696 = add i64 %3678, 30
  %3697 = load i64, i64* %6, align 8
  %3698 = add i64 %3697, -8
  %3699 = inttoptr i64 %3698 to i64*
  store i64 %3696, i64* %3699, align 8
  store i64 %3698, i64* %6, align 8
  store i64 %3695, i64* %3, align 8
  %call2_4a9ccc = tail call %struct.Memory* @sub_401030.strchr_plt(%struct.State* nonnull %0, i64 %3695, %struct.Memory* %call2_4a9c95)
  %3700 = load i64, i64* %RAX.i487, align 8
  %3701 = load i64, i64* %3, align 8
  store i8 0, i8* %27, align 1
  %3702 = trunc i64 %3700 to i32
  %3703 = and i32 %3702, 255
  %3704 = tail call i32 @llvm.ctpop.i32(i32 %3703)
  %3705 = trunc i32 %3704 to i8
  %3706 = and i8 %3705, 1
  %3707 = xor i8 %3706, 1
  store i8 %3707, i8* %28, align 1
  store i8 0, i8* %29, align 1
  %3708 = icmp eq i64 %3700, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %30, align 1
  %3710 = lshr i64 %3700, 63
  %3711 = trunc i64 %3710 to i8
  store i8 %3711, i8* %31, align 1
  store i8 0, i8* %32, align 1
  %.v192 = select i1 %3708, i64 151, i64 10
  %3712 = add i64 %3701, %.v192
  store i64 %3712, i64* %3, align 8
  br i1 %3708, label %block_.L_4a9d68, label %block_4a9cdb

block_4a9cdb:                                     ; preds = %block_.L_4a9cb3
  %3713 = load i64, i64* %RBP.i, align 8
  %3714 = add i64 %3713, -7144
  %3715 = add i64 %3712, 6
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RAX.i487, align 8
  %3719 = add i64 %3713, -32
  %3720 = add i64 %3712, 10
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i64*
  %3722 = load i64, i64* %3721, align 8
  store i64 %3722, i64* %RCX.i1318, align 8
  %3723 = add i64 %3722, 32
  %3724 = add i64 %3712, 13
  store i64 %3724, i64* %3, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = sub i32 %3717, %3726
  %3728 = icmp ult i32 %3717, %3726
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %27, align 1
  %3730 = and i32 %3727, 255
  %3731 = tail call i32 @llvm.ctpop.i32(i32 %3730)
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  %3734 = xor i8 %3733, 1
  store i8 %3734, i8* %28, align 1
  %3735 = xor i32 %3726, %3717
  %3736 = xor i32 %3735, %3727
  %3737 = lshr i32 %3736, 4
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  store i8 %3739, i8* %29, align 1
  %3740 = icmp eq i32 %3727, 0
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %30, align 1
  %3742 = lshr i32 %3727, 31
  %3743 = trunc i32 %3742 to i8
  store i8 %3743, i8* %31, align 1
  %3744 = lshr i32 %3717, 31
  %3745 = lshr i32 %3726, 31
  %3746 = xor i32 %3745, %3744
  %3747 = xor i32 %3742, %3744
  %3748 = add nuw nsw i32 %3747, %3746
  %3749 = icmp eq i32 %3748, 2
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %32, align 1
  %3751 = icmp ne i8 %3743, 0
  %3752 = xor i1 %3751, %3749
  %3753 = or i1 %3740, %3752
  %.v193 = select i1 %3753, i64 34, i64 19
  %3754 = add i64 %3712, %.v193
  store i64 %3754, i64* %3, align 8
  br i1 %3753, label %block_.L_4a9cfd, label %block_4a9cee

block_4a9cee:                                     ; preds = %block_4a9cdb
  %3755 = add i64 %3713, -7132
  %3756 = add i64 %3754, 6
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = and i32 %3758, -3
  %3760 = and i32 %3758, -3
  %3761 = zext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3762 = and i32 %3758, 253
  %3763 = tail call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  store i8 %3766, i8* %28, align 1
  %3767 = icmp eq i32 %3759, 0
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %30, align 1
  %3769 = lshr i32 %3758, 31
  %3770 = trunc i32 %3769 to i8
  store i8 %3770, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3771 = add i64 %3754, 15
  store i64 %3771, i64* %3, align 8
  store i32 %3760, i32* %3757, align 4
  %.pre142 = load i64, i64* %RBP.i, align 8
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_4a9cfd

block_.L_4a9cfd:                                  ; preds = %block_4a9cee, %block_4a9cdb
  %3772 = phi i64 [ %.pre143, %block_4a9cee ], [ %3754, %block_4a9cdb ]
  %3773 = phi i64 [ %.pre142, %block_4a9cee ], [ %3713, %block_4a9cdb ]
  %3774 = add i64 %3773, -7144
  %3775 = add i64 %3772, 6
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i32*
  %3777 = load i32, i32* %3776, align 4
  %3778 = zext i32 %3777 to i64
  store i64 %3778, i64* %RAX.i487, align 8
  %3779 = add i64 %3773, -32
  %3780 = add i64 %3772, 10
  store i64 %3780, i64* %3, align 8
  %3781 = inttoptr i64 %3779 to i64*
  %3782 = load i64, i64* %3781, align 8
  store i64 %3782, i64* %RCX.i1318, align 8
  %3783 = add i64 %3782, 24
  %3784 = add i64 %3772, 13
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i32*
  %3786 = load i32, i32* %3785, align 4
  %3787 = sub i32 %3777, %3786
  %3788 = icmp ult i32 %3777, %3786
  %3789 = zext i1 %3788 to i8
  store i8 %3789, i8* %27, align 1
  %3790 = and i32 %3787, 255
  %3791 = tail call i32 @llvm.ctpop.i32(i32 %3790)
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  %3794 = xor i8 %3793, 1
  store i8 %3794, i8* %28, align 1
  %3795 = xor i32 %3786, %3777
  %3796 = xor i32 %3795, %3787
  %3797 = lshr i32 %3796, 4
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  store i8 %3799, i8* %29, align 1
  %3800 = icmp eq i32 %3787, 0
  %3801 = zext i1 %3800 to i8
  store i8 %3801, i8* %30, align 1
  %3802 = lshr i32 %3787, 31
  %3803 = trunc i32 %3802 to i8
  store i8 %3803, i8* %31, align 1
  %3804 = lshr i32 %3777, 31
  %3805 = lshr i32 %3786, 31
  %3806 = xor i32 %3805, %3804
  %3807 = xor i32 %3802, %3804
  %3808 = add nuw nsw i32 %3807, %3806
  %3809 = icmp eq i32 %3808, 2
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %32, align 1
  %3811 = icmp ne i8 %3803, 0
  %3812 = xor i1 %3811, %3809
  %.v194 = select i1 %3812, i64 19, i64 34
  %3813 = add i64 %3772, %.v194
  store i64 %3813, i64* %3, align 8
  br i1 %3812, label %block_4a9d10, label %block_.L_4a9d1f

block_4a9d10:                                     ; preds = %block_.L_4a9cfd
  %3814 = add i64 %3773, -7132
  %3815 = add i64 %3813, 6
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3814 to i32*
  %3817 = load i32, i32* %3816, align 4
  %3818 = and i32 %3817, -2
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3820 = and i32 %3817, 254
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %28, align 1
  %3825 = icmp ult i32 %3817, 2
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %30, align 1
  %3827 = lshr i32 %3817, 31
  %3828 = trunc i32 %3827 to i8
  store i8 %3828, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3829 = add i64 %3813, 15
  store i64 %3829, i64* %3, align 8
  store i32 %3818, i32* %3816, align 4
  %.pre144 = load i64, i64* %RBP.i, align 8
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_4a9d1f

block_.L_4a9d1f:                                  ; preds = %block_.L_4a9cfd, %block_4a9d10
  %3830 = phi i64 [ %3813, %block_.L_4a9cfd ], [ %.pre145, %block_4a9d10 ]
  %3831 = phi i64 [ %3773, %block_.L_4a9cfd ], [ %.pre144, %block_4a9d10 ]
  %3832 = add i64 %3831, -7148
  %3833 = add i64 %3830, 6
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RAX.i487, align 8
  %3837 = add i64 %3831, -32
  %3838 = add i64 %3830, 10
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i64*
  %3840 = load i64, i64* %3839, align 8
  store i64 %3840, i64* %RCX.i1318, align 8
  %3841 = add i64 %3840, 36
  %3842 = add i64 %3830, 13
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = sub i32 %3835, %3844
  %3846 = icmp ult i32 %3835, %3844
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %27, align 1
  %3848 = and i32 %3845, 255
  %3849 = tail call i32 @llvm.ctpop.i32(i32 %3848)
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  %3852 = xor i8 %3851, 1
  store i8 %3852, i8* %28, align 1
  %3853 = xor i32 %3844, %3835
  %3854 = xor i32 %3853, %3845
  %3855 = lshr i32 %3854, 4
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  store i8 %3857, i8* %29, align 1
  %3858 = icmp eq i32 %3845, 0
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %30, align 1
  %3860 = lshr i32 %3845, 31
  %3861 = trunc i32 %3860 to i8
  store i8 %3861, i8* %31, align 1
  %3862 = lshr i32 %3835, 31
  %3863 = lshr i32 %3844, 31
  %3864 = xor i32 %3863, %3862
  %3865 = xor i32 %3860, %3862
  %3866 = add nuw nsw i32 %3865, %3864
  %3867 = icmp eq i32 %3866, 2
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %32, align 1
  %3869 = icmp ne i8 %3861, 0
  %3870 = xor i1 %3869, %3867
  %3871 = or i1 %3858, %3870
  %.v195 = select i1 %3871, i64 34, i64 19
  %3872 = add i64 %3830, %.v195
  store i64 %3872, i64* %3, align 8
  br i1 %3871, label %block_.L_4a9d41, label %block_4a9d32

block_4a9d32:                                     ; preds = %block_.L_4a9d1f
  %3873 = add i64 %3831, -7132
  %3874 = add i64 %3872, 6
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3873 to i32*
  %3876 = load i32, i32* %3875, align 4
  %3877 = and i32 %3876, -5
  %3878 = and i32 %3876, -5
  %3879 = zext i32 %3878 to i64
  store i64 %3879, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3880 = and i32 %3876, 251
  %3881 = tail call i32 @llvm.ctpop.i32(i32 %3880)
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  %3884 = xor i8 %3883, 1
  store i8 %3884, i8* %28, align 1
  %3885 = icmp eq i32 %3877, 0
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %30, align 1
  %3887 = lshr i32 %3876, 31
  %3888 = trunc i32 %3887 to i8
  store i8 %3888, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3889 = add i64 %3872, 15
  store i64 %3889, i64* %3, align 8
  store i32 %3878, i32* %3875, align 4
  %.pre146 = load i64, i64* %RBP.i, align 8
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_4a9d41

block_.L_4a9d41:                                  ; preds = %block_4a9d32, %block_.L_4a9d1f
  %3890 = phi i64 [ %.pre147, %block_4a9d32 ], [ %3872, %block_.L_4a9d1f ]
  %3891 = phi i64 [ %.pre146, %block_4a9d32 ], [ %3831, %block_.L_4a9d1f ]
  %3892 = add i64 %3891, -7148
  %3893 = add i64 %3890, 6
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %RAX.i487, align 8
  %3897 = add i64 %3891, -32
  %3898 = add i64 %3890, 10
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i64*
  %3900 = load i64, i64* %3899, align 8
  store i64 %3900, i64* %RCX.i1318, align 8
  %3901 = add i64 %3900, 28
  %3902 = add i64 %3890, 13
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = sub i32 %3895, %3904
  %3906 = icmp ult i32 %3895, %3904
  %3907 = zext i1 %3906 to i8
  store i8 %3907, i8* %27, align 1
  %3908 = and i32 %3905, 255
  %3909 = tail call i32 @llvm.ctpop.i32(i32 %3908)
  %3910 = trunc i32 %3909 to i8
  %3911 = and i8 %3910, 1
  %3912 = xor i8 %3911, 1
  store i8 %3912, i8* %28, align 1
  %3913 = xor i32 %3904, %3895
  %3914 = xor i32 %3913, %3905
  %3915 = lshr i32 %3914, 4
  %3916 = trunc i32 %3915 to i8
  %3917 = and i8 %3916, 1
  store i8 %3917, i8* %29, align 1
  %3918 = icmp eq i32 %3905, 0
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %30, align 1
  %3920 = lshr i32 %3905, 31
  %3921 = trunc i32 %3920 to i8
  store i8 %3921, i8* %31, align 1
  %3922 = lshr i32 %3895, 31
  %3923 = lshr i32 %3904, 31
  %3924 = xor i32 %3923, %3922
  %3925 = xor i32 %3920, %3922
  %3926 = add nuw nsw i32 %3925, %3924
  %3927 = icmp eq i32 %3926, 2
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %32, align 1
  %3929 = icmp ne i8 %3921, 0
  %3930 = xor i1 %3929, %3927
  %.v196 = select i1 %3930, i64 19, i64 34
  %3931 = add i64 %3890, %.v196
  store i64 %3931, i64* %3, align 8
  br i1 %3930, label %block_4a9d54, label %block_.L_4a9d63

block_4a9d54:                                     ; preds = %block_.L_4a9d41
  %3932 = add i64 %3891, -7132
  %3933 = add i64 %3931, 6
  store i64 %3933, i64* %3, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = and i32 %3935, -9
  %3937 = and i32 %3935, -9
  %3938 = zext i32 %3937 to i64
  store i64 %3938, i64* %RAX.i487, align 8
  store i8 0, i8* %27, align 1
  %3939 = and i32 %3935, 247
  %3940 = tail call i32 @llvm.ctpop.i32(i32 %3939)
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  store i8 %3943, i8* %28, align 1
  %3944 = icmp eq i32 %3936, 0
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %30, align 1
  %3946 = lshr i32 %3935, 31
  %3947 = trunc i32 %3946 to i8
  store i8 %3947, i8* %31, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %29, align 1
  %3948 = add i64 %3931, 15
  store i64 %3948, i64* %3, align 8
  store i32 %3937, i32* %3934, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_4a9d63

block_.L_4a9d63:                                  ; preds = %block_.L_4a9d41, %block_4a9d54
  %3949 = phi i64 [ %3931, %block_.L_4a9d41 ], [ %.pre148, %block_4a9d54 ]
  %3950 = add i64 %3949, 5
  store i64 %3950, i64* %3, align 8
  br label %block_.L_4a9d68

block_.L_4a9d68:                                  ; preds = %block_.L_4a9d63, %block_.L_4a9cb3
  %3951 = phi i64 [ %3950, %block_.L_4a9d63 ], [ %3712, %block_.L_4a9cb3 ]
  %3952 = load i64, i64* %RBP.i, align 8
  %3953 = add i64 %3952, -7152
  %3954 = add i64 %3951, 11
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = add i32 %3956, 1
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i487, align 8
  %3959 = icmp eq i32 %3956, -1
  %3960 = icmp eq i32 %3957, 0
  %3961 = or i1 %3959, %3960
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %27, align 1
  %3963 = and i32 %3957, 255
  %3964 = tail call i32 @llvm.ctpop.i32(i32 %3963)
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = xor i8 %3966, 1
  store i8 %3967, i8* %28, align 1
  %3968 = xor i32 %3957, %3956
  %3969 = lshr i32 %3968, 4
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  store i8 %3971, i8* %29, align 1
  %3972 = zext i1 %3960 to i8
  store i8 %3972, i8* %30, align 1
  %3973 = lshr i32 %3957, 31
  %3974 = trunc i32 %3973 to i8
  store i8 %3974, i8* %31, align 1
  %3975 = lshr i32 %3956, 31
  %3976 = xor i32 %3973, %3975
  %3977 = add nuw nsw i32 %3976, %3973
  %3978 = icmp eq i32 %3977, 2
  %3979 = zext i1 %3978 to i8
  store i8 %3979, i8* %32, align 1
  %3980 = add i64 %3951, 20
  store i64 %3980, i64* %3, align 8
  store i32 %3957, i32* %3955, align 4
  %3981 = load i64, i64* %3, align 8
  %3982 = add i64 %3981, -750
  store i64 %3982, i64* %3, align 8
  br label %block_.L_4a9a8e
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1c28___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -7208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 7208
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
define %struct.Memory* @routine_movl__0x23___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 35, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1b90___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 7056, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r10d___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6e4___r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1764, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d___r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %5 = load i32, i32* %R14D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2a___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 42
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -43
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1bd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1bd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7128
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__r10d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1bf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x1c00__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7168
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x1c08__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7176
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x1c08__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bf8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1c00__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xaf3458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_4a92ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x588b0b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588b0b_type* @G__0x588b0b to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c0c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -63
  %10 = icmp ult i32 %8, 63
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a9367(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x15__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3f__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -63
  %10 = icmp ult i32 %8, 63
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a934e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 84
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
define %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
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
define %struct.Memory* @routine_movb__0x24____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 36, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
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
define %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a930d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9353(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
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
define %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a92f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7124
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7124
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_4a9416(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7148
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_4a93fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x3f____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 63, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a93ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a937a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_4a94b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7124
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
define %struct.Memory* @routine_addl_0x20__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_4a94b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a9497(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 45, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9456(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a949c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a943f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a94b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_4a9554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a954f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7128
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
define %struct.Memory* @routine_addl_0x24__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_4a9536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x7c____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 124, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a94f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a953b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a94d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_4a95f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7124
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x18__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_4a95f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x54__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -84
  %10 = icmp ult i32 %8, 84
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a95d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a9596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a95dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9571(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a95f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_4a9754(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x20__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_4a96a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x1c__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_4a9689(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a963a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a968e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9612(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a974f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4a974a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4a9731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a96e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9736(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a96cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a974f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9754(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0xaf3458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
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
define %struct.Memory* @routine_jle_.L_4a9882(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x40__MINUS0x1be8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_je_.L_4a9863(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x40__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_je_.L_4a9830(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1bd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -7124
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
define %struct.Memory* @routine_jne_.L_4a97d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1bd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -7128
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
define %struct.Memory* @routine_movq__0x588897___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588897_type* @G__0x588897 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9817(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579d93___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579d93_type* @G__0x579d93 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a981c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a976c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1bf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bf0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7152
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
define %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_4a9932(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 12
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_0x4e69c0___rcx_1____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 5138880
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x1bf1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7153
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1bf1__rbp____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7153
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movb__sil____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %SIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1bf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a988c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0xaf3458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_jle_.L_4a9a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4a9a41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4a9a0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4a99b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a99f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a99fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9961(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a994a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1be4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1bdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7132
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf__MINUS0x1be0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 15, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__0x6e3__MINUS0x1bf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1763
  %10 = icmp ult i32 %8, 1763
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
define %struct.Memory* @routine_movb__cl__MINUS0x1c2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7213
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a9aee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1be0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7136
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
define %struct.Memory* @routine_movb__al__MINUS0x1c2e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7214
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4a9ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1bdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7132
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
define %struct.Memory* @routine_jne_.L_4a9ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1be4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7140
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
define %struct.Memory* @routine_setg__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1c2e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7214
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x1c2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7213
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1c2d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7213
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
define %struct.Memory* @routine_jne_.L_4a9b01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a9d81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 84, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb8c050___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7148
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2a__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -42
  %10 = icmp ult i32 %8, 42
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
define %struct.Memory* @routine_jl_.L_4a9b58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -84
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 84
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffd6__MINUS0x1bec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 42
  %10 = icmp ult i32 %8, -42
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4a9b74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 84
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -85
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
define %struct.Memory* @routine_subl_MINUS0x1bec__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7224
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
define %struct.Memory* @routine_cmpl_0x20__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 32
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
define %struct.Memory* @routine_jne_.L_4a9bd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7136
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
define %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -3
  %8 = and i64 %3, 4294967293
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 253
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jne_.L_4a9bf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967294
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 254
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp ult i32 %6, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %6, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_jne_.L_4a9c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0xfffffffb___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -5
  %8 = and i64 %3, 4294967291
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 251
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jne_.L_4a9c3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0xfffffff7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -9
  %8 = and i64 %3, 4294967287
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 247
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x588b2c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588b2c_type* @G__0x588b2c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1be8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x54___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 84
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1bec__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb___rax__rdx_1____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %SIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_4a9cb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1be4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7140
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1be4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x588b35___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588b35_type* @G__0x588b35 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7152
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a9d68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4a9cfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7132
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
define %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4a9d1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4a9d41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4a9d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a9d68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9d6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a9a8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c28___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -7209
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
