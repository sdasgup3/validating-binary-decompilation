; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xa9305__rip__type = type <{ [8 x i8] }>
%G_0xa9451__rip__type = type <{ [8 x i8] }>
%G__0x57b826_type = type <{ [8 x i8] }>
%G__0x57d997_type = type <{ [8 x i8] }>
%G__0x57d9c6_type = type <{ [8 x i8] }>
%G__0x57d9d0_type = type <{ [8 x i8] }>
%G__0x57d9da_type = type <{ [8 x i8] }>
%G__0x57da01_type = type <{ [8 x i8] }>
%G__0x57da0a_type = type <{ [8 x i8] }>
%G__0x57da13_type = type <{ [8 x i8] }>
%G__0x57da1c_type = type <{ [8 x i8] }>
%G__0x57da42_type = type <{ [8 x i8] }>
%G__0x57da46_type = type <{ [8 x i8] }>
%G__0x57da4a_type = type <{ [8 x i8] }>
%G__0x57da4e_type = type <{ [8 x i8] }>
%G__0x57da52_type = type <{ [8 x i8] }>
%G__0x57da56_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xa9305__rip_ = global %G_0xa9305__rip__type zeroinitializer
@G_0xa9451__rip_ = global %G_0xa9451__rip__type zeroinitializer
@G__0x57b826 = global %G__0x57b826_type zeroinitializer
@G__0x57d997 = global %G__0x57d997_type zeroinitializer
@G__0x57d9c6 = global %G__0x57d9c6_type zeroinitializer
@G__0x57d9d0 = global %G__0x57d9d0_type zeroinitializer
@G__0x57d9da = global %G__0x57d9da_type zeroinitializer
@G__0x57da01 = global %G__0x57da01_type zeroinitializer
@G__0x57da0a = global %G__0x57da0a_type zeroinitializer
@G__0x57da13 = global %G__0x57da13_type zeroinitializer
@G__0x57da1c = global %G__0x57da1c_type zeroinitializer
@G__0x57da42 = global %G__0x57da42_type zeroinitializer
@G__0x57da46 = global %G__0x57da46_type zeroinitializer
@G__0x57da4a = global %G__0x57da4a_type zeroinitializer
@G__0x57da4e = global %G__0x57da4e_type zeroinitializer
@G__0x57da52 = global %G__0x57da52_type zeroinitializer
@G__0x57da56 = global %G__0x57da56_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b030.is_halfeye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @print_eye(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i776 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57d997_type* @G__0x57d997 to i64), i64* %RAX.i776, align 8
  %RDI.i773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i773, align 8
  %42 = add i64 %10, 24
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i770, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i767 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i767, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RSI.i770, align 8
  %63 = add i64 %57, -20
  %64 = add i64 %59, 8
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, 36
  store i64 %68, i64* %RDI.i773, align 8
  %69 = lshr i64 %68, 63
  %70 = add i64 %68, %62
  store i64 %70, i64* %RSI.i770, align 8
  %71 = icmp ult i64 %70, %62
  %72 = icmp ult i64 %70, %68
  %73 = or i1 %71, %72
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = trunc i64 %70 to i32
  %76 = and i32 %75, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1
  %81 = xor i64 %68, %62
  %82 = xor i64 %81, %70
  %83 = lshr i64 %82, 4
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %26, align 1
  %86 = icmp eq i64 %70, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %29, align 1
  %88 = lshr i64 %70, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %32, align 1
  %90 = lshr i64 %62, 63
  %91 = xor i64 %88, %90
  %92 = xor i64 %88, %69
  %93 = add nuw nsw i64 %91, %92
  %94 = icmp eq i64 %93, 2
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %38, align 1
  %RDX.i753 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %96 = add i64 %70, 12
  %97 = add i64 %59, 18
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RDX.i753, align 8
  %101 = add i64 %57, -48
  %102 = add i64 %59, 21
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 %99, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -20
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 3
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RSI.i770, align 8
  %111 = add i64 %104, -8
  %112 = add i64 %106, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RDI.i773, align 8
  %RCX.i741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %115 = add i64 %106, 11
  store i64 %115, i64* %3, align 8
  %116 = load i32, i32* %108, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, 36
  store i64 %118, i64* %RCX.i741, align 8
  %119 = lshr i64 %118, 63
  %120 = add i64 %118, %114
  store i64 %120, i64* %RDI.i773, align 8
  %121 = icmp ult i64 %120, %114
  %122 = icmp ult i64 %120, %118
  %123 = or i1 %121, %122
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = trunc i64 %120 to i32
  %126 = and i32 %125, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i64 %118, %114
  %132 = xor i64 %131, %120
  %133 = lshr i64 %132, 4
  %134 = trunc i64 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %26, align 1
  %136 = icmp eq i64 %120, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %29, align 1
  %138 = lshr i64 %120, 63
  %139 = trunc i64 %138 to i8
  store i8 %139, i8* %32, align 1
  %140 = lshr i64 %114, 63
  %141 = xor i64 %138, %140
  %142 = xor i64 %138, %119
  %143 = add nuw nsw i64 %141, %142
  %144 = icmp eq i64 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %38, align 1
  %146 = inttoptr i64 %120 to i32*
  %147 = add i64 %106, 20
  store i64 %147, i64* %3, align 8
  %148 = load i32, i32* %146, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RDX.i753, align 8
  %150 = add i64 %106, 24
  store i64 %150, i64* %3, align 8
  %151 = load i64, i64* %113, align 8
  store i64 %151, i64* %RCX.i741, align 8
  %152 = add i64 %106, 28
  store i64 %152, i64* %3, align 8
  %153 = load i32, i32* %108, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %154, 36
  store i64 %155, i64* %RDI.i773, align 8
  %156 = lshr i64 %155, 63
  %157 = add i64 %155, %151
  store i64 %157, i64* %RCX.i741, align 8
  %158 = icmp ult i64 %157, %151
  %159 = icmp ult i64 %157, %155
  %160 = or i1 %158, %159
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = trunc i64 %157 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i64 %155, %151
  %169 = xor i64 %168, %157
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %26, align 1
  %173 = icmp eq i64 %157, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i64 %157, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %32, align 1
  %177 = lshr i64 %151, 63
  %178 = xor i64 %175, %177
  %179 = xor i64 %175, %156
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %38, align 1
  %183 = add i64 %157, 4
  %184 = add i64 %106, 38
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RCX.i741, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -8
  %190 = add i64 %106, 42
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RDI.i773, align 8
  %R8.i715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %193 = add i64 %188, -20
  %194 = add i64 %106, 46
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %197, 36
  store i64 %198, i64* %R8.i715, align 8
  %199 = lshr i64 %198, 63
  %200 = add i64 %198, %192
  store i64 %200, i64* %RDI.i773, align 8
  %201 = icmp ult i64 %200, %192
  %202 = icmp ult i64 %200, %198
  %203 = or i1 %201, %202
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %14, align 1
  %205 = trunc i64 %200 to i32
  %206 = and i32 %205, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  %211 = xor i64 %198, %192
  %212 = xor i64 %211, %200
  %213 = lshr i64 %212, 4
  %214 = trunc i64 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %26, align 1
  %216 = icmp eq i64 %200, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %29, align 1
  %218 = lshr i64 %200, 63
  %219 = trunc i64 %218 to i8
  store i8 %219, i8* %32, align 1
  %220 = lshr i64 %192, 63
  %221 = xor i64 %218, %220
  %222 = xor i64 %218, %199
  %223 = add nuw nsw i64 %221, %222
  %224 = icmp eq i64 %223, 2
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %38, align 1
  %226 = add i64 %200, 8
  %227 = add i64 %106, 57
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %R8.i715, align 8
  %231 = load i64, i64* %RAX.i776, align 8
  store i64 %231, i64* %RDI.i773, align 8
  %AL.i703 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i703, align 1
  %232 = add i64 %106, 99131
  %233 = add i64 %106, 67
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %236, align 8
  store i64 %235, i64* %6, align 8
  store i64 %232, i64* %3, align 8
  %call2_439ab3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %232, %struct.Memory* %2)
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -24
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 7
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i32*
  store i32 0, i32* %241, align 4
  %EAX.i697 = bitcast %union.anon* %39 to i32*
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -60
  %244 = load i32, i32* %EAX.i697, align 4
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 3
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %243 to i32*
  store i32 %244, i32* %247, align 4
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %249 = bitcast [32 x %union.VectorReg]* %248 to double*
  %250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %248, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %252 = bitcast i64* %251 to double*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %254 = bitcast %union.VectorReg* %253 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_439ac2

block_.L_439ac2:                                  ; preds = %block_.L_439db7, %entry
  %255 = phi i64 [ %.pre, %entry ], [ %1314, %block_.L_439db7 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_439ab3, %entry ], [ %MEMORY.1, %block_.L_439db7 ]
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -24
  %258 = add i64 %255, 3
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i776, align 8
  %262 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %263 = sub i32 %260, %262
  %264 = icmp ult i32 %260, %262
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %14, align 1
  %266 = and i32 %263, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %21, align 1
  %271 = xor i32 %262, %260
  %272 = xor i32 %271, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %26, align 1
  %276 = icmp eq i32 %263, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %29, align 1
  %278 = lshr i32 %263, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %32, align 1
  %280 = lshr i32 %260, 31
  %281 = lshr i32 %262, 31
  %282 = xor i32 %281, %280
  %283 = xor i32 %278, %280
  %284 = add nuw nsw i32 %283, %282
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %38, align 1
  %287 = icmp ne i8 %279, 0
  %288 = xor i1 %287, %285
  %.v84 = select i1 %288, i64 16, i64 776
  %289 = add i64 %255, %.v84
  store i64 %289, i64* %3, align 8
  br i1 %288, label %block_439ad2, label %block_.L_439dca

block_439ad2:                                     ; preds = %block_.L_439ac2
  %290 = add i64 %256, -28
  %291 = add i64 %289, 7
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  store i32 0, i32* %292, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_439ad9

block_.L_439ad9:                                  ; preds = %block_.L_439da9, %block_439ad2
  %293 = phi i64 [ %.pre68, %block_439ad2 ], [ %1285, %block_.L_439da9 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_439ad2 ], [ %MEMORY.19, %block_.L_439da9 ]
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -28
  %296 = add i64 %293, 3
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX.i776, align 8
  %300 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %301 = sub i32 %298, %300
  %302 = icmp ult i32 %298, %300
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  %309 = xor i32 %300, %298
  %310 = xor i32 %309, %301
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %26, align 1
  %314 = icmp eq i32 %301, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %29, align 1
  %316 = lshr i32 %301, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %32, align 1
  %318 = lshr i32 %298, 31
  %319 = lshr i32 %300, 31
  %320 = xor i32 %319, %318
  %321 = xor i32 %316, %318
  %322 = add nuw nsw i32 %321, %320
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %38, align 1
  %325 = icmp ne i8 %317, 0
  %326 = xor i1 %325, %323
  %.v83 = select i1 %326, i64 16, i64 734
  %327 = add i64 %293, %.v83
  store i64 %327, i64* %3, align 8
  %328 = add i64 %294, -24
  br i1 %326, label %block_439ae9, label %block_.L_439db7

block_439ae9:                                     ; preds = %block_.L_439ad9
  %329 = add i64 %327, 4
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = mul i32 %331, 20
  %333 = add i32 %332, 21
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX.i776, align 8
  %335 = icmp ugt i32 %332, -22
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %14, align 1
  %337 = and i32 %333, 253
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %21, align 1
  %342 = xor i32 %332, 16
  %343 = xor i32 %342, %333
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %347 = lshr i32 %333, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %32, align 1
  %349 = lshr i32 %332, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %347
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %38, align 1
  %354 = add i64 %327, 10
  store i64 %354, i64* %3, align 8
  %355 = load i32, i32* %297, align 4
  %356 = add i32 %355, %333
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i776, align 8
  %358 = icmp ult i32 %356, %333
  %359 = icmp ult i32 %356, %355
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %14, align 1
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  %367 = xor i32 %355, %333
  %368 = xor i32 %367, %356
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = icmp eq i32 %356, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %356, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = lshr i32 %355, 31
  %377 = xor i32 %374, %347
  %378 = xor i32 %374, %376
  %379 = add nuw nsw i32 %377, %378
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %38, align 1
  %382 = add i64 %294, -52
  %383 = add i64 %327, 13
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  store i32 %356, i32* %384, align 4
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -8
  %387 = load i64, i64* %3, align 8
  %388 = add i64 %387, 4
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RCX.i741, align 8
  %391 = add i64 %385, -52
  %392 = add i64 %387, 8
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = mul nsw i64 %395, 36
  store i64 %396, i64* %RDX.i753, align 8
  %397 = lshr i64 %396, 63
  %398 = add i64 %396, %390
  store i64 %398, i64* %RCX.i741, align 8
  %399 = icmp ult i64 %398, %390
  %400 = icmp ult i64 %398, %396
  %401 = or i1 %399, %400
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %14, align 1
  %403 = trunc i64 %398 to i32
  %404 = and i32 %403, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  %409 = xor i64 %396, %390
  %410 = xor i64 %409, %398
  %411 = lshr i64 %410, 4
  %412 = trunc i64 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %26, align 1
  %414 = icmp eq i64 %398, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %29, align 1
  %416 = lshr i64 %398, 63
  %417 = trunc i64 %416 to i8
  store i8 %417, i8* %32, align 1
  %418 = lshr i64 %390, 63
  %419 = xor i64 %416, %418
  %420 = xor i64 %416, %397
  %421 = add nuw nsw i64 %419, %420
  %422 = icmp eq i64 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %38, align 1
  %424 = add i64 %398, 12
  %425 = add i64 %387, 18
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX.i776, align 8
  %429 = add i64 %385, -20
  %430 = add i64 %387, 21
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sub i32 %427, %432
  %434 = icmp ult i32 %427, %432
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %14, align 1
  %436 = and i32 %433, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %21, align 1
  %441 = xor i32 %432, %427
  %442 = xor i32 %441, %433
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %26, align 1
  %446 = icmp eq i32 %433, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %29, align 1
  %448 = lshr i32 %433, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %32, align 1
  %450 = lshr i32 %427, 31
  %451 = lshr i32 %432, 31
  %452 = xor i32 %451, %450
  %453 = xor i32 %448, %450
  %454 = add nuw nsw i32 %453, %452
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %38, align 1
  %.v98 = select i1 %446, i64 32, i64 27
  %457 = add i64 %387, %.v98
  store i64 %457, i64* %3, align 8
  br i1 %446, label %block_.L_439b16, label %block_439b11

block_439b11:                                     ; preds = %block_439ae9
  %458 = add i64 %457, 664
  br label %block_.L_439da9

block_.L_439b16:                                  ; preds = %block_439ae9
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -8
  %461 = add i64 %457, 4
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RAX.i776, align 8
  %464 = add i64 %459, -52
  %465 = add i64 %457, 8
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = mul nsw i64 %468, 36
  store i64 %469, i64* %RCX.i741, align 8
  %470 = lshr i64 %469, 63
  %471 = add i64 %469, %463
  store i64 %471, i64* %RAX.i776, align 8
  %472 = icmp ult i64 %471, %463
  %473 = icmp ult i64 %471, %469
  %474 = or i1 %472, %473
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %14, align 1
  %476 = trunc i64 %471 to i32
  %477 = and i32 %476, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %21, align 1
  %482 = xor i64 %469, %463
  %483 = xor i64 %482, %471
  %484 = lshr i64 %483, 4
  %485 = trunc i64 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %26, align 1
  %487 = icmp eq i64 %471, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %29, align 1
  %489 = lshr i64 %471, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %32, align 1
  %491 = lshr i64 %463, 63
  %492 = xor i64 %489, %491
  %493 = xor i64 %489, %470
  %494 = add nuw nsw i64 %492, %493
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %38, align 1
  %497 = add i64 %471, 28
  %498 = add i64 %457, 19
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i8*
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i64
  %502 = and i64 %501, 4294967295
  store i64 %502, i64* %RDX.i753, align 8
  %503 = sext i8 %500 to i32
  store i8 0, i8* %14, align 1
  %504 = and i32 %503, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %509 = icmp eq i8 %500, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i32 %503, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %509, i64 98, i64 28
  %513 = add i64 %457, %.v99
  store i64 %513, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br i1 %509, label %block_.L_439b78, label %block_439b32

block_439b32:                                     ; preds = %block_.L_439b16
  %514 = add i64 %.pre69, -52
  %515 = add i64 %513, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RAX.i776, align 8
  %519 = add nsw i64 %518, 12099168
  %520 = add i64 %513, 12
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i8*
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i64
  store i64 %523, i64* %RCX.i741, align 8
  %524 = zext i8 %522 to i32
  %525 = add nsw i32 %524, -1
  %526 = icmp eq i8 %522, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %14, align 1
  %528 = and i32 %525, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  %533 = xor i32 %525, %524
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %26, align 1
  %537 = icmp eq i32 %525, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %29, align 1
  %539 = lshr i32 %525, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %537, i64 42, i64 21
  %541 = add i64 %513, %.v100
  store i64 %541, i64* %3, align 8
  br i1 %537, label %block_.L_439b5c, label %block_439b47

block_439b47:                                     ; preds = %block_439b32
  %542 = add i64 %541, 4
  store i64 %542, i64* %3, align 8
  %543 = load i32, i32* %516, align 4
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %RAX.i776, align 8
  %545 = add nsw i64 %544, 12099168
  %546 = add i64 %541, 12
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i8*
  %548 = load i8, i8* %547, align 1
  %549 = zext i8 %548 to i64
  store i64 %549, i64* %RCX.i741, align 8
  %550 = zext i8 %548 to i32
  %551 = add nsw i32 %550, -2
  %552 = icmp ult i8 %548, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %14, align 1
  %554 = and i32 %551, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  %559 = xor i32 %551, %550
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %26, align 1
  %563 = icmp eq i32 %551, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %29, align 1
  %565 = lshr i32 %551, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %563, i64 21, i64 49
  %567 = add i64 %541, %.v101
  store i64 %567, i64* %3, align 8
  br i1 %563, label %block_.L_439b5c, label %block_.L_439b78

block_.L_439b5c:                                  ; preds = %block_439b47, %block_439b32
  %568 = phi i64 [ %567, %block_439b47 ], [ %541, %block_439b32 ]
  store i64 ptrtoint (%G__0x57d9c6_type* @G__0x57d9c6 to i64), i64* %RDI.i773, align 8
  %569 = add i64 %568, 13
  store i64 %569, i64* %3, align 8
  %570 = load i32, i32* %516, align 4
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %572 = add i64 %568, 98900
  %573 = add i64 %568, 20
  %574 = load i64, i64* %6, align 8
  %575 = add i64 %574, -8
  %576 = inttoptr i64 %575 to i64*
  store i64 %573, i64* %576, align 8
  store i64 %575, i64* %6, align 8
  store i64 %572, i64* %3, align 8
  %call2_439b6b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %572, %struct.Memory* %MEMORY.1)
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -64
  %579 = load i32, i32* %EAX.i697, align 4
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, 3
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %578 to i32*
  store i32 %579, i32* %582, align 4
  %583 = load i64, i64* %3, align 8
  %584 = add i64 %583, 561
  br label %block_.L_439da4

block_.L_439b78:                                  ; preds = %block_.L_439b16, %block_439b47
  %585 = phi i64 [ %567, %block_439b47 ], [ %513, %block_.L_439b16 ]
  %586 = add i64 %.pre69, -16
  %587 = add i64 %585, 4
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RDI.i773, align 8
  %590 = add i64 %.pre69, -52
  %591 = add i64 %585, 7
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RSI.i770, align 8
  %595 = add i64 %585, 5304
  %596 = add i64 %585, 12
  %597 = load i64, i64* %6, align 8
  %598 = add i64 %597, -8
  %599 = inttoptr i64 %598 to i64*
  store i64 %596, i64* %599, align 8
  store i64 %598, i64* %6, align 8
  store i64 %595, i64* %3, align 8
  %call2_439b7f = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %595, %struct.Memory* %MEMORY.1)
  %600 = load i32, i32* %EAX.i697, align 4
  %601 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %602 = and i32 %600, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %607 = icmp eq i32 %600, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i32 %600, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %607, i64 169, i64 9
  %611 = add i64 %601, %.v102
  store i64 %611, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br i1 %607, label %block_.L_439c2d, label %block_439b8d

block_439b8d:                                     ; preds = %block_.L_439b78
  %612 = add i64 %.pre73, -52
  %613 = add i64 %611, 4
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = sext i32 %615 to i64
  store i64 %616, i64* %RAX.i776, align 8
  %617 = add nsw i64 %616, 12099168
  %618 = add i64 %611, 12
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i8*
  %620 = load i8, i8* %619, align 1
  %621 = zext i8 %620 to i64
  store i64 %621, i64* %RCX.i741, align 8
  %622 = zext i8 %620 to i32
  %623 = add nsw i32 %622, -1
  %624 = icmp eq i8 %620, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = and i32 %623, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  %631 = xor i32 %623, %622
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %26, align 1
  %635 = icmp eq i32 %623, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %29, align 1
  %637 = lshr i32 %623, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %635, i64 42, i64 21
  %639 = add i64 %611, %.v103
  store i64 %639, i64* %3, align 8
  br i1 %635, label %block_.L_439bb7, label %block_439ba2

block_439ba2:                                     ; preds = %block_439b8d
  %640 = add i64 %639, 4
  store i64 %640, i64* %3, align 8
  %641 = load i32, i32* %614, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RAX.i776, align 8
  %643 = add nsw i64 %642, 12099168
  %644 = add i64 %639, 12
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i8*
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i64
  store i64 %647, i64* %RCX.i741, align 8
  %648 = zext i8 %646 to i32
  %649 = add nsw i32 %648, -2
  %650 = icmp ult i8 %646, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %14, align 1
  %652 = and i32 %649, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %21, align 1
  %657 = xor i32 %649, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %26, align 1
  %661 = icmp eq i32 %649, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %29, align 1
  %663 = lshr i32 %649, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %661, i64 21, i64 139
  %665 = add i64 %639, %.v104
  store i64 %665, i64* %3, align 8
  br i1 %661, label %block_.L_439bb7, label %block_.L_439c2d

block_.L_439bb7:                                  ; preds = %block_439ba2, %block_439b8d
  %666 = phi i64 [ %665, %block_439ba2 ], [ %639, %block_439b8d ]
  %667 = add i64 %666, ptrtoint (%G_0xa9451__rip__type* @G_0xa9451__rip_ to i64)
  %668 = add i64 %666, 8
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %250, align 1
  store double 0.000000e+00, double* %252, align 1
  %671 = add i64 %.pre73, -16
  %672 = add i64 %666, 12
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i776, align 8
  %675 = add i64 %666, 16
  store i64 %675, i64* %3, align 8
  %676 = load i32, i32* %614, align 4
  %677 = sext i32 %676 to i64
  %678 = mul nsw i64 %677, 48
  store i64 %678, i64* %RCX.i741, align 8
  %679 = lshr i64 %678, 63
  %680 = add i64 %678, %674
  store i64 %680, i64* %RAX.i776, align 8
  %681 = icmp ult i64 %680, %674
  %682 = icmp ult i64 %680, %678
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %14, align 1
  %685 = trunc i64 %680 to i32
  %686 = and i32 %685, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i64 %678, %674
  %692 = xor i64 %691, %680
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %26, align 1
  %696 = icmp eq i64 %680, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %29, align 1
  %698 = lshr i64 %680, 63
  %699 = trunc i64 %698 to i8
  store i8 %699, i8* %32, align 1
  %700 = lshr i64 %674, 63
  %701 = xor i64 %698, %700
  %702 = xor i64 %698, %679
  %703 = add nuw nsw i64 %701, %702
  %704 = icmp eq i64 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %38, align 1
  %706 = inttoptr i64 %680 to float*
  %707 = add i64 %666, 27
  store i64 %707, i64* %3, align 8
  %708 = load float, float* %706, align 4
  %709 = fpext float %708 to double
  store double %709, double* %254, align 1
  %710 = add i64 %666, 31
  store i64 %710, i64* %3, align 8
  %711 = bitcast i64 %670 to double
  %712 = fcmp uno double %709, %711
  br i1 %712, label %713, label %723

; <label>:713:                                    ; preds = %block_.L_439bb7
  %714 = fadd double %709, %711
  %715 = bitcast double %714 to i64
  %716 = and i64 %715, 9221120237041090560
  %717 = icmp eq i64 %716, 9218868437227405312
  %718 = and i64 %715, 2251799813685247
  %719 = icmp ne i64 %718, 0
  %720 = and i1 %717, %719
  br i1 %720, label %721, label %729

; <label>:721:                                    ; preds = %713
  %722 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %710, %struct.Memory* %MEMORY.1)
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit558

; <label>:723:                                    ; preds = %block_.L_439bb7
  %724 = fcmp ogt double %709, %711
  br i1 %724, label %729, label %725

; <label>:725:                                    ; preds = %723
  %726 = fcmp olt double %709, %711
  br i1 %726, label %729, label %727

; <label>:727:                                    ; preds = %725
  %728 = fcmp oeq double %709, %711
  br i1 %728, label %729, label %733

; <label>:729:                                    ; preds = %727, %725, %723, %713
  %730 = phi i8 [ 0, %723 ], [ 0, %725 ], [ 1, %727 ], [ 1, %713 ]
  %731 = phi i8 [ 0, %723 ], [ 0, %725 ], [ 0, %727 ], [ 1, %713 ]
  %732 = phi i8 [ 0, %723 ], [ 1, %725 ], [ 0, %727 ], [ 1, %713 ]
  store i8 %730, i8* %29, align 1
  store i8 %731, i8* %21, align 1
  store i8 %732, i8* %14, align 1
  br label %733

; <label>:733:                                    ; preds = %729, %727
  %734 = phi i8 [ %730, %729 ], [ %697, %727 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit558

routine_ucomisd__xmm0___xmm1.exit558:             ; preds = %733, %721
  %735 = phi i8 [ %.pre71, %721 ], [ %734, %733 ]
  %736 = phi i64 [ %.pre70, %721 ], [ %710, %733 ]
  %737 = phi %struct.Memory* [ %722, %721 ], [ %MEMORY.1, %733 ]
  %738 = icmp eq i8 %735, 0
  %.v113 = select i1 %738, i64 40, i64 6
  %739 = add i64 %736, %.v113
  store i64 %739, i64* %3, align 8
  br i1 %738, label %block_.L_439bfe, label %block_439bdc

block_439bdc:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit558
  %740 = load i8, i8* %21, align 1
  %741 = icmp ne i8 %740, 0
  %.v124 = select i1 %741, i64 34, i64 6
  %742 = add i64 %739, %.v124
  store i64 %742, i64* %3, align 8
  %cmpBr_439bdc = icmp eq i8 %740, 1
  br i1 %cmpBr_439bdc, label %block_.L_439bfe, label %block_439be2

block_439be2:                                     ; preds = %block_439bdc
  store i64 ptrtoint (%G__0x57d9d0_type* @G__0x57d9d0 to i64), i64* %RDI.i773, align 8
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -52
  %745 = add i64 %742, 13
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %749 = add i64 %742, 98766
  %750 = add i64 %742, 20
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_439bf1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %749, %struct.Memory* %737)
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -68
  %756 = load i32, i32* %EAX.i697, align 4
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, 3
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %755 to i32*
  store i32 %756, i32* %759, align 4
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, 47
  store i64 %761, i64* %3, align 8
  br label %block_.L_439c28

block_.L_439bfe:                                  ; preds = %block_439bdc, %routine_ucomisd__xmm0___xmm1.exit558
  %762 = phi i64 [ %742, %block_439bdc ], [ %739, %routine_ucomisd__xmm0___xmm1.exit558 ]
  store i64 ptrtoint (%G__0x57d9da_type* @G__0x57d9da to i64), i64* %RDI.i773, align 8
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -52
  %765 = add i64 %762, 13
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RSI.i770, align 8
  %769 = add i64 %763, -16
  %770 = add i64 %762, 17
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RAX.i776, align 8
  %773 = add i64 %762, 21
  store i64 %773, i64* %3, align 8
  %774 = load i32, i32* %766, align 4
  %775 = sext i32 %774 to i64
  %776 = mul nsw i64 %775, 48
  store i64 %776, i64* %RCX.i741, align 8
  %777 = lshr i64 %776, 63
  %778 = add i64 %776, %772
  store i64 %778, i64* %RAX.i776, align 8
  %779 = icmp ult i64 %778, %772
  %780 = icmp ult i64 %778, %776
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = trunc i64 %778 to i32
  %784 = and i32 %783, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %21, align 1
  %789 = xor i64 %776, %772
  %790 = xor i64 %789, %778
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %26, align 1
  %794 = icmp eq i64 %778, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %29, align 1
  %796 = lshr i64 %778, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %32, align 1
  %798 = lshr i64 %772, 63
  %799 = xor i64 %796, %798
  %800 = xor i64 %796, %777
  %801 = add nuw nsw i64 %799, %800
  %802 = icmp eq i64 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %38, align 1
  %804 = inttoptr i64 %778 to float*
  %805 = add i64 %762, 32
  store i64 %805, i64* %3, align 8
  %806 = load float, float* %804, align 4
  %807 = fpext float %806 to double
  store double %807, double* %249, align 1
  store i8 1, i8* %AL.i703, align 1
  %808 = add i64 %762, 98738
  %809 = add i64 %762, 39
  %810 = load i64, i64* %6, align 8
  %811 = add i64 %810, -8
  %812 = inttoptr i64 %811 to i64*
  store i64 %809, i64* %812, align 8
  store i64 %811, i64* %6, align 8
  store i64 %808, i64* %3, align 8
  %call2_439c20 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %808, %struct.Memory* %737)
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -72
  %815 = load i32, i32* %EAX.i697, align 4
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 3
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %814 to i32*
  store i32 %815, i32* %818, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_439c28

block_.L_439c28:                                  ; preds = %block_.L_439bfe, %block_439be2
  %819 = phi i64 [ %.pre72, %block_.L_439bfe ], [ %761, %block_439be2 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_439c20, %block_.L_439bfe ], [ %call2_439bf1, %block_439be2 ]
  %820 = add i64 %819, 375
  br label %block_.L_439d9f

block_.L_439c2d:                                  ; preds = %block_.L_439b78, %block_439ba2
  %821 = phi i64 [ %665, %block_439ba2 ], [ %611, %block_.L_439b78 ]
  %822 = add i64 %.pre73, -8
  %823 = add i64 %821, 4
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %RAX.i776, align 8
  %826 = add i64 %.pre73, -52
  %827 = add i64 %821, 8
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = sext i32 %829 to i64
  %831 = mul nsw i64 %830, 36
  store i64 %831, i64* %RCX.i741, align 8
  %832 = lshr i64 %831, 63
  %833 = add i64 %831, %825
  store i64 %833, i64* %RAX.i776, align 8
  %834 = icmp ult i64 %833, %825
  %835 = icmp ult i64 %833, %831
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %14, align 1
  %838 = trunc i64 %833 to i32
  %839 = and i32 %838, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %21, align 1
  %844 = xor i64 %831, %825
  %845 = xor i64 %844, %833
  %846 = lshr i64 %845, 4
  %847 = trunc i64 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %26, align 1
  %849 = icmp eq i64 %833, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %29, align 1
  %851 = lshr i64 %833, 63
  %852 = trunc i64 %851 to i8
  store i8 %852, i8* %32, align 1
  %853 = lshr i64 %825, 63
  %854 = xor i64 %851, %853
  %855 = xor i64 %851, %832
  %856 = add nuw nsw i64 %854, %855
  %857 = icmp eq i64 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %38, align 1
  %859 = add i64 %833, 28
  %860 = add i64 %821, 19
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i8*
  %862 = load i8, i8* %861, align 1
  store i8 0, i8* %14, align 1
  %863 = zext i8 %862 to i32
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863)
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %868 = icmp eq i8 %862, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %29, align 1
  %870 = lshr i8 %862, 7
  store i8 %870, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v105 = select i1 %868, i64 25, i64 95
  %871 = add i64 %821, %.v105
  store i64 %871, i64* %3, align 8
  %872 = load i64, i64* %RBP.i, align 8
  br i1 %868, label %block_439c46, label %block_.L_439c8c

block_439c46:                                     ; preds = %block_.L_439c2d
  %873 = add i64 %872, -52
  %874 = add i64 %871, 4
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  store i64 %877, i64* %RAX.i776, align 8
  %878 = add nsw i64 %877, 12099168
  %879 = add i64 %871, 12
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i8*
  %881 = load i8, i8* %880, align 1
  %882 = zext i8 %881 to i64
  store i64 %882, i64* %RCX.i741, align 8
  %883 = zext i8 %881 to i32
  %884 = add nsw i32 %883, -1
  %885 = icmp eq i8 %881, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %14, align 1
  %887 = and i32 %884, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %21, align 1
  %892 = xor i32 %884, %883
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %26, align 1
  %896 = icmp eq i32 %884, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %29, align 1
  %898 = lshr i32 %884, 31
  %899 = trunc i32 %898 to i8
  store i8 %899, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v111 = select i1 %896, i64 42, i64 21
  %900 = add i64 %871, %.v111
  store i64 %900, i64* %3, align 8
  br i1 %896, label %block_.L_439c70, label %block_439c5b

block_439c5b:                                     ; preds = %block_439c46
  %901 = add i64 %900, 4
  store i64 %901, i64* %3, align 8
  %902 = load i32, i32* %875, align 4
  %903 = sext i32 %902 to i64
  store i64 %903, i64* %RAX.i776, align 8
  %904 = add nsw i64 %903, 12099168
  %905 = add i64 %900, 12
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i8*
  %907 = load i8, i8* %906, align 1
  %908 = zext i8 %907 to i64
  store i64 %908, i64* %RCX.i741, align 8
  %909 = zext i8 %907 to i32
  %910 = add nsw i32 %909, -2
  %911 = icmp ult i8 %907, 2
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %910, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %910, %909
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %26, align 1
  %922 = icmp eq i32 %910, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %29, align 1
  %924 = lshr i32 %910, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %922, i64 21, i64 49
  %926 = add i64 %900, %.v112
  store i64 %926, i64* %3, align 8
  br i1 %922, label %block_.L_439c70, label %block_.L_439c8c

block_.L_439c70:                                  ; preds = %block_439c5b, %block_439c46
  %927 = phi i64 [ %926, %block_439c5b ], [ %900, %block_439c46 ]
  store i64 ptrtoint (%G__0x57da01_type* @G__0x57da01 to i64), i64* %RDI.i773, align 8
  %928 = add i64 %927, 13
  store i64 %928, i64* %3, align 8
  %929 = load i32, i32* %875, align 4
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %931 = add i64 %927, 98624
  %932 = add i64 %927, 20
  %933 = load i64, i64* %6, align 8
  %934 = add i64 %933, -8
  %935 = inttoptr i64 %934 to i64*
  store i64 %932, i64* %935, align 8
  store i64 %934, i64* %6, align 8
  store i64 %931, i64* %3, align 8
  %call2_439c7f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %931, %struct.Memory* %MEMORY.1)
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -76
  %938 = load i32, i32* %EAX.i697, align 4
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 3
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %937 to i32*
  store i32 %938, i32* %941, align 4
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 275
  br label %block_.L_439d9a

block_.L_439c8c:                                  ; preds = %block_.L_439c2d, %block_439c5b
  %944 = phi i64 [ %926, %block_439c5b ], [ %871, %block_.L_439c2d ]
  %945 = add i64 %872, -8
  %946 = add i64 %944, 4
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RAX.i776, align 8
  %949 = add i64 %872, -52
  %950 = add i64 %944, 8
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  %954 = mul nsw i64 %953, 36
  store i64 %954, i64* %RCX.i741, align 8
  %955 = lshr i64 %954, 63
  %956 = add i64 %954, %948
  store i64 %956, i64* %RAX.i776, align 8
  %957 = icmp ult i64 %956, %948
  %958 = icmp ult i64 %956, %954
  %959 = or i1 %957, %958
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %14, align 1
  %961 = trunc i64 %956 to i32
  %962 = and i32 %961, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  %967 = xor i64 %954, %948
  %968 = xor i64 %967, %956
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %26, align 1
  %972 = icmp eq i64 %956, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %29, align 1
  %974 = lshr i64 %956, 63
  %975 = trunc i64 %974 to i8
  store i8 %975, i8* %32, align 1
  %976 = lshr i64 %948, 63
  %977 = xor i64 %974, %976
  %978 = xor i64 %974, %955
  %979 = add nuw nsw i64 %977, %978
  %980 = icmp eq i64 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %38, align 1
  %982 = add i64 %956, 28
  %983 = add i64 %944, 19
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i8*
  %985 = load i8, i8* %984, align 1
  %986 = sext i8 %985 to i64
  %987 = and i64 %986, 4294967295
  store i64 %987, i64* %RDX.i753, align 8
  %988 = sext i8 %985 to i32
  store i8 0, i8* %14, align 1
  %989 = and i32 %988, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %994 = icmp eq i8 %985, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %29, align 1
  %996 = lshr i32 %988, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %994, i64 77, i64 28
  %998 = add i64 %944, %.v106
  store i64 %998, i64* %3, align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br i1 %994, label %block_.L_439cd9, label %block_439ca8

block_439ca8:                                     ; preds = %block_.L_439c8c
  %999 = add i64 %.pre75, -52
  %1000 = add i64 %998, 4
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i776, align 8
  %1004 = add nsw i64 %1003, 12099168
  %1005 = add i64 %998, 12
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i8*
  %1007 = load i8, i8* %1006, align 1
  %1008 = zext i8 %1007 to i64
  store i64 %1008, i64* %RCX.i741, align 8
  %1009 = zext i8 %1007 to i32
  store i8 0, i8* %14, align 1
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1014 = icmp eq i8 %1007, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %1014, i64 21, i64 49
  %1016 = add i64 %998, %.v107
  store i64 %1016, i64* %3, align 8
  br i1 %1014, label %block_439cbd, label %block_.L_439cd9

block_439cbd:                                     ; preds = %block_439ca8
  store i64 ptrtoint (%G__0x57da0a_type* @G__0x57da0a to i64), i64* %RDI.i773, align 8
  %1017 = add i64 %1016, 13
  store i64 %1017, i64* %3, align 8
  %1018 = load i32, i32* %1001, align 4
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %1020 = add i64 %1016, 98547
  %1021 = add i64 %1016, 20
  %1022 = load i64, i64* %6, align 8
  %1023 = add i64 %1022, -8
  %1024 = inttoptr i64 %1023 to i64*
  store i64 %1021, i64* %1024, align 8
  store i64 %1023, i64* %6, align 8
  store i64 %1020, i64* %3, align 8
  %call2_439ccc = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1020, %struct.Memory* %MEMORY.1)
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -80
  %1027 = load i32, i32* %EAX.i697, align 4
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1026 to i32*
  store i32 %1027, i32* %1030, align 4
  %1031 = load i64, i64* %3, align 8
  %1032 = add i64 %1031, 193
  br label %block_.L_439d95

block_.L_439cd9:                                  ; preds = %block_.L_439c8c, %block_439ca8
  %1033 = phi i64 [ %1016, %block_439ca8 ], [ %998, %block_.L_439c8c ]
  %1034 = add i64 %.pre75, -16
  %1035 = add i64 %1033, 4
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %RDI.i773, align 8
  %1038 = add i64 %.pre75, -52
  %1039 = add i64 %1033, 7
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RSI.i770, align 8
  %1043 = add i64 %1033, 4951
  %1044 = add i64 %1033, 12
  %1045 = load i64, i64* %6, align 8
  %1046 = add i64 %1045, -8
  %1047 = inttoptr i64 %1046 to i64*
  store i64 %1044, i64* %1047, align 8
  store i64 %1046, i64* %6, align 8
  store i64 %1043, i64* %3, align 8
  %call2_439ce0 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %1043, %struct.Memory* %MEMORY.1)
  %1048 = load i32, i32* %EAX.i697, align 4
  %1049 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1050 = and i32 %1048, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1055 = icmp eq i32 %1048, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %29, align 1
  %1057 = lshr i32 %1048, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %1055, i64 148, i64 9
  %1059 = add i64 %1049, %.v108
  store i64 %1059, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br i1 %1055, label %block_.L_439d79, label %block_439cee

block_439cee:                                     ; preds = %block_.L_439cd9
  %1060 = add i64 %.pre79, -52
  %1061 = add i64 %1059, 4
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RAX.i776, align 8
  %1065 = add nsw i64 %1064, 12099168
  %1066 = add i64 %1059, 12
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i8*
  %1068 = load i8, i8* %1067, align 1
  %1069 = zext i8 %1068 to i64
  store i64 %1069, i64* %RCX.i741, align 8
  %1070 = zext i8 %1068 to i32
  store i8 0, i8* %14, align 1
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1075 = icmp eq i8 %1068, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %1075, i64 21, i64 139
  %1077 = add i64 %1059, %.v109
  store i64 %1077, i64* %3, align 8
  br i1 %1075, label %block_439d03, label %block_.L_439d79

block_439d03:                                     ; preds = %block_439cee
  %1078 = add i64 %1077, ptrtoint (%G_0xa9305__rip__type* @G_0xa9305__rip_ to i64)
  %1079 = add i64 %1077, 8
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %250, align 1
  store double 0.000000e+00, double* %252, align 1
  %1082 = add i64 %.pre79, -16
  %1083 = add i64 %1077, 12
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RAX.i776, align 8
  %1086 = add i64 %1077, 16
  store i64 %1086, i64* %3, align 8
  %1087 = load i32, i32* %1062, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = mul nsw i64 %1088, 48
  store i64 %1089, i64* %RCX.i741, align 8
  %1090 = lshr i64 %1089, 63
  %1091 = add i64 %1089, %1085
  store i64 %1091, i64* %RAX.i776, align 8
  %1092 = icmp ult i64 %1091, %1085
  %1093 = icmp ult i64 %1091, %1089
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %14, align 1
  %1096 = trunc i64 %1091 to i32
  %1097 = and i32 %1096, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %21, align 1
  %1102 = xor i64 %1089, %1085
  %1103 = xor i64 %1102, %1091
  %1104 = lshr i64 %1103, 4
  %1105 = trunc i64 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %26, align 1
  %1107 = icmp eq i64 %1091, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %29, align 1
  %1109 = lshr i64 %1091, 63
  %1110 = trunc i64 %1109 to i8
  store i8 %1110, i8* %32, align 1
  %1111 = lshr i64 %1085, 63
  %1112 = xor i64 %1109, %1111
  %1113 = xor i64 %1109, %1090
  %1114 = add nuw nsw i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %38, align 1
  %1117 = inttoptr i64 %1091 to float*
  %1118 = add i64 %1077, 27
  store i64 %1118, i64* %3, align 8
  %1119 = load float, float* %1117, align 4
  %1120 = fpext float %1119 to double
  store double %1120, double* %254, align 1
  %1121 = add i64 %1077, 31
  store i64 %1121, i64* %3, align 8
  %1122 = bitcast i64 %1081 to double
  %1123 = fcmp uno double %1120, %1122
  br i1 %1123, label %1124, label %1134

; <label>:1124:                                   ; preds = %block_439d03
  %1125 = fadd double %1120, %1122
  %1126 = bitcast double %1125 to i64
  %1127 = and i64 %1126, 9221120237041090560
  %1128 = icmp eq i64 %1127, 9218868437227405312
  %1129 = and i64 %1126, 2251799813685247
  %1130 = icmp ne i64 %1129, 0
  %1131 = and i1 %1128, %1130
  br i1 %1131, label %1132, label %1140

; <label>:1132:                                   ; preds = %1124
  %1133 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1121, %struct.Memory* %MEMORY.1)
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1134:                                   ; preds = %block_439d03
  %1135 = fcmp ogt double %1120, %1122
  br i1 %1135, label %1140, label %1136

; <label>:1136:                                   ; preds = %1134
  %1137 = fcmp olt double %1120, %1122
  br i1 %1137, label %1140, label %1138

; <label>:1138:                                   ; preds = %1136
  %1139 = fcmp oeq double %1120, %1122
  br i1 %1139, label %1140, label %1144

; <label>:1140:                                   ; preds = %1138, %1136, %1134, %1124
  %1141 = phi i8 [ 0, %1134 ], [ 0, %1136 ], [ 1, %1138 ], [ 1, %1124 ]
  %1142 = phi i8 [ 0, %1134 ], [ 0, %1136 ], [ 0, %1138 ], [ 1, %1124 ]
  %1143 = phi i8 [ 0, %1134 ], [ 1, %1136 ], [ 0, %1138 ], [ 1, %1124 ]
  store i8 %1141, i8* %29, align 1
  store i8 %1142, i8* %21, align 1
  store i8 %1143, i8* %14, align 1
  br label %1144

; <label>:1144:                                   ; preds = %1140, %1138
  %1145 = phi i8 [ %1141, %1140 ], [ %1108, %1138 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1144, %1132
  %1146 = phi i8 [ %.pre77, %1132 ], [ %1145, %1144 ]
  %1147 = phi i64 [ %.pre76, %1132 ], [ %1121, %1144 ]
  %1148 = phi %struct.Memory* [ %1133, %1132 ], [ %MEMORY.1, %1144 ]
  %1149 = icmp eq i8 %1146, 0
  %.v110 = select i1 %1149, i64 40, i64 6
  %1150 = add i64 %1147, %.v110
  store i64 %1150, i64* %3, align 8
  br i1 %1149, label %block_.L_439d4a, label %block_439d28

block_439d28:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1151 = load i8, i8* %21, align 1
  %1152 = icmp ne i8 %1151, 0
  %.v123 = select i1 %1152, i64 34, i64 6
  %1153 = add i64 %1150, %.v123
  store i64 %1153, i64* %3, align 8
  %cmpBr_439d28 = icmp eq i8 %1151, 1
  br i1 %cmpBr_439d28, label %block_.L_439d4a, label %block_439d2e

block_439d2e:                                     ; preds = %block_439d28
  store i64 ptrtoint (%G__0x57da13_type* @G__0x57da13 to i64), i64* %RDI.i773, align 8
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -52
  %1156 = add i64 %1153, 13
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %1160 = add i64 %1153, 98434
  %1161 = add i64 %1153, 20
  %1162 = load i64, i64* %6, align 8
  %1163 = add i64 %1162, -8
  %1164 = inttoptr i64 %1163 to i64*
  store i64 %1161, i64* %1164, align 8
  store i64 %1163, i64* %6, align 8
  store i64 %1160, i64* %3, align 8
  %call2_439d3d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1160, %struct.Memory* %1148)
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -84
  %1167 = load i32, i32* %EAX.i697, align 4
  %1168 = load i64, i64* %3, align 8
  %1169 = add i64 %1168, 3
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1166 to i32*
  store i32 %1167, i32* %1170, align 4
  %1171 = load i64, i64* %3, align 8
  %1172 = add i64 %1171, 47
  store i64 %1172, i64* %3, align 8
  br label %block_.L_439d74

block_.L_439d4a:                                  ; preds = %block_439d28, %routine_ucomisd__xmm0___xmm1.exit
  %1173 = phi i64 [ %1153, %block_439d28 ], [ %1150, %routine_ucomisd__xmm0___xmm1.exit ]
  store i64 ptrtoint (%G__0x57da1c_type* @G__0x57da1c to i64), i64* %RDI.i773, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -52
  %1176 = add i64 %1173, 13
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RSI.i770, align 8
  %1180 = add i64 %1174, -16
  %1181 = add i64 %1173, 17
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RAX.i776, align 8
  %1184 = add i64 %1173, 21
  store i64 %1184, i64* %3, align 8
  %1185 = load i32, i32* %1177, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = mul nsw i64 %1186, 48
  store i64 %1187, i64* %RCX.i741, align 8
  %1188 = lshr i64 %1187, 63
  %1189 = add i64 %1187, %1183
  store i64 %1189, i64* %RAX.i776, align 8
  %1190 = icmp ult i64 %1189, %1183
  %1191 = icmp ult i64 %1189, %1187
  %1192 = or i1 %1190, %1191
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %14, align 1
  %1194 = trunc i64 %1189 to i32
  %1195 = and i32 %1194, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i64 %1187, %1183
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
  %1209 = lshr i64 %1183, 63
  %1210 = xor i64 %1207, %1209
  %1211 = xor i64 %1207, %1188
  %1212 = add nuw nsw i64 %1210, %1211
  %1213 = icmp eq i64 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %38, align 1
  %1215 = inttoptr i64 %1189 to float*
  %1216 = add i64 %1173, 32
  store i64 %1216, i64* %3, align 8
  %1217 = load float, float* %1215, align 4
  %1218 = fpext float %1217 to double
  store double %1218, double* %249, align 1
  store i8 1, i8* %AL.i703, align 1
  %1219 = add i64 %1173, 98406
  %1220 = add i64 %1173, 39
  %1221 = load i64, i64* %6, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1220, i64* %1223, align 8
  store i64 %1222, i64* %6, align 8
  store i64 %1219, i64* %3, align 8
  %call2_439d6c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1219, %struct.Memory* %1148)
  %1224 = load i64, i64* %RBP.i, align 8
  %1225 = add i64 %1224, -88
  %1226 = load i32, i32* %EAX.i697, align 4
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 3
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1225 to i32*
  store i32 %1226, i32* %1229, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_439d74

block_.L_439d74:                                  ; preds = %block_.L_439d4a, %block_439d2e
  %1230 = phi i64 [ %.pre78, %block_.L_439d4a ], [ %1172, %block_439d2e ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_439d6c, %block_.L_439d4a ], [ %call2_439d3d, %block_439d2e ]
  %1231 = add i64 %1230, 28
  store i64 %1231, i64* %3, align 8
  br label %block_.L_439d90

block_.L_439d79:                                  ; preds = %block_.L_439cd9, %block_439cee
  %1232 = phi i64 [ %1077, %block_439cee ], [ %1059, %block_.L_439cd9 ]
  store i64 ptrtoint (%G__0x57b826_type* @G__0x57b826 to i64), i64* %RDI.i773, align 8
  %1233 = add i64 %.pre79, -52
  %1234 = add i64 %1232, 13
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RSI.i770, align 8
  store i8 0, i8* %AL.i703, align 1
  %1238 = add i64 %1232, 98359
  %1239 = add i64 %1232, 20
  %1240 = load i64, i64* %6, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1239, i64* %1242, align 8
  store i64 %1241, i64* %6, align 8
  store i64 %1238, i64* %3, align 8
  %call2_439d88 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1238, %struct.Memory* %MEMORY.1)
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -92
  %1245 = load i32, i32* %EAX.i697, align 4
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1244 to i32*
  store i32 %1245, i32* %1248, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_439d90

block_.L_439d90:                                  ; preds = %block_.L_439d79, %block_.L_439d74
  %1249 = phi i64 [ %.pre80, %block_.L_439d79 ], [ %1231, %block_.L_439d74 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.1, %block_.L_439d79 ], [ %MEMORY.12, %block_.L_439d74 ]
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %3, align 8
  br label %block_.L_439d95

block_.L_439d95:                                  ; preds = %block_.L_439d90, %block_439cbd
  %storemerge37 = phi i64 [ %1032, %block_439cbd ], [ %1250, %block_.L_439d90 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.1, %block_439cbd ], [ %MEMORY.14, %block_.L_439d90 ]
  %1251 = add i64 %storemerge37, 5
  store i64 %1251, i64* %3, align 8
  br label %block_.L_439d9a

block_.L_439d9a:                                  ; preds = %block_.L_439d95, %block_.L_439c70
  %storemerge36 = phi i64 [ %943, %block_.L_439c70 ], [ %1251, %block_.L_439d95 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.1, %block_.L_439c70 ], [ %MEMORY.15, %block_.L_439d95 ]
  %1252 = add i64 %storemerge36, 5
  store i64 %1252, i64* %3, align 8
  br label %block_.L_439d9f

block_.L_439d9f:                                  ; preds = %block_.L_439d9a, %block_.L_439c28
  %storemerge35 = phi i64 [ %820, %block_.L_439c28 ], [ %1252, %block_.L_439d9a ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.6, %block_.L_439c28 ], [ %MEMORY.16, %block_.L_439d9a ]
  %1253 = add i64 %storemerge35, 5
  store i64 %1253, i64* %3, align 8
  br label %block_.L_439da4

block_.L_439da4:                                  ; preds = %block_.L_439d9f, %block_.L_439b5c
  %storemerge34 = phi i64 [ %584, %block_.L_439b5c ], [ %1253, %block_.L_439d9f ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.1, %block_.L_439b5c ], [ %MEMORY.17, %block_.L_439d9f ]
  %1254 = add i64 %storemerge34, 5
  store i64 %1254, i64* %3, align 8
  br label %block_.L_439da9

block_.L_439da9:                                  ; preds = %block_.L_439da4, %block_439b11
  %storemerge = phi i64 [ %458, %block_439b11 ], [ %1254, %block_.L_439da4 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.1, %block_439b11 ], [ %MEMORY.18, %block_.L_439da4 ]
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -28
  %1257 = add i64 %storemerge, 3
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = add i32 %1259, 1
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i776, align 8
  %1262 = icmp eq i32 %1259, -1
  %1263 = icmp eq i32 %1260, 0
  %1264 = or i1 %1262, %1263
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %14, align 1
  %1266 = and i32 %1260, 255
  %1267 = tail call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  store i8 %1270, i8* %21, align 1
  %1271 = xor i32 %1260, %1259
  %1272 = lshr i32 %1271, 4
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  store i8 %1274, i8* %26, align 1
  %1275 = zext i1 %1263 to i8
  store i8 %1275, i8* %29, align 1
  %1276 = lshr i32 %1260, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %32, align 1
  %1278 = lshr i32 %1259, 31
  %1279 = xor i32 %1276, %1278
  %1280 = add nuw nsw i32 %1279, %1276
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %38, align 1
  %1283 = add i64 %storemerge, 9
  store i64 %1283, i64* %3, align 8
  store i32 %1260, i32* %1258, align 4
  %1284 = load i64, i64* %3, align 8
  %1285 = add i64 %1284, -729
  store i64 %1285, i64* %3, align 8
  br label %block_.L_439ad9

block_.L_439db7:                                  ; preds = %block_.L_439ad9
  %1286 = add i64 %327, 8
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %328 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = add i32 %1288, 1
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RAX.i776, align 8
  %1291 = icmp eq i32 %1288, -1
  %1292 = icmp eq i32 %1289, 0
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %14, align 1
  %1295 = and i32 %1289, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %21, align 1
  %1300 = xor i32 %1289, %1288
  %1301 = lshr i32 %1300, 4
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = zext i1 %1292 to i8
  store i8 %1304, i8* %29, align 1
  %1305 = lshr i32 %1289, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %32, align 1
  %1307 = lshr i32 %1288, 31
  %1308 = xor i32 %1305, %1307
  %1309 = add nuw nsw i32 %1308, %1305
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %38, align 1
  %1312 = add i64 %327, 14
  store i64 %1312, i64* %3, align 8
  store i32 %1289, i32* %1287, align 4
  %1313 = load i64, i64* %3, align 8
  %1314 = add i64 %1313, -771
  store i64 %1314, i64* %3, align 8
  br label %block_.L_439ac2

block_.L_439dca:                                  ; preds = %block_.L_439ac2
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %1315 = add i64 %289, 98278
  %1316 = add i64 %289, 17
  %1317 = load i64, i64* %6, align 8
  %1318 = add i64 %1317, -8
  %1319 = inttoptr i64 %1318 to i64*
  store i64 %1316, i64* %1319, align 8
  store i64 %1318, i64* %6, align 8
  store i64 %1315, i64* %3, align 8
  %call2_439dd6 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1315, %struct.Memory* %MEMORY.0)
  %1320 = load i64, i64* %3, align 8
  %1321 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -32
  %1324 = add i64 %1320, 10
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 %1321, i32* %1325, align 4
  %1326 = load i64, i64* %RBP.i, align 8
  %1327 = add i64 %1326, -36
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 7
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1327 to i32*
  store i32 -1, i32* %1330, align 4
  %1331 = load i64, i64* %3, align 8
  %1332 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RCX.i741, align 8
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -40
  %1336 = add i64 %1331, 10
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  store i32 %1332, i32* %1337, align 4
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -44
  %1340 = load i64, i64* %3, align 8
  %1341 = add i64 %1340, 7
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1339 to i32*
  store i32 -1, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -24
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 7
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i32*
  store i32 0, i32* %1347, align 4
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -96
  %1350 = load i32, i32* %EAX.i697, align 4
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 3
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1349 to i32*
  store i32 %1350, i32* %1353, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_439e07

block_.L_439e07:                                  ; preds = %block_.L_439eb2, %block_.L_439dca
  %1354 = phi i64 [ %1757, %block_.L_439eb2 ], [ %.pre53, %block_.L_439dca ]
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -24
  %1357 = add i64 %1354, 3
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i776, align 8
  %1361 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1362 = sub i32 %1359, %1361
  %1363 = icmp ult i32 %1359, %1361
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %14, align 1
  %1365 = and i32 %1362, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = xor i32 %1361, %1359
  %1371 = xor i32 %1370, %1362
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %26, align 1
  %1375 = icmp eq i32 %1362, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %29, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %32, align 1
  %1379 = lshr i32 %1359, 31
  %1380 = lshr i32 %1361, 31
  %1381 = xor i32 %1380, %1379
  %1382 = xor i32 %1377, %1379
  %1383 = add nuw nsw i32 %1382, %1381
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %38, align 1
  %1386 = icmp ne i8 %1378, 0
  %1387 = xor i1 %1386, %1384
  %.v85 = select i1 %1387, i64 16, i64 190
  %1388 = add i64 %1354, %.v85
  store i64 %1388, i64* %3, align 8
  br i1 %1387, label %block_439e17, label %block_.L_439ec5

block_439e17:                                     ; preds = %block_.L_439e07
  %1389 = add i64 %1355, -28
  %1390 = add i64 %1388, 7
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  store i32 0, i32* %1391, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_439e1e

block_.L_439e1e:                                  ; preds = %block_.L_439ea4, %block_439e17
  %1392 = phi i64 [ %1727, %block_.L_439ea4 ], [ %.pre59, %block_439e17 ]
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -28
  %1395 = add i64 %1392, 3
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RAX.i776, align 8
  %1399 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1400 = sub i32 %1397, %1399
  %1401 = icmp ult i32 %1397, %1399
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %14, align 1
  %1403 = and i32 %1400, 255
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %21, align 1
  %1408 = xor i32 %1399, %1397
  %1409 = xor i32 %1408, %1400
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %26, align 1
  %1413 = icmp eq i32 %1400, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %29, align 1
  %1415 = lshr i32 %1400, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %32, align 1
  %1417 = lshr i32 %1397, 31
  %1418 = lshr i32 %1399, 31
  %1419 = xor i32 %1418, %1417
  %1420 = xor i32 %1415, %1417
  %1421 = add nuw nsw i32 %1420, %1419
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %38, align 1
  %1424 = icmp ne i8 %1416, 0
  %1425 = xor i1 %1424, %1422
  %.v = select i1 %1425, i64 16, i64 148
  %1426 = add i64 %1392, %.v
  store i64 %1426, i64* %3, align 8
  br i1 %1425, label %block_439e2e, label %block_.L_439eb2

block_439e2e:                                     ; preds = %block_.L_439e1e
  %1427 = add i64 %1393, -8
  %1428 = add i64 %1426, 4
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RAX.i776, align 8
  %1431 = add i64 %1393, -24
  %1432 = add i64 %1426, 8
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = mul i32 %1434, 20
  %1436 = add i32 %1435, 21
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RCX.i741, align 8
  %1438 = icmp ugt i32 %1435, -22
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %14, align 1
  %1440 = and i32 %1436, 253
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %21, align 1
  %1445 = xor i32 %1435, 16
  %1446 = xor i32 %1445, %1436
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1450 = lshr i32 %1436, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %32, align 1
  %1452 = lshr i32 %1435, 31
  %1453 = xor i32 %1450, %1452
  %1454 = add nuw nsw i32 %1453, %1450
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %38, align 1
  %1457 = add i64 %1426, 14
  store i64 %1457, i64* %3, align 8
  %1458 = load i32, i32* %1396, align 4
  %1459 = add i32 %1458, %1436
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RCX.i741, align 8
  %1461 = sext i32 %1459 to i64
  %1462 = mul nsw i64 %1461, 36
  store i64 %1462, i64* %RDX.i753, align 8
  %1463 = lshr i64 %1462, 63
  %1464 = load i64, i64* %RAX.i776, align 8
  %1465 = add i64 %1462, %1464
  store i64 %1465, i64* %RAX.i776, align 8
  %1466 = icmp ult i64 %1465, %1464
  %1467 = icmp ult i64 %1465, %1462
  %1468 = or i1 %1466, %1467
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %14, align 1
  %1470 = trunc i64 %1465 to i32
  %1471 = and i32 %1470, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %21, align 1
  %1476 = xor i64 %1462, %1464
  %1477 = xor i64 %1476, %1465
  %1478 = lshr i64 %1477, 4
  %1479 = trunc i64 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %26, align 1
  %1481 = icmp eq i64 %1465, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %29, align 1
  %1483 = lshr i64 %1465, 63
  %1484 = trunc i64 %1483 to i8
  store i8 %1484, i8* %32, align 1
  %1485 = lshr i64 %1464, 63
  %1486 = xor i64 %1483, %1485
  %1487 = xor i64 %1483, %1463
  %1488 = add nuw nsw i64 %1486, %1487
  %1489 = icmp eq i64 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %38, align 1
  %1491 = add i64 %1465, 12
  %1492 = add i64 %1426, 27
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RCX.i741, align 8
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -48
  %1498 = add i64 %1426, 30
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sub i32 %1494, %1500
  %1502 = icmp ult i32 %1494, %1500
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %14, align 1
  %1504 = and i32 %1501, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %21, align 1
  %1509 = xor i32 %1500, %1494
  %1510 = xor i32 %1509, %1501
  %1511 = lshr i32 %1510, 4
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  store i8 %1513, i8* %26, align 1
  %1514 = icmp eq i32 %1501, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %29, align 1
  %1516 = lshr i32 %1501, 31
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* %32, align 1
  %1518 = lshr i32 %1494, 31
  %1519 = lshr i32 %1500, 31
  %1520 = xor i32 %1519, %1518
  %1521 = xor i32 %1516, %1518
  %1522 = add nuw nsw i32 %1521, %1520
  %1523 = icmp eq i32 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %38, align 1
  %.v93 = select i1 %1514, i64 41, i64 36
  %1525 = add i64 %1426, %.v93
  store i64 %1525, i64* %3, align 8
  br i1 %1514, label %block_.L_439e57, label %block_439e52

block_439e52:                                     ; preds = %block_439e2e
  %1526 = add i64 %1525, 82
  br label %block_.L_439ea4

block_.L_439e57:                                  ; preds = %block_439e2e
  %1527 = add i64 %1496, -24
  %1528 = add i64 %1525, 3
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i776, align 8
  %1532 = add i64 %1496, -32
  %1533 = add i64 %1525, 6
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = sub i32 %1530, %1535
  %1537 = icmp ult i32 %1530, %1535
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %14, align 1
  %1539 = and i32 %1536, 255
  %1540 = tail call i32 @llvm.ctpop.i32(i32 %1539)
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = xor i8 %1542, 1
  store i8 %1543, i8* %21, align 1
  %1544 = xor i32 %1535, %1530
  %1545 = xor i32 %1544, %1536
  %1546 = lshr i32 %1545, 4
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  store i8 %1548, i8* %26, align 1
  %1549 = icmp eq i32 %1536, 0
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %29, align 1
  %1551 = lshr i32 %1536, 31
  %1552 = trunc i32 %1551 to i8
  store i8 %1552, i8* %32, align 1
  %1553 = lshr i32 %1530, 31
  %1554 = lshr i32 %1535, 31
  %1555 = xor i32 %1554, %1553
  %1556 = xor i32 %1551, %1553
  %1557 = add nuw nsw i32 %1556, %1555
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %38, align 1
  %1560 = icmp ne i8 %1552, 0
  %1561 = xor i1 %1560, %1558
  %.v94 = select i1 %1561, i64 12, i64 18
  %1562 = add i64 %1525, %.v94
  store i64 %1562, i64* %3, align 8
  br i1 %1561, label %block_439e63, label %block_.L_439e69

block_439e63:                                     ; preds = %block_.L_439e57
  %1563 = add i64 %1562, 3
  store i64 %1563, i64* %3, align 8
  %1564 = load i32, i32* %1529, align 4
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i776, align 8
  %1566 = add i64 %1562, 6
  store i64 %1566, i64* %3, align 8
  store i32 %1564, i32* %1534, align 4
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_439e69

block_.L_439e69:                                  ; preds = %block_.L_439e57, %block_439e63
  %1567 = phi i64 [ %1562, %block_.L_439e57 ], [ %.pre61, %block_439e63 ]
  %1568 = phi i64 [ %1496, %block_.L_439e57 ], [ %.pre60, %block_439e63 ]
  %1569 = add i64 %1568, -24
  %1570 = add i64 %1567, 3
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i776, align 8
  %1574 = add i64 %1568, -36
  %1575 = add i64 %1567, 6
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i32*
  %1577 = load i32, i32* %1576, align 4
  %1578 = sub i32 %1572, %1577
  %1579 = icmp ult i32 %1572, %1577
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1
  %1581 = and i32 %1578, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1
  %1586 = xor i32 %1577, %1572
  %1587 = xor i32 %1586, %1578
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %26, align 1
  %1591 = icmp eq i32 %1578, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %29, align 1
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  store i8 %1594, i8* %32, align 1
  %1595 = lshr i32 %1572, 31
  %1596 = lshr i32 %1577, 31
  %1597 = xor i32 %1596, %1595
  %1598 = xor i32 %1593, %1595
  %1599 = add nuw nsw i32 %1598, %1597
  %1600 = icmp eq i32 %1599, 2
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %38, align 1
  %1602 = icmp ne i8 %1594, 0
  %1603 = xor i1 %1602, %1600
  %1604 = or i1 %1591, %1603
  %.v95 = select i1 %1604, i64 18, i64 12
  %1605 = add i64 %1567, %.v95
  store i64 %1605, i64* %3, align 8
  br i1 %1604, label %block_.L_439e7b, label %block_439e75

block_439e75:                                     ; preds = %block_.L_439e69
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %3, align 8
  %1607 = load i32, i32* %1571, align 4
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i776, align 8
  %1609 = add i64 %1605, 6
  store i64 %1609, i64* %3, align 8
  store i32 %1607, i32* %1576, align 4
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_439e7b

block_.L_439e7b:                                  ; preds = %block_439e75, %block_.L_439e69
  %1610 = phi i64 [ %.pre63, %block_439e75 ], [ %1605, %block_.L_439e69 ]
  %1611 = phi i64 [ %.pre62, %block_439e75 ], [ %1568, %block_.L_439e69 ]
  %1612 = add i64 %1611, -28
  %1613 = add i64 %1610, 3
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i32*
  %1615 = load i32, i32* %1614, align 4
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RAX.i776, align 8
  %1617 = add i64 %1611, -40
  %1618 = add i64 %1610, 6
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = sub i32 %1615, %1620
  %1622 = icmp ult i32 %1615, %1620
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %14, align 1
  %1624 = and i32 %1621, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %21, align 1
  %1629 = xor i32 %1620, %1615
  %1630 = xor i32 %1629, %1621
  %1631 = lshr i32 %1630, 4
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  store i8 %1633, i8* %26, align 1
  %1634 = icmp eq i32 %1621, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %29, align 1
  %1636 = lshr i32 %1621, 31
  %1637 = trunc i32 %1636 to i8
  store i8 %1637, i8* %32, align 1
  %1638 = lshr i32 %1615, 31
  %1639 = lshr i32 %1620, 31
  %1640 = xor i32 %1639, %1638
  %1641 = xor i32 %1636, %1638
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %38, align 1
  %1645 = icmp ne i8 %1637, 0
  %1646 = xor i1 %1645, %1643
  %.v96 = select i1 %1646, i64 12, i64 18
  %1647 = add i64 %1610, %.v96
  store i64 %1647, i64* %3, align 8
  br i1 %1646, label %block_439e87, label %block_.L_439e8d

block_439e87:                                     ; preds = %block_.L_439e7b
  %1648 = add i64 %1647, 3
  store i64 %1648, i64* %3, align 8
  %1649 = load i32, i32* %1614, align 4
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RAX.i776, align 8
  %1651 = add i64 %1647, 6
  store i64 %1651, i64* %3, align 8
  store i32 %1649, i32* %1619, align 4
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_439e8d

block_.L_439e8d:                                  ; preds = %block_.L_439e7b, %block_439e87
  %1652 = phi i64 [ %1647, %block_.L_439e7b ], [ %.pre65, %block_439e87 ]
  %1653 = phi i64 [ %1611, %block_.L_439e7b ], [ %.pre64, %block_439e87 ]
  %1654 = add i64 %1653, -28
  %1655 = add i64 %1652, 3
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RAX.i776, align 8
  %1659 = add i64 %1653, -44
  %1660 = add i64 %1652, 6
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sub i32 %1657, %1662
  %1664 = icmp ult i32 %1657, %1662
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %14, align 1
  %1666 = and i32 %1663, 255
  %1667 = tail call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %21, align 1
  %1671 = xor i32 %1662, %1657
  %1672 = xor i32 %1671, %1663
  %1673 = lshr i32 %1672, 4
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  store i8 %1675, i8* %26, align 1
  %1676 = icmp eq i32 %1663, 0
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %29, align 1
  %1678 = lshr i32 %1663, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %32, align 1
  %1680 = lshr i32 %1657, 31
  %1681 = lshr i32 %1662, 31
  %1682 = xor i32 %1681, %1680
  %1683 = xor i32 %1678, %1680
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %38, align 1
  %1687 = icmp ne i8 %1679, 0
  %1688 = xor i1 %1687, %1685
  %1689 = or i1 %1676, %1688
  %.v97 = select i1 %1689, i64 18, i64 12
  %1690 = add i64 %1652, %.v97
  store i64 %1690, i64* %3, align 8
  br i1 %1689, label %block_.L_439e9f, label %block_439e99

block_439e99:                                     ; preds = %block_.L_439e8d
  %1691 = add i64 %1690, 3
  store i64 %1691, i64* %3, align 8
  %1692 = load i32, i32* %1656, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RAX.i776, align 8
  %1694 = add i64 %1690, 6
  store i64 %1694, i64* %3, align 8
  store i32 %1692, i32* %1661, align 4
  %.pre66 = load i64, i64* %3, align 8
  %.pre67.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_439e9f

block_.L_439e9f:                                  ; preds = %block_439e99, %block_.L_439e8d
  %.pre67 = phi i64 [ %.pre67.pre, %block_439e99 ], [ %1653, %block_.L_439e8d ]
  %1695 = phi i64 [ %.pre66, %block_439e99 ], [ %1690, %block_.L_439e8d ]
  %1696 = add i64 %1695, 5
  store i64 %1696, i64* %3, align 8
  br label %block_.L_439ea4

block_.L_439ea4:                                  ; preds = %block_.L_439e9f, %block_439e52
  %1697 = phi i64 [ %1496, %block_439e52 ], [ %.pre67, %block_.L_439e9f ]
  %storemerge38 = phi i64 [ %1526, %block_439e52 ], [ %1696, %block_.L_439e9f ]
  %1698 = add i64 %1697, -28
  %1699 = add i64 %storemerge38, 3
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = add i32 %1701, 1
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RAX.i776, align 8
  %1704 = icmp eq i32 %1701, -1
  %1705 = icmp eq i32 %1702, 0
  %1706 = or i1 %1704, %1705
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %14, align 1
  %1708 = and i32 %1702, 255
  %1709 = tail call i32 @llvm.ctpop.i32(i32 %1708)
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  store i8 %1712, i8* %21, align 1
  %1713 = xor i32 %1702, %1701
  %1714 = lshr i32 %1713, 4
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  store i8 %1716, i8* %26, align 1
  %1717 = zext i1 %1705 to i8
  store i8 %1717, i8* %29, align 1
  %1718 = lshr i32 %1702, 31
  %1719 = trunc i32 %1718 to i8
  store i8 %1719, i8* %32, align 1
  %1720 = lshr i32 %1701, 31
  %1721 = xor i32 %1718, %1720
  %1722 = add nuw nsw i32 %1721, %1718
  %1723 = icmp eq i32 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %38, align 1
  %1725 = add i64 %storemerge38, 9
  store i64 %1725, i64* %3, align 8
  store i32 %1702, i32* %1700, align 4
  %1726 = load i64, i64* %3, align 8
  %1727 = add i64 %1726, -143
  store i64 %1727, i64* %3, align 8
  br label %block_.L_439e1e

block_.L_439eb2:                                  ; preds = %block_.L_439e1e
  %1728 = add i64 %1393, -24
  %1729 = add i64 %1426, 8
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = add i32 %1731, 1
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RAX.i776, align 8
  %1734 = icmp eq i32 %1731, -1
  %1735 = icmp eq i32 %1732, 0
  %1736 = or i1 %1734, %1735
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %14, align 1
  %1738 = and i32 %1732, 255
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %21, align 1
  %1743 = xor i32 %1732, %1731
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %26, align 1
  %1747 = zext i1 %1735 to i8
  store i8 %1747, i8* %29, align 1
  %1748 = lshr i32 %1732, 31
  %1749 = trunc i32 %1748 to i8
  store i8 %1749, i8* %32, align 1
  %1750 = lshr i32 %1731, 31
  %1751 = xor i32 %1748, %1750
  %1752 = add nuw nsw i32 %1751, %1748
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %38, align 1
  %1755 = add i64 %1426, 14
  store i64 %1755, i64* %3, align 8
  store i32 %1732, i32* %1730, align 4
  %1756 = load i64, i64* %3, align 8
  %1757 = add i64 %1756, -185
  store i64 %1757, i64* %3, align 8
  br label %block_.L_439e07

block_.L_439ec5:                                  ; preds = %block_.L_439e07
  %1758 = add i64 %1355, -32
  %1759 = add i64 %1388, 3
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RAX.i776, align 8
  %1763 = add i64 %1388, 6
  store i64 %1763, i64* %3, align 8
  store i32 %1761, i32* %1358, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_439ecb

block_.L_439ecb:                                  ; preds = %block_.L_43a02b, %block_.L_439ec5
  %1764 = phi i64 [ %.pre54, %block_.L_439ec5 ], [ %2260, %block_.L_43a02b ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_439dd6, %block_.L_439ec5 ], [ %call2_43a037, %block_.L_43a02b ]
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -24
  %1767 = add i64 %1764, 3
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX.i776, align 8
  %1771 = add i64 %1765, -36
  %1772 = add i64 %1764, 6
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = sub i32 %1769, %1774
  %1776 = icmp ult i32 %1769, %1774
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %14, align 1
  %1778 = and i32 %1775, 255
  %1779 = tail call i32 @llvm.ctpop.i32(i32 %1778)
  %1780 = trunc i32 %1779 to i8
  %1781 = and i8 %1780, 1
  %1782 = xor i8 %1781, 1
  store i8 %1782, i8* %21, align 1
  %1783 = xor i32 %1774, %1769
  %1784 = xor i32 %1783, %1775
  %1785 = lshr i32 %1784, 4
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  store i8 %1787, i8* %26, align 1
  %1788 = icmp eq i32 %1775, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %29, align 1
  %1790 = lshr i32 %1775, 31
  %1791 = trunc i32 %1790 to i8
  store i8 %1791, i8* %32, align 1
  %1792 = lshr i32 %1769, 31
  %1793 = lshr i32 %1774, 31
  %1794 = xor i32 %1793, %1792
  %1795 = xor i32 %1790, %1792
  %1796 = add nuw nsw i32 %1795, %1794
  %1797 = icmp eq i32 %1796, 2
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %38, align 1
  %1799 = icmp ne i8 %1791, 0
  %1800 = xor i1 %1799, %1797
  %.demorgan = or i1 %1788, %1800
  %.v86 = select i1 %.demorgan, i64 12, i64 386
  %1801 = add i64 %1764, %.v86
  store i64 %1801, i64* %3, align 8
  br i1 %.demorgan, label %block_439ed7, label %block_.L_43a04d

block_439ed7:                                     ; preds = %block_.L_439ecb
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %1802 = add i64 %1801, 98009
  %1803 = add i64 %1801, 17
  %1804 = load i64, i64* %6, align 8
  %1805 = add i64 %1804, -8
  %1806 = inttoptr i64 %1805 to i64*
  store i64 %1803, i64* %1806, align 8
  store i64 %1805, i64* %6, align 8
  store i64 %1802, i64* %3, align 8
  %call2_439ee3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1802, %struct.Memory* %MEMORY.27)
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -40
  %1809 = load i64, i64* %3, align 8
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1808 to i32*
  %1812 = load i32, i32* %1811, align 4
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RCX.i741, align 8
  %1814 = add i64 %1807, -28
  %1815 = add i64 %1809, 6
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  store i32 %1812, i32* %1816, align 4
  %1817 = load i64, i64* %RBP.i, align 8
  %1818 = add i64 %1817, -100
  %1819 = load i32, i32* %EAX.i697, align 4
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1818 to i32*
  store i32 %1819, i32* %1822, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_439ef1

block_.L_439ef1:                                  ; preds = %block_.L_43a018, %block_439ed7
  %1823 = phi i64 [ %.pre55, %block_439ed7 ], [ %2217, %block_.L_43a018 ]
  %1824 = load i64, i64* %RBP.i, align 8
  %1825 = add i64 %1824, -28
  %1826 = add i64 %1823, 3
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RAX.i776, align 8
  %1830 = add i64 %1824, -44
  %1831 = add i64 %1823, 6
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sub i32 %1828, %1833
  %1835 = icmp ult i32 %1828, %1833
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %14, align 1
  %1837 = and i32 %1834, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  %1842 = xor i32 %1833, %1828
  %1843 = xor i32 %1842, %1834
  %1844 = lshr i32 %1843, 4
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  store i8 %1846, i8* %26, align 1
  %1847 = icmp eq i32 %1834, 0
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %29, align 1
  %1849 = lshr i32 %1834, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %32, align 1
  %1851 = lshr i32 %1828, 31
  %1852 = lshr i32 %1833, 31
  %1853 = xor i32 %1852, %1851
  %1854 = xor i32 %1849, %1851
  %1855 = add nuw nsw i32 %1854, %1853
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %38, align 1
  %1858 = icmp ne i8 %1850, 0
  %1859 = xor i1 %1858, %1856
  %.demorgan82 = or i1 %1847, %1859
  %.v87 = select i1 %.demorgan82, i64 12, i64 314
  %1860 = add i64 %1823, %.v87
  store i64 %1860, i64* %3, align 8
  br i1 %.demorgan82, label %block_439efd, label %block_.L_43a02b

block_439efd:                                     ; preds = %block_.L_439ef1
  %1861 = add i64 %1824, -24
  %1862 = add i64 %1860, 4
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = mul i32 %1864, 20
  %1866 = add i32 %1865, 21
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RAX.i776, align 8
  %1868 = icmp ugt i32 %1865, -22
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %14, align 1
  %1870 = and i32 %1866, 253
  %1871 = tail call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  store i8 %1874, i8* %21, align 1
  %1875 = xor i32 %1865, 16
  %1876 = xor i32 %1875, %1866
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  store i8 %1879, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1880 = lshr i32 %1866, 31
  %1881 = trunc i32 %1880 to i8
  store i8 %1881, i8* %32, align 1
  %1882 = lshr i32 %1865, 31
  %1883 = xor i32 %1880, %1882
  %1884 = add nuw nsw i32 %1883, %1880
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %38, align 1
  %1887 = add i64 %1860, 10
  store i64 %1887, i64* %3, align 8
  %1888 = load i32, i32* %1827, align 4
  %1889 = add i32 %1888, %1866
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX.i776, align 8
  %1891 = icmp ult i32 %1889, %1866
  %1892 = icmp ult i32 %1889, %1888
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %14, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %21, align 1
  %1900 = xor i32 %1888, %1866
  %1901 = xor i32 %1900, %1889
  %1902 = lshr i32 %1901, 4
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %26, align 1
  %1905 = icmp eq i32 %1889, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %29, align 1
  %1907 = lshr i32 %1889, 31
  %1908 = trunc i32 %1907 to i8
  store i8 %1908, i8* %32, align 1
  %1909 = lshr i32 %1888, 31
  %1910 = xor i32 %1907, %1880
  %1911 = xor i32 %1907, %1909
  %1912 = add nuw nsw i32 %1910, %1911
  %1913 = icmp eq i32 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %38, align 1
  %1915 = add i64 %1824, -56
  %1916 = add i64 %1860, 13
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  store i32 %1889, i32* %1917, align 4
  %1918 = load i64, i64* %RBP.i, align 8
  %1919 = add i64 %1918, -8
  %1920 = load i64, i64* %3, align 8
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1919 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RCX.i741, align 8
  %1924 = add i64 %1918, -56
  %1925 = add i64 %1920, 8
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = sext i32 %1927 to i64
  %1929 = mul nsw i64 %1928, 36
  store i64 %1929, i64* %RDX.i753, align 8
  %1930 = lshr i64 %1929, 63
  %1931 = add i64 %1929, %1923
  store i64 %1931, i64* %RCX.i741, align 8
  %1932 = icmp ult i64 %1931, %1923
  %1933 = icmp ult i64 %1931, %1929
  %1934 = or i1 %1932, %1933
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %14, align 1
  %1936 = trunc i64 %1931 to i32
  %1937 = and i32 %1936, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %21, align 1
  %1942 = xor i64 %1929, %1923
  %1943 = xor i64 %1942, %1931
  %1944 = lshr i64 %1943, 4
  %1945 = trunc i64 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %26, align 1
  %1947 = icmp eq i64 %1931, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %29, align 1
  %1949 = lshr i64 %1931, 63
  %1950 = trunc i64 %1949 to i8
  store i8 %1950, i8* %32, align 1
  %1951 = lshr i64 %1923, 63
  %1952 = xor i64 %1949, %1951
  %1953 = xor i64 %1949, %1930
  %1954 = add nuw nsw i64 %1952, %1953
  %1955 = icmp eq i64 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %38, align 1
  %1957 = add i64 %1931, 12
  %1958 = add i64 %1920, 18
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = zext i32 %1960 to i64
  store i64 %1961, i64* %RAX.i776, align 8
  %1962 = add i64 %1918, -48
  %1963 = add i64 %1920, 21
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  %1965 = load i32, i32* %1964, align 4
  %1966 = sub i32 %1960, %1965
  %1967 = icmp ult i32 %1960, %1965
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = and i32 %1966, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %21, align 1
  %1974 = xor i32 %1965, %1960
  %1975 = xor i32 %1974, %1966
  %1976 = lshr i32 %1975, 4
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %26, align 1
  %1979 = icmp eq i32 %1966, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %29, align 1
  %1981 = lshr i32 %1966, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %32, align 1
  %1983 = lshr i32 %1960, 31
  %1984 = lshr i32 %1965, 31
  %1985 = xor i32 %1984, %1983
  %1986 = xor i32 %1981, %1983
  %1987 = add nuw nsw i32 %1986, %1985
  %1988 = icmp eq i32 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %38, align 1
  %.v88 = select i1 %1979, i64 27, i64 250
  %1990 = add i64 %1920, %.v88
  store i64 %1990, i64* %3, align 8
  br i1 %1979, label %block_439f25, label %block_.L_43a004

block_439f25:                                     ; preds = %block_439efd
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -56
  %1993 = add i64 %1990, 4
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = sext i32 %1995 to i64
  store i64 %1996, i64* %RAX.i776, align 8
  %1997 = add nsw i64 %1996, 12099168
  %1998 = add i64 %1990, 12
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i8*
  %2000 = load i8, i8* %1999, align 1
  %2001 = zext i8 %2000 to i64
  store i64 %2001, i64* %RCX.i741, align 8
  %2002 = zext i8 %2000 to i32
  store i8 0, i8* %14, align 1
  %2003 = tail call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  store i8 %2006, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2007 = icmp eq i8 %2000, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %2007, i64 21, i64 147
  %2009 = add i64 %1990, %.v89
  store i64 %2009, i64* %3, align 8
  br i1 %2007, label %block_439f3a, label %block_.L_439fb8

block_439f3a:                                     ; preds = %block_439f25
  %2010 = add i64 %1991, -8
  %2011 = add i64 %2009, 4
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i64*
  %2013 = load i64, i64* %2012, align 8
  store i64 %2013, i64* %RAX.i776, align 8
  %2014 = add i64 %2009, 8
  store i64 %2014, i64* %3, align 8
  %2015 = load i32, i32* %1994, align 4
  %2016 = sext i32 %2015 to i64
  %2017 = mul nsw i64 %2016, 36
  store i64 %2017, i64* %RCX.i741, align 8
  %2018 = lshr i64 %2017, 63
  %2019 = add i64 %2017, %2013
  store i64 %2019, i64* %RAX.i776, align 8
  %2020 = icmp ult i64 %2019, %2013
  %2021 = icmp ult i64 %2019, %2017
  %2022 = or i1 %2020, %2021
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %14, align 1
  %2024 = trunc i64 %2019 to i32
  %2025 = and i32 %2024, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %21, align 1
  %2030 = xor i64 %2017, %2013
  %2031 = xor i64 %2030, %2019
  %2032 = lshr i64 %2031, 4
  %2033 = trunc i64 %2032 to i8
  %2034 = and i8 %2033, 1
  store i8 %2034, i8* %26, align 1
  %2035 = icmp eq i64 %2019, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %29, align 1
  %2037 = lshr i64 %2019, 63
  %2038 = trunc i64 %2037 to i8
  store i8 %2038, i8* %32, align 1
  %2039 = lshr i64 %2013, 63
  %2040 = xor i64 %2037, %2039
  %2041 = xor i64 %2037, %2018
  %2042 = add nuw nsw i64 %2040, %2041
  %2043 = icmp eq i64 %2042, 2
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %38, align 1
  %2045 = add i64 %2019, 28
  %2046 = add i64 %2009, 19
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i8*
  %2048 = load i8, i8* %2047, align 1
  store i8 0, i8* %14, align 1
  %2049 = zext i8 %2048 to i32
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2054 = icmp eq i8 %2048, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %29, align 1
  %2056 = lshr i8 %2048, 7
  store i8 %2056, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %2054, i64 50, i64 25
  %2057 = add i64 %2009, %.v91
  store i64 %2057, i64* %3, align 8
  br i1 %2054, label %block_.L_439f6c, label %block_439f53

block_439f53:                                     ; preds = %block_439f3a
  store i64 ptrtoint (%G__0x57da42_type* @G__0x57da42 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2058 = add i64 %2057, 97885
  %2059 = add i64 %2057, 17
  %2060 = load i64, i64* %6, align 8
  %2061 = add i64 %2060, -8
  %2062 = inttoptr i64 %2061 to i64*
  store i64 %2059, i64* %2062, align 8
  store i64 %2061, i64* %6, align 8
  store i64 %2058, i64* %3, align 8
  %call2_439f5f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2058, %struct.Memory* %MEMORY.27)
  %2063 = load i64, i64* %RBP.i, align 8
  %2064 = add i64 %2063, -104
  %2065 = load i32, i32* %EAX.i697, align 4
  %2066 = load i64, i64* %3, align 8
  %2067 = add i64 %2066, 3
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2064 to i32*
  store i32 %2065, i32* %2068, align 4
  %2069 = load i64, i64* %3, align 8
  %2070 = add i64 %2069, 76
  br label %block_.L_439fb3

block_.L_439f6c:                                  ; preds = %block_439f3a
  %2071 = add i64 %1991, -16
  %2072 = add i64 %2057, 4
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i64*
  %2074 = load i64, i64* %2073, align 8
  store i64 %2074, i64* %RDI.i773, align 8
  %2075 = add i64 %2057, 7
  store i64 %2075, i64* %3, align 8
  %2076 = load i32, i32* %1994, align 4
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RSI.i770, align 8
  %2078 = add i64 %2057, 4292
  %2079 = add i64 %2057, 12
  %2080 = load i64, i64* %6, align 8
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %6, align 8
  store i64 %2078, i64* %3, align 8
  %call2_439f73 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %MEMORY.27)
  %2083 = load i32, i32* %EAX.i697, align 4
  %2084 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2085 = and i32 %2083, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2090 = icmp eq i32 %2083, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %29, align 1
  %2092 = lshr i32 %2083, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %2090, i64 34, i64 9
  %2094 = add i64 %2084, %.v92
  %2095 = add i64 %2094, 10
  store i64 %2095, i64* %3, align 8
  br i1 %2090, label %block_.L_439f9a, label %block_439f81

block_439f81:                                     ; preds = %block_.L_439f6c
  store i64 ptrtoint (%G__0x57da46_type* @G__0x57da46 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2096 = add i64 %2094, 97839
  %2097 = add i64 %2094, 17
  %2098 = load i64, i64* %6, align 8
  %2099 = add i64 %2098, -8
  %2100 = inttoptr i64 %2099 to i64*
  store i64 %2097, i64* %2100, align 8
  store i64 %2099, i64* %6, align 8
  store i64 %2096, i64* %3, align 8
  %call2_439f8d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2096, %struct.Memory* %MEMORY.27)
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -108
  %2103 = load i32, i32* %EAX.i697, align 4
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 3
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2102 to i32*
  store i32 %2103, i32* %2106, align 4
  %2107 = load i64, i64* %3, align 8
  %2108 = add i64 %2107, 25
  store i64 %2108, i64* %3, align 8
  br label %block_.L_439fae

block_.L_439f9a:                                  ; preds = %block_.L_439f6c
  store i64 ptrtoint (%G__0x57da4a_type* @G__0x57da4a to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2109 = add i64 %2094, 97814
  %2110 = add i64 %2094, 17
  %2111 = load i64, i64* %6, align 8
  %2112 = add i64 %2111, -8
  %2113 = inttoptr i64 %2112 to i64*
  store i64 %2110, i64* %2113, align 8
  store i64 %2112, i64* %6, align 8
  store i64 %2109, i64* %3, align 8
  %call2_439fa6 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2109, %struct.Memory* %MEMORY.27)
  %2114 = load i64, i64* %RBP.i, align 8
  %2115 = add i64 %2114, -112
  %2116 = load i32, i32* %EAX.i697, align 4
  %2117 = load i64, i64* %3, align 8
  %2118 = add i64 %2117, 3
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2115 to i32*
  store i32 %2116, i32* %2119, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_439fae

block_.L_439fae:                                  ; preds = %block_.L_439f9a, %block_439f81
  %2120 = phi i64 [ %.pre56, %block_.L_439f9a ], [ %2108, %block_439f81 ]
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %3, align 8
  br label %block_.L_439fb3

block_.L_439fb3:                                  ; preds = %block_.L_439fae, %block_439f53
  %storemerge39 = phi i64 [ %2070, %block_439f53 ], [ %2121, %block_.L_439fae ]
  %2122 = add i64 %storemerge39, 76
  br label %block_.L_439fff

block_.L_439fb8:                                  ; preds = %block_439f25
  %2123 = add i64 %1991, -16
  %2124 = add i64 %2009, 4
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i64*
  %2126 = load i64, i64* %2125, align 8
  store i64 %2126, i64* %RDI.i773, align 8
  %2127 = add i64 %2009, 7
  store i64 %2127, i64* %3, align 8
  %2128 = load i32, i32* %1994, align 4
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RSI.i770, align 8
  %2130 = add i64 %2009, 4216
  %2131 = add i64 %2009, 12
  %2132 = load i64, i64* %6, align 8
  %2133 = add i64 %2132, -8
  %2134 = inttoptr i64 %2133 to i64*
  store i64 %2131, i64* %2134, align 8
  store i64 %2133, i64* %6, align 8
  store i64 %2130, i64* %3, align 8
  %call2_439fbf = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %2130, %struct.Memory* %MEMORY.27)
  %2135 = load i32, i32* %EAX.i697, align 4
  %2136 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2137 = and i32 %2135, 255
  %2138 = tail call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2142 = icmp eq i32 %2135, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %29, align 1
  %2144 = lshr i32 %2135, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %2142, i64 34, i64 9
  %2146 = add i64 %2136, %.v90
  %2147 = add i64 %2146, 10
  store i64 %2147, i64* %3, align 8
  br i1 %2142, label %block_.L_439fe6, label %block_439fcd

block_439fcd:                                     ; preds = %block_.L_439fb8
  store i64 ptrtoint (%G__0x57da4e_type* @G__0x57da4e to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2148 = add i64 %2146, 97763
  %2149 = add i64 %2146, 17
  %2150 = load i64, i64* %6, align 8
  %2151 = add i64 %2150, -8
  %2152 = inttoptr i64 %2151 to i64*
  store i64 %2149, i64* %2152, align 8
  store i64 %2151, i64* %6, align 8
  store i64 %2148, i64* %3, align 8
  %call2_439fd9 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2148, %struct.Memory* %MEMORY.27)
  %2153 = load i64, i64* %RBP.i, align 8
  %2154 = add i64 %2153, -116
  %2155 = load i32, i32* %EAX.i697, align 4
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, 3
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2154 to i32*
  store i32 %2155, i32* %2158, align 4
  %2159 = load i64, i64* %3, align 8
  %2160 = add i64 %2159, 25
  store i64 %2160, i64* %3, align 8
  br label %block_.L_439ffa

block_.L_439fe6:                                  ; preds = %block_.L_439fb8
  store i64 ptrtoint (%G__0x57da52_type* @G__0x57da52 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2161 = add i64 %2146, 97738
  %2162 = add i64 %2146, 17
  %2163 = load i64, i64* %6, align 8
  %2164 = add i64 %2163, -8
  %2165 = inttoptr i64 %2164 to i64*
  store i64 %2162, i64* %2165, align 8
  store i64 %2164, i64* %6, align 8
  store i64 %2161, i64* %3, align 8
  %call2_439ff2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2161, %struct.Memory* %MEMORY.27)
  %2166 = load i64, i64* %RBP.i, align 8
  %2167 = add i64 %2166, -120
  %2168 = load i32, i32* %EAX.i697, align 4
  %2169 = load i64, i64* %3, align 8
  %2170 = add i64 %2169, 3
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2167 to i32*
  store i32 %2168, i32* %2171, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_439ffa

block_.L_439ffa:                                  ; preds = %block_.L_439fe6, %block_439fcd
  %2172 = phi i64 [ %.pre57, %block_.L_439fe6 ], [ %2160, %block_439fcd ]
  %2173 = add i64 %2172, 5
  store i64 %2173, i64* %3, align 8
  br label %block_.L_439fff

block_.L_439fff:                                  ; preds = %block_.L_439ffa, %block_.L_439fb3
  %storemerge40 = phi i64 [ %2122, %block_.L_439fb3 ], [ %2173, %block_.L_439ffa ]
  %2174 = add i64 %storemerge40, 25
  store i64 %2174, i64* %3, align 8
  br label %block_.L_43a018

block_.L_43a004:                                  ; preds = %block_439efd
  store i64 ptrtoint (%G__0x57da56_type* @G__0x57da56 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2175 = add i64 %1990, 97708
  %2176 = add i64 %1990, 17
  %2177 = load i64, i64* %6, align 8
  %2178 = add i64 %2177, -8
  %2179 = inttoptr i64 %2178 to i64*
  store i64 %2176, i64* %2179, align 8
  store i64 %2178, i64* %6, align 8
  store i64 %2175, i64* %3, align 8
  %call2_43a010 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2175, %struct.Memory* %MEMORY.27)
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -124
  %2182 = load i32, i32* %EAX.i697, align 4
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2181 to i32*
  store i32 %2182, i32* %2185, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_43a018

block_.L_43a018:                                  ; preds = %block_.L_43a004, %block_.L_439fff
  %2186 = phi i64 [ %.pre58, %block_.L_43a004 ], [ %2174, %block_.L_439fff ]
  %2187 = load i64, i64* %RBP.i, align 8
  %2188 = add i64 %2187, -28
  %2189 = add i64 %2186, 8
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i32*
  %2191 = load i32, i32* %2190, align 4
  %2192 = add i32 %2191, 1
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RAX.i776, align 8
  %2194 = icmp eq i32 %2191, -1
  %2195 = icmp eq i32 %2192, 0
  %2196 = or i1 %2194, %2195
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %14, align 1
  %2198 = and i32 %2192, 255
  %2199 = tail call i32 @llvm.ctpop.i32(i32 %2198)
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = xor i8 %2201, 1
  store i8 %2202, i8* %21, align 1
  %2203 = xor i32 %2192, %2191
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %26, align 1
  %2207 = zext i1 %2195 to i8
  store i8 %2207, i8* %29, align 1
  %2208 = lshr i32 %2192, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %32, align 1
  %2210 = lshr i32 %2191, 31
  %2211 = xor i32 %2208, %2210
  %2212 = add nuw nsw i32 %2211, %2208
  %2213 = icmp eq i32 %2212, 2
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %38, align 1
  %2215 = add i64 %2186, 14
  store i64 %2215, i64* %3, align 8
  store i32 %2192, i32* %2190, align 4
  %2216 = load i64, i64* %3, align 8
  %2217 = add i64 %2216, -309
  store i64 %2217, i64* %3, align 8
  br label %block_.L_439ef1

block_.L_43a02b:                                  ; preds = %block_.L_439ef1
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i773, align 8
  store i8 0, i8* %AL.i703, align 1
  %2218 = add i64 %1860, 97669
  %2219 = add i64 %1860, 17
  %2220 = load i64, i64* %6, align 8
  %2221 = add i64 %2220, -8
  %2222 = inttoptr i64 %2221 to i64*
  store i64 %2219, i64* %2222, align 8
  store i64 %2221, i64* %6, align 8
  store i64 %2218, i64* %3, align 8
  %call2_43a037 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2218, %struct.Memory* %MEMORY.27)
  %2223 = load i64, i64* %RBP.i, align 8
  %2224 = add i64 %2223, -128
  %2225 = load i32, i32* %EAX.i697, align 4
  %2226 = load i64, i64* %3, align 8
  %2227 = add i64 %2226, 3
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2224 to i32*
  store i32 %2225, i32* %2228, align 4
  %2229 = load i64, i64* %RBP.i, align 8
  %2230 = add i64 %2229, -24
  %2231 = load i64, i64* %3, align 8
  %2232 = add i64 %2231, 3
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2230 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = add i32 %2234, 1
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RAX.i776, align 8
  %2237 = icmp eq i32 %2234, -1
  %2238 = icmp eq i32 %2235, 0
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %14, align 1
  %2241 = and i32 %2235, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %21, align 1
  %2246 = xor i32 %2235, %2234
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  store i8 %2249, i8* %26, align 1
  %2250 = zext i1 %2238 to i8
  store i8 %2250, i8* %29, align 1
  %2251 = lshr i32 %2235, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %32, align 1
  %2253 = lshr i32 %2234, 31
  %2254 = xor i32 %2251, %2253
  %2255 = add nuw nsw i32 %2254, %2251
  %2256 = icmp eq i32 %2255, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %38, align 1
  %2258 = add i64 %2231, 9
  store i64 %2258, i64* %3, align 8
  store i32 %2235, i32* %2233, align 4
  %2259 = load i64, i64* %3, align 8
  %2260 = add i64 %2259, -381
  store i64 %2260, i64* %3, align 8
  br label %block_.L_439ecb

block_.L_43a04d:                                  ; preds = %block_.L_439ecb
  %2261 = load i64, i64* %6, align 8
  %2262 = add i64 %2261, 128
  store i64 %2262, i64* %6, align 8
  %2263 = icmp ugt i64 %2261, -129
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %14, align 1
  %2265 = trunc i64 %2262 to i32
  %2266 = and i32 %2265, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266)
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %21, align 1
  %2271 = xor i64 %2262, %2261
  %2272 = lshr i64 %2271, 4
  %2273 = trunc i64 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %26, align 1
  %2275 = icmp eq i64 %2262, 0
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %29, align 1
  %2277 = lshr i64 %2262, 63
  %2278 = trunc i64 %2277 to i8
  store i8 %2278, i8* %32, align 1
  %2279 = lshr i64 %2261, 63
  %2280 = xor i64 %2277, %2279
  %2281 = add nuw nsw i64 %2280, %2277
  %2282 = icmp eq i64 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %38, align 1
  %2284 = add i64 %1801, 8
  store i64 %2284, i64* %3, align 8
  %2285 = add i64 %2261, 136
  %2286 = inttoptr i64 %2262 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RBP.i, align 8
  store i64 %2285, i64* %6, align 8
  %2288 = add i64 %1801, 9
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2285 to i64*
  %2290 = load i64, i64* %2289, align 8
  store i64 %2290, i64* %3, align 8
  %2291 = add i64 %2261, 144
  store i64 %2291, i64* %6, align 8
  ret %struct.Memory* %MEMORY.27
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__0x57d997___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d997_type* @G__0x57d997 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imulq__0x24___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
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
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 36
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
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_imulq__0x24___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_439dca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_439db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 36
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
define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_je_.L_439b16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_439da9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_je_.L_439b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_439b5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_439b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57d9c6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d9c6_type* @G__0x57d9c6 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439da4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.is_halfeye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_439c2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_439bb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439c2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xa9451__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa9451__rip__type* @G_0xa9451__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_cvtss2sd___rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load float, float* %5, align 4
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_439bfe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_439bfe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d9d0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d9d0_type* @G__0x57d9d0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d9da___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d9da_type* @G__0x57d9da to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load float, float* %5, align 4
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_439d9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_439c8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_439c70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57da01___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da01_type* @G__0x57da01 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439d9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57da0a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da0a_type* @G__0x57da0a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439d95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_439d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xa9305__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa9305__rip__type* @G_0xa9305__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_439d4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_439d4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da13___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da13_type* @G__0x57da13 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439d74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da1c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da1c_type* @G__0x57da1c to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57b826___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57b826_type* @G__0x57b826 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439ad9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439dbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_439ac2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_439ec5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_439eb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_je_.L_439e57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_439ea4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jge_.L_439e69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jle_.L_439e7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jge_.L_439e8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jle_.L_439e9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_439e1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439eb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439e07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jg_.L_43a04d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58898d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jg_.L_43a02b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jne_.L_43a004(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jne_.L_439fb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_439f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57da42___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da42_type* @G__0x57da42 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439fb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_439f9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57da46___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da46_type* @G__0x57da46 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439fae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da4a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da4a_type* @G__0x57da4a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439fff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_439fe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57da4e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da4e_type* @G__0x57da4e to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_439ffa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da52___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da52_type* @G__0x57da52 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_43a018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da56___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da56_type* @G__0x57da56 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_43a01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_439ef1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_439ecb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
