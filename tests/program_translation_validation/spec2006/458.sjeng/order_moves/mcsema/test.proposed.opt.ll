; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x633b50_type = type <{ [1 x i8] }>
%G_0x639110_type = type <{ [4 x i8] }>
%G_0x864500_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G__0x639220_type = type <{ [8 x i8] }>
%G__0x63ae50_type = type <{ [8 x i8] }>
%G__0x86bda0_type = type <{ [8 x i8] }>
%G__0x882600_type = type <{ [8 x i8] }>
%G__0x884b20_type = type <{ [8 x i8] }>
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
@G_0x633b50 = local_unnamed_addr global %G_0x633b50_type zeroinitializer
@G_0x639110 = local_unnamed_addr global %G_0x639110_type zeroinitializer
@G_0x864500 = local_unnamed_addr global %G_0x864500_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G__0x639220 = global %G__0x639220_type zeroinitializer
@G__0x63ae50 = global %G__0x63ae50_type zeroinitializer
@G__0x86bda0 = global %G__0x86bda0_type zeroinitializer
@G__0x882600 = global %G__0x882600_type zeroinitializer
@G__0x884b20 = global %G__0x884b20_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_41c560.see(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @order_moves(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDI.i385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %18 = add i64 %7, -16
  %19 = load i64, i64* %RDI.i385, align 8
  %20 = add i64 %10, 14
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %21, align 8
  %RSI.i402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %RSI.i402, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i470 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %RDX.i470, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i485 = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -28
  %38 = load i32, i32* %ECX.i485, align 4
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -32
  %45 = load i32, i32* %R8D.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  store i8 0, i8* %12, align 1
  %51 = and i32 %50, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51)
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %56 = icmp eq i32 %50, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %15, align 1
  %58 = lshr i32 %50, 31
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v93 = select i1 %56, i64 2057, i64 14
  %60 = add i64 %49, %.v93
  store i64 %60, i64* %3, align 8
  br i1 %56, label %block_.L_416727, label %block_415f2c

block_415f2c:                                     ; preds = %entry
  store i32 0, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -44
  %63 = add i64 %60, 18
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i740 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %EAX.i876 = bitcast %union.anon* %65 to i32*
  %RCX.i1245 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %EDX.i1473 = bitcast %union.anon* %28 to i32*
  %66 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200) to i32), i32 255))
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i1199 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %R9.i1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_415f3e

block_.L_415f3e:                                  ; preds = %block_.L_41670f, %block_415f2c
  %71 = phi i64 [ %.pre, %block_415f2c ], [ %3216, %block_.L_41670f ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_415f2c ], [ %MEMORY.23, %block_.L_41670f ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -44
  %74 = add i64 %71, 3
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i740, align 8
  %78 = add i64 %72, -28
  %79 = add i64 %71, 6
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %76, %81
  %83 = icmp ult i32 %76, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %12, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %13, align 1
  %90 = xor i32 %81, %76
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %14, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %15, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %16, align 1
  %99 = lshr i32 %76, 31
  %100 = lshr i32 %81, 31
  %101 = xor i32 %100, %99
  %102 = xor i32 %97, %99
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %17, align 1
  %106 = icmp ne i8 %98, 0
  %107 = xor i1 %106, %104
  %.v94 = select i1 %107, i64 12, i64 2020
  %108 = add i64 %71, %.v94
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_415f4a, label %block_.L_416722

block_415f4a:                                     ; preds = %block_.L_415f3e
  %109 = add i64 %72, -8
  %110 = add i64 %108, 4
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX.i740, align 8
  %113 = add i64 %108, 8
  store i64 %113, i64* %3, align 8
  %114 = load i32, i32* %75, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, 24
  store i64 %116, i64* %RCX.i1245, align 8
  %117 = lshr i64 %116, 63
  %118 = add i64 %116, %112
  store i64 %118, i64* %RAX.i740, align 8
  %119 = icmp ult i64 %118, %112
  %120 = icmp ult i64 %118, %116
  %121 = or i1 %119, %120
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %12, align 1
  %123 = trunc i64 %118 to i32
  %124 = and i32 %123, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %13, align 1
  %129 = xor i64 %116, %112
  %130 = xor i64 %129, %118
  %131 = lshr i64 %130, 4
  %132 = trunc i64 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %14, align 1
  %134 = icmp eq i64 %118, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %15, align 1
  %136 = lshr i64 %118, 63
  %137 = trunc i64 %136 to i8
  store i8 %137, i8* %16, align 1
  %138 = lshr i64 %112, 63
  %139 = xor i64 %136, %138
  %140 = xor i64 %136, %117
  %141 = add nuw nsw i64 %139, %140
  %142 = icmp eq i64 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %17, align 1
  %144 = inttoptr i64 %118 to i32*
  %145 = add i64 %108, 17
  store i64 %145, i64* %3, align 8
  %146 = load i32, i32* %144, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RDX.i470, align 8
  %148 = add i64 %72, -48
  %149 = add i64 %108, 20
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 %146, i32* %150, align 4
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -8
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 4
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RAX.i740, align 8
  %157 = add i64 %151, -44
  %158 = add i64 %153, 8
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, 24
  store i64 %162, i64* %RCX.i1245, align 8
  %163 = lshr i64 %162, 63
  %164 = add i64 %162, %156
  store i64 %164, i64* %RAX.i740, align 8
  %165 = icmp ult i64 %164, %156
  %166 = icmp ult i64 %164, %162
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %12, align 1
  %169 = trunc i64 %164 to i32
  %170 = and i32 %169, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %13, align 1
  %175 = xor i64 %162, %156
  %176 = xor i64 %175, %164
  %177 = lshr i64 %176, 4
  %178 = trunc i64 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %14, align 1
  %180 = icmp eq i64 %164, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %15, align 1
  %182 = lshr i64 %164, 63
  %183 = trunc i64 %182 to i8
  store i8 %183, i8* %16, align 1
  %184 = lshr i64 %156, 63
  %185 = xor i64 %182, %184
  %186 = xor i64 %182, %163
  %187 = add nuw nsw i64 %185, %186
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %17, align 1
  %190 = add i64 %164, 4
  %191 = add i64 %153, 18
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RDX.i470, align 8
  %195 = add i64 %151, -52
  %196 = add i64 %153, 21
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 %193, i32* %197, align 4
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -8
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX.i740, align 8
  %204 = add i64 %198, -44
  %205 = add i64 %200, 8
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %208, 24
  store i64 %209, i64* %RCX.i1245, align 8
  %210 = lshr i64 %209, 63
  %211 = add i64 %209, %203
  store i64 %211, i64* %RAX.i740, align 8
  %212 = icmp ult i64 %211, %203
  %213 = icmp ult i64 %211, %209
  %214 = or i1 %212, %213
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %12, align 1
  %216 = trunc i64 %211 to i32
  %217 = and i32 %216, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %13, align 1
  %222 = xor i64 %209, %203
  %223 = xor i64 %222, %211
  %224 = lshr i64 %223, 4
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %14, align 1
  %227 = icmp eq i64 %211, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %15, align 1
  %229 = lshr i64 %211, 63
  %230 = trunc i64 %229 to i8
  store i8 %230, i8* %16, align 1
  %231 = lshr i64 %203, 63
  %232 = xor i64 %229, %231
  %233 = xor i64 %229, %210
  %234 = add nuw nsw i64 %232, %233
  %235 = icmp eq i64 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %17, align 1
  %237 = add i64 %211, 12
  %238 = add i64 %200, 18
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RDX.i470, align 8
  %242 = add i64 %198, -36
  %243 = add i64 %200, 21
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  store i32 %240, i32* %244, align 4
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -8
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RAX.i740, align 8
  %251 = add i64 %245, -44
  %252 = add i64 %247, 8
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, 24
  store i64 %256, i64* %RCX.i1245, align 8
  %257 = lshr i64 %256, 63
  %258 = add i64 %256, %250
  store i64 %258, i64* %RAX.i740, align 8
  %259 = icmp ult i64 %258, %250
  %260 = icmp ult i64 %258, %256
  %261 = or i1 %259, %260
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %12, align 1
  %263 = trunc i64 %258 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %13, align 1
  %269 = xor i64 %256, %250
  %270 = xor i64 %269, %258
  %271 = lshr i64 %270, 4
  %272 = trunc i64 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %14, align 1
  %274 = icmp eq i64 %258, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %15, align 1
  %276 = lshr i64 %258, 63
  %277 = trunc i64 %276 to i8
  store i8 %277, i8* %16, align 1
  %278 = lshr i64 %250, 63
  %279 = xor i64 %276, %278
  %280 = xor i64 %276, %257
  %281 = add nuw nsw i64 %279, %280
  %282 = icmp eq i64 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %17, align 1
  %284 = add i64 %258, 8
  %285 = add i64 %247, 18
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RDX.i470, align 8
  %289 = add i64 %245, -40
  %290 = add i64 %247, 21
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  store i32 %287, i32* %291, align 4
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -40
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, 4
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, -13
  %299 = icmp ult i32 %297, 13
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %12, align 1
  %301 = and i32 %298, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %13, align 1
  %306 = xor i32 %298, %297
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %14, align 1
  %310 = icmp eq i32 %298, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %15, align 1
  %312 = lshr i32 %298, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %16, align 1
  %314 = lshr i32 %297, 31
  %315 = xor i32 %312, %314
  %316 = add nuw nsw i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %17, align 1
  %.v95 = select i1 %310, i64 262, i64 10
  %319 = add i64 %294, %.v95
  store i64 %319, i64* %3, align 8
  br i1 %310, label %block_.L_4160a3, label %block_415fa7

block_415fa7:                                     ; preds = %block_415f4a
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = load i32, i32* %296, align 4
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %RAX.i740, align 8
  %323 = shl nsw i64 %322, 2
  %324 = add nsw i64 %323, 6478512
  %325 = add i64 %319, 11
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RDI.i385, align 8
  %329 = add i64 %319, -86823
  %330 = add i64 %319, 16
  %331 = load i64, i64* %6, align 8
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %6, align 8
  store i64 %329, i64* %3, align 8
  %334 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.0)
  %335 = load i64, i64* %RAX.i740, align 8
  %336 = load i64, i64* %3, align 8
  %337 = trunc i64 %335 to i32
  %338 = add i32 %337, 15
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX.i740, align 8
  %340 = icmp ugt i32 %337, -16
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %12, align 1
  %342 = and i32 %338, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %13, align 1
  %347 = xor i32 %338, %337
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %14, align 1
  %351 = icmp eq i32 %338, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %15, align 1
  %353 = lshr i32 %338, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %16, align 1
  %355 = lshr i32 %337, 31
  %356 = xor i32 %353, %355
  %357 = add nuw nsw i32 %356, %353
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %17, align 1
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -48
  %362 = add i64 %336, 7
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RCX.i1245, align 8
  %366 = shl nsw i64 %365, 2
  %367 = add nsw i64 %366, 8807744
  %368 = add i64 %336, 15
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RCX.i1245, align 8
  %372 = shl nsw i64 %371, 2
  %373 = add nsw i64 %372, 6478512
  %374 = add i64 %336, 22
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RDI.i385, align 8
  %378 = add i64 %360, -60
  %379 = add i64 %336, 25
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  store i32 %338, i32* %380, align 4
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, -86864
  %383 = add i64 %381, 5
  %384 = load i64, i64* %6, align 8
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %6, align 8
  store i64 %382, i64* %3, align 8
  %387 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %334)
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -60
  %390 = load i64, i64* %3, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RDI.i385, align 8
  %395 = load i32, i32* %EAX.i876, align 4
  %396 = sub i32 %393, %395
  %397 = icmp ult i32 %393, %395
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %12, align 1
  %399 = and i32 %396, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %13, align 1
  %404 = xor i32 %395, %393
  %405 = xor i32 %404, %396
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %14, align 1
  %409 = icmp eq i32 %396, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %15, align 1
  %411 = lshr i32 %396, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %16, align 1
  %413 = lshr i32 %393, 31
  %414 = lshr i32 %395, 31
  %415 = xor i32 %414, %413
  %416 = xor i32 %411, %413
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %17, align 1
  %420 = icmp ne i8 %412, 0
  %421 = xor i1 %420, %418
  %.v96 = select i1 %421, i64 105, i64 11
  %422 = add i64 %390, %.v96
  store i64 %422, i64* %3, align 8
  br i1 %421, label %block_.L_41603e, label %block_415fe0

block_415fe0:                                     ; preds = %block_415fa7
  %423 = add i64 %388, -40
  %424 = add i64 %422, 4
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RAX.i740, align 8
  %428 = shl nsw i64 %427, 2
  %429 = add nsw i64 %428, 6478512
  %430 = add i64 %422, 11
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RDI.i385, align 8
  %434 = add i64 %422, -86880
  %435 = add i64 %422, 16
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %6, align 8
  store i64 %434, i64* %3, align 8
  %439 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %387)
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -48
  %442 = load i64, i64* %3, align 8
  %443 = add i64 %442, 4
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %RCX.i1245, align 8
  %447 = shl nsw i64 %446, 2
  %448 = add nsw i64 %447, 8807744
  %449 = add i64 %442, 12
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RCX.i1245, align 8
  %453 = shl nsw i64 %452, 2
  %454 = add nsw i64 %453, 6478512
  %455 = add i64 %442, 19
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RDI.i385, align 8
  %459 = add i64 %440, -64
  %460 = load i32, i32* %EAX.i876, align 4
  %461 = add i64 %442, 22
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i32*
  store i32 %460, i32* %462, align 4
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, -86918
  %465 = add i64 %463, 5
  %466 = load i64, i64* %6, align 8
  %467 = add i64 %466, -8
  %468 = inttoptr i64 %467 to i64*
  store i64 %465, i64* %468, align 8
  store i64 %467, i64* %6, align 8
  store i64 %464, i64* %3, align 8
  %469 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %439)
  %470 = load i64, i64* %RAX.i740, align 8
  %471 = load i64, i64* %3, align 8
  %472 = shl i64 %470, 32
  %473 = ashr i64 %472, 35
  %474 = lshr i64 %473, 1
  %475 = trunc i64 %473 to i8
  %476 = and i8 %475, 1
  %477 = trunc i64 %474 to i32
  %478 = and i64 %474, 4294967295
  store i64 %478, i64* %RAX.i740, align 8
  store i8 %476, i8* %12, align 1
  %479 = and i32 %477, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %484 = icmp eq i32 %477, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %15, align 1
  %486 = lshr i64 %473, 32
  %487 = trunc i64 %486 to i8
  %488 = and i8 %487, 1
  store i8 %488, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -64
  %491 = add i64 %471, 6
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = trunc i64 %474 to i32
  %495 = sub i32 %493, %494
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RDI.i385, align 8
  %497 = icmp ult i32 %493, %494
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %12, align 1
  %499 = and i32 %495, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %13, align 1
  %504 = xor i32 %494, %493
  %505 = xor i32 %504, %495
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %14, align 1
  %509 = icmp eq i32 %495, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %15, align 1
  %511 = lshr i32 %495, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %16, align 1
  %513 = lshr i32 %493, 31
  %514 = lshr i64 %473, 32
  %515 = trunc i64 %514 to i32
  %516 = and i32 %515, 1
  %517 = xor i32 %516, %513
  %518 = xor i32 %511, %513
  %519 = add nuw nsw i32 %518, %517
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %17, align 1
  %522 = add i64 %489, -24
  %523 = add i64 %471, 12
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RCX.i1245, align 8
  %526 = add i64 %489, -44
  %527 = add i64 %471, 16
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RDX.i470, align 8
  %531 = shl nsw i64 %530, 2
  %532 = add i64 %531, %525
  %533 = add i64 %471, 19
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  store i32 %495, i32* %534, align 4
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -24
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 4
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RCX.i1245, align 8
  %541 = add i64 %535, -44
  %542 = add i64 %537, 8
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  store i64 %545, i64* %RDX.i470, align 8
  %546 = shl nsw i64 %545, 2
  %547 = add i64 %546, %540
  %548 = add i64 %537, 11
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, 50000000
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX.i740, align 8
  %553 = icmp ugt i32 %550, -50000001
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %12, align 1
  %555 = and i32 %551, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %13, align 1
  %560 = xor i32 %551, %550
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %14, align 1
  %564 = icmp eq i32 %551, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %15, align 1
  %566 = lshr i32 %551, 31
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %16, align 1
  %568 = lshr i32 %550, 31
  %569 = xor i32 %566, %568
  %570 = add nuw nsw i32 %569, %566
  %571 = icmp eq i32 %570, 2
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %17, align 1
  %573 = add i64 %535, -16
  %574 = add i64 %537, 20
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RCX.i1245, align 8
  %577 = add i64 %537, 24
  store i64 %577, i64* %3, align 8
  %578 = load i32, i32* %543, align 4
  %579 = sext i32 %578 to i64
  store i64 %579, i64* %RDX.i470, align 8
  %580 = shl nsw i64 %579, 2
  %581 = add i64 %580, %576
  %582 = add i64 %537, 27
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  store i32 %551, i32* %583, align 4
  %584 = load i64, i64* %3, align 8
  %585 = add i64 %584, 101
  store i64 %585, i64* %3, align 8
  br label %block_.L_41609e

block_.L_41603e:                                  ; preds = %block_415fa7
  store i64 0, i64* %RCX.i1245, align 8
  %586 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %587 = and i32 %586, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %592 = icmp eq i32 %586, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %15, align 1
  %594 = lshr i32 %586, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %596 = zext i1 %592 to i64
  store i64 %596, i64* %RAX.i740, align 8
  %597 = add i64 %388, -52
  %598 = add i64 %422, 21
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RSI.i402, align 8
  %602 = add i64 %388, -48
  %603 = add i64 %422, 24
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RDX.i470, align 8
  %607 = zext i1 %592 to i64
  store i64 %607, i64* %RDI.i385, align 8
  %608 = add i64 %422, 25890
  %609 = add i64 %422, 31
  %610 = load i64, i64* %6, align 8
  %611 = add i64 %610, -8
  %612 = inttoptr i64 %611 to i64*
  store i64 %609, i64* %612, align 8
  store i64 %611, i64* %6, align 8
  store i64 %608, i64* %3, align 8
  %call2_416058 = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %608, %struct.Memory* %387)
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -56
  %615 = load i32, i32* %EAX.i876, align 4
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 3
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %614 to i32*
  store i32 %615, i32* %618, align 4
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -56
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 4
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %620 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = add i32 %624, 50
  %626 = icmp ult i32 %624, -50
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %12, align 1
  %628 = and i32 %625, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %13, align 1
  %633 = xor i32 %625, %624
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %14, align 1
  %637 = icmp eq i32 %625, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %15, align 1
  %639 = lshr i32 %625, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %16, align 1
  %641 = lshr i32 %624, 31
  %642 = xor i32 %641, 1
  %643 = xor i32 %639, %641
  %644 = add nuw nsw i32 %643, %642
  %645 = icmp eq i32 %644, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %17, align 1
  %647 = icmp ne i8 %640, 0
  %648 = xor i1 %647, %645
  %.v = select i1 %648, i64 34, i64 10
  %649 = add i64 %621, %.v
  %650 = add i64 %649, 3
  store i64 %650, i64* %3, align 8
  %651 = load i32, i32* %623, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX.i740, align 8
  br i1 %648, label %block_.L_416082, label %block_41606a

block_41606a:                                     ; preds = %block_.L_41603e
  %653 = add i32 %651, 50000000
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RAX.i740, align 8
  %655 = icmp ugt i32 %651, -50000001
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %12, align 1
  %657 = and i32 %653, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %13, align 1
  %662 = xor i32 %653, %651
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %14, align 1
  %666 = icmp eq i32 %653, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %15, align 1
  %668 = lshr i32 %653, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %16, align 1
  %670 = lshr i32 %651, 31
  %671 = xor i32 %668, %670
  %672 = add nuw nsw i32 %671, %668
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %17, align 1
  %675 = add i64 %619, -16
  %676 = add i64 %649, 12
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RCX.i1245, align 8
  %679 = add i64 %619, -44
  %680 = add i64 %649, 16
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RDX.i470, align 8
  %684 = shl nsw i64 %683, 2
  %685 = add i64 %684, %678
  %686 = add i64 %649, 19
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 %653, i32* %687, align 4
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 19
  store i64 %689, i64* %3, align 8
  br label %block_.L_416090

block_.L_416082:                                  ; preds = %block_.L_41603e
  %690 = add i64 %619, -16
  %691 = add i64 %649, 7
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RCX.i1245, align 8
  %694 = add i64 %619, -44
  %695 = add i64 %649, 11
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  store i64 %698, i64* %RDX.i470, align 8
  %699 = shl nsw i64 %698, 2
  %700 = add i64 %699, %693
  %701 = add i64 %649, 14
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  store i32 %651, i32* %702, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_416090

block_.L_416090:                                  ; preds = %block_.L_416082, %block_41606a
  %703 = phi i64 [ %.pre68, %block_.L_416082 ], [ %689, %block_41606a ]
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -56
  %706 = add i64 %703, 3
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RAX.i740, align 8
  %710 = add i64 %704, -24
  %711 = add i64 %703, 7
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RCX.i1245, align 8
  %714 = add i64 %704, -44
  %715 = add i64 %703, 11
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  store i64 %718, i64* %RDX.i470, align 8
  %719 = shl nsw i64 %718, 2
  %720 = add i64 %719, %713
  %721 = add i64 %703, 14
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  store i32 %708, i32* %722, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_41609e

block_.L_41609e:                                  ; preds = %block_.L_416090, %block_415fe0
  %723 = phi i64 [ %.pre69, %block_.L_416090 ], [ %585, %block_415fe0 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_416058, %block_.L_416090 ], [ %469, %block_415fe0 ]
  %724 = add i64 %723, 20
  store i64 %724, i64* %3, align 8
  br label %block_.L_4160b2

block_.L_4160a3:                                  ; preds = %block_415f4a
  %725 = add i64 %292, -16
  %726 = add i64 %319, 4
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %RAX.i740, align 8
  %729 = add i64 %292, -44
  %730 = add i64 %319, 8
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RCX.i1245, align 8
  %734 = shl nsw i64 %733, 2
  %735 = add i64 %734, %728
  %736 = add i64 %319, 15
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  store i32 0, i32* %737, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4160b2

block_.L_4160b2:                                  ; preds = %block_.L_4160a3, %block_.L_41609e
  %738 = phi i64 [ %.pre70, %block_.L_4160a3 ], [ %724, %block_.L_41609e ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4160a3 ], [ %MEMORY.2, %block_.L_41609e ]
  store i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64* %RAX.i740, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 7200)) to i8), i8* %12, align 1
  store i8 %69, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63), i64 lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)), i64 2) to i8), i8* %17, align 1
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -48
  %741 = add i64 %738, 19
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RCX.i1245, align 8
  %745 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %746 = sext i32 %745 to i64
  %747 = mul nsw i64 %746, 24
  store i64 %747, i64* %RDX.i470, align 8
  %748 = lshr i64 %747, 63
  %749 = add i64 %747, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  store i64 %749, i64* %RAX.i740, align 8
  %750 = icmp ult i64 %749, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %751 = icmp ult i64 %749, %747
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %12, align 1
  %754 = trunc i64 %749 to i32
  %755 = and i32 %754, 248
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %13, align 1
  %760 = xor i64 %747, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %761 = xor i64 %760, %749
  %762 = lshr i64 %761, 4
  %763 = trunc i64 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %14, align 1
  %765 = icmp eq i64 %749, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %15, align 1
  %767 = lshr i64 %749, 63
  %768 = trunc i64 %767 to i8
  store i8 %768, i8* %16, align 1
  %769 = xor i64 %767, lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)
  %770 = xor i64 %767, %748
  %771 = add nuw nsw i64 %769, %770
  %772 = icmp eq i64 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %17, align 1
  %774 = inttoptr i64 %749 to i32*
  %775 = add i64 %738, 36
  store i64 %775, i64* %3, align 8
  %776 = load i32, i32* %774, align 8
  %777 = sub i32 %743, %776
  %778 = icmp ult i32 %743, %776
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %12, align 1
  %780 = and i32 %777, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %13, align 1
  %785 = xor i32 %776, %743
  %786 = xor i32 %785, %777
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %14, align 1
  %790 = icmp eq i32 %777, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %15, align 1
  %792 = lshr i32 %777, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %16, align 1
  %794 = lshr i32 %743, 31
  %795 = lshr i32 %776, 31
  %796 = xor i32 %795, %794
  %797 = xor i32 %792, %794
  %798 = add nuw nsw i32 %797, %796
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %17, align 1
  %.v97 = select i1 %790, i64 42, i64 347
  %801 = add i64 %738, %.v97
  store i64 %801, i64* %3, align 8
  br i1 %790, label %block_4160dc, label %block_.L_41620d

block_4160dc:                                     ; preds = %block_.L_4160b2
  store i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64* %RAX.i740, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 7200)) to i8), i8* %12, align 1
  store i8 %69, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63), i64 lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)), i64 2) to i8), i8* %17, align 1
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -52
  %804 = add i64 %801, 19
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RCX.i1245, align 8
  %808 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %809 = sext i32 %808 to i64
  %810 = mul nsw i64 %809, 24
  store i64 %810, i64* %RDX.i470, align 8
  %811 = lshr i64 %810, 63
  %812 = add i64 %810, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  store i64 %812, i64* %RAX.i740, align 8
  %813 = icmp ult i64 %812, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %814 = icmp ult i64 %812, %810
  %815 = or i1 %813, %814
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %12, align 1
  %817 = trunc i64 %812 to i32
  %818 = and i32 %817, 248
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %13, align 1
  %823 = xor i64 %810, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %824 = xor i64 %823, %812
  %825 = lshr i64 %824, 4
  %826 = trunc i64 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %14, align 1
  %828 = icmp eq i64 %812, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %15, align 1
  %830 = lshr i64 %812, 63
  %831 = trunc i64 %830 to i8
  store i8 %831, i8* %16, align 1
  %832 = xor i64 %830, lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)
  %833 = xor i64 %830, %811
  %834 = add nuw nsw i64 %832, %833
  %835 = icmp eq i64 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %17, align 1
  %837 = add i64 %810, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7204)
  %838 = add i64 %801, 37
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = sub i32 %806, %840
  %842 = icmp ult i32 %806, %840
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %12, align 1
  %844 = and i32 %841, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %13, align 1
  %849 = xor i32 %840, %806
  %850 = xor i32 %849, %841
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %14, align 1
  %854 = icmp eq i32 %841, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %15, align 1
  %856 = lshr i32 %841, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %16, align 1
  %858 = lshr i32 %806, 31
  %859 = lshr i32 %840, 31
  %860 = xor i32 %859, %858
  %861 = xor i32 %856, %858
  %862 = add nuw nsw i32 %861, %860
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %17, align 1
  %.v121 = select i1 %854, i64 43, i64 305
  %865 = add i64 %801, %.v121
  store i64 %865, i64* %3, align 8
  br i1 %854, label %block_416107, label %block_.L_41620d

block_416107:                                     ; preds = %block_4160dc
  store i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64* %RAX.i740, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 7200)) to i8), i8* %12, align 1
  store i8 %69, i8* %13, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)), i64 4) to i8), i8 1), i8* %14, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 0) to i8), i8* %15, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63) to i8), i8* %16, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63), i64 lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)), i64 2) to i8), i8* %17, align 1
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -36
  %868 = add i64 %865, 19
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RCX.i1245, align 8
  %872 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %873 = sext i32 %872 to i64
  %874 = mul nsw i64 %873, 24
  store i64 %874, i64* %RDX.i470, align 8
  %875 = lshr i64 %874, 63
  %876 = add i64 %874, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  store i64 %876, i64* %RAX.i740, align 8
  %877 = icmp ult i64 %876, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %878 = icmp ult i64 %876, %874
  %879 = or i1 %877, %878
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %12, align 1
  %881 = trunc i64 %876 to i32
  %882 = and i32 %881, 248
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %13, align 1
  %887 = xor i64 %874, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200)
  %888 = xor i64 %887, %876
  %889 = lshr i64 %888, 4
  %890 = trunc i64 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %14, align 1
  %892 = icmp eq i64 %876, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %15, align 1
  %894 = lshr i64 %876, 63
  %895 = trunc i64 %894 to i8
  store i8 %895, i8* %16, align 1
  %896 = xor i64 %894, lshr (i64 add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7200), i64 63)
  %897 = xor i64 %894, %875
  %898 = add nuw nsw i64 %896, %897
  %899 = icmp eq i64 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %17, align 1
  %901 = add i64 %874, add (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 7212)
  %902 = add i64 %865, 37
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = sub i32 %870, %904
  %906 = icmp ult i32 %870, %904
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %12, align 1
  %908 = and i32 %905, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %13, align 1
  %913 = xor i32 %904, %870
  %914 = xor i32 %913, %905
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %14, align 1
  %918 = icmp eq i32 %905, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %15, align 1
  %920 = lshr i32 %905, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %16, align 1
  %922 = lshr i32 %870, 31
  %923 = lshr i32 %904, 31
  %924 = xor i32 %923, %922
  %925 = xor i32 %920, %922
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %17, align 1
  %.v122 = select i1 %918, i64 43, i64 262
  %929 = add i64 %865, %.v122
  store i64 %929, i64* %3, align 8
  br i1 %918, label %block_416132, label %block_.L_41620d

block_416132:                                     ; preds = %block_416107
  store i32 1, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -16
  %932 = add i64 %929, 15
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RAX.i740, align 8
  %935 = add i64 %930, -44
  %936 = add i64 %929, 19
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  store i64 %939, i64* %RCX.i1245, align 8
  %940 = shl nsw i64 %939, 2
  %941 = add i64 %940, %934
  %942 = add i64 %929, 26
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  store i32 100000000, i32* %943, align 4
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -40
  %946 = load i64, i64* %3, align 8
  %947 = add i64 %946, 4
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = add i32 %949, -13
  %951 = icmp ult i32 %949, 13
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %12, align 1
  %953 = and i32 %950, 255
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %13, align 1
  %958 = xor i32 %950, %949
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %14, align 1
  %962 = icmp eq i32 %950, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %15, align 1
  %964 = lshr i32 %950, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %16, align 1
  %966 = lshr i32 %949, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %17, align 1
  %.v123 = select i1 %962, i64 188, i64 10
  %971 = add i64 %946, %.v123
  store i64 %971, i64* %3, align 8
  br i1 %962, label %block_.L_416208, label %block_416156

block_416156:                                     ; preds = %block_416132
  %972 = add i64 %971, 4
  store i64 %972, i64* %3, align 8
  %973 = load i32, i32* %948, align 4
  %974 = sext i32 %973 to i64
  store i64 %974, i64* %RAX.i740, align 8
  %975 = shl nsw i64 %974, 2
  %976 = add nsw i64 %975, 6478512
  %977 = add i64 %971, 11
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RDI.i385, align 8
  %981 = add i64 %971, -87254
  %982 = add i64 %971, 16
  %983 = load i64, i64* %6, align 8
  %984 = add i64 %983, -8
  %985 = inttoptr i64 %984 to i64*
  store i64 %982, i64* %985, align 8
  store i64 %984, i64* %6, align 8
  store i64 %981, i64* %3, align 8
  %986 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.3)
  %987 = load i64, i64* %RAX.i740, align 8
  %988 = load i64, i64* %3, align 8
  %989 = trunc i64 %987 to i32
  %990 = add i32 %989, 15
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RAX.i740, align 8
  %992 = icmp ugt i32 %989, -16
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %12, align 1
  %994 = and i32 %990, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994)
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %13, align 1
  %999 = xor i32 %990, %989
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %14, align 1
  %1003 = icmp eq i32 %990, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %15, align 1
  %1005 = lshr i32 %990, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %16, align 1
  %1007 = lshr i32 %989, 31
  %1008 = xor i32 %1005, %1007
  %1009 = add nuw nsw i32 %1008, %1005
  %1010 = icmp eq i32 %1009, 2
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %17, align 1
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -48
  %1014 = add i64 %988, 7
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = sext i32 %1016 to i64
  store i64 %1017, i64* %RCX.i1245, align 8
  %1018 = shl nsw i64 %1017, 2
  %1019 = add nsw i64 %1018, 8807744
  %1020 = add i64 %988, 15
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RCX.i1245, align 8
  %1024 = shl nsw i64 %1023, 2
  %1025 = add nsw i64 %1024, 6478512
  %1026 = add i64 %988, 22
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RDI.i385, align 8
  %1030 = add i64 %1012, -68
  %1031 = add i64 %988, 25
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  store i32 %990, i32* %1032, align 4
  %1033 = load i64, i64* %3, align 8
  %1034 = add i64 %1033, -87295
  %1035 = add i64 %1033, 5
  %1036 = load i64, i64* %6, align 8
  %1037 = add i64 %1036, -8
  %1038 = inttoptr i64 %1037 to i64*
  store i64 %1035, i64* %1038, align 8
  store i64 %1037, i64* %6, align 8
  store i64 %1034, i64* %3, align 8
  %1039 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %986)
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -68
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 3
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1041 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RDI.i385, align 8
  %1047 = load i32, i32* %EAX.i876, align 4
  %1048 = sub i32 %1045, %1047
  %1049 = icmp ult i32 %1045, %1047
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %12, align 1
  %1051 = and i32 %1048, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %13, align 1
  %1056 = xor i32 %1047, %1045
  %1057 = xor i32 %1056, %1048
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %14, align 1
  %1061 = icmp eq i32 %1048, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %15, align 1
  %1063 = lshr i32 %1048, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %16, align 1
  %1065 = lshr i32 %1045, 31
  %1066 = lshr i32 %1047, 31
  %1067 = xor i32 %1066, %1065
  %1068 = xor i32 %1063, %1065
  %1069 = add nuw nsw i32 %1068, %1067
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %17, align 1
  %1072 = icmp ne i8 %1064, 0
  %1073 = xor i1 %1072, %1070
  %.v124 = select i1 %1073, i64 78, i64 11
  %1074 = add i64 %1042, %.v124
  store i64 %1074, i64* %3, align 8
  br i1 %1073, label %block_.L_4161d2, label %block_41618f

block_41618f:                                     ; preds = %block_416156
  %1075 = add i64 %1040, -40
  %1076 = add i64 %1074, 4
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = sext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i740, align 8
  %1080 = shl nsw i64 %1079, 2
  %1081 = add nsw i64 %1080, 6478512
  %1082 = add i64 %1074, 11
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RDI.i385, align 8
  %1086 = add i64 %1074, -87311
  %1087 = add i64 %1074, 16
  %1088 = load i64, i64* %6, align 8
  %1089 = add i64 %1088, -8
  %1090 = inttoptr i64 %1089 to i64*
  store i64 %1087, i64* %1090, align 8
  store i64 %1089, i64* %6, align 8
  store i64 %1086, i64* %3, align 8
  %1091 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1039)
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -48
  %1094 = load i64, i64* %3, align 8
  %1095 = add i64 %1094, 4
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1093 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = sext i32 %1097 to i64
  store i64 %1098, i64* %RCX.i1245, align 8
  %1099 = shl nsw i64 %1098, 2
  %1100 = add nsw i64 %1099, 8807744
  %1101 = add i64 %1094, 12
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  store i64 %1104, i64* %RCX.i1245, align 8
  %1105 = shl nsw i64 %1104, 2
  %1106 = add nsw i64 %1105, 6478512
  %1107 = add i64 %1094, 19
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RDI.i385, align 8
  %1111 = add i64 %1092, -72
  %1112 = load i32, i32* %EAX.i876, align 4
  %1113 = add i64 %1094, 22
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i32*
  store i32 %1112, i32* %1114, align 4
  %1115 = load i64, i64* %3, align 8
  %1116 = add i64 %1115, -87349
  %1117 = add i64 %1115, 5
  %1118 = load i64, i64* %6, align 8
  %1119 = add i64 %1118, -8
  %1120 = inttoptr i64 %1119 to i64*
  store i64 %1117, i64* %1120, align 8
  store i64 %1119, i64* %6, align 8
  store i64 %1116, i64* %3, align 8
  %1121 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1091)
  %1122 = load i64, i64* %RAX.i740, align 8
  %1123 = load i64, i64* %3, align 8
  %1124 = shl i64 %1122, 32
  %1125 = ashr i64 %1124, 35
  %1126 = lshr i64 %1125, 1
  %1127 = trunc i64 %1125 to i8
  %1128 = and i8 %1127, 1
  %1129 = trunc i64 %1126 to i32
  %1130 = and i64 %1126, 4294967295
  store i64 %1130, i64* %RAX.i740, align 8
  store i8 %1128, i8* %12, align 1
  %1131 = and i32 %1129, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1136 = icmp eq i32 %1129, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %15, align 1
  %1138 = lshr i64 %1125, 32
  %1139 = trunc i64 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -72
  %1143 = add i64 %1123, 6
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = trunc i64 %1126 to i32
  %1147 = sub i32 %1145, %1146
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RDI.i385, align 8
  %1149 = icmp ult i32 %1145, %1146
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %12, align 1
  %1151 = and i32 %1147, 255
  %1152 = tail call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %13, align 1
  %1156 = xor i32 %1146, %1145
  %1157 = xor i32 %1156, %1147
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %14, align 1
  %1161 = icmp eq i32 %1147, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %15, align 1
  %1163 = lshr i32 %1147, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %16, align 1
  %1165 = lshr i32 %1145, 31
  %1166 = lshr i64 %1125, 32
  %1167 = trunc i64 %1166 to i32
  %1168 = and i32 %1167, 1
  %1169 = xor i32 %1168, %1165
  %1170 = xor i32 %1163, %1165
  %1171 = add nuw nsw i32 %1170, %1169
  %1172 = icmp eq i32 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %17, align 1
  %1174 = add i64 %1141, -24
  %1175 = add i64 %1123, 12
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i64*
  %1177 = load i64, i64* %1176, align 8
  store i64 %1177, i64* %RCX.i1245, align 8
  %1178 = add i64 %1141, -44
  %1179 = add i64 %1123, 16
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = sext i32 %1181 to i64
  store i64 %1182, i64* %RDX.i470, align 8
  %1183 = shl nsw i64 %1182, 2
  %1184 = add i64 %1183, %1177
  %1185 = add i64 %1123, 19
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  store i32 %1147, i32* %1186, align 4
  %1187 = load i64, i64* %3, align 8
  %1188 = add i64 %1187, 54
  store i64 %1188, i64* %3, align 8
  br label %block_.L_416203

block_.L_4161d2:                                  ; preds = %block_416156
  store i64 0, i64* %RCX.i1245, align 8
  %1189 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %1190 = and i32 %1189, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1195 = icmp eq i32 %1189, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %15, align 1
  %1197 = lshr i32 %1189, 31
  %1198 = trunc i32 %1197 to i8
  store i8 %1198, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1199 = zext i1 %1195 to i64
  store i64 %1199, i64* %RAX.i740, align 8
  %1200 = add i64 %1040, -52
  %1201 = add i64 %1074, 21
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RSI.i402, align 8
  %1205 = add i64 %1040, -48
  %1206 = add i64 %1074, 24
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RDX.i470, align 8
  %1210 = zext i1 %1195 to i64
  store i64 %1210, i64* %RDI.i385, align 8
  %1211 = add i64 %1074, 25486
  %1212 = add i64 %1074, 31
  %1213 = load i64, i64* %6, align 8
  %1214 = add i64 %1213, -8
  %1215 = inttoptr i64 %1214 to i64*
  store i64 %1212, i64* %1215, align 8
  store i64 %1214, i64* %6, align 8
  store i64 %1211, i64* %3, align 8
  %call2_4161ec = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %1211, %struct.Memory* %1039)
  %1216 = load i64, i64* %RBP.i, align 8
  %1217 = add i64 %1216, -56
  %1218 = load i32, i32* %EAX.i876, align 4
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1217 to i32*
  store i32 %1218, i32* %1221, align 4
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -56
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1223 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX.i740, align 8
  %1229 = add i64 %1222, -24
  %1230 = add i64 %1224, 7
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %R8.i1199, align 8
  %1233 = add i64 %1222, -44
  %1234 = add i64 %1224, 11
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = sext i32 %1236 to i64
  store i64 %1237, i64* %R9.i1196, align 8
  %1238 = shl nsw i64 %1237, 2
  %1239 = add i64 %1238, %1232
  %1240 = add i64 %1224, 15
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  store i32 %1227, i32* %1241, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_416203

block_.L_416203:                                  ; preds = %block_.L_4161d2, %block_41618f
  %1242 = phi i64 [ %.pre71, %block_.L_4161d2 ], [ %1188, %block_41618f ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4161ec, %block_.L_4161d2 ], [ %1121, %block_41618f ]
  %1243 = add i64 %1242, 5
  store i64 %1243, i64* %3, align 8
  br label %block_.L_416208

block_.L_416208:                                  ; preds = %block_.L_416203, %block_416132
  %1244 = phi i64 [ %971, %block_416132 ], [ %1243, %block_.L_416203 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_416132 ], [ %MEMORY.4, %block_.L_416203 ]
  %1245 = add i64 %1244, 1287
  br label %block_.L_41670f

block_.L_41620d:                                  ; preds = %block_416107, %block_4160dc, %block_.L_4160b2
  %1246 = phi i64 [ %929, %block_416107 ], [ %865, %block_4160dc ], [ %801, %block_.L_4160b2 ]
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -32
  %1249 = add i64 %1246, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = add i32 %1251, 1
  %1253 = icmp ne i32 %1251, -1
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %12, align 1
  %1255 = and i32 %1252, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %13, align 1
  %1260 = xor i32 %1251, 16
  %1261 = xor i32 %1260, %1252
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %14, align 1
  %1265 = icmp eq i32 %1252, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %15, align 1
  %1267 = lshr i32 %1252, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %16, align 1
  %1269 = lshr i32 %1251, 31
  %1270 = xor i32 %1269, 1
  %1271 = xor i32 %1267, %1269
  %1272 = add nuw nsw i32 %1271, %1270
  %1273 = icmp eq i32 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %17, align 1
  %.v98 = select i1 %1265, i64 240, i64 10
  %1275 = add i64 %1246, %.v98
  store i64 %1275, i64* %3, align 8
  br i1 %1265, label %block_.L_4162fd, label %block_416217

block_416217:                                     ; preds = %block_.L_41620d
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %3, align 8
  %1277 = load i32, i32* %1250, align 4
  %1278 = add i32 %1277, 2
  %1279 = icmp ult i32 %1277, -2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %12, align 1
  %1281 = and i32 %1278, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %13, align 1
  %1286 = xor i32 %1277, 16
  %1287 = xor i32 %1286, %1278
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %14, align 1
  %1291 = icmp eq i32 %1278, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %15, align 1
  %1293 = lshr i32 %1278, 31
  %1294 = trunc i32 %1293 to i8
  store i8 %1294, i8* %16, align 1
  %1295 = lshr i32 %1277, 31
  %1296 = xor i32 %1295, 1
  %1297 = xor i32 %1293, %1295
  %1298 = add nuw nsw i32 %1297, %1296
  %1299 = icmp eq i32 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %17, align 1
  %.v99 = select i1 %1291, i64 230, i64 10
  %1301 = add i64 %1275, %.v99
  store i64 %1301, i64* %3, align 8
  br i1 %1291, label %block_.L_4162fd, label %block_416221

block_416221:                                     ; preds = %block_416217
  %1302 = add i64 %1247, -44
  %1303 = add i64 %1301, 3
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RAX.i740, align 8
  %1307 = add i64 %1301, 6
  store i64 %1307, i64* %3, align 8
  %1308 = load i32, i32* %1250, align 4
  %1309 = sub i32 %1305, %1308
  %1310 = icmp ult i32 %1305, %1308
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %12, align 1
  %1312 = and i32 %1309, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %13, align 1
  %1317 = xor i32 %1308, %1305
  %1318 = xor i32 %1317, %1309
  %1319 = lshr i32 %1318, 4
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  store i8 %1321, i8* %14, align 1
  %1322 = icmp eq i32 %1309, 0
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %15, align 1
  %1324 = lshr i32 %1309, 31
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, i8* %16, align 1
  %1326 = lshr i32 %1305, 31
  %1327 = lshr i32 %1308, 31
  %1328 = xor i32 %1327, %1326
  %1329 = xor i32 %1324, %1326
  %1330 = add nuw nsw i32 %1329, %1328
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %17, align 1
  %.v100 = select i1 %1322, i64 12, i64 220
  %1333 = add i64 %1301, %.v100
  store i64 %1333, i64* %3, align 8
  br i1 %1322, label %block_41622d, label %block_.L_4162fd

block_41622d:                                     ; preds = %block_416221
  %1334 = add i64 %1247, -16
  %1335 = add i64 %1333, 4
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i64*
  %1337 = load i64, i64* %1336, align 8
  store i64 %1337, i64* %RAX.i740, align 8
  %1338 = add i64 %1333, 8
  store i64 %1338, i64* %3, align 8
  %1339 = load i32, i32* %1304, align 4
  %1340 = sext i32 %1339 to i64
  store i64 %1340, i64* %RCX.i1245, align 8
  %1341 = shl nsw i64 %1340, 2
  %1342 = add i64 %1341, %1337
  %1343 = add i64 %1333, 15
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  store i32 100000000, i32* %1344, align 4
  %1345 = load i64, i64* %RBP.i, align 8
  %1346 = add i64 %1345, -40
  %1347 = load i64, i64* %3, align 8
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1346 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = add i32 %1350, -13
  %1352 = icmp ult i32 %1350, 13
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %12, align 1
  %1354 = and i32 %1351, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %13, align 1
  %1359 = xor i32 %1351, %1350
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %14, align 1
  %1363 = icmp eq i32 %1351, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %15, align 1
  %1365 = lshr i32 %1351, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %16, align 1
  %1367 = lshr i32 %1350, 31
  %1368 = xor i32 %1365, %1367
  %1369 = add nuw nsw i32 %1368, %1367
  %1370 = icmp eq i32 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %17, align 1
  %.v119 = select i1 %1363, i64 188, i64 10
  %1372 = add i64 %1347, %.v119
  store i64 %1372, i64* %3, align 8
  br i1 %1363, label %block_.L_4162f8, label %block_416246

block_416246:                                     ; preds = %block_41622d
  %1373 = add i64 %1372, 4
  store i64 %1373, i64* %3, align 8
  %1374 = load i32, i32* %1349, align 4
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RAX.i740, align 8
  %1376 = shl nsw i64 %1375, 2
  %1377 = add nsw i64 %1376, 6478512
  %1378 = add i64 %1372, 11
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RDI.i385, align 8
  %1382 = add i64 %1372, -87494
  %1383 = add i64 %1372, 16
  %1384 = load i64, i64* %6, align 8
  %1385 = add i64 %1384, -8
  %1386 = inttoptr i64 %1385 to i64*
  store i64 %1383, i64* %1386, align 8
  store i64 %1385, i64* %6, align 8
  store i64 %1382, i64* %3, align 8
  %1387 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.3)
  %1388 = load i64, i64* %RAX.i740, align 8
  %1389 = load i64, i64* %3, align 8
  %1390 = trunc i64 %1388 to i32
  %1391 = add i32 %1390, 15
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RAX.i740, align 8
  %1393 = icmp ugt i32 %1390, -16
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %12, align 1
  %1395 = and i32 %1391, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %13, align 1
  %1400 = xor i32 %1391, %1390
  %1401 = lshr i32 %1400, 4
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %14, align 1
  %1404 = icmp eq i32 %1391, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %15, align 1
  %1406 = lshr i32 %1391, 31
  %1407 = trunc i32 %1406 to i8
  store i8 %1407, i8* %16, align 1
  %1408 = lshr i32 %1390, 31
  %1409 = xor i32 %1406, %1408
  %1410 = add nuw nsw i32 %1409, %1406
  %1411 = icmp eq i32 %1410, 2
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %17, align 1
  %1413 = load i64, i64* %RBP.i, align 8
  %1414 = add i64 %1413, -48
  %1415 = add i64 %1389, 7
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = sext i32 %1417 to i64
  store i64 %1418, i64* %RCX.i1245, align 8
  %1419 = shl nsw i64 %1418, 2
  %1420 = add nsw i64 %1419, 8807744
  %1421 = add i64 %1389, 15
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sext i32 %1423 to i64
  store i64 %1424, i64* %RCX.i1245, align 8
  %1425 = shl nsw i64 %1424, 2
  %1426 = add nsw i64 %1425, 6478512
  %1427 = add i64 %1389, 22
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RDI.i385, align 8
  %1431 = add i64 %1413, -76
  %1432 = add i64 %1389, 25
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  store i32 %1391, i32* %1433, align 4
  %1434 = load i64, i64* %3, align 8
  %1435 = add i64 %1434, -87535
  %1436 = add i64 %1434, 5
  %1437 = load i64, i64* %6, align 8
  %1438 = add i64 %1437, -8
  %1439 = inttoptr i64 %1438 to i64*
  store i64 %1436, i64* %1439, align 8
  store i64 %1438, i64* %6, align 8
  store i64 %1435, i64* %3, align 8
  %1440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1387)
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -76
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 3
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RDI.i385, align 8
  %1448 = load i32, i32* %EAX.i876, align 4
  %1449 = sub i32 %1446, %1448
  %1450 = icmp ult i32 %1446, %1448
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %12, align 1
  %1452 = and i32 %1449, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %13, align 1
  %1457 = xor i32 %1448, %1446
  %1458 = xor i32 %1457, %1449
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %14, align 1
  %1462 = icmp eq i32 %1449, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %15, align 1
  %1464 = lshr i32 %1449, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %16, align 1
  %1466 = lshr i32 %1446, 31
  %1467 = lshr i32 %1448, 31
  %1468 = xor i32 %1467, %1466
  %1469 = xor i32 %1464, %1466
  %1470 = add nuw nsw i32 %1469, %1468
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %17, align 1
  %1473 = icmp ne i8 %1465, 0
  %1474 = xor i1 %1473, %1471
  %.v120 = select i1 %1474, i64 78, i64 11
  %1475 = add i64 %1443, %.v120
  store i64 %1475, i64* %3, align 8
  br i1 %1474, label %block_.L_4162c2, label %block_41627f

block_41627f:                                     ; preds = %block_416246
  %1476 = add i64 %1441, -40
  %1477 = add i64 %1475, 4
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = sext i32 %1479 to i64
  store i64 %1480, i64* %RAX.i740, align 8
  %1481 = shl nsw i64 %1480, 2
  %1482 = add nsw i64 %1481, 6478512
  %1483 = add i64 %1475, 11
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RDI.i385, align 8
  %1487 = add i64 %1475, -87551
  %1488 = add i64 %1475, 16
  %1489 = load i64, i64* %6, align 8
  %1490 = add i64 %1489, -8
  %1491 = inttoptr i64 %1490 to i64*
  store i64 %1488, i64* %1491, align 8
  store i64 %1490, i64* %6, align 8
  store i64 %1487, i64* %3, align 8
  %1492 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1440)
  %1493 = load i64, i64* %RBP.i, align 8
  %1494 = add i64 %1493, -48
  %1495 = load i64, i64* %3, align 8
  %1496 = add i64 %1495, 4
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1494 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = sext i32 %1498 to i64
  store i64 %1499, i64* %RCX.i1245, align 8
  %1500 = shl nsw i64 %1499, 2
  %1501 = add nsw i64 %1500, 8807744
  %1502 = add i64 %1495, 12
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  store i64 %1505, i64* %RCX.i1245, align 8
  %1506 = shl nsw i64 %1505, 2
  %1507 = add nsw i64 %1506, 6478512
  %1508 = add i64 %1495, 19
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RDI.i385, align 8
  %1512 = add i64 %1493, -80
  %1513 = load i32, i32* %EAX.i876, align 4
  %1514 = add i64 %1495, 22
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i32*
  store i32 %1513, i32* %1515, align 4
  %1516 = load i64, i64* %3, align 8
  %1517 = add i64 %1516, -87589
  %1518 = add i64 %1516, 5
  %1519 = load i64, i64* %6, align 8
  %1520 = add i64 %1519, -8
  %1521 = inttoptr i64 %1520 to i64*
  store i64 %1518, i64* %1521, align 8
  store i64 %1520, i64* %6, align 8
  store i64 %1517, i64* %3, align 8
  %1522 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1492)
  %1523 = load i64, i64* %RAX.i740, align 8
  %1524 = load i64, i64* %3, align 8
  %1525 = shl i64 %1523, 32
  %1526 = ashr i64 %1525, 35
  %1527 = lshr i64 %1526, 1
  %1528 = trunc i64 %1526 to i8
  %1529 = and i8 %1528, 1
  %1530 = trunc i64 %1527 to i32
  %1531 = and i64 %1527, 4294967295
  store i64 %1531, i64* %RAX.i740, align 8
  store i8 %1529, i8* %12, align 1
  %1532 = and i32 %1530, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1537 = icmp eq i32 %1530, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %15, align 1
  %1539 = lshr i64 %1526, 32
  %1540 = trunc i64 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -80
  %1544 = add i64 %1524, 6
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = trunc i64 %1527 to i32
  %1548 = sub i32 %1546, %1547
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RDI.i385, align 8
  %1550 = icmp ult i32 %1546, %1547
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %12, align 1
  %1552 = and i32 %1548, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %13, align 1
  %1557 = xor i32 %1547, %1546
  %1558 = xor i32 %1557, %1548
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %14, align 1
  %1562 = icmp eq i32 %1548, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %15, align 1
  %1564 = lshr i32 %1548, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %16, align 1
  %1566 = lshr i32 %1546, 31
  %1567 = lshr i64 %1526, 32
  %1568 = trunc i64 %1567 to i32
  %1569 = and i32 %1568, 1
  %1570 = xor i32 %1569, %1566
  %1571 = xor i32 %1564, %1566
  %1572 = add nuw nsw i32 %1571, %1570
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %17, align 1
  %1575 = add i64 %1542, -24
  %1576 = add i64 %1524, 12
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RCX.i1245, align 8
  %1579 = add i64 %1542, -44
  %1580 = add i64 %1524, 16
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RDX.i470, align 8
  %1584 = shl nsw i64 %1583, 2
  %1585 = add i64 %1584, %1578
  %1586 = add i64 %1524, 19
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  store i32 %1548, i32* %1587, align 4
  %1588 = load i64, i64* %3, align 8
  %1589 = add i64 %1588, 54
  store i64 %1589, i64* %3, align 8
  br label %block_.L_4162f3

block_.L_4162c2:                                  ; preds = %block_416246
  store i64 0, i64* %RCX.i1245, align 8
  %1590 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %1591 = and i32 %1590, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1596 = icmp eq i32 %1590, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %15, align 1
  %1598 = lshr i32 %1590, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1600 = zext i1 %1596 to i64
  store i64 %1600, i64* %RAX.i740, align 8
  %1601 = add i64 %1441, -52
  %1602 = add i64 %1475, 21
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RSI.i402, align 8
  %1606 = add i64 %1441, -48
  %1607 = add i64 %1475, 24
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RDX.i470, align 8
  %1611 = zext i1 %1596 to i64
  store i64 %1611, i64* %RDI.i385, align 8
  %1612 = add i64 %1475, 25246
  %1613 = add i64 %1475, 31
  %1614 = load i64, i64* %6, align 8
  %1615 = add i64 %1614, -8
  %1616 = inttoptr i64 %1615 to i64*
  store i64 %1613, i64* %1616, align 8
  store i64 %1615, i64* %6, align 8
  store i64 %1612, i64* %3, align 8
  %call2_4162dc = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %1612, %struct.Memory* %1440)
  %1617 = load i64, i64* %RBP.i, align 8
  %1618 = add i64 %1617, -56
  %1619 = load i32, i32* %EAX.i876, align 4
  %1620 = load i64, i64* %3, align 8
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1618 to i32*
  store i32 %1619, i32* %1622, align 4
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -56
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = zext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i740, align 8
  %1630 = add i64 %1623, -24
  %1631 = add i64 %1625, 7
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i64*
  %1633 = load i64, i64* %1632, align 8
  store i64 %1633, i64* %R8.i1199, align 8
  %1634 = add i64 %1623, -44
  %1635 = add i64 %1625, 11
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = sext i32 %1637 to i64
  store i64 %1638, i64* %R9.i1196, align 8
  %1639 = shl nsw i64 %1638, 2
  %1640 = add i64 %1639, %1633
  %1641 = add i64 %1625, 15
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1640 to i32*
  store i32 %1628, i32* %1642, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4162f3

block_.L_4162f3:                                  ; preds = %block_.L_4162c2, %block_41627f
  %1643 = phi i64 [ %.pre72, %block_.L_4162c2 ], [ %1589, %block_41627f ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4162dc, %block_.L_4162c2 ], [ %1522, %block_41627f ]
  %1644 = add i64 %1643, 5
  store i64 %1644, i64* %3, align 8
  br label %block_.L_4162f8

block_.L_4162f8:                                  ; preds = %block_.L_4162f3, %block_41622d
  %1645 = phi i64 [ %1372, %block_41622d ], [ %1644, %block_.L_4162f3 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.3, %block_41622d ], [ %MEMORY.7, %block_.L_4162f3 ]
  %1646 = add i64 %1645, 1042
  br label %block_.L_41670a

block_.L_4162fd:                                  ; preds = %block_416221, %block_416217, %block_.L_41620d
  %1647 = phi i64 [ %1333, %block_416221 ], [ %1301, %block_416217 ], [ %1275, %block_.L_41620d ]
  %1648 = add i64 %1647, 4
  store i64 %1648, i64* %3, align 8
  %1649 = load i32, i32* %1250, align 4
  %1650 = add i32 %1649, 2
  %1651 = icmp ult i32 %1649, -2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %12, align 1
  %1653 = and i32 %1650, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %13, align 1
  %1658 = xor i32 %1649, 16
  %1659 = xor i32 %1658, %1650
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %14, align 1
  %1663 = icmp eq i32 %1650, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %15, align 1
  %1665 = lshr i32 %1650, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %16, align 1
  %1667 = lshr i32 %1649, 31
  %1668 = xor i32 %1667, 1
  %1669 = xor i32 %1665, %1667
  %1670 = add nuw nsw i32 %1669, %1668
  %1671 = icmp eq i32 %1670, 2
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %17, align 1
  %.v101 = select i1 %1663, i64 10, i64 417
  %1673 = add i64 %1647, %.v101
  store i64 %1673, i64* %3, align 8
  br i1 %1663, label %block_416307, label %block_.L_41649e

block_416307:                                     ; preds = %block_.L_4162fd
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i740, align 8
  %1674 = add i64 %1247, -48
  %1675 = add i64 %1673, 13
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RCX.i1245, align 8
  %1679 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1680 = add i32 %1679, 1
  %1681 = sext i32 %1680 to i64
  %1682 = mul nsw i64 %1681, 7200
  %1683 = add i64 %1682, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1684 = lshr i64 %1683, 63
  %1685 = add i32 %1679, 1
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RDX.i470, align 8
  %1687 = sext i32 %1685 to i64
  %1688 = mul nsw i64 %1687, 24
  store i64 %1688, i64* %RSI.i402, align 8
  %1689 = lshr i64 %1688, 63
  %1690 = add i64 %1688, %1683
  store i64 %1690, i64* %RAX.i740, align 8
  %1691 = icmp ult i64 %1690, %1683
  %1692 = icmp ult i64 %1690, %1688
  %1693 = or i1 %1691, %1692
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %12, align 1
  %1695 = trunc i64 %1690 to i32
  %1696 = and i32 %1695, 248
  %1697 = tail call i32 @llvm.ctpop.i32(i32 %1696)
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  store i8 %1700, i8* %13, align 1
  %1701 = xor i64 %1688, %1683
  %1702 = xor i64 %1701, %1690
  %1703 = lshr i64 %1702, 4
  %1704 = trunc i64 %1703 to i8
  %1705 = and i8 %1704, 1
  store i8 %1705, i8* %14, align 1
  %1706 = icmp eq i64 %1690, 0
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %15, align 1
  %1708 = lshr i64 %1690, 63
  %1709 = trunc i64 %1708 to i8
  store i8 %1709, i8* %16, align 1
  %1710 = xor i64 %1708, %1684
  %1711 = xor i64 %1708, %1689
  %1712 = add nuw nsw i64 %1710, %1711
  %1713 = icmp eq i64 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %17, align 1
  %1715 = load i32, i32* %ECX.i485, align 4
  %1716 = inttoptr i64 %1690 to i32*
  %1717 = add i64 %1673, 58
  store i64 %1717, i64* %3, align 8
  %1718 = load i32, i32* %1716, align 8
  %1719 = sub i32 %1715, %1718
  %1720 = icmp ult i32 %1715, %1718
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %12, align 1
  %1722 = and i32 %1719, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %13, align 1
  %1727 = xor i32 %1718, %1715
  %1728 = xor i32 %1727, %1719
  %1729 = lshr i32 %1728, 4
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %14, align 1
  %1732 = icmp eq i32 %1719, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %15, align 1
  %1734 = lshr i32 %1719, 31
  %1735 = trunc i32 %1734 to i8
  store i8 %1735, i8* %16, align 1
  %1736 = lshr i32 %1715, 31
  %1737 = lshr i32 %1718, 31
  %1738 = xor i32 %1737, %1736
  %1739 = xor i32 %1734, %1736
  %1740 = add nuw nsw i32 %1739, %1738
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %17, align 1
  %.v114 = select i1 %1732, i64 64, i64 402
  %1743 = add i64 %1673, %.v114
  store i64 %1743, i64* %3, align 8
  br i1 %1732, label %block_416347, label %block_.L_416499

block_416347:                                     ; preds = %block_416307
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i740, align 8
  %1744 = load i64, i64* %RBP.i, align 8
  %1745 = add i64 %1744, -52
  %1746 = add i64 %1743, 13
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i1245, align 8
  %1750 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1751 = add i32 %1750, 1
  %1752 = sext i32 %1751 to i64
  %1753 = mul nsw i64 %1752, 7200
  %1754 = add i64 %1753, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1755 = lshr i64 %1754, 63
  %1756 = add i32 %1750, 1
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RDX.i470, align 8
  %1758 = sext i32 %1756 to i64
  %1759 = mul nsw i64 %1758, 24
  store i64 %1759, i64* %RSI.i402, align 8
  %1760 = lshr i64 %1759, 63
  %1761 = add i64 %1759, %1754
  store i64 %1761, i64* %RAX.i740, align 8
  %1762 = icmp ult i64 %1761, %1754
  %1763 = icmp ult i64 %1761, %1759
  %1764 = or i1 %1762, %1763
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %12, align 1
  %1766 = trunc i64 %1761 to i32
  %1767 = and i32 %1766, 248
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %13, align 1
  %1772 = xor i64 %1759, %1754
  %1773 = xor i64 %1772, %1761
  %1774 = lshr i64 %1773, 4
  %1775 = trunc i64 %1774 to i8
  %1776 = and i8 %1775, 1
  store i8 %1776, i8* %14, align 1
  %1777 = icmp eq i64 %1761, 0
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %15, align 1
  %1779 = lshr i64 %1761, 63
  %1780 = trunc i64 %1779 to i8
  store i8 %1780, i8* %16, align 1
  %1781 = xor i64 %1779, %1755
  %1782 = xor i64 %1779, %1760
  %1783 = add nuw nsw i64 %1781, %1782
  %1784 = icmp eq i64 %1783, 2
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %17, align 1
  %1786 = load i32, i32* %ECX.i485, align 4
  %1787 = or i64 %1761, 4
  %1788 = add i64 %1743, 59
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sub i32 %1786, %1790
  %1792 = icmp ult i32 %1786, %1790
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %12, align 1
  %1794 = and i32 %1791, 255
  %1795 = tail call i32 @llvm.ctpop.i32(i32 %1794)
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  store i8 %1798, i8* %13, align 1
  %1799 = xor i32 %1790, %1786
  %1800 = xor i32 %1799, %1791
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %14, align 1
  %1804 = icmp eq i32 %1791, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %15, align 1
  %1806 = lshr i32 %1791, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %16, align 1
  %1808 = lshr i32 %1786, 31
  %1809 = lshr i32 %1790, 31
  %1810 = xor i32 %1809, %1808
  %1811 = xor i32 %1806, %1808
  %1812 = add nuw nsw i32 %1811, %1810
  %1813 = icmp eq i32 %1812, 2
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %17, align 1
  %.v115 = select i1 %1804, i64 65, i64 338
  %1815 = add i64 %1743, %.v115
  store i64 %1815, i64* %3, align 8
  br i1 %1804, label %block_416388, label %block_.L_416499

block_416388:                                     ; preds = %block_416347
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i740, align 8
  %1816 = load i64, i64* %RBP.i, align 8
  %1817 = add i64 %1816, -36
  %1818 = add i64 %1815, 13
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RCX.i1245, align 8
  %1822 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1823 = add i32 %1822, 1
  %1824 = sext i32 %1823 to i64
  %1825 = mul nsw i64 %1824, 7200
  %1826 = add i64 %1825, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1827 = lshr i64 %1826, 63
  %1828 = add i32 %1822, 1
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RDX.i470, align 8
  %1830 = sext i32 %1828 to i64
  %1831 = mul nsw i64 %1830, 24
  store i64 %1831, i64* %RSI.i402, align 8
  %1832 = lshr i64 %1831, 63
  %1833 = add i64 %1831, %1826
  store i64 %1833, i64* %RAX.i740, align 8
  %1834 = icmp ult i64 %1833, %1826
  %1835 = icmp ult i64 %1833, %1831
  %1836 = or i1 %1834, %1835
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %12, align 1
  %1838 = trunc i64 %1833 to i32
  %1839 = and i32 %1838, 248
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %13, align 1
  %1844 = xor i64 %1831, %1826
  %1845 = xor i64 %1844, %1833
  %1846 = lshr i64 %1845, 4
  %1847 = trunc i64 %1846 to i8
  %1848 = and i8 %1847, 1
  store i8 %1848, i8* %14, align 1
  %1849 = icmp eq i64 %1833, 0
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %15, align 1
  %1851 = lshr i64 %1833, 63
  %1852 = trunc i64 %1851 to i8
  store i8 %1852, i8* %16, align 1
  %1853 = xor i64 %1851, %1827
  %1854 = xor i64 %1851, %1832
  %1855 = add nuw nsw i64 %1853, %1854
  %1856 = icmp eq i64 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %17, align 1
  %1858 = load i32, i32* %ECX.i485, align 4
  %1859 = add i64 %1833, 12
  %1860 = add i64 %1815, 59
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = sub i32 %1858, %1862
  %1864 = icmp ult i32 %1858, %1862
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %12, align 1
  %1866 = and i32 %1863, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %13, align 1
  %1871 = xor i32 %1862, %1858
  %1872 = xor i32 %1871, %1863
  %1873 = lshr i32 %1872, 4
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  store i8 %1875, i8* %14, align 1
  %1876 = icmp eq i32 %1863, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %15, align 1
  %1878 = lshr i32 %1863, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %16, align 1
  %1880 = lshr i32 %1858, 31
  %1881 = lshr i32 %1862, 31
  %1882 = xor i32 %1881, %1880
  %1883 = xor i32 %1878, %1880
  %1884 = add nuw nsw i32 %1883, %1882
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %17, align 1
  %.v116 = select i1 %1876, i64 65, i64 273
  %1887 = add i64 %1815, %.v116
  store i64 %1887, i64* %3, align 8
  br i1 %1876, label %block_4163c9, label %block_.L_416499

block_4163c9:                                     ; preds = %block_416388
  %1888 = load i64, i64* %RBP.i, align 8
  %1889 = add i64 %1888, -16
  %1890 = add i64 %1887, 4
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i64*
  %1892 = load i64, i64* %1891, align 8
  store i64 %1892, i64* %RAX.i740, align 8
  %1893 = add i64 %1888, -44
  %1894 = add i64 %1887, 8
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = sext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i1245, align 8
  %1898 = shl nsw i64 %1897, 2
  %1899 = add i64 %1898, %1892
  %1900 = add i64 %1887, 15
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  store i32 100000000, i32* %1901, align 4
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -40
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = add i32 %1907, -13
  %1909 = icmp ult i32 %1907, 13
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %12, align 1
  %1911 = and i32 %1908, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %13, align 1
  %1916 = xor i32 %1908, %1907
  %1917 = lshr i32 %1916, 4
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %14, align 1
  %1920 = icmp eq i32 %1908, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %15, align 1
  %1922 = lshr i32 %1908, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %16, align 1
  %1924 = lshr i32 %1907, 31
  %1925 = xor i32 %1922, %1924
  %1926 = add nuw nsw i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %17, align 1
  %.v117 = select i1 %1920, i64 188, i64 10
  %1929 = add i64 %1904, %.v117
  store i64 %1929, i64* %3, align 8
  br i1 %1920, label %block_.L_416494, label %block_4163e2

block_4163e2:                                     ; preds = %block_4163c9
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %3, align 8
  %1931 = load i32, i32* %1906, align 4
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RAX.i740, align 8
  %1933 = shl nsw i64 %1932, 2
  %1934 = add nsw i64 %1933, 6478512
  %1935 = add i64 %1929, 11
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RDI.i385, align 8
  %1939 = add i64 %1929, -87906
  %1940 = add i64 %1929, 16
  %1941 = load i64, i64* %6, align 8
  %1942 = add i64 %1941, -8
  %1943 = inttoptr i64 %1942 to i64*
  store i64 %1940, i64* %1943, align 8
  store i64 %1942, i64* %6, align 8
  store i64 %1939, i64* %3, align 8
  %1944 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.3)
  %1945 = load i64, i64* %RAX.i740, align 8
  %1946 = load i64, i64* %3, align 8
  %1947 = trunc i64 %1945 to i32
  %1948 = add i32 %1947, 15
  %1949 = zext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i740, align 8
  %1950 = icmp ugt i32 %1947, -16
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %12, align 1
  %1952 = and i32 %1948, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %13, align 1
  %1957 = xor i32 %1948, %1947
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  store i8 %1960, i8* %14, align 1
  %1961 = icmp eq i32 %1948, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %15, align 1
  %1963 = lshr i32 %1948, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %16, align 1
  %1965 = lshr i32 %1947, 31
  %1966 = xor i32 %1963, %1965
  %1967 = add nuw nsw i32 %1966, %1963
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %17, align 1
  %1970 = load i64, i64* %RBP.i, align 8
  %1971 = add i64 %1970, -48
  %1972 = add i64 %1946, 7
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = sext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i1245, align 8
  %1976 = shl nsw i64 %1975, 2
  %1977 = add nsw i64 %1976, 8807744
  %1978 = add i64 %1946, 15
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = sext i32 %1980 to i64
  store i64 %1981, i64* %RCX.i1245, align 8
  %1982 = shl nsw i64 %1981, 2
  %1983 = add nsw i64 %1982, 6478512
  %1984 = add i64 %1946, 22
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RDI.i385, align 8
  %1988 = add i64 %1970, -84
  %1989 = add i64 %1946, 25
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i32*
  store i32 %1948, i32* %1990, align 4
  %1991 = load i64, i64* %3, align 8
  %1992 = add i64 %1991, -87947
  %1993 = add i64 %1991, 5
  %1994 = load i64, i64* %6, align 8
  %1995 = add i64 %1994, -8
  %1996 = inttoptr i64 %1995 to i64*
  store i64 %1993, i64* %1996, align 8
  store i64 %1995, i64* %6, align 8
  store i64 %1992, i64* %3, align 8
  %1997 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1944)
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -84
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RDI.i385, align 8
  %2005 = load i32, i32* %EAX.i876, align 4
  %2006 = sub i32 %2003, %2005
  %2007 = icmp ult i32 %2003, %2005
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %12, align 1
  %2009 = and i32 %2006, 255
  %2010 = tail call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %13, align 1
  %2014 = xor i32 %2005, %2003
  %2015 = xor i32 %2014, %2006
  %2016 = lshr i32 %2015, 4
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  store i8 %2018, i8* %14, align 1
  %2019 = icmp eq i32 %2006, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %15, align 1
  %2021 = lshr i32 %2006, 31
  %2022 = trunc i32 %2021 to i8
  store i8 %2022, i8* %16, align 1
  %2023 = lshr i32 %2003, 31
  %2024 = lshr i32 %2005, 31
  %2025 = xor i32 %2024, %2023
  %2026 = xor i32 %2021, %2023
  %2027 = add nuw nsw i32 %2026, %2025
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %17, align 1
  %2030 = icmp ne i8 %2022, 0
  %2031 = xor i1 %2030, %2028
  %.v118 = select i1 %2031, i64 78, i64 11
  %2032 = add i64 %2000, %.v118
  store i64 %2032, i64* %3, align 8
  br i1 %2031, label %block_.L_41645e, label %block_41641b

block_41641b:                                     ; preds = %block_4163e2
  %2033 = add i64 %1998, -40
  %2034 = add i64 %2032, 4
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = sext i32 %2036 to i64
  store i64 %2037, i64* %RAX.i740, align 8
  %2038 = shl nsw i64 %2037, 2
  %2039 = add nsw i64 %2038, 6478512
  %2040 = add i64 %2032, 11
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RDI.i385, align 8
  %2044 = add i64 %2032, -87963
  %2045 = add i64 %2032, 16
  %2046 = load i64, i64* %6, align 8
  %2047 = add i64 %2046, -8
  %2048 = inttoptr i64 %2047 to i64*
  store i64 %2045, i64* %2048, align 8
  store i64 %2047, i64* %6, align 8
  store i64 %2044, i64* %3, align 8
  %2049 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1997)
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -48
  %2052 = load i64, i64* %3, align 8
  %2053 = add i64 %2052, 4
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RCX.i1245, align 8
  %2057 = shl nsw i64 %2056, 2
  %2058 = add nsw i64 %2057, 8807744
  %2059 = add i64 %2052, 12
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  %2061 = load i32, i32* %2060, align 4
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RCX.i1245, align 8
  %2063 = shl nsw i64 %2062, 2
  %2064 = add nsw i64 %2063, 6478512
  %2065 = add i64 %2052, 19
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RDI.i385, align 8
  %2069 = add i64 %2050, -88
  %2070 = load i32, i32* %EAX.i876, align 4
  %2071 = add i64 %2052, 22
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2069 to i32*
  store i32 %2070, i32* %2072, align 4
  %2073 = load i64, i64* %3, align 8
  %2074 = add i64 %2073, -88001
  %2075 = add i64 %2073, 5
  %2076 = load i64, i64* %6, align 8
  %2077 = add i64 %2076, -8
  %2078 = inttoptr i64 %2077 to i64*
  store i64 %2075, i64* %2078, align 8
  store i64 %2077, i64* %6, align 8
  store i64 %2074, i64* %3, align 8
  %2079 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2049)
  %2080 = load i64, i64* %RAX.i740, align 8
  %2081 = load i64, i64* %3, align 8
  %2082 = shl i64 %2080, 32
  %2083 = ashr i64 %2082, 35
  %2084 = lshr i64 %2083, 1
  %2085 = trunc i64 %2083 to i8
  %2086 = and i8 %2085, 1
  %2087 = trunc i64 %2084 to i32
  %2088 = and i64 %2084, 4294967295
  store i64 %2088, i64* %RAX.i740, align 8
  store i8 %2086, i8* %12, align 1
  %2089 = and i32 %2087, 255
  %2090 = tail call i32 @llvm.ctpop.i32(i32 %2089)
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  store i8 %2093, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2094 = icmp eq i32 %2087, 0
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %15, align 1
  %2096 = lshr i64 %2083, 32
  %2097 = trunc i64 %2096 to i8
  %2098 = and i8 %2097, 1
  store i8 %2098, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2099 = load i64, i64* %RBP.i, align 8
  %2100 = add i64 %2099, -88
  %2101 = add i64 %2081, 6
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = trunc i64 %2084 to i32
  %2105 = sub i32 %2103, %2104
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RDI.i385, align 8
  %2107 = icmp ult i32 %2103, %2104
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %12, align 1
  %2109 = and i32 %2105, 255
  %2110 = tail call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  store i8 %2113, i8* %13, align 1
  %2114 = xor i32 %2104, %2103
  %2115 = xor i32 %2114, %2105
  %2116 = lshr i32 %2115, 4
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  store i8 %2118, i8* %14, align 1
  %2119 = icmp eq i32 %2105, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %15, align 1
  %2121 = lshr i32 %2105, 31
  %2122 = trunc i32 %2121 to i8
  store i8 %2122, i8* %16, align 1
  %2123 = lshr i32 %2103, 31
  %2124 = lshr i64 %2083, 32
  %2125 = trunc i64 %2124 to i32
  %2126 = and i32 %2125, 1
  %2127 = xor i32 %2126, %2123
  %2128 = xor i32 %2121, %2123
  %2129 = add nuw nsw i32 %2128, %2127
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %17, align 1
  %2132 = add i64 %2099, -24
  %2133 = add i64 %2081, 12
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %RCX.i1245, align 8
  %2136 = add i64 %2099, -44
  %2137 = add i64 %2081, 16
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = sext i32 %2139 to i64
  store i64 %2140, i64* %RDX.i470, align 8
  %2141 = shl nsw i64 %2140, 2
  %2142 = add i64 %2141, %2135
  %2143 = add i64 %2081, 19
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i32*
  store i32 %2105, i32* %2144, align 4
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2145, 54
  store i64 %2146, i64* %3, align 8
  br label %block_.L_41648f

block_.L_41645e:                                  ; preds = %block_4163e2
  store i64 0, i64* %RCX.i1245, align 8
  %2147 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %2148 = and i32 %2147, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2153 = icmp eq i32 %2147, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %15, align 1
  %2155 = lshr i32 %2147, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2157 = zext i1 %2153 to i64
  store i64 %2157, i64* %RAX.i740, align 8
  %2158 = add i64 %1998, -52
  %2159 = add i64 %2032, 21
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RSI.i402, align 8
  %2163 = add i64 %1998, -48
  %2164 = add i64 %2032, 24
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  %2166 = load i32, i32* %2165, align 4
  %2167 = zext i32 %2166 to i64
  store i64 %2167, i64* %RDX.i470, align 8
  %2168 = zext i1 %2153 to i64
  store i64 %2168, i64* %RDI.i385, align 8
  %2169 = add i64 %2032, 24834
  %2170 = add i64 %2032, 31
  %2171 = load i64, i64* %6, align 8
  %2172 = add i64 %2171, -8
  %2173 = inttoptr i64 %2172 to i64*
  store i64 %2170, i64* %2173, align 8
  store i64 %2172, i64* %6, align 8
  store i64 %2169, i64* %3, align 8
  %call2_416478 = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %2169, %struct.Memory* %1997)
  %2174 = load i64, i64* %RBP.i, align 8
  %2175 = add i64 %2174, -56
  %2176 = load i32, i32* %EAX.i876, align 4
  %2177 = load i64, i64* %3, align 8
  %2178 = add i64 %2177, 3
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2175 to i32*
  store i32 %2176, i32* %2179, align 4
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -56
  %2182 = load i64, i64* %3, align 8
  %2183 = add i64 %2182, 3
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2181 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RAX.i740, align 8
  %2187 = add i64 %2180, -24
  %2188 = add i64 %2182, 7
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i64*
  %2190 = load i64, i64* %2189, align 8
  store i64 %2190, i64* %R8.i1199, align 8
  %2191 = add i64 %2180, -44
  %2192 = add i64 %2182, 11
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = sext i32 %2194 to i64
  store i64 %2195, i64* %R9.i1196, align 8
  %2196 = shl nsw i64 %2195, 2
  %2197 = add i64 %2196, %2190
  %2198 = add i64 %2182, 15
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  store i32 %2185, i32* %2199, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_41648f

block_.L_41648f:                                  ; preds = %block_.L_41645e, %block_41641b
  %2200 = phi i64 [ %.pre73, %block_.L_41645e ], [ %2146, %block_41641b ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_416478, %block_.L_41645e ], [ %2079, %block_41641b ]
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %3, align 8
  br label %block_.L_416494

block_.L_416494:                                  ; preds = %block_.L_41648f, %block_4163c9
  %2202 = phi i64 [ %1929, %block_4163c9 ], [ %2201, %block_.L_41648f ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.3, %block_4163c9 ], [ %MEMORY.10, %block_.L_41648f ]
  %2203 = add i64 %2202, 5
  store i64 %2203, i64* %3, align 8
  br label %block_.L_416499

block_.L_416499:                                  ; preds = %block_416388, %block_416347, %block_416307, %block_.L_416494
  %2204 = phi i64 [ %1743, %block_416307 ], [ %1815, %block_416347 ], [ %1887, %block_416388 ], [ %2203, %block_.L_416494 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.3, %block_416307 ], [ %MEMORY.3, %block_416347 ], [ %MEMORY.3, %block_416388 ], [ %MEMORY.11, %block_.L_416494 ]
  %2205 = add i64 %2204, 620
  br label %block_.L_416705

block_.L_41649e:                                  ; preds = %block_.L_4162fd
  %2206 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2207 = add i32 %2206, -1
  %2208 = icmp eq i32 %2206, 0
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %12, align 1
  %2210 = and i32 %2207, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %13, align 1
  %2215 = xor i32 %2207, %2206
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %14, align 1
  %2219 = icmp eq i32 %2207, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %15, align 1
  %2221 = lshr i32 %2207, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %16, align 1
  %2223 = lshr i32 %2206, 31
  %2224 = xor i32 %2221, %2223
  %2225 = add nuw nsw i32 %2224, %2223
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %17, align 1
  %.v102 = select i1 %2219, i64 14, i64 28
  %2228 = add i64 %1673, %.v102
  store i64 %2228, i64* %3, align 8
  br i1 %2219, label %block_4164ac, label %block_.L_4164ba

block_4164ac:                                     ; preds = %block_.L_41649e
  %2229 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2230 = add i32 %2229, -2
  %2231 = icmp ult i32 %2229, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %12, align 1
  %2233 = and i32 %2230, 255
  %2234 = tail call i32 @llvm.ctpop.i32(i32 %2233)
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = xor i8 %2236, 1
  store i8 %2237, i8* %13, align 1
  %2238 = xor i32 %2230, %2229
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %14, align 1
  %2242 = icmp eq i32 %2230, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %15, align 1
  %2244 = lshr i32 %2230, 31
  %2245 = trunc i32 %2244 to i8
  store i8 %2245, i8* %16, align 1
  %2246 = lshr i32 %2229, 31
  %2247 = xor i32 %2244, %2246
  %2248 = add nuw nsw i32 %2247, %2246
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %17, align 1
  %2251 = icmp ne i8 %2245, 0
  %2252 = xor i1 %2251, %2249
  %.v112 = select i1 %2252, i64 14, i64 474
  %2253 = add i64 %2228, %.v112
  store i64 %2253, i64* %3, align 8
  br i1 %2252, label %block_.L_4164ba, label %block_.L_416686

block_.L_4164ba:                                  ; preds = %block_.L_41649e, %block_4164ac
  %2254 = phi i64 [ %2253, %block_4164ac ], [ %2228, %block_.L_41649e ]
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i740, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RCX.i1245, align 8
  %2255 = add i64 %1247, -48
  %2256 = add i64 %2254, 24
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = sext i32 %2258 to i64
  %2260 = mul nsw i64 %2259, 576
  store i64 %2260, i64* %RDX.i470, align 8
  %2261 = lshr i64 %2260, 63
  %2262 = add i64 %2260, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  store i64 %2262, i64* %RCX.i1245, align 8
  %2263 = icmp ult i64 %2262, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  %2264 = icmp ult i64 %2262, %2260
  %2265 = or i1 %2263, %2264
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %12, align 1
  %2267 = trunc i64 %2262 to i32
  %2268 = and i32 %2267, 248
  %2269 = tail call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  store i8 %2272, i8* %13, align 1
  %2273 = xor i64 %2262, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  %2274 = lshr i64 %2273, 4
  %2275 = trunc i64 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %14, align 1
  %2277 = icmp eq i64 %2262, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %15, align 1
  %2279 = lshr i64 %2262, 63
  %2280 = trunc i64 %2279 to i8
  store i8 %2280, i8* %16, align 1
  %2281 = xor i64 %2279, lshr (i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64 63)
  %2282 = xor i64 %2279, %2261
  %2283 = add nuw nsw i64 %2281, %2282
  %2284 = icmp eq i64 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %17, align 1
  %2286 = add i64 %1247, -52
  %2287 = add i64 %2254, 38
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = sext i32 %2289 to i64
  store i64 %2290, i64* %RDX.i470, align 8
  %2291 = shl nsw i64 %2290, 2
  %2292 = add i64 %2291, %2262
  %2293 = add i64 %2254, 41
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RSI.i402, align 8
  %2297 = add i64 %1247, -16
  %2298 = add i64 %2254, 45
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i64*
  %2300 = load i64, i64* %2299, align 8
  store i64 %2300, i64* %RCX.i1245, align 8
  %2301 = add i64 %1247, -44
  %2302 = add i64 %2254, 49
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  %2304 = load i32, i32* %2303, align 4
  %2305 = sext i32 %2304 to i64
  store i64 %2305, i64* %RDX.i470, align 8
  %2306 = shl nsw i64 %2305, 2
  %2307 = add i64 %2300, %2306
  %2308 = add i64 %2254, 52
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2307 to i32*
  %2310 = load i32, i32* %2309, align 4
  %2311 = add i32 %2310, %2295
  %2312 = zext i32 %2311 to i64
  store i64 %2312, i64* %RSI.i402, align 8
  %2313 = icmp ult i32 %2311, %2295
  %2314 = icmp ult i32 %2311, %2310
  %2315 = or i1 %2313, %2314
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %12, align 1
  %2317 = and i32 %2311, 255
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %13, align 1
  %2322 = xor i32 %2310, %2295
  %2323 = xor i32 %2322, %2311
  %2324 = lshr i32 %2323, 4
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  store i8 %2326, i8* %14, align 1
  %2327 = icmp eq i32 %2311, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %15, align 1
  %2329 = lshr i32 %2311, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %16, align 1
  %2331 = lshr i32 %2295, 31
  %2332 = lshr i32 %2310, 31
  %2333 = xor i32 %2329, %2331
  %2334 = xor i32 %2329, %2332
  %2335 = add nuw nsw i32 %2333, %2334
  %2336 = icmp eq i32 %2335, 2
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %17, align 1
  %2338 = add i64 %2254, 55
  store i64 %2338, i64* %3, align 8
  store i32 %2311, i32* %2309, align 4
  %2339 = load i64, i64* %RBP.i, align 8
  %2340 = add i64 %2339, -48
  %2341 = load i64, i64* %3, align 8
  %2342 = add i64 %2341, 3
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2340 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RSI.i402, align 8
  %2346 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2347 = sext i32 %2346 to i64
  %2348 = mul nsw i64 %2347, 24
  store i64 %2348, i64* %RCX.i1245, align 8
  %2349 = lshr i64 %2348, 63
  %2350 = load i64, i64* %RAX.i740, align 8
  %2351 = add i64 %2348, %2350
  store i64 %2351, i64* %RAX.i740, align 8
  %2352 = icmp ult i64 %2351, %2350
  %2353 = icmp ult i64 %2351, %2348
  %2354 = or i1 %2352, %2353
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %12, align 1
  %2356 = trunc i64 %2351 to i32
  %2357 = and i32 %2356, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %13, align 1
  %2362 = xor i64 %2348, %2350
  %2363 = xor i64 %2362, %2351
  %2364 = lshr i64 %2363, 4
  %2365 = trunc i64 %2364 to i8
  %2366 = and i8 %2365, 1
  store i8 %2366, i8* %14, align 1
  %2367 = icmp eq i64 %2351, 0
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %15, align 1
  %2369 = lshr i64 %2351, 63
  %2370 = trunc i64 %2369 to i8
  store i8 %2370, i8* %16, align 1
  %2371 = lshr i64 %2350, 63
  %2372 = xor i64 %2369, %2371
  %2373 = xor i64 %2369, %2349
  %2374 = add nuw nsw i64 %2372, %2373
  %2375 = icmp eq i64 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %17, align 1
  %2377 = inttoptr i64 %2351 to i32*
  %2378 = add i64 %2341, 20
  store i64 %2378, i64* %3, align 8
  %2379 = load i32, i32* %2377, align 4
  %2380 = sub i32 %2344, %2379
  %2381 = icmp ult i32 %2344, %2379
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %12, align 1
  %2383 = and i32 %2380, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %13, align 1
  %2388 = xor i32 %2379, %2344
  %2389 = xor i32 %2388, %2380
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %14, align 1
  %2393 = icmp eq i32 %2380, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %15, align 1
  %2395 = lshr i32 %2380, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %16, align 1
  %2397 = lshr i32 %2344, 31
  %2398 = lshr i32 %2379, 31
  %2399 = xor i32 %2398, %2397
  %2400 = xor i32 %2395, %2397
  %2401 = add nuw nsw i32 %2400, %2399
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %17, align 1
  %.v103 = select i1 %2393, i64 26, i64 125
  %2404 = add i64 %2341, %.v103
  store i64 %2404, i64* %3, align 8
  br i1 %2393, label %block_41650b, label %block_.L_41656e

block_41650b:                                     ; preds = %block_.L_4164ba
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i740, align 8
  %2405 = load i64, i64* %RBP.i, align 8
  %2406 = add i64 %2405, -52
  %2407 = add i64 %2404, 13
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = zext i32 %2409 to i64
  store i64 %2410, i64* %RCX.i1245, align 8
  %2411 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2412 = sext i32 %2411 to i64
  %2413 = mul nsw i64 %2412, 24
  store i64 %2413, i64* %RDX.i470, align 8
  %2414 = lshr i64 %2413, 63
  %2415 = add i64 %2413, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  store i64 %2415, i64* %RAX.i740, align 8
  %2416 = icmp ult i64 %2415, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %2417 = icmp ult i64 %2415, %2413
  %2418 = or i1 %2416, %2417
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %12, align 1
  %2420 = trunc i64 %2415 to i32
  %2421 = and i32 %2420, 248
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %13, align 1
  %2426 = xor i64 %2413, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %2427 = xor i64 %2426, %2415
  %2428 = lshr i64 %2427, 4
  %2429 = trunc i64 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %14, align 1
  %2431 = icmp eq i64 %2415, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %15, align 1
  %2433 = lshr i64 %2415, 63
  %2434 = trunc i64 %2433 to i8
  store i8 %2434, i8* %16, align 1
  %2435 = xor i64 %2433, lshr (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 63)
  %2436 = xor i64 %2433, %2414
  %2437 = add nuw nsw i64 %2435, %2436
  %2438 = icmp eq i64 %2437, 2
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %17, align 1
  %2440 = add i64 %2413, add (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 4)
  %2441 = add i64 %2404, 31
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = sub i32 %2409, %2443
  %2445 = icmp ult i32 %2409, %2443
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %12, align 1
  %2447 = and i32 %2444, 255
  %2448 = tail call i32 @llvm.ctpop.i32(i32 %2447)
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = xor i8 %2450, 1
  store i8 %2451, i8* %13, align 1
  %2452 = xor i32 %2443, %2409
  %2453 = xor i32 %2452, %2444
  %2454 = lshr i32 %2453, 4
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  store i8 %2456, i8* %14, align 1
  %2457 = icmp eq i32 %2444, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %15, align 1
  %2459 = lshr i32 %2444, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %16, align 1
  %2461 = lshr i32 %2409, 31
  %2462 = lshr i32 %2443, 31
  %2463 = xor i32 %2462, %2461
  %2464 = xor i32 %2459, %2461
  %2465 = add nuw nsw i32 %2464, %2463
  %2466 = icmp eq i32 %2465, 2
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %17, align 1
  %.v110 = select i1 %2457, i64 37, i64 99
  %2468 = add i64 %2404, %.v110
  store i64 %2468, i64* %3, align 8
  br i1 %2457, label %block_416530, label %block_.L_41656e

block_416530:                                     ; preds = %block_41650b
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i740, align 8
  %2469 = load i64, i64* %RBP.i, align 8
  %2470 = add i64 %2469, -36
  %2471 = add i64 %2468, 13
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RCX.i1245, align 8
  %2475 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2476 = sext i32 %2475 to i64
  %2477 = mul nsw i64 %2476, 24
  store i64 %2477, i64* %RDX.i470, align 8
  %2478 = lshr i64 %2477, 63
  %2479 = add i64 %2477, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  store i64 %2479, i64* %RAX.i740, align 8
  %2480 = icmp ult i64 %2479, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %2481 = icmp ult i64 %2479, %2477
  %2482 = or i1 %2480, %2481
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %12, align 1
  %2484 = trunc i64 %2479 to i32
  %2485 = and i32 %2484, 248
  %2486 = tail call i32 @llvm.ctpop.i32(i32 %2485)
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = xor i8 %2488, 1
  store i8 %2489, i8* %13, align 1
  %2490 = xor i64 %2477, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %2491 = xor i64 %2490, %2479
  %2492 = lshr i64 %2491, 4
  %2493 = trunc i64 %2492 to i8
  %2494 = and i8 %2493, 1
  store i8 %2494, i8* %14, align 1
  %2495 = icmp eq i64 %2479, 0
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %15, align 1
  %2497 = lshr i64 %2479, 63
  %2498 = trunc i64 %2497 to i8
  store i8 %2498, i8* %16, align 1
  %2499 = xor i64 %2497, lshr (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 63)
  %2500 = xor i64 %2497, %2478
  %2501 = add nuw nsw i64 %2499, %2500
  %2502 = icmp eq i64 %2501, 2
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %17, align 1
  %2504 = add i64 %2477, add (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 12)
  %2505 = add i64 %2468, 31
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = sub i32 %2473, %2507
  %2509 = icmp ult i32 %2473, %2507
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %12, align 1
  %2511 = and i32 %2508, 255
  %2512 = tail call i32 @llvm.ctpop.i32(i32 %2511)
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  store i8 %2515, i8* %13, align 1
  %2516 = xor i32 %2507, %2473
  %2517 = xor i32 %2516, %2508
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %14, align 1
  %2521 = icmp eq i32 %2508, 0
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %15, align 1
  %2523 = lshr i32 %2508, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %16, align 1
  %2525 = lshr i32 %2473, 31
  %2526 = lshr i32 %2507, 31
  %2527 = xor i32 %2526, %2525
  %2528 = xor i32 %2523, %2525
  %2529 = add nuw nsw i32 %2528, %2527
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %17, align 1
  %.v111 = select i1 %2521, i64 37, i64 62
  %2532 = add i64 %2468, %.v111
  store i64 %2532, i64* %3, align 8
  br i1 %2521, label %block_416555, label %block_.L_41656e

block_416555:                                     ; preds = %block_416530
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -16
  %2535 = add i64 %2532, 4
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i64*
  %2537 = load i64, i64* %2536, align 8
  store i64 %2537, i64* %RAX.i740, align 8
  %2538 = add i64 %2533, -44
  %2539 = add i64 %2532, 8
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = sext i32 %2541 to i64
  store i64 %2542, i64* %RCX.i1245, align 8
  %2543 = shl nsw i64 %2542, 2
  %2544 = add i64 %2543, %2537
  %2545 = add i64 %2532, 11
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = add i32 %2547, 25000000
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i470, align 8
  %2550 = icmp ugt i32 %2547, -25000001
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %12, align 1
  %2552 = and i32 %2548, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %13, align 1
  %2557 = xor i32 %2548, %2547
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  store i8 %2560, i8* %14, align 1
  %2561 = icmp eq i32 %2548, 0
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %15, align 1
  %2563 = lshr i32 %2548, 31
  %2564 = trunc i32 %2563 to i8
  store i8 %2564, i8* %16, align 1
  %2565 = lshr i32 %2547, 31
  %2566 = xor i32 %2563, %2565
  %2567 = add nuw nsw i32 %2566, %2563
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %17, align 1
  %2570 = add i64 %2532, 20
  store i64 %2570, i64* %3, align 8
  store i32 %2548, i32* %2546, align 4
  %2571 = load i64, i64* %3, align 8
  %2572 = add i64 %2571, 280
  br label %block_.L_416681

block_.L_41656e:                                  ; preds = %block_416530, %block_41650b, %block_.L_4164ba
  %2573 = phi i64 [ %2532, %block_416530 ], [ %2468, %block_41650b ], [ %2404, %block_.L_4164ba ]
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i740, align 8
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -48
  %2576 = add i64 %2573, 13
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RCX.i1245, align 8
  %2580 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2581 = sext i32 %2580 to i64
  %2582 = mul nsw i64 %2581, 24
  store i64 %2582, i64* %RDX.i470, align 8
  %2583 = lshr i64 %2582, 63
  %2584 = add i64 %2582, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %2584, i64* %RAX.i740, align 8
  %2585 = icmp ult i64 %2584, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2586 = icmp ult i64 %2584, %2582
  %2587 = or i1 %2585, %2586
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %12, align 1
  %2589 = trunc i64 %2584 to i32
  %2590 = and i32 %2589, 248
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %13, align 1
  %2595 = xor i64 %2582, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2596 = xor i64 %2595, %2584
  %2597 = lshr i64 %2596, 4
  %2598 = trunc i64 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %14, align 1
  %2600 = icmp eq i64 %2584, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %15, align 1
  %2602 = lshr i64 %2584, 63
  %2603 = trunc i64 %2602 to i8
  store i8 %2603, i8* %16, align 1
  %2604 = xor i64 %2602, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %2605 = xor i64 %2602, %2583
  %2606 = add nuw nsw i64 %2604, %2605
  %2607 = icmp eq i64 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %17, align 1
  %2609 = inttoptr i64 %2584 to i32*
  %2610 = add i64 %2573, 30
  store i64 %2610, i64* %3, align 8
  %2611 = load i32, i32* %2609, align 8
  %2612 = sub i32 %2578, %2611
  %2613 = icmp ult i32 %2578, %2611
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %12, align 1
  %2615 = and i32 %2612, 255
  %2616 = tail call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  store i8 %2619, i8* %13, align 1
  %2620 = xor i32 %2611, %2578
  %2621 = xor i32 %2620, %2612
  %2622 = lshr i32 %2621, 4
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  store i8 %2624, i8* %14, align 1
  %2625 = icmp eq i32 %2612, 0
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %15, align 1
  %2627 = lshr i32 %2612, 31
  %2628 = trunc i32 %2627 to i8
  store i8 %2628, i8* %16, align 1
  %2629 = lshr i32 %2578, 31
  %2630 = lshr i32 %2611, 31
  %2631 = xor i32 %2630, %2629
  %2632 = xor i32 %2627, %2629
  %2633 = add nuw nsw i32 %2632, %2631
  %2634 = icmp eq i32 %2633, 2
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %17, align 1
  %.v104 = select i1 %2625, i64 36, i64 135
  %2636 = add i64 %2573, %.v104
  store i64 %2636, i64* %3, align 8
  br i1 %2625, label %block_416592, label %block_.L_4165f5

block_416592:                                     ; preds = %block_.L_41656e
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i740, align 8
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -52
  %2639 = add i64 %2636, 13
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = zext i32 %2641 to i64
  store i64 %2642, i64* %RCX.i1245, align 8
  %2643 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2644 = sext i32 %2643 to i64
  %2645 = mul nsw i64 %2644, 24
  store i64 %2645, i64* %RDX.i470, align 8
  %2646 = lshr i64 %2645, 63
  %2647 = add i64 %2645, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %2647, i64* %RAX.i740, align 8
  %2648 = icmp ult i64 %2647, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2649 = icmp ult i64 %2647, %2645
  %2650 = or i1 %2648, %2649
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %12, align 1
  %2652 = trunc i64 %2647 to i32
  %2653 = and i32 %2652, 248
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %13, align 1
  %2658 = xor i64 %2645, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2659 = xor i64 %2658, %2647
  %2660 = lshr i64 %2659, 4
  %2661 = trunc i64 %2660 to i8
  %2662 = and i8 %2661, 1
  store i8 %2662, i8* %14, align 1
  %2663 = icmp eq i64 %2647, 0
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %15, align 1
  %2665 = lshr i64 %2647, 63
  %2666 = trunc i64 %2665 to i8
  store i8 %2666, i8* %16, align 1
  %2667 = xor i64 %2665, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %2668 = xor i64 %2665, %2646
  %2669 = add nuw nsw i64 %2667, %2668
  %2670 = icmp eq i64 %2669, 2
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %17, align 1
  %2672 = add i64 %2645, add (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 4)
  %2673 = add i64 %2636, 31
  store i64 %2673, i64* %3, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  %2676 = sub i32 %2641, %2675
  %2677 = icmp ult i32 %2641, %2675
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %12, align 1
  %2679 = and i32 %2676, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %13, align 1
  %2684 = xor i32 %2675, %2641
  %2685 = xor i32 %2684, %2676
  %2686 = lshr i32 %2685, 4
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  store i8 %2688, i8* %14, align 1
  %2689 = icmp eq i32 %2676, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %15, align 1
  %2691 = lshr i32 %2676, 31
  %2692 = trunc i32 %2691 to i8
  store i8 %2692, i8* %16, align 1
  %2693 = lshr i32 %2641, 31
  %2694 = lshr i32 %2675, 31
  %2695 = xor i32 %2694, %2693
  %2696 = xor i32 %2691, %2693
  %2697 = add nuw nsw i32 %2696, %2695
  %2698 = icmp eq i32 %2697, 2
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %17, align 1
  %.v108 = select i1 %2689, i64 37, i64 99
  %2700 = add i64 %2636, %.v108
  store i64 %2700, i64* %3, align 8
  br i1 %2689, label %block_4165b7, label %block_.L_4165f5

block_4165b7:                                     ; preds = %block_416592
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i740, align 8
  %2701 = load i64, i64* %RBP.i, align 8
  %2702 = add i64 %2701, -36
  %2703 = add i64 %2700, 13
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i1245, align 8
  %2707 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2708 = sext i32 %2707 to i64
  %2709 = mul nsw i64 %2708, 24
  store i64 %2709, i64* %RDX.i470, align 8
  %2710 = lshr i64 %2709, 63
  %2711 = add i64 %2709, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %2711, i64* %RAX.i740, align 8
  %2712 = icmp ult i64 %2711, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2713 = icmp ult i64 %2711, %2709
  %2714 = or i1 %2712, %2713
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %12, align 1
  %2716 = trunc i64 %2711 to i32
  %2717 = and i32 %2716, 248
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %13, align 1
  %2722 = xor i64 %2709, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %2723 = xor i64 %2722, %2711
  %2724 = lshr i64 %2723, 4
  %2725 = trunc i64 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %14, align 1
  %2727 = icmp eq i64 %2711, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %15, align 1
  %2729 = lshr i64 %2711, 63
  %2730 = trunc i64 %2729 to i8
  store i8 %2730, i8* %16, align 1
  %2731 = xor i64 %2729, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %2732 = xor i64 %2729, %2710
  %2733 = add nuw nsw i64 %2731, %2732
  %2734 = icmp eq i64 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %17, align 1
  %2736 = add i64 %2709, add (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 12)
  %2737 = add i64 %2700, 31
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i32*
  %2739 = load i32, i32* %2738, align 4
  %2740 = sub i32 %2705, %2739
  %2741 = icmp ult i32 %2705, %2739
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %12, align 1
  %2743 = and i32 %2740, 255
  %2744 = tail call i32 @llvm.ctpop.i32(i32 %2743)
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  %2747 = xor i8 %2746, 1
  store i8 %2747, i8* %13, align 1
  %2748 = xor i32 %2739, %2705
  %2749 = xor i32 %2748, %2740
  %2750 = lshr i32 %2749, 4
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  store i8 %2752, i8* %14, align 1
  %2753 = icmp eq i32 %2740, 0
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %15, align 1
  %2755 = lshr i32 %2740, 31
  %2756 = trunc i32 %2755 to i8
  store i8 %2756, i8* %16, align 1
  %2757 = lshr i32 %2705, 31
  %2758 = lshr i32 %2739, 31
  %2759 = xor i32 %2758, %2757
  %2760 = xor i32 %2755, %2757
  %2761 = add nuw nsw i32 %2760, %2759
  %2762 = icmp eq i32 %2761, 2
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %17, align 1
  %.v109 = select i1 %2753, i64 37, i64 62
  %2764 = add i64 %2700, %.v109
  store i64 %2764, i64* %3, align 8
  br i1 %2753, label %block_4165dc, label %block_.L_4165f5

block_4165dc:                                     ; preds = %block_4165b7
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -16
  %2767 = add i64 %2764, 4
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i64*
  %2769 = load i64, i64* %2768, align 8
  store i64 %2769, i64* %RAX.i740, align 8
  %2770 = add i64 %2765, -44
  %2771 = add i64 %2764, 8
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = sext i32 %2773 to i64
  store i64 %2774, i64* %RCX.i1245, align 8
  %2775 = shl nsw i64 %2774, 2
  %2776 = add i64 %2775, %2769
  %2777 = add i64 %2764, 11
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = add i32 %2779, 20000000
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RDX.i470, align 8
  %2782 = icmp ugt i32 %2779, -20000001
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %12, align 1
  %2784 = and i32 %2780, 255
  %2785 = tail call i32 @llvm.ctpop.i32(i32 %2784)
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %13, align 1
  %2789 = xor i32 %2780, %2779
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  store i8 %2792, i8* %14, align 1
  %2793 = icmp eq i32 %2780, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %15, align 1
  %2795 = lshr i32 %2780, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %16, align 1
  %2797 = lshr i32 %2779, 31
  %2798 = xor i32 %2795, %2797
  %2799 = add nuw nsw i32 %2798, %2795
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %17, align 1
  %2802 = add i64 %2764, 20
  store i64 %2802, i64* %3, align 8
  store i32 %2780, i32* %2778, align 4
  %2803 = load i64, i64* %3, align 8
  %2804 = add i64 %2803, 140
  br label %block_.L_41667c

block_.L_4165f5:                                  ; preds = %block_4165b7, %block_416592, %block_.L_41656e
  %2805 = phi i64 [ %2764, %block_4165b7 ], [ %2700, %block_416592 ], [ %2636, %block_.L_41656e ]
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i740, align 8
  %2806 = load i64, i64* %RBP.i, align 8
  %2807 = add i64 %2806, -48
  %2808 = add i64 %2805, 13
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RCX.i1245, align 8
  %2812 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2813 = sext i32 %2812 to i64
  %2814 = mul nsw i64 %2813, 24
  store i64 %2814, i64* %RDX.i470, align 8
  %2815 = lshr i64 %2814, 63
  %2816 = add i64 %2814, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %2816, i64* %RAX.i740, align 8
  %2817 = icmp ult i64 %2816, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2818 = icmp ult i64 %2816, %2814
  %2819 = or i1 %2817, %2818
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %12, align 1
  %2821 = trunc i64 %2816 to i32
  %2822 = and i32 %2821, 248
  %2823 = tail call i32 @llvm.ctpop.i32(i32 %2822)
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = xor i8 %2825, 1
  store i8 %2826, i8* %13, align 1
  %2827 = xor i64 %2814, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2828 = xor i64 %2827, %2816
  %2829 = lshr i64 %2828, 4
  %2830 = trunc i64 %2829 to i8
  %2831 = and i8 %2830, 1
  store i8 %2831, i8* %14, align 1
  %2832 = icmp eq i64 %2816, 0
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %15, align 1
  %2834 = lshr i64 %2816, 63
  %2835 = trunc i64 %2834 to i8
  store i8 %2835, i8* %16, align 1
  %2836 = xor i64 %2834, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %2837 = xor i64 %2834, %2815
  %2838 = add nuw nsw i64 %2836, %2837
  %2839 = icmp eq i64 %2838, 2
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %17, align 1
  %2841 = inttoptr i64 %2816 to i32*
  %2842 = add i64 %2805, 30
  store i64 %2842, i64* %3, align 8
  %2843 = load i32, i32* %2841, align 8
  %2844 = sub i32 %2810, %2843
  %2845 = icmp ult i32 %2810, %2843
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %12, align 1
  %2847 = and i32 %2844, 255
  %2848 = tail call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  store i8 %2851, i8* %13, align 1
  %2852 = xor i32 %2843, %2810
  %2853 = xor i32 %2852, %2844
  %2854 = lshr i32 %2853, 4
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %14, align 1
  %2857 = icmp eq i32 %2844, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %15, align 1
  %2859 = lshr i32 %2844, 31
  %2860 = trunc i32 %2859 to i8
  store i8 %2860, i8* %16, align 1
  %2861 = lshr i32 %2810, 31
  %2862 = lshr i32 %2843, 31
  %2863 = xor i32 %2862, %2861
  %2864 = xor i32 %2859, %2861
  %2865 = add nuw nsw i32 %2864, %2863
  %2866 = icmp eq i32 %2865, 2
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %17, align 1
  %.v105 = select i1 %2857, i64 36, i64 130
  %2868 = add i64 %2805, %.v105
  store i64 %2868, i64* %3, align 8
  br i1 %2857, label %block_416619, label %block_.L_416677

block_416619:                                     ; preds = %block_.L_4165f5
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i740, align 8
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -52
  %2871 = add i64 %2868, 13
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RCX.i1245, align 8
  %2875 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2876 = sext i32 %2875 to i64
  %2877 = mul nsw i64 %2876, 24
  store i64 %2877, i64* %RDX.i470, align 8
  %2878 = lshr i64 %2877, 63
  %2879 = add i64 %2877, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %2879, i64* %RAX.i740, align 8
  %2880 = icmp ult i64 %2879, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2881 = icmp ult i64 %2879, %2877
  %2882 = or i1 %2880, %2881
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %12, align 1
  %2884 = trunc i64 %2879 to i32
  %2885 = and i32 %2884, 248
  %2886 = tail call i32 @llvm.ctpop.i32(i32 %2885)
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  store i8 %2889, i8* %13, align 1
  %2890 = xor i64 %2877, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2891 = xor i64 %2890, %2879
  %2892 = lshr i64 %2891, 4
  %2893 = trunc i64 %2892 to i8
  %2894 = and i8 %2893, 1
  store i8 %2894, i8* %14, align 1
  %2895 = icmp eq i64 %2879, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %15, align 1
  %2897 = lshr i64 %2879, 63
  %2898 = trunc i64 %2897 to i8
  store i8 %2898, i8* %16, align 1
  %2899 = xor i64 %2897, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %2900 = xor i64 %2897, %2878
  %2901 = add nuw nsw i64 %2899, %2900
  %2902 = icmp eq i64 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %17, align 1
  %2904 = add i64 %2877, add (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 4)
  %2905 = add i64 %2868, 31
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = sub i32 %2873, %2907
  %2909 = icmp ult i32 %2873, %2907
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %12, align 1
  %2911 = and i32 %2908, 255
  %2912 = tail call i32 @llvm.ctpop.i32(i32 %2911)
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  store i8 %2915, i8* %13, align 1
  %2916 = xor i32 %2907, %2873
  %2917 = xor i32 %2916, %2908
  %2918 = lshr i32 %2917, 4
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %14, align 1
  %2921 = icmp eq i32 %2908, 0
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %15, align 1
  %2923 = lshr i32 %2908, 31
  %2924 = trunc i32 %2923 to i8
  store i8 %2924, i8* %16, align 1
  %2925 = lshr i32 %2873, 31
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2926, %2925
  %2928 = xor i32 %2923, %2925
  %2929 = add nuw nsw i32 %2928, %2927
  %2930 = icmp eq i32 %2929, 2
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %17, align 1
  %.v106 = select i1 %2921, i64 37, i64 94
  %2932 = add i64 %2868, %.v106
  store i64 %2932, i64* %3, align 8
  br i1 %2921, label %block_41663e, label %block_.L_416677

block_41663e:                                     ; preds = %block_416619
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i740, align 8
  %2933 = load i64, i64* %RBP.i, align 8
  %2934 = add i64 %2933, -36
  %2935 = add i64 %2932, 13
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  %2937 = load i32, i32* %2936, align 4
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RCX.i1245, align 8
  %2939 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2940 = sext i32 %2939 to i64
  %2941 = mul nsw i64 %2940, 24
  store i64 %2941, i64* %RDX.i470, align 8
  %2942 = lshr i64 %2941, 63
  %2943 = add i64 %2941, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %2943, i64* %RAX.i740, align 8
  %2944 = icmp ult i64 %2943, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2945 = icmp ult i64 %2943, %2941
  %2946 = or i1 %2944, %2945
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %12, align 1
  %2948 = trunc i64 %2943 to i32
  %2949 = and i32 %2948, 248
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %13, align 1
  %2954 = xor i64 %2941, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %2955 = xor i64 %2954, %2943
  %2956 = lshr i64 %2955, 4
  %2957 = trunc i64 %2956 to i8
  %2958 = and i8 %2957, 1
  store i8 %2958, i8* %14, align 1
  %2959 = icmp eq i64 %2943, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %15, align 1
  %2961 = lshr i64 %2943, 63
  %2962 = trunc i64 %2961 to i8
  store i8 %2962, i8* %16, align 1
  %2963 = xor i64 %2961, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %2964 = xor i64 %2961, %2942
  %2965 = add nuw nsw i64 %2963, %2964
  %2966 = icmp eq i64 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %17, align 1
  %2968 = add i64 %2941, add (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 12)
  %2969 = add i64 %2932, 31
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = sub i32 %2937, %2971
  %2973 = icmp ult i32 %2937, %2971
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %12, align 1
  %2975 = and i32 %2972, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975)
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %13, align 1
  %2980 = xor i32 %2971, %2937
  %2981 = xor i32 %2980, %2972
  %2982 = lshr i32 %2981, 4
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %14, align 1
  %2985 = icmp eq i32 %2972, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %15, align 1
  %2987 = lshr i32 %2972, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %16, align 1
  %2989 = lshr i32 %2937, 31
  %2990 = lshr i32 %2971, 31
  %2991 = xor i32 %2990, %2989
  %2992 = xor i32 %2987, %2989
  %2993 = add nuw nsw i32 %2992, %2991
  %2994 = icmp eq i32 %2993, 2
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %17, align 1
  %.v107 = select i1 %2985, i64 37, i64 57
  %2996 = add i64 %2932, %.v107
  store i64 %2996, i64* %3, align 8
  br i1 %2985, label %block_416663, label %block_.L_416677

block_416663:                                     ; preds = %block_41663e
  %2997 = load i64, i64* %RBP.i, align 8
  %2998 = add i64 %2997, -16
  %2999 = add i64 %2996, 4
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i64*
  %3001 = load i64, i64* %3000, align 8
  store i64 %3001, i64* %RAX.i740, align 8
  %3002 = add i64 %2997, -44
  %3003 = add i64 %2996, 8
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = sext i32 %3005 to i64
  store i64 %3006, i64* %RCX.i1245, align 8
  %3007 = shl nsw i64 %3006, 2
  %3008 = add i64 %3007, %3001
  %3009 = add i64 %2996, 11
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = add i32 %3011, 15000000
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RDX.i470, align 8
  %3014 = icmp ugt i32 %3011, -15000001
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %12, align 1
  %3016 = and i32 %3012, 255
  %3017 = tail call i32 @llvm.ctpop.i32(i32 %3016)
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = xor i8 %3019, 1
  store i8 %3020, i8* %13, align 1
  %3021 = xor i32 %3012, %3011
  %3022 = lshr i32 %3021, 4
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  store i8 %3024, i8* %14, align 1
  %3025 = icmp eq i32 %3012, 0
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %15, align 1
  %3027 = lshr i32 %3012, 31
  %3028 = trunc i32 %3027 to i8
  store i8 %3028, i8* %16, align 1
  %3029 = lshr i32 %3011, 31
  %3030 = xor i32 %3027, %3029
  %3031 = add nuw nsw i32 %3030, %3027
  %3032 = icmp eq i32 %3031, 2
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %17, align 1
  %3034 = add i64 %2996, 20
  store i64 %3034, i64* %3, align 8
  store i32 %3012, i32* %3010, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_416677

block_.L_416677:                                  ; preds = %block_41663e, %block_416619, %block_.L_4165f5, %block_416663
  %3035 = phi i64 [ %.pre83, %block_416663 ], [ %2996, %block_41663e ], [ %2932, %block_416619 ], [ %2868, %block_.L_4165f5 ]
  %3036 = add i64 %3035, 5
  store i64 %3036, i64* %3, align 8
  br label %block_.L_41667c

block_.L_41667c:                                  ; preds = %block_.L_416677, %block_4165dc
  %storemerge60 = phi i64 [ %2804, %block_4165dc ], [ %3036, %block_.L_416677 ]
  %3037 = add i64 %storemerge60, 5
  store i64 %3037, i64* %3, align 8
  br label %block_.L_416681

block_.L_416681:                                  ; preds = %block_.L_41667c, %block_416555
  %storemerge58 = phi i64 [ %2572, %block_416555 ], [ %3037, %block_.L_41667c ]
  %3038 = add i64 %storemerge58, 127
  br label %block_.L_416700

block_.L_416686:                                  ; preds = %block_4164ac
  %3039 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RCX.i1245, align 8
  %3041 = add i64 %1247, -92
  %3042 = add i64 %2253, 15
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  store i32 100, i32* %3043, align 4
  %3044 = load i32, i32* %ECX.i485, align 4
  %3045 = zext i32 %3044 to i64
  %3046 = load i64, i64* %3, align 8
  store i64 %3045, i64* %RAX.i740, align 8
  %3047 = sext i32 %3044 to i64
  %3048 = lshr i64 %3047, 32
  store i64 %3048, i64* %70, align 8
  %3049 = load i64, i64* %RBP.i, align 8
  %3050 = add i64 %3049, -92
  %3051 = add i64 %3046, 6
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3050 to i32*
  %3053 = load i32, i32* %3052, align 4
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RCX.i1245, align 8
  %3055 = add i64 %3046, 8
  store i64 %3055, i64* %3, align 8
  %3056 = sext i32 %3053 to i64
  %3057 = shl nuw i64 %3048, 32
  %3058 = or i64 %3057, %3045
  %3059 = sdiv i64 %3058, %3056
  %3060 = shl i64 %3059, 32
  %3061 = ashr exact i64 %3060, 32
  %3062 = icmp eq i64 %3059, %3061
  br i1 %3062, label %3065, label %3063

; <label>:3063:                                   ; preds = %block_.L_416686
  %3064 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3055, %struct.Memory* %MEMORY.3)
  %.pre74 = load i32, i32* %EAX.i876, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:3065:                                   ; preds = %block_.L_416686
  %3066 = srem i64 %3058, %3056
  %3067 = and i64 %3059, 4294967295
  store i64 %3067, i64* %RAX.i740, align 8
  %3068 = and i64 %3066, 4294967295
  store i64 %3068, i64* %RDX.i470, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3069 = trunc i64 %3059 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3065, %3063
  %3070 = phi i64 [ %.pre75, %3063 ], [ %3055, %3065 ]
  %3071 = phi i32 [ %.pre74, %3063 ], [ %3069, %3065 ]
  %3072 = phi %struct.Memory* [ %3064, %3063 ], [ %MEMORY.3, %3065 ]
  %3073 = add i32 %3071, -100000000
  %3074 = icmp ult i32 %3071, 100000000
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %12, align 1
  %3076 = and i32 %3073, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %13, align 1
  %3081 = xor i32 %3073, %3071
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %14, align 1
  %3085 = icmp eq i32 %3073, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %15, align 1
  %3087 = lshr i32 %3073, 31
  %3088 = trunc i32 %3087 to i8
  store i8 %3088, i8* %16, align 1
  %3089 = lshr i32 %3071, 31
  %3090 = xor i32 %3087, %3089
  %3091 = add nuw nsw i32 %3090, %3089
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %17, align 1
  %3094 = icmp ne i8 %3088, 0
  %3095 = xor i1 %3094, %3092
  %3096 = or i1 %3085, %3095
  %.v113 = select i1 %3096, i64 55, i64 11
  %3097 = add i64 %3070, %.v113
  %3098 = add i64 %3097, 5
  store i64 %3098, i64* %3, align 8
  br i1 %3096, label %routine_divl__esi.exit, label %routine_divl__esi.exit911

routine_divl__esi.exit911:                        ; preds = %routine_idivl__ecx.exit
  store i64 1000, i64* %RAX.i740, align 8
  %3099 = load i64, i64* %RBP.i, align 8
  %3100 = add i64 %3099, -44
  %3101 = add i64 %3097, 9
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = sext i32 %3103 to i64
  store i64 %3104, i64* %RCX.i1245, align 8
  %3105 = shl nsw i64 %3104, 2
  %3106 = add nsw i64 %3105, 8930080
  %3107 = add i64 %3097, 16
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  %3109 = load i32, i32* %3108, align 4
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RDX.i470, align 8
  %3111 = add i64 %3099, -96
  %3112 = add i64 %3097, 19
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i32*
  store i32 1000, i32* %3113, align 4
  %3114 = load i32, i32* %EDX.i1473, align 4
  %3115 = zext i32 %3114 to i64
  %3116 = load i64, i64* %3, align 8
  store i64 %3115, i64* %RAX.i740, align 8
  store i64 0, i64* %RDX.i470, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3117 = load i64, i64* %RBP.i, align 8
  %3118 = add i64 %3117, -96
  %3119 = add i64 %3116, 7
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i32*
  %3121 = load i32, i32* %3120, align 4
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RSI.i402, align 8
  %div = udiv i32 %3114, %3121
  %3123 = zext i32 %div to i64
  %3124 = urem i32 %3114, %3121
  %3125 = zext i32 %3124 to i64
  store i64 %3123, i64* %RAX.i740, align 8
  store i64 %3125, i64* %RDX.i470, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3126 = add i64 %3117, -16
  %3127 = add i64 %3116, 13
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i64*
  %3129 = load i64, i64* %3128, align 8
  store i64 %3129, i64* %RCX.i1245, align 8
  %3130 = add i64 %3117, -44
  %3131 = add i64 %3116, 17
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = sext i32 %3133 to i64
  store i64 %3134, i64* %RDI.i385, align 8
  %3135 = shl nsw i64 %3134, 2
  %3136 = add i64 %3135, %3129
  %3137 = add i64 %3116, 20
  store i64 %3137, i64* %3, align 8
  %3138 = inttoptr i64 %3136 to i32*
  store i32 %div, i32* %3138, align 4
  %3139 = load i64, i64* %3, align 8
  %3140 = add i64 %3139, 44
  store i64 %3140, i64* %3, align 8
  br label %block_.L_4166fb

routine_divl__esi.exit:                           ; preds = %routine_idivl__ecx.exit
  store i64 100, i64* %RAX.i740, align 8
  %3141 = load i64, i64* %RBP.i, align 8
  %3142 = add i64 %3141, -44
  %3143 = add i64 %3097, 9
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = sext i32 %3145 to i64
  store i64 %3146, i64* %RCX.i1245, align 8
  %3147 = shl nsw i64 %3146, 2
  %3148 = add nsw i64 %3147, 8930080
  %3149 = add i64 %3097, 16
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i32*
  %3151 = load i32, i32* %3150, align 4
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RDX.i470, align 8
  %3153 = add i64 %3141, -100
  %3154 = add i64 %3097, 19
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i32*
  store i32 100, i32* %3155, align 4
  %3156 = load i32, i32* %EDX.i1473, align 4
  %3157 = zext i32 %3156 to i64
  %3158 = load i64, i64* %3, align 8
  store i64 %3157, i64* %RAX.i740, align 8
  store i64 0, i64* %RDX.i470, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3159 = load i64, i64* %RBP.i, align 8
  %3160 = add i64 %3159, -100
  %3161 = add i64 %3158, 7
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RSI.i402, align 8
  %div91 = udiv i32 %3156, %3163
  %3165 = zext i32 %div91 to i64
  %3166 = urem i32 %3156, %3163
  %3167 = zext i32 %3166 to i64
  store i64 %3165, i64* %RAX.i740, align 8
  store i64 %3167, i64* %RDX.i470, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3168 = add i64 %3159, -16
  %3169 = add i64 %3158, 13
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i64*
  %3171 = load i64, i64* %3170, align 8
  store i64 %3171, i64* %RCX.i1245, align 8
  %3172 = add i64 %3159, -44
  %3173 = add i64 %3158, 17
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3172 to i32*
  %3175 = load i32, i32* %3174, align 4
  %3176 = sext i32 %3175 to i64
  store i64 %3176, i64* %RDI.i385, align 8
  %3177 = shl nsw i64 %3176, 2
  %3178 = add i64 %3177, %3171
  %3179 = add i64 %3158, 20
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  store i32 %div91, i32* %3180, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4166fb

block_.L_4166fb:                                  ; preds = %routine_divl__esi.exit, %routine_divl__esi.exit911
  %3181 = phi i64 [ %.pre82, %routine_divl__esi.exit ], [ %3140, %routine_divl__esi.exit911 ]
  %3182 = add i64 %3181, 5
  store i64 %3182, i64* %3, align 8
  br label %block_.L_416700

block_.L_416700:                                  ; preds = %block_.L_4166fb, %block_.L_416681
  %storemerge59 = phi i64 [ %3038, %block_.L_416681 ], [ %3182, %block_.L_4166fb ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.3, %block_.L_416681 ], [ %3072, %block_.L_4166fb ]
  %3183 = add i64 %storemerge59, 5
  store i64 %3183, i64* %3, align 8
  br label %block_.L_416705

block_.L_416705:                                  ; preds = %block_.L_416700, %block_.L_416499
  %storemerge57 = phi i64 [ %2205, %block_.L_416499 ], [ %3183, %block_.L_416700 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.12, %block_.L_416499 ], [ %MEMORY.20, %block_.L_416700 ]
  %3184 = add i64 %storemerge57, 5
  store i64 %3184, i64* %3, align 8
  br label %block_.L_41670a

block_.L_41670a:                                  ; preds = %block_.L_416705, %block_.L_4162f8
  %storemerge56 = phi i64 [ %1646, %block_.L_4162f8 ], [ %3184, %block_.L_416705 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.8, %block_.L_4162f8 ], [ %MEMORY.21, %block_.L_416705 ]
  %3185 = add i64 %storemerge56, 5
  store i64 %3185, i64* %3, align 8
  br label %block_.L_41670f

block_.L_41670f:                                  ; preds = %block_.L_41670a, %block_.L_416208
  %storemerge = phi i64 [ %1245, %block_.L_416208 ], [ %3185, %block_.L_41670a ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.5, %block_.L_416208 ], [ %MEMORY.22, %block_.L_41670a ]
  %3186 = load i64, i64* %RBP.i, align 8
  %3187 = add i64 %3186, -44
  %3188 = add i64 %storemerge, 8
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i32*
  %3190 = load i32, i32* %3189, align 4
  %3191 = add i32 %3190, 1
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RAX.i740, align 8
  %3193 = icmp eq i32 %3190, -1
  %3194 = icmp eq i32 %3191, 0
  %3195 = or i1 %3193, %3194
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %12, align 1
  %3197 = and i32 %3191, 255
  %3198 = tail call i32 @llvm.ctpop.i32(i32 %3197)
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = xor i8 %3200, 1
  store i8 %3201, i8* %13, align 1
  %3202 = xor i32 %3191, %3190
  %3203 = lshr i32 %3202, 4
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %14, align 1
  %3206 = zext i1 %3194 to i8
  store i8 %3206, i8* %15, align 1
  %3207 = lshr i32 %3191, 31
  %3208 = trunc i32 %3207 to i8
  store i8 %3208, i8* %16, align 1
  %3209 = lshr i32 %3190, 31
  %3210 = xor i32 %3207, %3209
  %3211 = add nuw nsw i32 %3210, %3207
  %3212 = icmp eq i32 %3211, 2
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %17, align 1
  %3214 = add i64 %storemerge, 14
  store i64 %3214, i64* %3, align 8
  store i32 %3191, i32* %3189, align 4
  %3215 = load i64, i64* %3, align 8
  %3216 = add i64 %3215, -2015
  store i64 %3216, i64* %3, align 8
  br label %block_.L_415f3e

block_.L_416722:                                  ; preds = %block_.L_415f3e
  %3217 = add i64 %108, 1520
  br label %block_.L_416d12

block_.L_416727:                                  ; preds = %entry
  %3218 = load i64, i64* %RBP.i, align 8
  %3219 = add i64 %3218, -44
  %3220 = add i64 %60, 7
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  store i32 0, i32* %3221, align 4
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i844 = getelementptr inbounds %union.anon, %union.anon* %3222, i64 0, i32 0
  %EAX.i841 = bitcast %union.anon* %3222 to i32*
  %RCX.i834 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %R8.i424 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %R9.i421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_41672e

block_.L_41672e:                                  ; preds = %block_.L_416cfa, %block_.L_416727
  %3223 = phi i64 [ %.pre84, %block_.L_416727 ], [ %5639, %block_.L_416cfa ]
  %MEMORY.24 = phi %struct.Memory* [ %2, %block_.L_416727 ], [ %MEMORY.35, %block_.L_416cfa ]
  %3224 = load i64, i64* %RBP.i, align 8
  %3225 = add i64 %3224, -44
  %3226 = add i64 %3223, 3
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i32*
  %3228 = load i32, i32* %3227, align 4
  %3229 = zext i32 %3228 to i64
  store i64 %3229, i64* %RAX.i844, align 8
  %3230 = add i64 %3224, -28
  %3231 = add i64 %3223, 6
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = sub i32 %3228, %3233
  %3235 = icmp ult i32 %3228, %3233
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %12, align 1
  %3237 = and i32 %3234, 255
  %3238 = tail call i32 @llvm.ctpop.i32(i32 %3237)
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = xor i8 %3240, 1
  store i8 %3241, i8* %13, align 1
  %3242 = xor i32 %3233, %3228
  %3243 = xor i32 %3242, %3234
  %3244 = lshr i32 %3243, 4
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  store i8 %3246, i8* %14, align 1
  %3247 = icmp eq i32 %3234, 0
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %15, align 1
  %3249 = lshr i32 %3234, 31
  %3250 = trunc i32 %3249 to i8
  store i8 %3250, i8* %16, align 1
  %3251 = lshr i32 %3228, 31
  %3252 = lshr i32 %3233, 31
  %3253 = xor i32 %3252, %3251
  %3254 = xor i32 %3249, %3251
  %3255 = add nuw nsw i32 %3254, %3253
  %3256 = icmp eq i32 %3255, 2
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %17, align 1
  %3258 = icmp ne i8 %3250, 0
  %3259 = xor i1 %3258, %3256
  %.v125 = select i1 %3259, i64 12, i64 1503
  %3260 = add i64 %3223, %.v125
  store i64 %3260, i64* %3, align 8
  br i1 %3259, label %block_41673a, label %block_.L_416d0d

block_41673a:                                     ; preds = %block_.L_41672e
  %3261 = add i64 %3224, -8
  %3262 = add i64 %3260, 4
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i64*
  %3264 = load i64, i64* %3263, align 8
  store i64 %3264, i64* %RAX.i844, align 8
  %3265 = add i64 %3260, 8
  store i64 %3265, i64* %3, align 8
  %3266 = load i32, i32* %3227, align 4
  %3267 = sext i32 %3266 to i64
  %3268 = mul nsw i64 %3267, 24
  store i64 %3268, i64* %RCX.i834, align 8
  %3269 = lshr i64 %3268, 63
  %3270 = add i64 %3268, %3264
  store i64 %3270, i64* %RAX.i844, align 8
  %3271 = icmp ult i64 %3270, %3264
  %3272 = icmp ult i64 %3270, %3268
  %3273 = or i1 %3271, %3272
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %12, align 1
  %3275 = trunc i64 %3270 to i32
  %3276 = and i32 %3275, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %13, align 1
  %3281 = xor i64 %3268, %3264
  %3282 = xor i64 %3281, %3270
  %3283 = lshr i64 %3282, 4
  %3284 = trunc i64 %3283 to i8
  %3285 = and i8 %3284, 1
  store i8 %3285, i8* %14, align 1
  %3286 = icmp eq i64 %3270, 0
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %15, align 1
  %3288 = lshr i64 %3270, 63
  %3289 = trunc i64 %3288 to i8
  store i8 %3289, i8* %16, align 1
  %3290 = lshr i64 %3264, 63
  %3291 = xor i64 %3288, %3290
  %3292 = xor i64 %3288, %3269
  %3293 = add nuw nsw i64 %3291, %3292
  %3294 = icmp eq i64 %3293, 2
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %17, align 1
  %3296 = inttoptr i64 %3270 to i32*
  %3297 = add i64 %3260, 17
  store i64 %3297, i64* %3, align 8
  %3298 = load i32, i32* %3296, align 4
  %3299 = zext i32 %3298 to i64
  store i64 %3299, i64* %RDX.i470, align 8
  %3300 = add i64 %3224, -48
  %3301 = add i64 %3260, 20
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i32*
  store i32 %3298, i32* %3302, align 4
  %3303 = load i64, i64* %RBP.i, align 8
  %3304 = add i64 %3303, -8
  %3305 = load i64, i64* %3, align 8
  %3306 = add i64 %3305, 4
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3304 to i64*
  %3308 = load i64, i64* %3307, align 8
  store i64 %3308, i64* %RAX.i844, align 8
  %3309 = add i64 %3303, -44
  %3310 = add i64 %3305, 8
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to i32*
  %3312 = load i32, i32* %3311, align 4
  %3313 = sext i32 %3312 to i64
  %3314 = mul nsw i64 %3313, 24
  store i64 %3314, i64* %RCX.i834, align 8
  %3315 = lshr i64 %3314, 63
  %3316 = add i64 %3314, %3308
  store i64 %3316, i64* %RAX.i844, align 8
  %3317 = icmp ult i64 %3316, %3308
  %3318 = icmp ult i64 %3316, %3314
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %12, align 1
  %3321 = trunc i64 %3316 to i32
  %3322 = and i32 %3321, 255
  %3323 = tail call i32 @llvm.ctpop.i32(i32 %3322)
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  %3326 = xor i8 %3325, 1
  store i8 %3326, i8* %13, align 1
  %3327 = xor i64 %3314, %3308
  %3328 = xor i64 %3327, %3316
  %3329 = lshr i64 %3328, 4
  %3330 = trunc i64 %3329 to i8
  %3331 = and i8 %3330, 1
  store i8 %3331, i8* %14, align 1
  %3332 = icmp eq i64 %3316, 0
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %15, align 1
  %3334 = lshr i64 %3316, 63
  %3335 = trunc i64 %3334 to i8
  store i8 %3335, i8* %16, align 1
  %3336 = lshr i64 %3308, 63
  %3337 = xor i64 %3334, %3336
  %3338 = xor i64 %3334, %3315
  %3339 = add nuw nsw i64 %3337, %3338
  %3340 = icmp eq i64 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %17, align 1
  %3342 = add i64 %3316, 4
  %3343 = add i64 %3305, 18
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RDX.i470, align 8
  %3347 = add i64 %3303, -52
  %3348 = add i64 %3305, 21
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i32*
  store i32 %3345, i32* %3349, align 4
  %3350 = load i64, i64* %RBP.i, align 8
  %3351 = add i64 %3350, -8
  %3352 = load i64, i64* %3, align 8
  %3353 = add i64 %3352, 4
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3351 to i64*
  %3355 = load i64, i64* %3354, align 8
  store i64 %3355, i64* %RAX.i844, align 8
  %3356 = add i64 %3350, -44
  %3357 = add i64 %3352, 8
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to i32*
  %3359 = load i32, i32* %3358, align 4
  %3360 = sext i32 %3359 to i64
  %3361 = mul nsw i64 %3360, 24
  store i64 %3361, i64* %RCX.i834, align 8
  %3362 = lshr i64 %3361, 63
  %3363 = add i64 %3361, %3355
  store i64 %3363, i64* %RAX.i844, align 8
  %3364 = icmp ult i64 %3363, %3355
  %3365 = icmp ult i64 %3363, %3361
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %12, align 1
  %3368 = trunc i64 %3363 to i32
  %3369 = and i32 %3368, 255
  %3370 = tail call i32 @llvm.ctpop.i32(i32 %3369)
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  store i8 %3373, i8* %13, align 1
  %3374 = xor i64 %3361, %3355
  %3375 = xor i64 %3374, %3363
  %3376 = lshr i64 %3375, 4
  %3377 = trunc i64 %3376 to i8
  %3378 = and i8 %3377, 1
  store i8 %3378, i8* %14, align 1
  %3379 = icmp eq i64 %3363, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %15, align 1
  %3381 = lshr i64 %3363, 63
  %3382 = trunc i64 %3381 to i8
  store i8 %3382, i8* %16, align 1
  %3383 = lshr i64 %3355, 63
  %3384 = xor i64 %3381, %3383
  %3385 = xor i64 %3381, %3362
  %3386 = add nuw nsw i64 %3384, %3385
  %3387 = icmp eq i64 %3386, 2
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %17, align 1
  %3389 = add i64 %3363, 12
  %3390 = add i64 %3352, 18
  store i64 %3390, i64* %3, align 8
  %3391 = inttoptr i64 %3389 to i32*
  %3392 = load i32, i32* %3391, align 4
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RDX.i470, align 8
  %3394 = add i64 %3350, -36
  %3395 = add i64 %3352, 21
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3394 to i32*
  store i32 %3392, i32* %3396, align 4
  %3397 = load i64, i64* %RBP.i, align 8
  %3398 = add i64 %3397, -8
  %3399 = load i64, i64* %3, align 8
  %3400 = add i64 %3399, 4
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3398 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %RAX.i844, align 8
  %3403 = add i64 %3397, -44
  %3404 = add i64 %3399, 8
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = sext i32 %3406 to i64
  %3408 = mul nsw i64 %3407, 24
  store i64 %3408, i64* %RCX.i834, align 8
  %3409 = lshr i64 %3408, 63
  %3410 = add i64 %3408, %3402
  store i64 %3410, i64* %RAX.i844, align 8
  %3411 = icmp ult i64 %3410, %3402
  %3412 = icmp ult i64 %3410, %3408
  %3413 = or i1 %3411, %3412
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %12, align 1
  %3415 = trunc i64 %3410 to i32
  %3416 = and i32 %3415, 255
  %3417 = tail call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  store i8 %3420, i8* %13, align 1
  %3421 = xor i64 %3408, %3402
  %3422 = xor i64 %3421, %3410
  %3423 = lshr i64 %3422, 4
  %3424 = trunc i64 %3423 to i8
  %3425 = and i8 %3424, 1
  store i8 %3425, i8* %14, align 1
  %3426 = icmp eq i64 %3410, 0
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %15, align 1
  %3428 = lshr i64 %3410, 63
  %3429 = trunc i64 %3428 to i8
  store i8 %3429, i8* %16, align 1
  %3430 = lshr i64 %3402, 63
  %3431 = xor i64 %3428, %3430
  %3432 = xor i64 %3428, %3409
  %3433 = add nuw nsw i64 %3431, %3432
  %3434 = icmp eq i64 %3433, 2
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %17, align 1
  %3436 = add i64 %3410, 8
  %3437 = add i64 %3399, 18
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i32*
  %3439 = load i32, i32* %3438, align 4
  %3440 = zext i32 %3439 to i64
  store i64 %3440, i64* %RDX.i470, align 8
  %3441 = add i64 %3397, -40
  %3442 = add i64 %3399, 21
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i32*
  store i32 %3439, i32* %3443, align 4
  %3444 = load i64, i64* %RBP.i, align 8
  %3445 = add i64 %3444, -32
  %3446 = load i64, i64* %3, align 8
  %3447 = add i64 %3446, 4
  store i64 %3447, i64* %3, align 8
  %3448 = inttoptr i64 %3445 to i32*
  %3449 = load i32, i32* %3448, align 4
  %3450 = add i32 %3449, 1
  %3451 = icmp ne i32 %3449, -1
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %12, align 1
  %3453 = and i32 %3450, 255
  %3454 = tail call i32 @llvm.ctpop.i32(i32 %3453)
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  store i8 %3457, i8* %13, align 1
  %3458 = xor i32 %3449, 16
  %3459 = xor i32 %3458, %3450
  %3460 = lshr i32 %3459, 4
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  store i8 %3462, i8* %14, align 1
  %3463 = icmp eq i32 %3450, 0
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %15, align 1
  %3465 = lshr i32 %3450, 31
  %3466 = trunc i32 %3465 to i8
  store i8 %3466, i8* %16, align 1
  %3467 = lshr i32 %3449, 31
  %3468 = xor i32 %3467, 1
  %3469 = xor i32 %3465, %3467
  %3470 = add nuw nsw i32 %3469, %3468
  %3471 = icmp eq i32 %3470, 2
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %17, align 1
  %.v126 = select i1 %3463, i64 230, i64 10
  %3473 = add i64 %3446, %.v126
  store i64 %3473, i64* %3, align 8
  br i1 %3463, label %block_.L_416873, label %block_416797

block_416797:                                     ; preds = %block_41673a
  %3474 = add i64 %3444, -44
  %3475 = add i64 %3473, 3
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i844, align 8
  %3479 = add i64 %3473, 6
  store i64 %3479, i64* %3, align 8
  %3480 = load i32, i32* %3448, align 4
  %3481 = sub i32 %3477, %3480
  %3482 = icmp ult i32 %3477, %3480
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %12, align 1
  %3484 = and i32 %3481, 255
  %3485 = tail call i32 @llvm.ctpop.i32(i32 %3484)
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  %3488 = xor i8 %3487, 1
  store i8 %3488, i8* %13, align 1
  %3489 = xor i32 %3480, %3477
  %3490 = xor i32 %3489, %3481
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %14, align 1
  %3494 = icmp eq i32 %3481, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %15, align 1
  %3496 = lshr i32 %3481, 31
  %3497 = trunc i32 %3496 to i8
  store i8 %3497, i8* %16, align 1
  %3498 = lshr i32 %3477, 31
  %3499 = lshr i32 %3480, 31
  %3500 = xor i32 %3499, %3498
  %3501 = xor i32 %3496, %3498
  %3502 = add nuw nsw i32 %3501, %3500
  %3503 = icmp eq i32 %3502, 2
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %17, align 1
  %.v127 = select i1 %3494, i64 12, i64 220
  %3505 = add i64 %3473, %.v127
  store i64 %3505, i64* %3, align 8
  br i1 %3494, label %block_4167a3, label %block_.L_416873

block_4167a3:                                     ; preds = %block_416797
  %3506 = add i64 %3444, -16
  %3507 = add i64 %3505, 4
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i64*
  %3509 = load i64, i64* %3508, align 8
  store i64 %3509, i64* %RAX.i844, align 8
  %3510 = add i64 %3505, 8
  store i64 %3510, i64* %3, align 8
  %3511 = load i32, i32* %3476, align 4
  %3512 = sext i32 %3511 to i64
  store i64 %3512, i64* %RCX.i834, align 8
  %3513 = shl nsw i64 %3512, 2
  %3514 = add i64 %3513, %3509
  %3515 = add i64 %3505, 15
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i32*
  store i32 100000000, i32* %3516, align 4
  %3517 = load i64, i64* %RBP.i, align 8
  %3518 = add i64 %3517, -40
  %3519 = load i64, i64* %3, align 8
  %3520 = add i64 %3519, 4
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3518 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = add i32 %3522, -13
  %3524 = icmp ult i32 %3522, 13
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %12, align 1
  %3526 = and i32 %3523, 255
  %3527 = tail call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  store i8 %3530, i8* %13, align 1
  %3531 = xor i32 %3523, %3522
  %3532 = lshr i32 %3531, 4
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  store i8 %3534, i8* %14, align 1
  %3535 = icmp eq i32 %3523, 0
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %15, align 1
  %3537 = lshr i32 %3523, 31
  %3538 = trunc i32 %3537 to i8
  store i8 %3538, i8* %16, align 1
  %3539 = lshr i32 %3522, 31
  %3540 = xor i32 %3537, %3539
  %3541 = add nuw nsw i32 %3540, %3539
  %3542 = icmp eq i32 %3541, 2
  %3543 = zext i1 %3542 to i8
  store i8 %3543, i8* %17, align 1
  %.v145 = select i1 %3535, i64 188, i64 10
  %3544 = add i64 %3519, %.v145
  store i64 %3544, i64* %3, align 8
  br i1 %3535, label %block_.L_41686e, label %block_4167bc

block_4167bc:                                     ; preds = %block_4167a3
  %3545 = add i64 %3544, 4
  store i64 %3545, i64* %3, align 8
  %3546 = load i32, i32* %3521, align 4
  %3547 = sext i32 %3546 to i64
  store i64 %3547, i64* %RAX.i844, align 8
  %3548 = shl nsw i64 %3547, 2
  %3549 = add nsw i64 %3548, 6478512
  %3550 = add i64 %3544, 11
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = zext i32 %3552 to i64
  store i64 %3553, i64* %RDI.i385, align 8
  %3554 = add i64 %3544, -88892
  %3555 = add i64 %3544, 16
  %3556 = load i64, i64* %6, align 8
  %3557 = add i64 %3556, -8
  %3558 = inttoptr i64 %3557 to i64*
  store i64 %3555, i64* %3558, align 8
  store i64 %3557, i64* %6, align 8
  store i64 %3554, i64* %3, align 8
  %3559 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.24)
  %3560 = load i64, i64* %RAX.i844, align 8
  %3561 = load i64, i64* %3, align 8
  %3562 = trunc i64 %3560 to i32
  %3563 = add i32 %3562, 15
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RAX.i844, align 8
  %3565 = icmp ugt i32 %3562, -16
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %12, align 1
  %3567 = and i32 %3563, 255
  %3568 = tail call i32 @llvm.ctpop.i32(i32 %3567)
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  store i8 %3571, i8* %13, align 1
  %3572 = xor i32 %3563, %3562
  %3573 = lshr i32 %3572, 4
  %3574 = trunc i32 %3573 to i8
  %3575 = and i8 %3574, 1
  store i8 %3575, i8* %14, align 1
  %3576 = icmp eq i32 %3563, 0
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %15, align 1
  %3578 = lshr i32 %3563, 31
  %3579 = trunc i32 %3578 to i8
  store i8 %3579, i8* %16, align 1
  %3580 = lshr i32 %3562, 31
  %3581 = xor i32 %3578, %3580
  %3582 = add nuw nsw i32 %3581, %3578
  %3583 = icmp eq i32 %3582, 2
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %17, align 1
  %3585 = load i64, i64* %RBP.i, align 8
  %3586 = add i64 %3585, -48
  %3587 = add i64 %3561, 7
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i32*
  %3589 = load i32, i32* %3588, align 4
  %3590 = sext i32 %3589 to i64
  store i64 %3590, i64* %RCX.i834, align 8
  %3591 = shl nsw i64 %3590, 2
  %3592 = add nsw i64 %3591, 8807744
  %3593 = add i64 %3561, 15
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i32*
  %3595 = load i32, i32* %3594, align 4
  %3596 = sext i32 %3595 to i64
  store i64 %3596, i64* %RCX.i834, align 8
  %3597 = shl nsw i64 %3596, 2
  %3598 = add nsw i64 %3597, 6478512
  %3599 = add i64 %3561, 22
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to i32*
  %3601 = load i32, i32* %3600, align 4
  %3602 = zext i32 %3601 to i64
  store i64 %3602, i64* %RDI.i385, align 8
  %3603 = add i64 %3585, -104
  %3604 = add i64 %3561, 25
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3603 to i32*
  store i32 %3563, i32* %3605, align 4
  %3606 = load i64, i64* %3, align 8
  %3607 = add i64 %3606, -88933
  %3608 = add i64 %3606, 5
  %3609 = load i64, i64* %6, align 8
  %3610 = add i64 %3609, -8
  %3611 = inttoptr i64 %3610 to i64*
  store i64 %3608, i64* %3611, align 8
  store i64 %3610, i64* %6, align 8
  store i64 %3607, i64* %3, align 8
  %3612 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3559)
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -104
  %3615 = load i64, i64* %3, align 8
  %3616 = add i64 %3615, 3
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %RDI.i385, align 8
  %3620 = load i32, i32* %EAX.i841, align 4
  %3621 = sub i32 %3618, %3620
  %3622 = icmp ult i32 %3618, %3620
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %12, align 1
  %3624 = and i32 %3621, 255
  %3625 = tail call i32 @llvm.ctpop.i32(i32 %3624)
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = xor i8 %3627, 1
  store i8 %3628, i8* %13, align 1
  %3629 = xor i32 %3620, %3618
  %3630 = xor i32 %3629, %3621
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %14, align 1
  %3634 = icmp eq i32 %3621, 0
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %15, align 1
  %3636 = lshr i32 %3621, 31
  %3637 = trunc i32 %3636 to i8
  store i8 %3637, i8* %16, align 1
  %3638 = lshr i32 %3618, 31
  %3639 = lshr i32 %3620, 31
  %3640 = xor i32 %3639, %3638
  %3641 = xor i32 %3636, %3638
  %3642 = add nuw nsw i32 %3641, %3640
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %17, align 1
  %3645 = icmp ne i8 %3637, 0
  %3646 = xor i1 %3645, %3643
  %.v146 = select i1 %3646, i64 78, i64 11
  %3647 = add i64 %3615, %.v146
  store i64 %3647, i64* %3, align 8
  br i1 %3646, label %block_.L_416838, label %block_4167f5

block_4167f5:                                     ; preds = %block_4167bc
  %3648 = add i64 %3613, -40
  %3649 = add i64 %3647, 4
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i32*
  %3651 = load i32, i32* %3650, align 4
  %3652 = sext i32 %3651 to i64
  store i64 %3652, i64* %RAX.i844, align 8
  %3653 = shl nsw i64 %3652, 2
  %3654 = add nsw i64 %3653, 6478512
  %3655 = add i64 %3647, 11
  store i64 %3655, i64* %3, align 8
  %3656 = inttoptr i64 %3654 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = zext i32 %3657 to i64
  store i64 %3658, i64* %RDI.i385, align 8
  %3659 = add i64 %3647, -88949
  %3660 = add i64 %3647, 16
  %3661 = load i64, i64* %6, align 8
  %3662 = add i64 %3661, -8
  %3663 = inttoptr i64 %3662 to i64*
  store i64 %3660, i64* %3663, align 8
  store i64 %3662, i64* %6, align 8
  store i64 %3659, i64* %3, align 8
  %3664 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3612)
  %3665 = load i64, i64* %RBP.i, align 8
  %3666 = add i64 %3665, -48
  %3667 = load i64, i64* %3, align 8
  %3668 = add i64 %3667, 4
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3666 to i32*
  %3670 = load i32, i32* %3669, align 4
  %3671 = sext i32 %3670 to i64
  store i64 %3671, i64* %RCX.i834, align 8
  %3672 = shl nsw i64 %3671, 2
  %3673 = add nsw i64 %3672, 8807744
  %3674 = add i64 %3667, 12
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = sext i32 %3676 to i64
  store i64 %3677, i64* %RCX.i834, align 8
  %3678 = shl nsw i64 %3677, 2
  %3679 = add nsw i64 %3678, 6478512
  %3680 = add i64 %3667, 19
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = zext i32 %3682 to i64
  store i64 %3683, i64* %RDI.i385, align 8
  %3684 = add i64 %3665, -108
  %3685 = load i32, i32* %EAX.i841, align 4
  %3686 = add i64 %3667, 22
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3684 to i32*
  store i32 %3685, i32* %3687, align 4
  %3688 = load i64, i64* %3, align 8
  %3689 = add i64 %3688, -88987
  %3690 = add i64 %3688, 5
  %3691 = load i64, i64* %6, align 8
  %3692 = add i64 %3691, -8
  %3693 = inttoptr i64 %3692 to i64*
  store i64 %3690, i64* %3693, align 8
  store i64 %3692, i64* %6, align 8
  store i64 %3689, i64* %3, align 8
  %3694 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %3664)
  %3695 = load i64, i64* %RAX.i844, align 8
  %3696 = load i64, i64* %3, align 8
  %3697 = shl i64 %3695, 32
  %3698 = ashr i64 %3697, 35
  %3699 = lshr i64 %3698, 1
  %3700 = trunc i64 %3698 to i8
  %3701 = and i8 %3700, 1
  %3702 = trunc i64 %3699 to i32
  %3703 = and i64 %3699, 4294967295
  store i64 %3703, i64* %RAX.i844, align 8
  store i8 %3701, i8* %12, align 1
  %3704 = and i32 %3702, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3709 = icmp eq i32 %3702, 0
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %15, align 1
  %3711 = lshr i64 %3698, 32
  %3712 = trunc i64 %3711 to i8
  %3713 = and i8 %3712, 1
  store i8 %3713, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3714 = load i64, i64* %RBP.i, align 8
  %3715 = add i64 %3714, -108
  %3716 = add i64 %3696, 6
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = trunc i64 %3699 to i32
  %3720 = sub i32 %3718, %3719
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RDI.i385, align 8
  %3722 = icmp ult i32 %3718, %3719
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %12, align 1
  %3724 = and i32 %3720, 255
  %3725 = tail call i32 @llvm.ctpop.i32(i32 %3724)
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  %3728 = xor i8 %3727, 1
  store i8 %3728, i8* %13, align 1
  %3729 = xor i32 %3719, %3718
  %3730 = xor i32 %3729, %3720
  %3731 = lshr i32 %3730, 4
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  store i8 %3733, i8* %14, align 1
  %3734 = icmp eq i32 %3720, 0
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %15, align 1
  %3736 = lshr i32 %3720, 31
  %3737 = trunc i32 %3736 to i8
  store i8 %3737, i8* %16, align 1
  %3738 = lshr i32 %3718, 31
  %3739 = lshr i64 %3698, 32
  %3740 = trunc i64 %3739 to i32
  %3741 = and i32 %3740, 1
  %3742 = xor i32 %3741, %3738
  %3743 = xor i32 %3736, %3738
  %3744 = add nuw nsw i32 %3743, %3742
  %3745 = icmp eq i32 %3744, 2
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %17, align 1
  %3747 = add i64 %3714, -24
  %3748 = add i64 %3696, 12
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i64*
  %3750 = load i64, i64* %3749, align 8
  store i64 %3750, i64* %RCX.i834, align 8
  %3751 = add i64 %3714, -44
  %3752 = add i64 %3696, 16
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i32*
  %3754 = load i32, i32* %3753, align 4
  %3755 = sext i32 %3754 to i64
  store i64 %3755, i64* %RDX.i470, align 8
  %3756 = shl nsw i64 %3755, 2
  %3757 = add i64 %3756, %3750
  %3758 = add i64 %3696, 19
  store i64 %3758, i64* %3, align 8
  %3759 = inttoptr i64 %3757 to i32*
  store i32 %3720, i32* %3759, align 4
  %3760 = load i64, i64* %3, align 8
  %3761 = add i64 %3760, 54
  store i64 %3761, i64* %3, align 8
  br label %block_.L_416869

block_.L_416838:                                  ; preds = %block_4167bc
  store i64 0, i64* %RCX.i834, align 8
  %3762 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %3763 = and i32 %3762, 255
  %3764 = tail call i32 @llvm.ctpop.i32(i32 %3763)
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  %3767 = xor i8 %3766, 1
  store i8 %3767, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3768 = icmp eq i32 %3762, 0
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %15, align 1
  %3770 = lshr i32 %3762, 31
  %3771 = trunc i32 %3770 to i8
  store i8 %3771, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3772 = zext i1 %3768 to i64
  store i64 %3772, i64* %RAX.i844, align 8
  %3773 = add i64 %3613, -52
  %3774 = add i64 %3647, 21
  store i64 %3774, i64* %3, align 8
  %3775 = inttoptr i64 %3773 to i32*
  %3776 = load i32, i32* %3775, align 4
  %3777 = zext i32 %3776 to i64
  store i64 %3777, i64* %RSI.i402, align 8
  %3778 = add i64 %3613, -48
  %3779 = add i64 %3647, 24
  store i64 %3779, i64* %3, align 8
  %3780 = inttoptr i64 %3778 to i32*
  %3781 = load i32, i32* %3780, align 4
  %3782 = zext i32 %3781 to i64
  store i64 %3782, i64* %RDX.i470, align 8
  %3783 = zext i1 %3768 to i64
  store i64 %3783, i64* %RDI.i385, align 8
  %3784 = add i64 %3647, 23848
  %3785 = add i64 %3647, 31
  %3786 = load i64, i64* %6, align 8
  %3787 = add i64 %3786, -8
  %3788 = inttoptr i64 %3787 to i64*
  store i64 %3785, i64* %3788, align 8
  store i64 %3787, i64* %6, align 8
  store i64 %3784, i64* %3, align 8
  %call2_416852 = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %3784, %struct.Memory* %3612)
  %3789 = load i64, i64* %RBP.i, align 8
  %3790 = add i64 %3789, -56
  %3791 = load i32, i32* %EAX.i841, align 4
  %3792 = load i64, i64* %3, align 8
  %3793 = add i64 %3792, 3
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3790 to i32*
  store i32 %3791, i32* %3794, align 4
  %3795 = load i64, i64* %RBP.i, align 8
  %3796 = add i64 %3795, -56
  %3797 = load i64, i64* %3, align 8
  %3798 = add i64 %3797, 3
  store i64 %3798, i64* %3, align 8
  %3799 = inttoptr i64 %3796 to i32*
  %3800 = load i32, i32* %3799, align 4
  %3801 = zext i32 %3800 to i64
  store i64 %3801, i64* %RAX.i844, align 8
  %3802 = add i64 %3795, -24
  %3803 = add i64 %3797, 7
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i64*
  %3805 = load i64, i64* %3804, align 8
  store i64 %3805, i64* %R8.i424, align 8
  %3806 = add i64 %3795, -44
  %3807 = add i64 %3797, 11
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i32*
  %3809 = load i32, i32* %3808, align 4
  %3810 = sext i32 %3809 to i64
  store i64 %3810, i64* %R9.i421, align 8
  %3811 = shl nsw i64 %3810, 2
  %3812 = add i64 %3811, %3805
  %3813 = add i64 %3797, 15
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3812 to i32*
  store i32 %3800, i32* %3814, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_416869

block_.L_416869:                                  ; preds = %block_.L_416838, %block_4167f5
  %3815 = phi i64 [ %.pre85, %block_.L_416838 ], [ %3761, %block_4167f5 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_416852, %block_.L_416838 ], [ %3694, %block_4167f5 ]
  %3816 = add i64 %3815, 5
  store i64 %3816, i64* %3, align 8
  br label %block_.L_41686e

block_.L_41686e:                                  ; preds = %block_.L_416869, %block_4167a3
  %3817 = phi i64 [ %3544, %block_4167a3 ], [ %3816, %block_.L_416869 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.24, %block_4167a3 ], [ %MEMORY.25, %block_.L_416869 ]
  %3818 = add i64 %3817, 709
  br label %block_.L_416b33

block_.L_416873:                                  ; preds = %block_416797, %block_41673a
  %3819 = phi i64 [ %3505, %block_416797 ], [ %3473, %block_41673a ]
  %3820 = add i64 %3819, 4
  store i64 %3820, i64* %3, align 8
  %3821 = load i32, i32* %3448, align 4
  %3822 = add i32 %3821, 2
  %3823 = icmp ult i32 %3821, -2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %12, align 1
  %3825 = and i32 %3822, 255
  %3826 = tail call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  store i8 %3829, i8* %13, align 1
  %3830 = xor i32 %3821, 16
  %3831 = xor i32 %3830, %3822
  %3832 = lshr i32 %3831, 4
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  store i8 %3834, i8* %14, align 1
  %3835 = icmp eq i32 %3822, 0
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %15, align 1
  %3837 = lshr i32 %3822, 31
  %3838 = trunc i32 %3837 to i8
  store i8 %3838, i8* %16, align 1
  %3839 = lshr i32 %3821, 31
  %3840 = xor i32 %3839, 1
  %3841 = xor i32 %3837, %3839
  %3842 = add nuw nsw i32 %3841, %3840
  %3843 = icmp eq i32 %3842, 2
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %17, align 1
  %.v128 = select i1 %3835, i64 10, i64 417
  %3845 = add i64 %3819, %.v128
  store i64 %3845, i64* %3, align 8
  br i1 %3835, label %block_41687d, label %block_.L_416a14

block_41687d:                                     ; preds = %block_.L_416873
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i844, align 8
  %3846 = add i64 %3444, -48
  %3847 = add i64 %3845, 13
  store i64 %3847, i64* %3, align 8
  %3848 = inttoptr i64 %3846 to i32*
  %3849 = load i32, i32* %3848, align 4
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RCX.i834, align 8
  %3851 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3852 = add i32 %3851, 1
  %3853 = sext i32 %3852 to i64
  %3854 = mul nsw i64 %3853, 7200
  %3855 = add i64 %3854, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %3856 = lshr i64 %3855, 63
  %3857 = add i32 %3851, 1
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RDX.i470, align 8
  %3859 = sext i32 %3857 to i64
  %3860 = mul nsw i64 %3859, 24
  store i64 %3860, i64* %RSI.i402, align 8
  %3861 = lshr i64 %3860, 63
  %3862 = add i64 %3860, %3855
  store i64 %3862, i64* %RAX.i844, align 8
  %3863 = icmp ult i64 %3862, %3855
  %3864 = icmp ult i64 %3862, %3860
  %3865 = or i1 %3863, %3864
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %12, align 1
  %3867 = trunc i64 %3862 to i32
  %3868 = and i32 %3867, 248
  %3869 = tail call i32 @llvm.ctpop.i32(i32 %3868)
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  store i8 %3872, i8* %13, align 1
  %3873 = xor i64 %3860, %3855
  %3874 = xor i64 %3873, %3862
  %3875 = lshr i64 %3874, 4
  %3876 = trunc i64 %3875 to i8
  %3877 = and i8 %3876, 1
  store i8 %3877, i8* %14, align 1
  %3878 = icmp eq i64 %3862, 0
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %15, align 1
  %3880 = lshr i64 %3862, 63
  %3881 = trunc i64 %3880 to i8
  store i8 %3881, i8* %16, align 1
  %3882 = xor i64 %3880, %3856
  %3883 = xor i64 %3880, %3861
  %3884 = add nuw nsw i64 %3882, %3883
  %3885 = icmp eq i64 %3884, 2
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %17, align 1
  %3887 = load i32, i32* %ECX.i485, align 4
  %3888 = inttoptr i64 %3862 to i32*
  %3889 = add i64 %3845, 58
  store i64 %3889, i64* %3, align 8
  %3890 = load i32, i32* %3888, align 8
  %3891 = sub i32 %3887, %3890
  %3892 = icmp ult i32 %3887, %3890
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %12, align 1
  %3894 = and i32 %3891, 255
  %3895 = tail call i32 @llvm.ctpop.i32(i32 %3894)
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  store i8 %3898, i8* %13, align 1
  %3899 = xor i32 %3890, %3887
  %3900 = xor i32 %3899, %3891
  %3901 = lshr i32 %3900, 4
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  store i8 %3903, i8* %14, align 1
  %3904 = icmp eq i32 %3891, 0
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %15, align 1
  %3906 = lshr i32 %3891, 31
  %3907 = trunc i32 %3906 to i8
  store i8 %3907, i8* %16, align 1
  %3908 = lshr i32 %3887, 31
  %3909 = lshr i32 %3890, 31
  %3910 = xor i32 %3909, %3908
  %3911 = xor i32 %3906, %3908
  %3912 = add nuw nsw i32 %3911, %3910
  %3913 = icmp eq i32 %3912, 2
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %17, align 1
  %.v140 = select i1 %3904, i64 64, i64 402
  %3915 = add i64 %3845, %.v140
  store i64 %3915, i64* %3, align 8
  br i1 %3904, label %block_4168bd, label %block_.L_416a0f

block_4168bd:                                     ; preds = %block_41687d
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i844, align 8
  %3916 = load i64, i64* %RBP.i, align 8
  %3917 = add i64 %3916, -52
  %3918 = add i64 %3915, 13
  store i64 %3918, i64* %3, align 8
  %3919 = inttoptr i64 %3917 to i32*
  %3920 = load i32, i32* %3919, align 4
  %3921 = zext i32 %3920 to i64
  store i64 %3921, i64* %RCX.i834, align 8
  %3922 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3923 = add i32 %3922, 1
  %3924 = sext i32 %3923 to i64
  %3925 = mul nsw i64 %3924, 7200
  %3926 = add i64 %3925, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %3927 = lshr i64 %3926, 63
  %3928 = add i32 %3922, 1
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RDX.i470, align 8
  %3930 = sext i32 %3928 to i64
  %3931 = mul nsw i64 %3930, 24
  store i64 %3931, i64* %RSI.i402, align 8
  %3932 = lshr i64 %3931, 63
  %3933 = add i64 %3931, %3926
  store i64 %3933, i64* %RAX.i844, align 8
  %3934 = icmp ult i64 %3933, %3926
  %3935 = icmp ult i64 %3933, %3931
  %3936 = or i1 %3934, %3935
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %12, align 1
  %3938 = trunc i64 %3933 to i32
  %3939 = and i32 %3938, 248
  %3940 = tail call i32 @llvm.ctpop.i32(i32 %3939)
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  store i8 %3943, i8* %13, align 1
  %3944 = xor i64 %3931, %3926
  %3945 = xor i64 %3944, %3933
  %3946 = lshr i64 %3945, 4
  %3947 = trunc i64 %3946 to i8
  %3948 = and i8 %3947, 1
  store i8 %3948, i8* %14, align 1
  %3949 = icmp eq i64 %3933, 0
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %15, align 1
  %3951 = lshr i64 %3933, 63
  %3952 = trunc i64 %3951 to i8
  store i8 %3952, i8* %16, align 1
  %3953 = xor i64 %3951, %3927
  %3954 = xor i64 %3951, %3932
  %3955 = add nuw nsw i64 %3953, %3954
  %3956 = icmp eq i64 %3955, 2
  %3957 = zext i1 %3956 to i8
  store i8 %3957, i8* %17, align 1
  %3958 = load i32, i32* %ECX.i485, align 4
  %3959 = or i64 %3933, 4
  %3960 = add i64 %3915, 59
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = sub i32 %3958, %3962
  %3964 = icmp ult i32 %3958, %3962
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %12, align 1
  %3966 = and i32 %3963, 255
  %3967 = tail call i32 @llvm.ctpop.i32(i32 %3966)
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = xor i8 %3969, 1
  store i8 %3970, i8* %13, align 1
  %3971 = xor i32 %3962, %3958
  %3972 = xor i32 %3971, %3963
  %3973 = lshr i32 %3972, 4
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  store i8 %3975, i8* %14, align 1
  %3976 = icmp eq i32 %3963, 0
  %3977 = zext i1 %3976 to i8
  store i8 %3977, i8* %15, align 1
  %3978 = lshr i32 %3963, 31
  %3979 = trunc i32 %3978 to i8
  store i8 %3979, i8* %16, align 1
  %3980 = lshr i32 %3958, 31
  %3981 = lshr i32 %3962, 31
  %3982 = xor i32 %3981, %3980
  %3983 = xor i32 %3978, %3980
  %3984 = add nuw nsw i32 %3983, %3982
  %3985 = icmp eq i32 %3984, 2
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %17, align 1
  %.v141 = select i1 %3976, i64 65, i64 338
  %3987 = add i64 %3915, %.v141
  store i64 %3987, i64* %3, align 8
  br i1 %3976, label %block_4168fe, label %block_.L_416a0f

block_4168fe:                                     ; preds = %block_4168bd
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i844, align 8
  %3988 = load i64, i64* %RBP.i, align 8
  %3989 = add i64 %3988, -36
  %3990 = add i64 %3987, 13
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RCX.i834, align 8
  %3994 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3995 = add i32 %3994, 1
  %3996 = sext i32 %3995 to i64
  %3997 = mul nsw i64 %3996, 7200
  %3998 = add i64 %3997, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %3999 = lshr i64 %3998, 63
  %4000 = add i32 %3994, 1
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RDX.i470, align 8
  %4002 = sext i32 %4000 to i64
  %4003 = mul nsw i64 %4002, 24
  store i64 %4003, i64* %RSI.i402, align 8
  %4004 = lshr i64 %4003, 63
  %4005 = add i64 %4003, %3998
  store i64 %4005, i64* %RAX.i844, align 8
  %4006 = icmp ult i64 %4005, %3998
  %4007 = icmp ult i64 %4005, %4003
  %4008 = or i1 %4006, %4007
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %12, align 1
  %4010 = trunc i64 %4005 to i32
  %4011 = and i32 %4010, 248
  %4012 = tail call i32 @llvm.ctpop.i32(i32 %4011)
  %4013 = trunc i32 %4012 to i8
  %4014 = and i8 %4013, 1
  %4015 = xor i8 %4014, 1
  store i8 %4015, i8* %13, align 1
  %4016 = xor i64 %4003, %3998
  %4017 = xor i64 %4016, %4005
  %4018 = lshr i64 %4017, 4
  %4019 = trunc i64 %4018 to i8
  %4020 = and i8 %4019, 1
  store i8 %4020, i8* %14, align 1
  %4021 = icmp eq i64 %4005, 0
  %4022 = zext i1 %4021 to i8
  store i8 %4022, i8* %15, align 1
  %4023 = lshr i64 %4005, 63
  %4024 = trunc i64 %4023 to i8
  store i8 %4024, i8* %16, align 1
  %4025 = xor i64 %4023, %3999
  %4026 = xor i64 %4023, %4004
  %4027 = add nuw nsw i64 %4025, %4026
  %4028 = icmp eq i64 %4027, 2
  %4029 = zext i1 %4028 to i8
  store i8 %4029, i8* %17, align 1
  %4030 = load i32, i32* %ECX.i485, align 4
  %4031 = add i64 %4005, 12
  %4032 = add i64 %3987, 59
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = sub i32 %4030, %4034
  %4036 = icmp ult i32 %4030, %4034
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %12, align 1
  %4038 = and i32 %4035, 255
  %4039 = tail call i32 @llvm.ctpop.i32(i32 %4038)
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  %4042 = xor i8 %4041, 1
  store i8 %4042, i8* %13, align 1
  %4043 = xor i32 %4034, %4030
  %4044 = xor i32 %4043, %4035
  %4045 = lshr i32 %4044, 4
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  store i8 %4047, i8* %14, align 1
  %4048 = icmp eq i32 %4035, 0
  %4049 = zext i1 %4048 to i8
  store i8 %4049, i8* %15, align 1
  %4050 = lshr i32 %4035, 31
  %4051 = trunc i32 %4050 to i8
  store i8 %4051, i8* %16, align 1
  %4052 = lshr i32 %4030, 31
  %4053 = lshr i32 %4034, 31
  %4054 = xor i32 %4053, %4052
  %4055 = xor i32 %4050, %4052
  %4056 = add nuw nsw i32 %4055, %4054
  %4057 = icmp eq i32 %4056, 2
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %17, align 1
  %.v142 = select i1 %4048, i64 65, i64 273
  %4059 = add i64 %3987, %.v142
  store i64 %4059, i64* %3, align 8
  br i1 %4048, label %block_41693f, label %block_.L_416a0f

block_41693f:                                     ; preds = %block_4168fe
  %4060 = load i64, i64* %RBP.i, align 8
  %4061 = add i64 %4060, -16
  %4062 = add i64 %4059, 4
  store i64 %4062, i64* %3, align 8
  %4063 = inttoptr i64 %4061 to i64*
  %4064 = load i64, i64* %4063, align 8
  store i64 %4064, i64* %RAX.i844, align 8
  %4065 = add i64 %4060, -44
  %4066 = add i64 %4059, 8
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i32*
  %4068 = load i32, i32* %4067, align 4
  %4069 = sext i32 %4068 to i64
  store i64 %4069, i64* %RCX.i834, align 8
  %4070 = shl nsw i64 %4069, 2
  %4071 = add i64 %4070, %4064
  %4072 = add i64 %4059, 15
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4071 to i32*
  store i32 100000000, i32* %4073, align 4
  %4074 = load i64, i64* %RBP.i, align 8
  %4075 = add i64 %4074, -40
  %4076 = load i64, i64* %3, align 8
  %4077 = add i64 %4076, 4
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4075 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = add i32 %4079, -13
  %4081 = icmp ult i32 %4079, 13
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %12, align 1
  %4083 = and i32 %4080, 255
  %4084 = tail call i32 @llvm.ctpop.i32(i32 %4083)
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  store i8 %4087, i8* %13, align 1
  %4088 = xor i32 %4080, %4079
  %4089 = lshr i32 %4088, 4
  %4090 = trunc i32 %4089 to i8
  %4091 = and i8 %4090, 1
  store i8 %4091, i8* %14, align 1
  %4092 = icmp eq i32 %4080, 0
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %15, align 1
  %4094 = lshr i32 %4080, 31
  %4095 = trunc i32 %4094 to i8
  store i8 %4095, i8* %16, align 1
  %4096 = lshr i32 %4079, 31
  %4097 = xor i32 %4094, %4096
  %4098 = add nuw nsw i32 %4097, %4096
  %4099 = icmp eq i32 %4098, 2
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %17, align 1
  %.v143 = select i1 %4092, i64 188, i64 10
  %4101 = add i64 %4076, %.v143
  store i64 %4101, i64* %3, align 8
  br i1 %4092, label %block_.L_416a0a, label %block_416958

block_416958:                                     ; preds = %block_41693f
  %4102 = add i64 %4101, 4
  store i64 %4102, i64* %3, align 8
  %4103 = load i32, i32* %4078, align 4
  %4104 = sext i32 %4103 to i64
  store i64 %4104, i64* %RAX.i844, align 8
  %4105 = shl nsw i64 %4104, 2
  %4106 = add nsw i64 %4105, 6478512
  %4107 = add i64 %4101, 11
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = zext i32 %4109 to i64
  store i64 %4110, i64* %RDI.i385, align 8
  %4111 = add i64 %4101, -89304
  %4112 = add i64 %4101, 16
  %4113 = load i64, i64* %6, align 8
  %4114 = add i64 %4113, -8
  %4115 = inttoptr i64 %4114 to i64*
  store i64 %4112, i64* %4115, align 8
  store i64 %4114, i64* %6, align 8
  store i64 %4111, i64* %3, align 8
  %4116 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.24)
  %4117 = load i64, i64* %RAX.i844, align 8
  %4118 = load i64, i64* %3, align 8
  %4119 = trunc i64 %4117 to i32
  %4120 = add i32 %4119, 15
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RAX.i844, align 8
  %4122 = icmp ugt i32 %4119, -16
  %4123 = zext i1 %4122 to i8
  store i8 %4123, i8* %12, align 1
  %4124 = and i32 %4120, 255
  %4125 = tail call i32 @llvm.ctpop.i32(i32 %4124)
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  %4128 = xor i8 %4127, 1
  store i8 %4128, i8* %13, align 1
  %4129 = xor i32 %4120, %4119
  %4130 = lshr i32 %4129, 4
  %4131 = trunc i32 %4130 to i8
  %4132 = and i8 %4131, 1
  store i8 %4132, i8* %14, align 1
  %4133 = icmp eq i32 %4120, 0
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %15, align 1
  %4135 = lshr i32 %4120, 31
  %4136 = trunc i32 %4135 to i8
  store i8 %4136, i8* %16, align 1
  %4137 = lshr i32 %4119, 31
  %4138 = xor i32 %4135, %4137
  %4139 = add nuw nsw i32 %4138, %4135
  %4140 = icmp eq i32 %4139, 2
  %4141 = zext i1 %4140 to i8
  store i8 %4141, i8* %17, align 1
  %4142 = load i64, i64* %RBP.i, align 8
  %4143 = add i64 %4142, -48
  %4144 = add i64 %4118, 7
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to i32*
  %4146 = load i32, i32* %4145, align 4
  %4147 = sext i32 %4146 to i64
  store i64 %4147, i64* %RCX.i834, align 8
  %4148 = shl nsw i64 %4147, 2
  %4149 = add nsw i64 %4148, 8807744
  %4150 = add i64 %4118, 15
  store i64 %4150, i64* %3, align 8
  %4151 = inttoptr i64 %4149 to i32*
  %4152 = load i32, i32* %4151, align 4
  %4153 = sext i32 %4152 to i64
  store i64 %4153, i64* %RCX.i834, align 8
  %4154 = shl nsw i64 %4153, 2
  %4155 = add nsw i64 %4154, 6478512
  %4156 = add i64 %4118, 22
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = zext i32 %4158 to i64
  store i64 %4159, i64* %RDI.i385, align 8
  %4160 = add i64 %4142, -112
  %4161 = add i64 %4118, 25
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  store i32 %4120, i32* %4162, align 4
  %4163 = load i64, i64* %3, align 8
  %4164 = add i64 %4163, -89345
  %4165 = add i64 %4163, 5
  %4166 = load i64, i64* %6, align 8
  %4167 = add i64 %4166, -8
  %4168 = inttoptr i64 %4167 to i64*
  store i64 %4165, i64* %4168, align 8
  store i64 %4167, i64* %6, align 8
  store i64 %4164, i64* %3, align 8
  %4169 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4116)
  %4170 = load i64, i64* %RBP.i, align 8
  %4171 = add i64 %4170, -112
  %4172 = load i64, i64* %3, align 8
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4171 to i32*
  %4175 = load i32, i32* %4174, align 4
  %4176 = zext i32 %4175 to i64
  store i64 %4176, i64* %RDI.i385, align 8
  %4177 = load i32, i32* %EAX.i841, align 4
  %4178 = sub i32 %4175, %4177
  %4179 = icmp ult i32 %4175, %4177
  %4180 = zext i1 %4179 to i8
  store i8 %4180, i8* %12, align 1
  %4181 = and i32 %4178, 255
  %4182 = tail call i32 @llvm.ctpop.i32(i32 %4181)
  %4183 = trunc i32 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = xor i8 %4184, 1
  store i8 %4185, i8* %13, align 1
  %4186 = xor i32 %4177, %4175
  %4187 = xor i32 %4186, %4178
  %4188 = lshr i32 %4187, 4
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  store i8 %4190, i8* %14, align 1
  %4191 = icmp eq i32 %4178, 0
  %4192 = zext i1 %4191 to i8
  store i8 %4192, i8* %15, align 1
  %4193 = lshr i32 %4178, 31
  %4194 = trunc i32 %4193 to i8
  store i8 %4194, i8* %16, align 1
  %4195 = lshr i32 %4175, 31
  %4196 = lshr i32 %4177, 31
  %4197 = xor i32 %4196, %4195
  %4198 = xor i32 %4193, %4195
  %4199 = add nuw nsw i32 %4198, %4197
  %4200 = icmp eq i32 %4199, 2
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %17, align 1
  %4202 = icmp ne i8 %4194, 0
  %4203 = xor i1 %4202, %4200
  %.v144 = select i1 %4203, i64 78, i64 11
  %4204 = add i64 %4172, %.v144
  store i64 %4204, i64* %3, align 8
  br i1 %4203, label %block_.L_4169d4, label %block_416991

block_416991:                                     ; preds = %block_416958
  %4205 = add i64 %4170, -40
  %4206 = add i64 %4204, 4
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4205 to i32*
  %4208 = load i32, i32* %4207, align 4
  %4209 = sext i32 %4208 to i64
  store i64 %4209, i64* %RAX.i844, align 8
  %4210 = shl nsw i64 %4209, 2
  %4211 = add nsw i64 %4210, 6478512
  %4212 = add i64 %4204, 11
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = zext i32 %4214 to i64
  store i64 %4215, i64* %RDI.i385, align 8
  %4216 = add i64 %4204, -89361
  %4217 = add i64 %4204, 16
  %4218 = load i64, i64* %6, align 8
  %4219 = add i64 %4218, -8
  %4220 = inttoptr i64 %4219 to i64*
  store i64 %4217, i64* %4220, align 8
  store i64 %4219, i64* %6, align 8
  store i64 %4216, i64* %3, align 8
  %4221 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4169)
  %4222 = load i64, i64* %RBP.i, align 8
  %4223 = add i64 %4222, -48
  %4224 = load i64, i64* %3, align 8
  %4225 = add i64 %4224, 4
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4223 to i32*
  %4227 = load i32, i32* %4226, align 4
  %4228 = sext i32 %4227 to i64
  store i64 %4228, i64* %RCX.i834, align 8
  %4229 = shl nsw i64 %4228, 2
  %4230 = add nsw i64 %4229, 8807744
  %4231 = add i64 %4224, 12
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i32*
  %4233 = load i32, i32* %4232, align 4
  %4234 = sext i32 %4233 to i64
  store i64 %4234, i64* %RCX.i834, align 8
  %4235 = shl nsw i64 %4234, 2
  %4236 = add nsw i64 %4235, 6478512
  %4237 = add i64 %4224, 19
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i32*
  %4239 = load i32, i32* %4238, align 4
  %4240 = zext i32 %4239 to i64
  store i64 %4240, i64* %RDI.i385, align 8
  %4241 = add i64 %4222, -116
  %4242 = load i32, i32* %EAX.i841, align 4
  %4243 = add i64 %4224, 22
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4241 to i32*
  store i32 %4242, i32* %4244, align 4
  %4245 = load i64, i64* %3, align 8
  %4246 = add i64 %4245, -89399
  %4247 = add i64 %4245, 5
  %4248 = load i64, i64* %6, align 8
  %4249 = add i64 %4248, -8
  %4250 = inttoptr i64 %4249 to i64*
  store i64 %4247, i64* %4250, align 8
  store i64 %4249, i64* %6, align 8
  store i64 %4246, i64* %3, align 8
  %4251 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4221)
  %4252 = load i64, i64* %RAX.i844, align 8
  %4253 = load i64, i64* %3, align 8
  %4254 = shl i64 %4252, 32
  %4255 = ashr i64 %4254, 35
  %4256 = lshr i64 %4255, 1
  %4257 = trunc i64 %4255 to i8
  %4258 = and i8 %4257, 1
  %4259 = trunc i64 %4256 to i32
  %4260 = and i64 %4256, 4294967295
  store i64 %4260, i64* %RAX.i844, align 8
  store i8 %4258, i8* %12, align 1
  %4261 = and i32 %4259, 255
  %4262 = tail call i32 @llvm.ctpop.i32(i32 %4261)
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  store i8 %4265, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4266 = icmp eq i32 %4259, 0
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %15, align 1
  %4268 = lshr i64 %4255, 32
  %4269 = trunc i64 %4268 to i8
  %4270 = and i8 %4269, 1
  store i8 %4270, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4271 = load i64, i64* %RBP.i, align 8
  %4272 = add i64 %4271, -116
  %4273 = add i64 %4253, 6
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = trunc i64 %4256 to i32
  %4277 = sub i32 %4275, %4276
  %4278 = zext i32 %4277 to i64
  store i64 %4278, i64* %RDI.i385, align 8
  %4279 = icmp ult i32 %4275, %4276
  %4280 = zext i1 %4279 to i8
  store i8 %4280, i8* %12, align 1
  %4281 = and i32 %4277, 255
  %4282 = tail call i32 @llvm.ctpop.i32(i32 %4281)
  %4283 = trunc i32 %4282 to i8
  %4284 = and i8 %4283, 1
  %4285 = xor i8 %4284, 1
  store i8 %4285, i8* %13, align 1
  %4286 = xor i32 %4276, %4275
  %4287 = xor i32 %4286, %4277
  %4288 = lshr i32 %4287, 4
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  store i8 %4290, i8* %14, align 1
  %4291 = icmp eq i32 %4277, 0
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %15, align 1
  %4293 = lshr i32 %4277, 31
  %4294 = trunc i32 %4293 to i8
  store i8 %4294, i8* %16, align 1
  %4295 = lshr i32 %4275, 31
  %4296 = lshr i64 %4255, 32
  %4297 = trunc i64 %4296 to i32
  %4298 = and i32 %4297, 1
  %4299 = xor i32 %4298, %4295
  %4300 = xor i32 %4293, %4295
  %4301 = add nuw nsw i32 %4300, %4299
  %4302 = icmp eq i32 %4301, 2
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %17, align 1
  %4304 = add i64 %4271, -24
  %4305 = add i64 %4253, 12
  store i64 %4305, i64* %3, align 8
  %4306 = inttoptr i64 %4304 to i64*
  %4307 = load i64, i64* %4306, align 8
  store i64 %4307, i64* %RCX.i834, align 8
  %4308 = add i64 %4271, -44
  %4309 = add i64 %4253, 16
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to i32*
  %4311 = load i32, i32* %4310, align 4
  %4312 = sext i32 %4311 to i64
  store i64 %4312, i64* %RDX.i470, align 8
  %4313 = shl nsw i64 %4312, 2
  %4314 = add i64 %4313, %4307
  %4315 = add i64 %4253, 19
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4314 to i32*
  store i32 %4277, i32* %4316, align 4
  %4317 = load i64, i64* %3, align 8
  %4318 = add i64 %4317, 54
  store i64 %4318, i64* %3, align 8
  br label %block_.L_416a05

block_.L_4169d4:                                  ; preds = %block_416958
  store i64 0, i64* %RCX.i834, align 8
  %4319 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %4320 = and i32 %4319, 255
  %4321 = tail call i32 @llvm.ctpop.i32(i32 %4320)
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  %4324 = xor i8 %4323, 1
  store i8 %4324, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4325 = icmp eq i32 %4319, 0
  %4326 = zext i1 %4325 to i8
  store i8 %4326, i8* %15, align 1
  %4327 = lshr i32 %4319, 31
  %4328 = trunc i32 %4327 to i8
  store i8 %4328, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4329 = zext i1 %4325 to i64
  store i64 %4329, i64* %RAX.i844, align 8
  %4330 = add i64 %4170, -52
  %4331 = add i64 %4204, 21
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4330 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = zext i32 %4333 to i64
  store i64 %4334, i64* %RSI.i402, align 8
  %4335 = add i64 %4170, -48
  %4336 = add i64 %4204, 24
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i32*
  %4338 = load i32, i32* %4337, align 4
  %4339 = zext i32 %4338 to i64
  store i64 %4339, i64* %RDX.i470, align 8
  %4340 = zext i1 %4325 to i64
  store i64 %4340, i64* %RDI.i385, align 8
  %4341 = add i64 %4204, 23436
  %4342 = add i64 %4204, 31
  %4343 = load i64, i64* %6, align 8
  %4344 = add i64 %4343, -8
  %4345 = inttoptr i64 %4344 to i64*
  store i64 %4342, i64* %4345, align 8
  store i64 %4344, i64* %6, align 8
  store i64 %4341, i64* %3, align 8
  %call2_4169ee = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %4341, %struct.Memory* %4169)
  %4346 = load i64, i64* %RBP.i, align 8
  %4347 = add i64 %4346, -56
  %4348 = load i32, i32* %EAX.i841, align 4
  %4349 = load i64, i64* %3, align 8
  %4350 = add i64 %4349, 3
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4347 to i32*
  store i32 %4348, i32* %4351, align 4
  %4352 = load i64, i64* %RBP.i, align 8
  %4353 = add i64 %4352, -56
  %4354 = load i64, i64* %3, align 8
  %4355 = add i64 %4354, 3
  store i64 %4355, i64* %3, align 8
  %4356 = inttoptr i64 %4353 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = zext i32 %4357 to i64
  store i64 %4358, i64* %RAX.i844, align 8
  %4359 = add i64 %4352, -24
  %4360 = add i64 %4354, 7
  store i64 %4360, i64* %3, align 8
  %4361 = inttoptr i64 %4359 to i64*
  %4362 = load i64, i64* %4361, align 8
  store i64 %4362, i64* %R8.i424, align 8
  %4363 = add i64 %4352, -44
  %4364 = add i64 %4354, 11
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4363 to i32*
  %4366 = load i32, i32* %4365, align 4
  %4367 = sext i32 %4366 to i64
  store i64 %4367, i64* %R9.i421, align 8
  %4368 = shl nsw i64 %4367, 2
  %4369 = add i64 %4368, %4362
  %4370 = add i64 %4354, 15
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4369 to i32*
  store i32 %4357, i32* %4371, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_416a05

block_.L_416a05:                                  ; preds = %block_.L_4169d4, %block_416991
  %4372 = phi i64 [ %.pre86, %block_.L_4169d4 ], [ %4318, %block_416991 ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_4169ee, %block_.L_4169d4 ], [ %4251, %block_416991 ]
  %4373 = add i64 %4372, 5
  store i64 %4373, i64* %3, align 8
  br label %block_.L_416a0a

block_.L_416a0a:                                  ; preds = %block_.L_416a05, %block_41693f
  %4374 = phi i64 [ %4101, %block_41693f ], [ %4373, %block_.L_416a05 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.24, %block_41693f ], [ %MEMORY.28, %block_.L_416a05 ]
  %4375 = add i64 %4374, 5
  store i64 %4375, i64* %3, align 8
  br label %block_.L_416a0f

block_.L_416a0f:                                  ; preds = %block_4168fe, %block_4168bd, %block_41687d, %block_.L_416a0a
  %4376 = phi i64 [ %3915, %block_41687d ], [ %3987, %block_4168bd ], [ %4059, %block_4168fe ], [ %4375, %block_.L_416a0a ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.24, %block_41687d ], [ %MEMORY.24, %block_4168bd ], [ %MEMORY.24, %block_4168fe ], [ %MEMORY.29, %block_.L_416a0a ]
  %4377 = add i64 %4376, 287
  br label %block_.L_416b2e

block_.L_416a14:                                  ; preds = %block_.L_416873
  %4378 = add i64 %3444, -40
  %4379 = add i64 %3845, 4
  store i64 %4379, i64* %3, align 8
  %4380 = inttoptr i64 %4378 to i32*
  %4381 = load i32, i32* %4380, align 4
  %4382 = add i32 %4381, -13
  %4383 = icmp ult i32 %4381, 13
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %12, align 1
  %4385 = and i32 %4382, 255
  %4386 = tail call i32 @llvm.ctpop.i32(i32 %4385)
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = xor i8 %4388, 1
  store i8 %4389, i8* %13, align 1
  %4390 = xor i32 %4382, %4381
  %4391 = lshr i32 %4390, 4
  %4392 = trunc i32 %4391 to i8
  %4393 = and i8 %4392, 1
  store i8 %4393, i8* %14, align 1
  %4394 = icmp eq i32 %4382, 0
  %4395 = zext i1 %4394 to i8
  store i8 %4395, i8* %15, align 1
  %4396 = lshr i32 %4382, 31
  %4397 = trunc i32 %4396 to i8
  store i8 %4397, i8* %16, align 1
  %4398 = lshr i32 %4381, 31
  %4399 = xor i32 %4396, %4398
  %4400 = add nuw nsw i32 %4399, %4398
  %4401 = icmp eq i32 %4400, 2
  %4402 = zext i1 %4401 to i8
  store i8 %4402, i8* %17, align 1
  %.v129 = select i1 %4394, i64 262, i64 10
  %4403 = add i64 %3845, %.v129
  store i64 %4403, i64* %3, align 8
  br i1 %4394, label %block_.L_416b1a, label %block_416a1e

block_416a1e:                                     ; preds = %block_.L_416a14
  %4404 = add i64 %4403, 4
  store i64 %4404, i64* %3, align 8
  %4405 = load i32, i32* %4380, align 4
  %4406 = sext i32 %4405 to i64
  store i64 %4406, i64* %RAX.i844, align 8
  %4407 = shl nsw i64 %4406, 2
  %4408 = add nsw i64 %4407, 6478512
  %4409 = add i64 %4403, 11
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i32*
  %4411 = load i32, i32* %4410, align 4
  %4412 = zext i32 %4411 to i64
  store i64 %4412, i64* %RDI.i385, align 8
  %4413 = add i64 %4403, -89502
  %4414 = add i64 %4403, 16
  %4415 = load i64, i64* %6, align 8
  %4416 = add i64 %4415, -8
  %4417 = inttoptr i64 %4416 to i64*
  store i64 %4414, i64* %4417, align 8
  store i64 %4416, i64* %6, align 8
  store i64 %4413, i64* %3, align 8
  %4418 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.24)
  %4419 = load i64, i64* %RAX.i844, align 8
  %4420 = load i64, i64* %3, align 8
  %4421 = trunc i64 %4419 to i32
  %4422 = add i32 %4421, 15
  %4423 = zext i32 %4422 to i64
  store i64 %4423, i64* %RAX.i844, align 8
  %4424 = icmp ugt i32 %4421, -16
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %12, align 1
  %4426 = and i32 %4422, 255
  %4427 = tail call i32 @llvm.ctpop.i32(i32 %4426)
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  %4430 = xor i8 %4429, 1
  store i8 %4430, i8* %13, align 1
  %4431 = xor i32 %4422, %4421
  %4432 = lshr i32 %4431, 4
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  store i8 %4434, i8* %14, align 1
  %4435 = icmp eq i32 %4422, 0
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %15, align 1
  %4437 = lshr i32 %4422, 31
  %4438 = trunc i32 %4437 to i8
  store i8 %4438, i8* %16, align 1
  %4439 = lshr i32 %4421, 31
  %4440 = xor i32 %4437, %4439
  %4441 = add nuw nsw i32 %4440, %4437
  %4442 = icmp eq i32 %4441, 2
  %4443 = zext i1 %4442 to i8
  store i8 %4443, i8* %17, align 1
  %4444 = load i64, i64* %RBP.i, align 8
  %4445 = add i64 %4444, -48
  %4446 = add i64 %4420, 7
  store i64 %4446, i64* %3, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  %4449 = sext i32 %4448 to i64
  store i64 %4449, i64* %RCX.i834, align 8
  %4450 = shl nsw i64 %4449, 2
  %4451 = add nsw i64 %4450, 8807744
  %4452 = add i64 %4420, 15
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4451 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = sext i32 %4454 to i64
  store i64 %4455, i64* %RCX.i834, align 8
  %4456 = shl nsw i64 %4455, 2
  %4457 = add nsw i64 %4456, 6478512
  %4458 = add i64 %4420, 22
  store i64 %4458, i64* %3, align 8
  %4459 = inttoptr i64 %4457 to i32*
  %4460 = load i32, i32* %4459, align 4
  %4461 = zext i32 %4460 to i64
  store i64 %4461, i64* %RDI.i385, align 8
  %4462 = add i64 %4444, -120
  %4463 = add i64 %4420, 25
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i32*
  store i32 %4422, i32* %4464, align 4
  %4465 = load i64, i64* %3, align 8
  %4466 = add i64 %4465, -89543
  %4467 = add i64 %4465, 5
  %4468 = load i64, i64* %6, align 8
  %4469 = add i64 %4468, -8
  %4470 = inttoptr i64 %4469 to i64*
  store i64 %4467, i64* %4470, align 8
  store i64 %4469, i64* %6, align 8
  store i64 %4466, i64* %3, align 8
  %4471 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4418)
  %4472 = load i64, i64* %RBP.i, align 8
  %4473 = add i64 %4472, -120
  %4474 = load i64, i64* %3, align 8
  %4475 = add i64 %4474, 3
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4473 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RDI.i385, align 8
  %4479 = load i32, i32* %EAX.i841, align 4
  %4480 = sub i32 %4477, %4479
  %4481 = icmp ult i32 %4477, %4479
  %4482 = zext i1 %4481 to i8
  store i8 %4482, i8* %12, align 1
  %4483 = and i32 %4480, 255
  %4484 = tail call i32 @llvm.ctpop.i32(i32 %4483)
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  %4487 = xor i8 %4486, 1
  store i8 %4487, i8* %13, align 1
  %4488 = xor i32 %4479, %4477
  %4489 = xor i32 %4488, %4480
  %4490 = lshr i32 %4489, 4
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  store i8 %4492, i8* %14, align 1
  %4493 = icmp eq i32 %4480, 0
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %15, align 1
  %4495 = lshr i32 %4480, 31
  %4496 = trunc i32 %4495 to i8
  store i8 %4496, i8* %16, align 1
  %4497 = lshr i32 %4477, 31
  %4498 = lshr i32 %4479, 31
  %4499 = xor i32 %4498, %4497
  %4500 = xor i32 %4495, %4497
  %4501 = add nuw nsw i32 %4500, %4499
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %17, align 1
  %4504 = icmp ne i8 %4496, 0
  %4505 = xor i1 %4504, %4502
  %.v130 = select i1 %4505, i64 105, i64 11
  %4506 = add i64 %4474, %.v130
  store i64 %4506, i64* %3, align 8
  br i1 %4505, label %block_.L_416ab5, label %block_416a57

block_416a57:                                     ; preds = %block_416a1e
  %4507 = add i64 %4472, -40
  %4508 = add i64 %4506, 4
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  %4510 = load i32, i32* %4509, align 4
  %4511 = sext i32 %4510 to i64
  store i64 %4511, i64* %RAX.i844, align 8
  %4512 = shl nsw i64 %4511, 2
  %4513 = add nsw i64 %4512, 6478512
  %4514 = add i64 %4506, 11
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  %4516 = load i32, i32* %4515, align 4
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %RDI.i385, align 8
  %4518 = add i64 %4506, -89559
  %4519 = add i64 %4506, 16
  %4520 = load i64, i64* %6, align 8
  %4521 = add i64 %4520, -8
  %4522 = inttoptr i64 %4521 to i64*
  store i64 %4519, i64* %4522, align 8
  store i64 %4521, i64* %6, align 8
  store i64 %4518, i64* %3, align 8
  %4523 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4471)
  %4524 = load i64, i64* %RBP.i, align 8
  %4525 = add i64 %4524, -48
  %4526 = load i64, i64* %3, align 8
  %4527 = add i64 %4526, 4
  store i64 %4527, i64* %3, align 8
  %4528 = inttoptr i64 %4525 to i32*
  %4529 = load i32, i32* %4528, align 4
  %4530 = sext i32 %4529 to i64
  store i64 %4530, i64* %RCX.i834, align 8
  %4531 = shl nsw i64 %4530, 2
  %4532 = add nsw i64 %4531, 8807744
  %4533 = add i64 %4526, 12
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = sext i32 %4535 to i64
  store i64 %4536, i64* %RCX.i834, align 8
  %4537 = shl nsw i64 %4536, 2
  %4538 = add nsw i64 %4537, 6478512
  %4539 = add i64 %4526, 19
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4538 to i32*
  %4541 = load i32, i32* %4540, align 4
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RDI.i385, align 8
  %4543 = add i64 %4524, -124
  %4544 = load i32, i32* %EAX.i841, align 4
  %4545 = add i64 %4526, 22
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4543 to i32*
  store i32 %4544, i32* %4546, align 4
  %4547 = load i64, i64* %3, align 8
  %4548 = add i64 %4547, -89597
  %4549 = add i64 %4547, 5
  %4550 = load i64, i64* %6, align 8
  %4551 = add i64 %4550, -8
  %4552 = inttoptr i64 %4551 to i64*
  store i64 %4549, i64* %4552, align 8
  store i64 %4551, i64* %6, align 8
  store i64 %4548, i64* %3, align 8
  %4553 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %4523)
  %4554 = load i64, i64* %RAX.i844, align 8
  %4555 = load i64, i64* %3, align 8
  %4556 = shl i64 %4554, 32
  %4557 = ashr i64 %4556, 35
  %4558 = lshr i64 %4557, 1
  %4559 = trunc i64 %4557 to i8
  %4560 = and i8 %4559, 1
  %4561 = trunc i64 %4558 to i32
  %4562 = and i64 %4558, 4294967295
  store i64 %4562, i64* %RAX.i844, align 8
  store i8 %4560, i8* %12, align 1
  %4563 = and i32 %4561, 255
  %4564 = tail call i32 @llvm.ctpop.i32(i32 %4563)
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  %4567 = xor i8 %4566, 1
  store i8 %4567, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4568 = icmp eq i32 %4561, 0
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %15, align 1
  %4570 = lshr i64 %4557, 32
  %4571 = trunc i64 %4570 to i8
  %4572 = and i8 %4571, 1
  store i8 %4572, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4573 = load i64, i64* %RBP.i, align 8
  %4574 = add i64 %4573, -124
  %4575 = add i64 %4555, 6
  store i64 %4575, i64* %3, align 8
  %4576 = inttoptr i64 %4574 to i32*
  %4577 = load i32, i32* %4576, align 4
  %4578 = trunc i64 %4558 to i32
  %4579 = sub i32 %4577, %4578
  %4580 = zext i32 %4579 to i64
  store i64 %4580, i64* %RDI.i385, align 8
  %4581 = icmp ult i32 %4577, %4578
  %4582 = zext i1 %4581 to i8
  store i8 %4582, i8* %12, align 1
  %4583 = and i32 %4579, 255
  %4584 = tail call i32 @llvm.ctpop.i32(i32 %4583)
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  %4587 = xor i8 %4586, 1
  store i8 %4587, i8* %13, align 1
  %4588 = xor i32 %4578, %4577
  %4589 = xor i32 %4588, %4579
  %4590 = lshr i32 %4589, 4
  %4591 = trunc i32 %4590 to i8
  %4592 = and i8 %4591, 1
  store i8 %4592, i8* %14, align 1
  %4593 = icmp eq i32 %4579, 0
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %15, align 1
  %4595 = lshr i32 %4579, 31
  %4596 = trunc i32 %4595 to i8
  store i8 %4596, i8* %16, align 1
  %4597 = lshr i32 %4577, 31
  %4598 = lshr i64 %4557, 32
  %4599 = trunc i64 %4598 to i32
  %4600 = and i32 %4599, 1
  %4601 = xor i32 %4600, %4597
  %4602 = xor i32 %4595, %4597
  %4603 = add nuw nsw i32 %4602, %4601
  %4604 = icmp eq i32 %4603, 2
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %17, align 1
  %4606 = add i64 %4573, -24
  %4607 = add i64 %4555, 12
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i64*
  %4609 = load i64, i64* %4608, align 8
  store i64 %4609, i64* %RCX.i834, align 8
  %4610 = add i64 %4573, -44
  %4611 = add i64 %4555, 16
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i32*
  %4613 = load i32, i32* %4612, align 4
  %4614 = sext i32 %4613 to i64
  store i64 %4614, i64* %RDX.i470, align 8
  %4615 = shl nsw i64 %4614, 2
  %4616 = add i64 %4615, %4609
  %4617 = add i64 %4555, 19
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  store i32 %4579, i32* %4618, align 4
  %4619 = load i64, i64* %RBP.i, align 8
  %4620 = add i64 %4619, -24
  %4621 = load i64, i64* %3, align 8
  %4622 = add i64 %4621, 4
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4620 to i64*
  %4624 = load i64, i64* %4623, align 8
  store i64 %4624, i64* %RCX.i834, align 8
  %4625 = add i64 %4619, -44
  %4626 = add i64 %4621, 8
  store i64 %4626, i64* %3, align 8
  %4627 = inttoptr i64 %4625 to i32*
  %4628 = load i32, i32* %4627, align 4
  %4629 = sext i32 %4628 to i64
  store i64 %4629, i64* %RDX.i470, align 8
  %4630 = shl nsw i64 %4629, 2
  %4631 = add i64 %4630, %4624
  %4632 = add i64 %4621, 11
  store i64 %4632, i64* %3, align 8
  %4633 = inttoptr i64 %4631 to i32*
  %4634 = load i32, i32* %4633, align 4
  %4635 = add i32 %4634, 50000000
  %4636 = zext i32 %4635 to i64
  store i64 %4636, i64* %RAX.i844, align 8
  %4637 = icmp ugt i32 %4634, -50000001
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %12, align 1
  %4639 = and i32 %4635, 255
  %4640 = tail call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %13, align 1
  %4644 = xor i32 %4635, %4634
  %4645 = lshr i32 %4644, 4
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  store i8 %4647, i8* %14, align 1
  %4648 = icmp eq i32 %4635, 0
  %4649 = zext i1 %4648 to i8
  store i8 %4649, i8* %15, align 1
  %4650 = lshr i32 %4635, 31
  %4651 = trunc i32 %4650 to i8
  store i8 %4651, i8* %16, align 1
  %4652 = lshr i32 %4634, 31
  %4653 = xor i32 %4650, %4652
  %4654 = add nuw nsw i32 %4653, %4650
  %4655 = icmp eq i32 %4654, 2
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %17, align 1
  %4657 = add i64 %4619, -16
  %4658 = add i64 %4621, 20
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i64*
  %4660 = load i64, i64* %4659, align 8
  store i64 %4660, i64* %RCX.i834, align 8
  %4661 = add i64 %4621, 24
  store i64 %4661, i64* %3, align 8
  %4662 = load i32, i32* %4627, align 4
  %4663 = sext i32 %4662 to i64
  store i64 %4663, i64* %RDX.i470, align 8
  %4664 = shl nsw i64 %4663, 2
  %4665 = add i64 %4664, %4660
  %4666 = add i64 %4621, 27
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i32*
  store i32 %4635, i32* %4667, align 4
  %4668 = load i64, i64* %3, align 8
  %4669 = add i64 %4668, 101
  store i64 %4669, i64* %3, align 8
  br label %block_.L_416b15

block_.L_416ab5:                                  ; preds = %block_416a1e
  store i64 0, i64* %RCX.i834, align 8
  %4670 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %4671 = and i32 %4670, 255
  %4672 = tail call i32 @llvm.ctpop.i32(i32 %4671)
  %4673 = trunc i32 %4672 to i8
  %4674 = and i8 %4673, 1
  %4675 = xor i8 %4674, 1
  store i8 %4675, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4676 = icmp eq i32 %4670, 0
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %15, align 1
  %4678 = lshr i32 %4670, 31
  %4679 = trunc i32 %4678 to i8
  store i8 %4679, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4680 = zext i1 %4676 to i64
  store i64 %4680, i64* %RAX.i844, align 8
  %4681 = add i64 %4472, -52
  %4682 = add i64 %4506, 21
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i32*
  %4684 = load i32, i32* %4683, align 4
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RSI.i402, align 8
  %4686 = add i64 %4472, -48
  %4687 = add i64 %4506, 24
  store i64 %4687, i64* %3, align 8
  %4688 = inttoptr i64 %4686 to i32*
  %4689 = load i32, i32* %4688, align 4
  %4690 = zext i32 %4689 to i64
  store i64 %4690, i64* %RDX.i470, align 8
  %4691 = zext i1 %4676 to i64
  store i64 %4691, i64* %RDI.i385, align 8
  %4692 = add i64 %4506, 23211
  %4693 = add i64 %4506, 31
  %4694 = load i64, i64* %6, align 8
  %4695 = add i64 %4694, -8
  %4696 = inttoptr i64 %4695 to i64*
  store i64 %4693, i64* %4696, align 8
  store i64 %4695, i64* %6, align 8
  store i64 %4692, i64* %3, align 8
  %call2_416acf = tail call %struct.Memory* @sub_41c560.see(%struct.State* nonnull %0, i64 %4692, %struct.Memory* %4471)
  %4697 = load i64, i64* %RBP.i, align 8
  %4698 = add i64 %4697, -56
  %4699 = load i32, i32* %EAX.i841, align 4
  %4700 = load i64, i64* %3, align 8
  %4701 = add i64 %4700, 3
  store i64 %4701, i64* %3, align 8
  %4702 = inttoptr i64 %4698 to i32*
  store i32 %4699, i32* %4702, align 4
  %4703 = load i64, i64* %RBP.i, align 8
  %4704 = add i64 %4703, -56
  %4705 = load i64, i64* %3, align 8
  %4706 = add i64 %4705, 4
  store i64 %4706, i64* %3, align 8
  %4707 = inttoptr i64 %4704 to i32*
  %4708 = load i32, i32* %4707, align 4
  %4709 = add i32 %4708, 50
  %4710 = icmp ult i32 %4708, -50
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %12, align 1
  %4712 = and i32 %4709, 255
  %4713 = tail call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  store i8 %4716, i8* %13, align 1
  %4717 = xor i32 %4709, %4708
  %4718 = lshr i32 %4717, 4
  %4719 = trunc i32 %4718 to i8
  %4720 = and i8 %4719, 1
  store i8 %4720, i8* %14, align 1
  %4721 = icmp eq i32 %4709, 0
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %15, align 1
  %4723 = lshr i32 %4709, 31
  %4724 = trunc i32 %4723 to i8
  store i8 %4724, i8* %16, align 1
  %4725 = lshr i32 %4708, 31
  %4726 = xor i32 %4725, 1
  %4727 = xor i32 %4723, %4725
  %4728 = add nuw nsw i32 %4727, %4726
  %4729 = icmp eq i32 %4728, 2
  %4730 = zext i1 %4729 to i8
  store i8 %4730, i8* %17, align 1
  %4731 = icmp ne i8 %4724, 0
  %4732 = xor i1 %4731, %4729
  %.v92 = select i1 %4732, i64 34, i64 10
  %4733 = add i64 %4705, %.v92
  %4734 = add i64 %4733, 3
  store i64 %4734, i64* %3, align 8
  %4735 = load i32, i32* %4707, align 4
  %4736 = zext i32 %4735 to i64
  store i64 %4736, i64* %RAX.i844, align 8
  br i1 %4732, label %block_.L_416af9, label %block_416ae1

block_416ae1:                                     ; preds = %block_.L_416ab5
  %4737 = add i32 %4735, 50000000
  %4738 = zext i32 %4737 to i64
  store i64 %4738, i64* %RAX.i844, align 8
  %4739 = icmp ugt i32 %4735, -50000001
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %12, align 1
  %4741 = and i32 %4737, 255
  %4742 = tail call i32 @llvm.ctpop.i32(i32 %4741)
  %4743 = trunc i32 %4742 to i8
  %4744 = and i8 %4743, 1
  %4745 = xor i8 %4744, 1
  store i8 %4745, i8* %13, align 1
  %4746 = xor i32 %4737, %4735
  %4747 = lshr i32 %4746, 4
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  store i8 %4749, i8* %14, align 1
  %4750 = icmp eq i32 %4737, 0
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %15, align 1
  %4752 = lshr i32 %4737, 31
  %4753 = trunc i32 %4752 to i8
  store i8 %4753, i8* %16, align 1
  %4754 = lshr i32 %4735, 31
  %4755 = xor i32 %4752, %4754
  %4756 = add nuw nsw i32 %4755, %4752
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %17, align 1
  %4759 = add i64 %4703, -16
  %4760 = add i64 %4733, 12
  store i64 %4760, i64* %3, align 8
  %4761 = inttoptr i64 %4759 to i64*
  %4762 = load i64, i64* %4761, align 8
  store i64 %4762, i64* %RCX.i834, align 8
  %4763 = add i64 %4703, -44
  %4764 = add i64 %4733, 16
  store i64 %4764, i64* %3, align 8
  %4765 = inttoptr i64 %4763 to i32*
  %4766 = load i32, i32* %4765, align 4
  %4767 = sext i32 %4766 to i64
  store i64 %4767, i64* %RDX.i470, align 8
  %4768 = shl nsw i64 %4767, 2
  %4769 = add i64 %4768, %4762
  %4770 = add i64 %4733, 19
  store i64 %4770, i64* %3, align 8
  %4771 = inttoptr i64 %4769 to i32*
  store i32 %4737, i32* %4771, align 4
  %4772 = load i64, i64* %3, align 8
  %4773 = add i64 %4772, 19
  store i64 %4773, i64* %3, align 8
  br label %block_.L_416b07

block_.L_416af9:                                  ; preds = %block_.L_416ab5
  %4774 = add i64 %4703, -16
  %4775 = add i64 %4733, 7
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i64*
  %4777 = load i64, i64* %4776, align 8
  store i64 %4777, i64* %RCX.i834, align 8
  %4778 = add i64 %4703, -44
  %4779 = add i64 %4733, 11
  store i64 %4779, i64* %3, align 8
  %4780 = inttoptr i64 %4778 to i32*
  %4781 = load i32, i32* %4780, align 4
  %4782 = sext i32 %4781 to i64
  store i64 %4782, i64* %RDX.i470, align 8
  %4783 = shl nsw i64 %4782, 2
  %4784 = add i64 %4783, %4777
  %4785 = add i64 %4733, 14
  store i64 %4785, i64* %3, align 8
  %4786 = inttoptr i64 %4784 to i32*
  store i32 %4735, i32* %4786, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_416b07

block_.L_416b07:                                  ; preds = %block_.L_416af9, %block_416ae1
  %4787 = phi i64 [ %.pre87, %block_.L_416af9 ], [ %4773, %block_416ae1 ]
  %4788 = load i64, i64* %RBP.i, align 8
  %4789 = add i64 %4788, -56
  %4790 = add i64 %4787, 3
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i32*
  %4792 = load i32, i32* %4791, align 4
  %4793 = zext i32 %4792 to i64
  store i64 %4793, i64* %RAX.i844, align 8
  %4794 = add i64 %4788, -24
  %4795 = add i64 %4787, 7
  store i64 %4795, i64* %3, align 8
  %4796 = inttoptr i64 %4794 to i64*
  %4797 = load i64, i64* %4796, align 8
  store i64 %4797, i64* %RCX.i834, align 8
  %4798 = add i64 %4788, -44
  %4799 = add i64 %4787, 11
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = sext i32 %4801 to i64
  store i64 %4802, i64* %RDX.i470, align 8
  %4803 = shl nsw i64 %4802, 2
  %4804 = add i64 %4803, %4797
  %4805 = add i64 %4787, 14
  store i64 %4805, i64* %3, align 8
  %4806 = inttoptr i64 %4804 to i32*
  store i32 %4792, i32* %4806, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_416b15

block_.L_416b15:                                  ; preds = %block_.L_416b07, %block_416a57
  %4807 = phi i64 [ %.pre88, %block_.L_416b07 ], [ %4669, %block_416a57 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_416acf, %block_.L_416b07 ], [ %4553, %block_416a57 ]
  %4808 = add i64 %4807, 20
  store i64 %4808, i64* %3, align 8
  br label %block_.L_416b29

block_.L_416b1a:                                  ; preds = %block_.L_416a14
  %4809 = add i64 %3444, -16
  %4810 = add i64 %4403, 4
  store i64 %4810, i64* %3, align 8
  %4811 = inttoptr i64 %4809 to i64*
  %4812 = load i64, i64* %4811, align 8
  store i64 %4812, i64* %RAX.i844, align 8
  %4813 = add i64 %3444, -44
  %4814 = add i64 %4403, 8
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = sext i32 %4816 to i64
  store i64 %4817, i64* %RCX.i834, align 8
  %4818 = shl nsw i64 %4817, 2
  %4819 = add i64 %4818, %4812
  %4820 = add i64 %4403, 15
  store i64 %4820, i64* %3, align 8
  %4821 = inttoptr i64 %4819 to i32*
  store i32 0, i32* %4821, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_416b29

block_.L_416b29:                                  ; preds = %block_.L_416b1a, %block_.L_416b15
  %4822 = phi i64 [ %.pre89, %block_.L_416b1a ], [ %4808, %block_.L_416b15 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.24, %block_.L_416b1a ], [ %MEMORY.32, %block_.L_416b15 ]
  %4823 = add i64 %4822, 5
  store i64 %4823, i64* %3, align 8
  br label %block_.L_416b2e

block_.L_416b2e:                                  ; preds = %block_.L_416b29, %block_.L_416a0f
  %storemerge65 = phi i64 [ %4377, %block_.L_416a0f ], [ %4823, %block_.L_416b29 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.30, %block_.L_416a0f ], [ %MEMORY.33, %block_.L_416b29 ]
  %4824 = add i64 %storemerge65, 5
  store i64 %4824, i64* %3, align 8
  br label %block_.L_416b33

block_.L_416b33:                                  ; preds = %block_.L_416b2e, %block_.L_41686e
  %storemerge62 = phi i64 [ %3818, %block_.L_41686e ], [ %4824, %block_.L_416b2e ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.26, %block_.L_41686e ], [ %MEMORY.34, %block_.L_416b2e ]
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i844, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RCX.i834, align 8
  %4825 = load i64, i64* %RBP.i, align 8
  %4826 = add i64 %4825, -48
  %4827 = add i64 %storemerge62, 24
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i32*
  %4829 = load i32, i32* %4828, align 4
  %4830 = sext i32 %4829 to i64
  %4831 = mul nsw i64 %4830, 576
  store i64 %4831, i64* %RDX.i470, align 8
  %4832 = lshr i64 %4831, 63
  %4833 = add i64 %4831, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  store i64 %4833, i64* %RCX.i834, align 8
  %4834 = icmp ult i64 %4833, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  %4835 = icmp ult i64 %4833, %4831
  %4836 = or i1 %4834, %4835
  %4837 = zext i1 %4836 to i8
  store i8 %4837, i8* %12, align 1
  %4838 = trunc i64 %4833 to i32
  %4839 = and i32 %4838, 248
  %4840 = tail call i32 @llvm.ctpop.i32(i32 %4839)
  %4841 = trunc i32 %4840 to i8
  %4842 = and i8 %4841, 1
  %4843 = xor i8 %4842, 1
  store i8 %4843, i8* %13, align 1
  %4844 = xor i64 %4833, ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64)
  %4845 = lshr i64 %4844, 4
  %4846 = trunc i64 %4845 to i8
  %4847 = and i8 %4846, 1
  store i8 %4847, i8* %14, align 1
  %4848 = icmp eq i64 %4833, 0
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %15, align 1
  %4850 = lshr i64 %4833, 63
  %4851 = trunc i64 %4850 to i8
  store i8 %4851, i8* %16, align 1
  %4852 = xor i64 %4850, lshr (i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64 63)
  %4853 = xor i64 %4850, %4832
  %4854 = add nuw nsw i64 %4852, %4853
  %4855 = icmp eq i64 %4854, 2
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %17, align 1
  %4857 = add i64 %4825, -52
  %4858 = add i64 %storemerge62, 38
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i32*
  %4860 = load i32, i32* %4859, align 4
  %4861 = sext i32 %4860 to i64
  store i64 %4861, i64* %RDX.i470, align 8
  %4862 = shl nsw i64 %4861, 2
  %4863 = add i64 %4862, %4833
  %4864 = add i64 %storemerge62, 41
  store i64 %4864, i64* %3, align 8
  %4865 = inttoptr i64 %4863 to i32*
  %4866 = load i32, i32* %4865, align 4
  %4867 = zext i32 %4866 to i64
  store i64 %4867, i64* %RSI.i402, align 8
  %4868 = add i64 %4825, -16
  %4869 = add i64 %storemerge62, 45
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4868 to i64*
  %4871 = load i64, i64* %4870, align 8
  store i64 %4871, i64* %RCX.i834, align 8
  %4872 = add i64 %4825, -44
  %4873 = add i64 %storemerge62, 49
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = sext i32 %4875 to i64
  store i64 %4876, i64* %RDX.i470, align 8
  %4877 = shl nsw i64 %4876, 2
  %4878 = add i64 %4871, %4877
  %4879 = add i64 %storemerge62, 52
  store i64 %4879, i64* %3, align 8
  %4880 = inttoptr i64 %4878 to i32*
  %4881 = load i32, i32* %4880, align 4
  %4882 = add i32 %4881, %4866
  %4883 = zext i32 %4882 to i64
  store i64 %4883, i64* %RSI.i402, align 8
  %4884 = icmp ult i32 %4882, %4866
  %4885 = icmp ult i32 %4882, %4881
  %4886 = or i1 %4884, %4885
  %4887 = zext i1 %4886 to i8
  store i8 %4887, i8* %12, align 1
  %4888 = and i32 %4882, 255
  %4889 = tail call i32 @llvm.ctpop.i32(i32 %4888)
  %4890 = trunc i32 %4889 to i8
  %4891 = and i8 %4890, 1
  %4892 = xor i8 %4891, 1
  store i8 %4892, i8* %13, align 1
  %4893 = xor i32 %4881, %4866
  %4894 = xor i32 %4893, %4882
  %4895 = lshr i32 %4894, 4
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  store i8 %4897, i8* %14, align 1
  %4898 = icmp eq i32 %4882, 0
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %15, align 1
  %4900 = lshr i32 %4882, 31
  %4901 = trunc i32 %4900 to i8
  store i8 %4901, i8* %16, align 1
  %4902 = lshr i32 %4866, 31
  %4903 = lshr i32 %4881, 31
  %4904 = xor i32 %4900, %4902
  %4905 = xor i32 %4900, %4903
  %4906 = add nuw nsw i32 %4904, %4905
  %4907 = icmp eq i32 %4906, 2
  %4908 = zext i1 %4907 to i8
  store i8 %4908, i8* %17, align 1
  %4909 = add i64 %storemerge62, 55
  store i64 %4909, i64* %3, align 8
  store i32 %4882, i32* %4880, align 4
  %4910 = load i64, i64* %RBP.i, align 8
  %4911 = add i64 %4910, -48
  %4912 = load i64, i64* %3, align 8
  %4913 = add i64 %4912, 3
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4911 to i32*
  %4915 = load i32, i32* %4914, align 4
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RSI.i402, align 8
  %4917 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4918 = sext i32 %4917 to i64
  %4919 = mul nsw i64 %4918, 24
  store i64 %4919, i64* %RCX.i834, align 8
  %4920 = lshr i64 %4919, 63
  %4921 = load i64, i64* %RAX.i844, align 8
  %4922 = add i64 %4919, %4921
  store i64 %4922, i64* %RAX.i844, align 8
  %4923 = icmp ult i64 %4922, %4921
  %4924 = icmp ult i64 %4922, %4919
  %4925 = or i1 %4923, %4924
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %12, align 1
  %4927 = trunc i64 %4922 to i32
  %4928 = and i32 %4927, 255
  %4929 = tail call i32 @llvm.ctpop.i32(i32 %4928)
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = xor i8 %4931, 1
  store i8 %4932, i8* %13, align 1
  %4933 = xor i64 %4919, %4921
  %4934 = xor i64 %4933, %4922
  %4935 = lshr i64 %4934, 4
  %4936 = trunc i64 %4935 to i8
  %4937 = and i8 %4936, 1
  store i8 %4937, i8* %14, align 1
  %4938 = icmp eq i64 %4922, 0
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %15, align 1
  %4940 = lshr i64 %4922, 63
  %4941 = trunc i64 %4940 to i8
  store i8 %4941, i8* %16, align 1
  %4942 = lshr i64 %4921, 63
  %4943 = xor i64 %4940, %4942
  %4944 = xor i64 %4940, %4920
  %4945 = add nuw nsw i64 %4943, %4944
  %4946 = icmp eq i64 %4945, 2
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %17, align 1
  %4948 = inttoptr i64 %4922 to i32*
  %4949 = add i64 %4912, 20
  store i64 %4949, i64* %3, align 8
  %4950 = load i32, i32* %4948, align 4
  %4951 = sub i32 %4915, %4950
  %4952 = icmp ult i32 %4915, %4950
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %12, align 1
  %4954 = and i32 %4951, 255
  %4955 = tail call i32 @llvm.ctpop.i32(i32 %4954)
  %4956 = trunc i32 %4955 to i8
  %4957 = and i8 %4956, 1
  %4958 = xor i8 %4957, 1
  store i8 %4958, i8* %13, align 1
  %4959 = xor i32 %4950, %4915
  %4960 = xor i32 %4959, %4951
  %4961 = lshr i32 %4960, 4
  %4962 = trunc i32 %4961 to i8
  %4963 = and i8 %4962, 1
  store i8 %4963, i8* %14, align 1
  %4964 = icmp eq i32 %4951, 0
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %15, align 1
  %4966 = lshr i32 %4951, 31
  %4967 = trunc i32 %4966 to i8
  store i8 %4967, i8* %16, align 1
  %4968 = lshr i32 %4915, 31
  %4969 = lshr i32 %4950, 31
  %4970 = xor i32 %4969, %4968
  %4971 = xor i32 %4966, %4968
  %4972 = add nuw nsw i32 %4971, %4970
  %4973 = icmp eq i32 %4972, 2
  %4974 = zext i1 %4973 to i8
  store i8 %4974, i8* %17, align 1
  %.v131 = select i1 %4964, i64 26, i64 125
  %4975 = add i64 %4912, %.v131
  store i64 %4975, i64* %3, align 8
  br i1 %4964, label %block_416b84, label %block_.L_416be7

block_416b84:                                     ; preds = %block_.L_416b33
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i844, align 8
  %4976 = load i64, i64* %RBP.i, align 8
  %4977 = add i64 %4976, -52
  %4978 = add i64 %4975, 13
  store i64 %4978, i64* %3, align 8
  %4979 = inttoptr i64 %4977 to i32*
  %4980 = load i32, i32* %4979, align 4
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RCX.i834, align 8
  %4982 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4983 = sext i32 %4982 to i64
  %4984 = mul nsw i64 %4983, 24
  store i64 %4984, i64* %RDX.i470, align 8
  %4985 = lshr i64 %4984, 63
  %4986 = add i64 %4984, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  store i64 %4986, i64* %RAX.i844, align 8
  %4987 = icmp ult i64 %4986, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %4988 = icmp ult i64 %4986, %4984
  %4989 = or i1 %4987, %4988
  %4990 = zext i1 %4989 to i8
  store i8 %4990, i8* %12, align 1
  %4991 = trunc i64 %4986 to i32
  %4992 = and i32 %4991, 248
  %4993 = tail call i32 @llvm.ctpop.i32(i32 %4992)
  %4994 = trunc i32 %4993 to i8
  %4995 = and i8 %4994, 1
  %4996 = xor i8 %4995, 1
  store i8 %4996, i8* %13, align 1
  %4997 = xor i64 %4984, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %4998 = xor i64 %4997, %4986
  %4999 = lshr i64 %4998, 4
  %5000 = trunc i64 %4999 to i8
  %5001 = and i8 %5000, 1
  store i8 %5001, i8* %14, align 1
  %5002 = icmp eq i64 %4986, 0
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %15, align 1
  %5004 = lshr i64 %4986, 63
  %5005 = trunc i64 %5004 to i8
  store i8 %5005, i8* %16, align 1
  %5006 = xor i64 %5004, lshr (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 63)
  %5007 = xor i64 %5004, %4985
  %5008 = add nuw nsw i64 %5006, %5007
  %5009 = icmp eq i64 %5008, 2
  %5010 = zext i1 %5009 to i8
  store i8 %5010, i8* %17, align 1
  %5011 = add i64 %4984, add (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 4)
  %5012 = add i64 %4975, 31
  store i64 %5012, i64* %3, align 8
  %5013 = inttoptr i64 %5011 to i32*
  %5014 = load i32, i32* %5013, align 4
  %5015 = sub i32 %4980, %5014
  %5016 = icmp ult i32 %4980, %5014
  %5017 = zext i1 %5016 to i8
  store i8 %5017, i8* %12, align 1
  %5018 = and i32 %5015, 255
  %5019 = tail call i32 @llvm.ctpop.i32(i32 %5018)
  %5020 = trunc i32 %5019 to i8
  %5021 = and i8 %5020, 1
  %5022 = xor i8 %5021, 1
  store i8 %5022, i8* %13, align 1
  %5023 = xor i32 %5014, %4980
  %5024 = xor i32 %5023, %5015
  %5025 = lshr i32 %5024, 4
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  store i8 %5027, i8* %14, align 1
  %5028 = icmp eq i32 %5015, 0
  %5029 = zext i1 %5028 to i8
  store i8 %5029, i8* %15, align 1
  %5030 = lshr i32 %5015, 31
  %5031 = trunc i32 %5030 to i8
  store i8 %5031, i8* %16, align 1
  %5032 = lshr i32 %4980, 31
  %5033 = lshr i32 %5014, 31
  %5034 = xor i32 %5033, %5032
  %5035 = xor i32 %5030, %5032
  %5036 = add nuw nsw i32 %5035, %5034
  %5037 = icmp eq i32 %5036, 2
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %17, align 1
  %.v138 = select i1 %5028, i64 37, i64 99
  %5039 = add i64 %4975, %.v138
  store i64 %5039, i64* %3, align 8
  br i1 %5028, label %block_416ba9, label %block_.L_416be7

block_416ba9:                                     ; preds = %block_416b84
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i844, align 8
  %5040 = load i64, i64* %RBP.i, align 8
  %5041 = add i64 %5040, -36
  %5042 = add i64 %5039, 13
  store i64 %5042, i64* %3, align 8
  %5043 = inttoptr i64 %5041 to i32*
  %5044 = load i32, i32* %5043, align 4
  %5045 = zext i32 %5044 to i64
  store i64 %5045, i64* %RCX.i834, align 8
  %5046 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5047 = sext i32 %5046 to i64
  %5048 = mul nsw i64 %5047, 24
  store i64 %5048, i64* %RDX.i470, align 8
  %5049 = lshr i64 %5048, 63
  %5050 = add i64 %5048, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  store i64 %5050, i64* %RAX.i844, align 8
  %5051 = icmp ult i64 %5050, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %5052 = icmp ult i64 %5050, %5048
  %5053 = or i1 %5051, %5052
  %5054 = zext i1 %5053 to i8
  store i8 %5054, i8* %12, align 1
  %5055 = trunc i64 %5050 to i32
  %5056 = and i32 %5055, 248
  %5057 = tail call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  store i8 %5060, i8* %13, align 1
  %5061 = xor i64 %5048, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %5062 = xor i64 %5061, %5050
  %5063 = lshr i64 %5062, 4
  %5064 = trunc i64 %5063 to i8
  %5065 = and i8 %5064, 1
  store i8 %5065, i8* %14, align 1
  %5066 = icmp eq i64 %5050, 0
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %15, align 1
  %5068 = lshr i64 %5050, 63
  %5069 = trunc i64 %5068 to i8
  store i8 %5069, i8* %16, align 1
  %5070 = xor i64 %5068, lshr (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 63)
  %5071 = xor i64 %5068, %5049
  %5072 = add nuw nsw i64 %5070, %5071
  %5073 = icmp eq i64 %5072, 2
  %5074 = zext i1 %5073 to i8
  store i8 %5074, i8* %17, align 1
  %5075 = add i64 %5048, add (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 12)
  %5076 = add i64 %5039, 31
  store i64 %5076, i64* %3, align 8
  %5077 = inttoptr i64 %5075 to i32*
  %5078 = load i32, i32* %5077, align 4
  %5079 = sub i32 %5044, %5078
  %5080 = icmp ult i32 %5044, %5078
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %12, align 1
  %5082 = and i32 %5079, 255
  %5083 = tail call i32 @llvm.ctpop.i32(i32 %5082)
  %5084 = trunc i32 %5083 to i8
  %5085 = and i8 %5084, 1
  %5086 = xor i8 %5085, 1
  store i8 %5086, i8* %13, align 1
  %5087 = xor i32 %5078, %5044
  %5088 = xor i32 %5087, %5079
  %5089 = lshr i32 %5088, 4
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  store i8 %5091, i8* %14, align 1
  %5092 = icmp eq i32 %5079, 0
  %5093 = zext i1 %5092 to i8
  store i8 %5093, i8* %15, align 1
  %5094 = lshr i32 %5079, 31
  %5095 = trunc i32 %5094 to i8
  store i8 %5095, i8* %16, align 1
  %5096 = lshr i32 %5044, 31
  %5097 = lshr i32 %5078, 31
  %5098 = xor i32 %5097, %5096
  %5099 = xor i32 %5094, %5096
  %5100 = add nuw nsw i32 %5099, %5098
  %5101 = icmp eq i32 %5100, 2
  %5102 = zext i1 %5101 to i8
  store i8 %5102, i8* %17, align 1
  %.v139 = select i1 %5092, i64 37, i64 62
  %5103 = add i64 %5039, %.v139
  store i64 %5103, i64* %3, align 8
  br i1 %5092, label %block_416bce, label %block_.L_416be7

block_416bce:                                     ; preds = %block_416ba9
  %5104 = load i64, i64* %RBP.i, align 8
  %5105 = add i64 %5104, -16
  %5106 = add i64 %5103, 4
  store i64 %5106, i64* %3, align 8
  %5107 = inttoptr i64 %5105 to i64*
  %5108 = load i64, i64* %5107, align 8
  store i64 %5108, i64* %RAX.i844, align 8
  %5109 = add i64 %5104, -44
  %5110 = add i64 %5103, 8
  store i64 %5110, i64* %3, align 8
  %5111 = inttoptr i64 %5109 to i32*
  %5112 = load i32, i32* %5111, align 4
  %5113 = sext i32 %5112 to i64
  store i64 %5113, i64* %RCX.i834, align 8
  %5114 = shl nsw i64 %5113, 2
  %5115 = add i64 %5114, %5108
  %5116 = add i64 %5103, 11
  store i64 %5116, i64* %3, align 8
  %5117 = inttoptr i64 %5115 to i32*
  %5118 = load i32, i32* %5117, align 4
  %5119 = add i32 %5118, 25000000
  %5120 = zext i32 %5119 to i64
  store i64 %5120, i64* %RDX.i470, align 8
  %5121 = icmp ugt i32 %5118, -25000001
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %12, align 1
  %5123 = and i32 %5119, 255
  %5124 = tail call i32 @llvm.ctpop.i32(i32 %5123)
  %5125 = trunc i32 %5124 to i8
  %5126 = and i8 %5125, 1
  %5127 = xor i8 %5126, 1
  store i8 %5127, i8* %13, align 1
  %5128 = xor i32 %5119, %5118
  %5129 = lshr i32 %5128, 4
  %5130 = trunc i32 %5129 to i8
  %5131 = and i8 %5130, 1
  store i8 %5131, i8* %14, align 1
  %5132 = icmp eq i32 %5119, 0
  %5133 = zext i1 %5132 to i8
  store i8 %5133, i8* %15, align 1
  %5134 = lshr i32 %5119, 31
  %5135 = trunc i32 %5134 to i8
  store i8 %5135, i8* %16, align 1
  %5136 = lshr i32 %5118, 31
  %5137 = xor i32 %5134, %5136
  %5138 = add nuw nsw i32 %5137, %5134
  %5139 = icmp eq i32 %5138, 2
  %5140 = zext i1 %5139 to i8
  store i8 %5140, i8* %17, align 1
  %5141 = add i64 %5103, 20
  store i64 %5141, i64* %3, align 8
  store i32 %5119, i32* %5117, align 4
  %5142 = load i64, i64* %3, align 8
  %5143 = add i64 %5142, 280
  br label %block_.L_416cfa

block_.L_416be7:                                  ; preds = %block_416ba9, %block_416b84, %block_.L_416b33
  %5144 = phi i64 [ %5103, %block_416ba9 ], [ %5039, %block_416b84 ], [ %4975, %block_.L_416b33 ]
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i844, align 8
  %5145 = load i64, i64* %RBP.i, align 8
  %5146 = add i64 %5145, -48
  %5147 = add i64 %5144, 13
  store i64 %5147, i64* %3, align 8
  %5148 = inttoptr i64 %5146 to i32*
  %5149 = load i32, i32* %5148, align 4
  %5150 = zext i32 %5149 to i64
  store i64 %5150, i64* %RCX.i834, align 8
  %5151 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5152 = sext i32 %5151 to i64
  %5153 = mul nsw i64 %5152, 24
  store i64 %5153, i64* %RDX.i470, align 8
  %5154 = lshr i64 %5153, 63
  %5155 = add i64 %5153, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %5155, i64* %RAX.i844, align 8
  %5156 = icmp ult i64 %5155, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5157 = icmp ult i64 %5155, %5153
  %5158 = or i1 %5156, %5157
  %5159 = zext i1 %5158 to i8
  store i8 %5159, i8* %12, align 1
  %5160 = trunc i64 %5155 to i32
  %5161 = and i32 %5160, 248
  %5162 = tail call i32 @llvm.ctpop.i32(i32 %5161)
  %5163 = trunc i32 %5162 to i8
  %5164 = and i8 %5163, 1
  %5165 = xor i8 %5164, 1
  store i8 %5165, i8* %13, align 1
  %5166 = xor i64 %5153, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5167 = xor i64 %5166, %5155
  %5168 = lshr i64 %5167, 4
  %5169 = trunc i64 %5168 to i8
  %5170 = and i8 %5169, 1
  store i8 %5170, i8* %14, align 1
  %5171 = icmp eq i64 %5155, 0
  %5172 = zext i1 %5171 to i8
  store i8 %5172, i8* %15, align 1
  %5173 = lshr i64 %5155, 63
  %5174 = trunc i64 %5173 to i8
  store i8 %5174, i8* %16, align 1
  %5175 = xor i64 %5173, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %5176 = xor i64 %5173, %5154
  %5177 = add nuw nsw i64 %5175, %5176
  %5178 = icmp eq i64 %5177, 2
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %17, align 1
  %5180 = inttoptr i64 %5155 to i32*
  %5181 = add i64 %5144, 30
  store i64 %5181, i64* %3, align 8
  %5182 = load i32, i32* %5180, align 8
  %5183 = sub i32 %5149, %5182
  %5184 = icmp ult i32 %5149, %5182
  %5185 = zext i1 %5184 to i8
  store i8 %5185, i8* %12, align 1
  %5186 = and i32 %5183, 255
  %5187 = tail call i32 @llvm.ctpop.i32(i32 %5186)
  %5188 = trunc i32 %5187 to i8
  %5189 = and i8 %5188, 1
  %5190 = xor i8 %5189, 1
  store i8 %5190, i8* %13, align 1
  %5191 = xor i32 %5182, %5149
  %5192 = xor i32 %5191, %5183
  %5193 = lshr i32 %5192, 4
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  store i8 %5195, i8* %14, align 1
  %5196 = icmp eq i32 %5183, 0
  %5197 = zext i1 %5196 to i8
  store i8 %5197, i8* %15, align 1
  %5198 = lshr i32 %5183, 31
  %5199 = trunc i32 %5198 to i8
  store i8 %5199, i8* %16, align 1
  %5200 = lshr i32 %5149, 31
  %5201 = lshr i32 %5182, 31
  %5202 = xor i32 %5201, %5200
  %5203 = xor i32 %5198, %5200
  %5204 = add nuw nsw i32 %5203, %5202
  %5205 = icmp eq i32 %5204, 2
  %5206 = zext i1 %5205 to i8
  store i8 %5206, i8* %17, align 1
  %.v132 = select i1 %5196, i64 36, i64 135
  %5207 = add i64 %5144, %.v132
  store i64 %5207, i64* %3, align 8
  br i1 %5196, label %block_416c0b, label %block_.L_416c6e

block_416c0b:                                     ; preds = %block_.L_416be7
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i844, align 8
  %5208 = load i64, i64* %RBP.i, align 8
  %5209 = add i64 %5208, -52
  %5210 = add i64 %5207, 13
  store i64 %5210, i64* %3, align 8
  %5211 = inttoptr i64 %5209 to i32*
  %5212 = load i32, i32* %5211, align 4
  %5213 = zext i32 %5212 to i64
  store i64 %5213, i64* %RCX.i834, align 8
  %5214 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5215 = sext i32 %5214 to i64
  %5216 = mul nsw i64 %5215, 24
  store i64 %5216, i64* %RDX.i470, align 8
  %5217 = lshr i64 %5216, 63
  %5218 = add i64 %5216, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %5218, i64* %RAX.i844, align 8
  %5219 = icmp ult i64 %5218, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5220 = icmp ult i64 %5218, %5216
  %5221 = or i1 %5219, %5220
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %12, align 1
  %5223 = trunc i64 %5218 to i32
  %5224 = and i32 %5223, 248
  %5225 = tail call i32 @llvm.ctpop.i32(i32 %5224)
  %5226 = trunc i32 %5225 to i8
  %5227 = and i8 %5226, 1
  %5228 = xor i8 %5227, 1
  store i8 %5228, i8* %13, align 1
  %5229 = xor i64 %5216, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5230 = xor i64 %5229, %5218
  %5231 = lshr i64 %5230, 4
  %5232 = trunc i64 %5231 to i8
  %5233 = and i8 %5232, 1
  store i8 %5233, i8* %14, align 1
  %5234 = icmp eq i64 %5218, 0
  %5235 = zext i1 %5234 to i8
  store i8 %5235, i8* %15, align 1
  %5236 = lshr i64 %5218, 63
  %5237 = trunc i64 %5236 to i8
  store i8 %5237, i8* %16, align 1
  %5238 = xor i64 %5236, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %5239 = xor i64 %5236, %5217
  %5240 = add nuw nsw i64 %5238, %5239
  %5241 = icmp eq i64 %5240, 2
  %5242 = zext i1 %5241 to i8
  store i8 %5242, i8* %17, align 1
  %5243 = add i64 %5216, add (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 4)
  %5244 = add i64 %5207, 31
  store i64 %5244, i64* %3, align 8
  %5245 = inttoptr i64 %5243 to i32*
  %5246 = load i32, i32* %5245, align 4
  %5247 = sub i32 %5212, %5246
  %5248 = icmp ult i32 %5212, %5246
  %5249 = zext i1 %5248 to i8
  store i8 %5249, i8* %12, align 1
  %5250 = and i32 %5247, 255
  %5251 = tail call i32 @llvm.ctpop.i32(i32 %5250)
  %5252 = trunc i32 %5251 to i8
  %5253 = and i8 %5252, 1
  %5254 = xor i8 %5253, 1
  store i8 %5254, i8* %13, align 1
  %5255 = xor i32 %5246, %5212
  %5256 = xor i32 %5255, %5247
  %5257 = lshr i32 %5256, 4
  %5258 = trunc i32 %5257 to i8
  %5259 = and i8 %5258, 1
  store i8 %5259, i8* %14, align 1
  %5260 = icmp eq i32 %5247, 0
  %5261 = zext i1 %5260 to i8
  store i8 %5261, i8* %15, align 1
  %5262 = lshr i32 %5247, 31
  %5263 = trunc i32 %5262 to i8
  store i8 %5263, i8* %16, align 1
  %5264 = lshr i32 %5212, 31
  %5265 = lshr i32 %5246, 31
  %5266 = xor i32 %5265, %5264
  %5267 = xor i32 %5262, %5264
  %5268 = add nuw nsw i32 %5267, %5266
  %5269 = icmp eq i32 %5268, 2
  %5270 = zext i1 %5269 to i8
  store i8 %5270, i8* %17, align 1
  %.v136 = select i1 %5260, i64 37, i64 99
  %5271 = add i64 %5207, %.v136
  store i64 %5271, i64* %3, align 8
  br i1 %5260, label %block_416c30, label %block_.L_416c6e

block_416c30:                                     ; preds = %block_416c0b
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i844, align 8
  %5272 = load i64, i64* %RBP.i, align 8
  %5273 = add i64 %5272, -36
  %5274 = add i64 %5271, 13
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5273 to i32*
  %5276 = load i32, i32* %5275, align 4
  %5277 = zext i32 %5276 to i64
  store i64 %5277, i64* %RCX.i834, align 8
  %5278 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5279 = sext i32 %5278 to i64
  %5280 = mul nsw i64 %5279, 24
  store i64 %5280, i64* %RDX.i470, align 8
  %5281 = lshr i64 %5280, 63
  %5282 = add i64 %5280, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %5282, i64* %RAX.i844, align 8
  %5283 = icmp ult i64 %5282, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5284 = icmp ult i64 %5282, %5280
  %5285 = or i1 %5283, %5284
  %5286 = zext i1 %5285 to i8
  store i8 %5286, i8* %12, align 1
  %5287 = trunc i64 %5282 to i32
  %5288 = and i32 %5287, 248
  %5289 = tail call i32 @llvm.ctpop.i32(i32 %5288)
  %5290 = trunc i32 %5289 to i8
  %5291 = and i8 %5290, 1
  %5292 = xor i8 %5291, 1
  store i8 %5292, i8* %13, align 1
  %5293 = xor i64 %5280, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %5294 = xor i64 %5293, %5282
  %5295 = lshr i64 %5294, 4
  %5296 = trunc i64 %5295 to i8
  %5297 = and i8 %5296, 1
  store i8 %5297, i8* %14, align 1
  %5298 = icmp eq i64 %5282, 0
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %15, align 1
  %5300 = lshr i64 %5282, 63
  %5301 = trunc i64 %5300 to i8
  store i8 %5301, i8* %16, align 1
  %5302 = xor i64 %5300, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %5303 = xor i64 %5300, %5281
  %5304 = add nuw nsw i64 %5302, %5303
  %5305 = icmp eq i64 %5304, 2
  %5306 = zext i1 %5305 to i8
  store i8 %5306, i8* %17, align 1
  %5307 = add i64 %5280, add (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 12)
  %5308 = add i64 %5271, 31
  store i64 %5308, i64* %3, align 8
  %5309 = inttoptr i64 %5307 to i32*
  %5310 = load i32, i32* %5309, align 4
  %5311 = sub i32 %5276, %5310
  %5312 = icmp ult i32 %5276, %5310
  %5313 = zext i1 %5312 to i8
  store i8 %5313, i8* %12, align 1
  %5314 = and i32 %5311, 255
  %5315 = tail call i32 @llvm.ctpop.i32(i32 %5314)
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  %5318 = xor i8 %5317, 1
  store i8 %5318, i8* %13, align 1
  %5319 = xor i32 %5310, %5276
  %5320 = xor i32 %5319, %5311
  %5321 = lshr i32 %5320, 4
  %5322 = trunc i32 %5321 to i8
  %5323 = and i8 %5322, 1
  store i8 %5323, i8* %14, align 1
  %5324 = icmp eq i32 %5311, 0
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %15, align 1
  %5326 = lshr i32 %5311, 31
  %5327 = trunc i32 %5326 to i8
  store i8 %5327, i8* %16, align 1
  %5328 = lshr i32 %5276, 31
  %5329 = lshr i32 %5310, 31
  %5330 = xor i32 %5329, %5328
  %5331 = xor i32 %5326, %5328
  %5332 = add nuw nsw i32 %5331, %5330
  %5333 = icmp eq i32 %5332, 2
  %5334 = zext i1 %5333 to i8
  store i8 %5334, i8* %17, align 1
  %.v137 = select i1 %5324, i64 37, i64 62
  %5335 = add i64 %5271, %.v137
  store i64 %5335, i64* %3, align 8
  br i1 %5324, label %block_416c55, label %block_.L_416c6e

block_416c55:                                     ; preds = %block_416c30
  %5336 = load i64, i64* %RBP.i, align 8
  %5337 = add i64 %5336, -16
  %5338 = add i64 %5335, 4
  store i64 %5338, i64* %3, align 8
  %5339 = inttoptr i64 %5337 to i64*
  %5340 = load i64, i64* %5339, align 8
  store i64 %5340, i64* %RAX.i844, align 8
  %5341 = add i64 %5336, -44
  %5342 = add i64 %5335, 8
  store i64 %5342, i64* %3, align 8
  %5343 = inttoptr i64 %5341 to i32*
  %5344 = load i32, i32* %5343, align 4
  %5345 = sext i32 %5344 to i64
  store i64 %5345, i64* %RCX.i834, align 8
  %5346 = shl nsw i64 %5345, 2
  %5347 = add i64 %5346, %5340
  %5348 = add i64 %5335, 11
  store i64 %5348, i64* %3, align 8
  %5349 = inttoptr i64 %5347 to i32*
  %5350 = load i32, i32* %5349, align 4
  %5351 = add i32 %5350, 20000000
  %5352 = zext i32 %5351 to i64
  store i64 %5352, i64* %RDX.i470, align 8
  %5353 = icmp ugt i32 %5350, -20000001
  %5354 = zext i1 %5353 to i8
  store i8 %5354, i8* %12, align 1
  %5355 = and i32 %5351, 255
  %5356 = tail call i32 @llvm.ctpop.i32(i32 %5355)
  %5357 = trunc i32 %5356 to i8
  %5358 = and i8 %5357, 1
  %5359 = xor i8 %5358, 1
  store i8 %5359, i8* %13, align 1
  %5360 = xor i32 %5351, %5350
  %5361 = lshr i32 %5360, 4
  %5362 = trunc i32 %5361 to i8
  %5363 = and i8 %5362, 1
  store i8 %5363, i8* %14, align 1
  %5364 = icmp eq i32 %5351, 0
  %5365 = zext i1 %5364 to i8
  store i8 %5365, i8* %15, align 1
  %5366 = lshr i32 %5351, 31
  %5367 = trunc i32 %5366 to i8
  store i8 %5367, i8* %16, align 1
  %5368 = lshr i32 %5350, 31
  %5369 = xor i32 %5366, %5368
  %5370 = add nuw nsw i32 %5369, %5366
  %5371 = icmp eq i32 %5370, 2
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %17, align 1
  %5373 = add i64 %5335, 20
  store i64 %5373, i64* %3, align 8
  store i32 %5351, i32* %5349, align 4
  %5374 = load i64, i64* %3, align 8
  %5375 = add i64 %5374, 140
  br label %block_.L_416cf5

block_.L_416c6e:                                  ; preds = %block_416c30, %block_416c0b, %block_.L_416be7
  %5376 = phi i64 [ %5335, %block_416c30 ], [ %5271, %block_416c0b ], [ %5207, %block_.L_416be7 ]
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i844, align 8
  %5377 = load i64, i64* %RBP.i, align 8
  %5378 = add i64 %5377, -48
  %5379 = add i64 %5376, 13
  store i64 %5379, i64* %3, align 8
  %5380 = inttoptr i64 %5378 to i32*
  %5381 = load i32, i32* %5380, align 4
  %5382 = zext i32 %5381 to i64
  store i64 %5382, i64* %RCX.i834, align 8
  %5383 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5384 = sext i32 %5383 to i64
  %5385 = mul nsw i64 %5384, 24
  store i64 %5385, i64* %RDX.i470, align 8
  %5386 = lshr i64 %5385, 63
  %5387 = add i64 %5385, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %5387, i64* %RAX.i844, align 8
  %5388 = icmp ult i64 %5387, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5389 = icmp ult i64 %5387, %5385
  %5390 = or i1 %5388, %5389
  %5391 = zext i1 %5390 to i8
  store i8 %5391, i8* %12, align 1
  %5392 = trunc i64 %5387 to i32
  %5393 = and i32 %5392, 248
  %5394 = tail call i32 @llvm.ctpop.i32(i32 %5393)
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = xor i8 %5396, 1
  store i8 %5397, i8* %13, align 1
  %5398 = xor i64 %5385, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5399 = xor i64 %5398, %5387
  %5400 = lshr i64 %5399, 4
  %5401 = trunc i64 %5400 to i8
  %5402 = and i8 %5401, 1
  store i8 %5402, i8* %14, align 1
  %5403 = icmp eq i64 %5387, 0
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %15, align 1
  %5405 = lshr i64 %5387, 63
  %5406 = trunc i64 %5405 to i8
  store i8 %5406, i8* %16, align 1
  %5407 = xor i64 %5405, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %5408 = xor i64 %5405, %5386
  %5409 = add nuw nsw i64 %5407, %5408
  %5410 = icmp eq i64 %5409, 2
  %5411 = zext i1 %5410 to i8
  store i8 %5411, i8* %17, align 1
  %5412 = inttoptr i64 %5387 to i32*
  %5413 = add i64 %5376, 30
  store i64 %5413, i64* %3, align 8
  %5414 = load i32, i32* %5412, align 8
  %5415 = sub i32 %5381, %5414
  %5416 = icmp ult i32 %5381, %5414
  %5417 = zext i1 %5416 to i8
  store i8 %5417, i8* %12, align 1
  %5418 = and i32 %5415, 255
  %5419 = tail call i32 @llvm.ctpop.i32(i32 %5418)
  %5420 = trunc i32 %5419 to i8
  %5421 = and i8 %5420, 1
  %5422 = xor i8 %5421, 1
  store i8 %5422, i8* %13, align 1
  %5423 = xor i32 %5414, %5381
  %5424 = xor i32 %5423, %5415
  %5425 = lshr i32 %5424, 4
  %5426 = trunc i32 %5425 to i8
  %5427 = and i8 %5426, 1
  store i8 %5427, i8* %14, align 1
  %5428 = icmp eq i32 %5415, 0
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %15, align 1
  %5430 = lshr i32 %5415, 31
  %5431 = trunc i32 %5430 to i8
  store i8 %5431, i8* %16, align 1
  %5432 = lshr i32 %5381, 31
  %5433 = lshr i32 %5414, 31
  %5434 = xor i32 %5433, %5432
  %5435 = xor i32 %5430, %5432
  %5436 = add nuw nsw i32 %5435, %5434
  %5437 = icmp eq i32 %5436, 2
  %5438 = zext i1 %5437 to i8
  store i8 %5438, i8* %17, align 1
  %.v133 = select i1 %5428, i64 36, i64 130
  %5439 = add i64 %5376, %.v133
  store i64 %5439, i64* %3, align 8
  br i1 %5428, label %block_416c92, label %block_.L_416cf0

block_416c92:                                     ; preds = %block_.L_416c6e
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i844, align 8
  %5440 = load i64, i64* %RBP.i, align 8
  %5441 = add i64 %5440, -52
  %5442 = add i64 %5439, 13
  store i64 %5442, i64* %3, align 8
  %5443 = inttoptr i64 %5441 to i32*
  %5444 = load i32, i32* %5443, align 4
  %5445 = zext i32 %5444 to i64
  store i64 %5445, i64* %RCX.i834, align 8
  %5446 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5447 = sext i32 %5446 to i64
  %5448 = mul nsw i64 %5447, 24
  store i64 %5448, i64* %RDX.i470, align 8
  %5449 = lshr i64 %5448, 63
  %5450 = add i64 %5448, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %5450, i64* %RAX.i844, align 8
  %5451 = icmp ult i64 %5450, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5452 = icmp ult i64 %5450, %5448
  %5453 = or i1 %5451, %5452
  %5454 = zext i1 %5453 to i8
  store i8 %5454, i8* %12, align 1
  %5455 = trunc i64 %5450 to i32
  %5456 = and i32 %5455, 248
  %5457 = tail call i32 @llvm.ctpop.i32(i32 %5456)
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  %5460 = xor i8 %5459, 1
  store i8 %5460, i8* %13, align 1
  %5461 = xor i64 %5448, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5462 = xor i64 %5461, %5450
  %5463 = lshr i64 %5462, 4
  %5464 = trunc i64 %5463 to i8
  %5465 = and i8 %5464, 1
  store i8 %5465, i8* %14, align 1
  %5466 = icmp eq i64 %5450, 0
  %5467 = zext i1 %5466 to i8
  store i8 %5467, i8* %15, align 1
  %5468 = lshr i64 %5450, 63
  %5469 = trunc i64 %5468 to i8
  store i8 %5469, i8* %16, align 1
  %5470 = xor i64 %5468, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %5471 = xor i64 %5468, %5449
  %5472 = add nuw nsw i64 %5470, %5471
  %5473 = icmp eq i64 %5472, 2
  %5474 = zext i1 %5473 to i8
  store i8 %5474, i8* %17, align 1
  %5475 = add i64 %5448, add (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 4)
  %5476 = add i64 %5439, 31
  store i64 %5476, i64* %3, align 8
  %5477 = inttoptr i64 %5475 to i32*
  %5478 = load i32, i32* %5477, align 4
  %5479 = sub i32 %5444, %5478
  %5480 = icmp ult i32 %5444, %5478
  %5481 = zext i1 %5480 to i8
  store i8 %5481, i8* %12, align 1
  %5482 = and i32 %5479, 255
  %5483 = tail call i32 @llvm.ctpop.i32(i32 %5482)
  %5484 = trunc i32 %5483 to i8
  %5485 = and i8 %5484, 1
  %5486 = xor i8 %5485, 1
  store i8 %5486, i8* %13, align 1
  %5487 = xor i32 %5478, %5444
  %5488 = xor i32 %5487, %5479
  %5489 = lshr i32 %5488, 4
  %5490 = trunc i32 %5489 to i8
  %5491 = and i8 %5490, 1
  store i8 %5491, i8* %14, align 1
  %5492 = icmp eq i32 %5479, 0
  %5493 = zext i1 %5492 to i8
  store i8 %5493, i8* %15, align 1
  %5494 = lshr i32 %5479, 31
  %5495 = trunc i32 %5494 to i8
  store i8 %5495, i8* %16, align 1
  %5496 = lshr i32 %5444, 31
  %5497 = lshr i32 %5478, 31
  %5498 = xor i32 %5497, %5496
  %5499 = xor i32 %5494, %5496
  %5500 = add nuw nsw i32 %5499, %5498
  %5501 = icmp eq i32 %5500, 2
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %17, align 1
  %.v134 = select i1 %5492, i64 37, i64 94
  %5503 = add i64 %5439, %.v134
  store i64 %5503, i64* %3, align 8
  br i1 %5492, label %block_416cb7, label %block_.L_416cf0

block_416cb7:                                     ; preds = %block_416c92
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i844, align 8
  %5504 = load i64, i64* %RBP.i, align 8
  %5505 = add i64 %5504, -36
  %5506 = add i64 %5503, 13
  store i64 %5506, i64* %3, align 8
  %5507 = inttoptr i64 %5505 to i32*
  %5508 = load i32, i32* %5507, align 4
  %5509 = zext i32 %5508 to i64
  store i64 %5509, i64* %RCX.i834, align 8
  %5510 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5511 = sext i32 %5510 to i64
  %5512 = mul nsw i64 %5511, 24
  store i64 %5512, i64* %RDX.i470, align 8
  %5513 = lshr i64 %5512, 63
  %5514 = add i64 %5512, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  store i64 %5514, i64* %RAX.i844, align 8
  %5515 = icmp ult i64 %5514, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5516 = icmp ult i64 %5514, %5512
  %5517 = or i1 %5515, %5516
  %5518 = zext i1 %5517 to i8
  store i8 %5518, i8* %12, align 1
  %5519 = trunc i64 %5514 to i32
  %5520 = and i32 %5519, 248
  %5521 = tail call i32 @llvm.ctpop.i32(i32 %5520)
  %5522 = trunc i32 %5521 to i8
  %5523 = and i8 %5522, 1
  %5524 = xor i8 %5523, 1
  store i8 %5524, i8* %13, align 1
  %5525 = xor i64 %5512, ptrtoint (%G__0x882600_type* @G__0x882600 to i64)
  %5526 = xor i64 %5525, %5514
  %5527 = lshr i64 %5526, 4
  %5528 = trunc i64 %5527 to i8
  %5529 = and i8 %5528, 1
  store i8 %5529, i8* %14, align 1
  %5530 = icmp eq i64 %5514, 0
  %5531 = zext i1 %5530 to i8
  store i8 %5531, i8* %15, align 1
  %5532 = lshr i64 %5514, 63
  %5533 = trunc i64 %5532 to i8
  store i8 %5533, i8* %16, align 1
  %5534 = xor i64 %5532, lshr (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 63)
  %5535 = xor i64 %5532, %5513
  %5536 = add nuw nsw i64 %5534, %5535
  %5537 = icmp eq i64 %5536, 2
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %17, align 1
  %5539 = add i64 %5512, add (i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64 12)
  %5540 = add i64 %5503, 31
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5539 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = sub i32 %5508, %5542
  %5544 = icmp ult i32 %5508, %5542
  %5545 = zext i1 %5544 to i8
  store i8 %5545, i8* %12, align 1
  %5546 = and i32 %5543, 255
  %5547 = tail call i32 @llvm.ctpop.i32(i32 %5546)
  %5548 = trunc i32 %5547 to i8
  %5549 = and i8 %5548, 1
  %5550 = xor i8 %5549, 1
  store i8 %5550, i8* %13, align 1
  %5551 = xor i32 %5542, %5508
  %5552 = xor i32 %5551, %5543
  %5553 = lshr i32 %5552, 4
  %5554 = trunc i32 %5553 to i8
  %5555 = and i8 %5554, 1
  store i8 %5555, i8* %14, align 1
  %5556 = icmp eq i32 %5543, 0
  %5557 = zext i1 %5556 to i8
  store i8 %5557, i8* %15, align 1
  %5558 = lshr i32 %5543, 31
  %5559 = trunc i32 %5558 to i8
  store i8 %5559, i8* %16, align 1
  %5560 = lshr i32 %5508, 31
  %5561 = lshr i32 %5542, 31
  %5562 = xor i32 %5561, %5560
  %5563 = xor i32 %5558, %5560
  %5564 = add nuw nsw i32 %5563, %5562
  %5565 = icmp eq i32 %5564, 2
  %5566 = zext i1 %5565 to i8
  store i8 %5566, i8* %17, align 1
  %.v135 = select i1 %5556, i64 37, i64 57
  %5567 = add i64 %5503, %.v135
  store i64 %5567, i64* %3, align 8
  br i1 %5556, label %block_416cdc, label %block_.L_416cf0

block_416cdc:                                     ; preds = %block_416cb7
  %5568 = load i64, i64* %RBP.i, align 8
  %5569 = add i64 %5568, -16
  %5570 = add i64 %5567, 4
  store i64 %5570, i64* %3, align 8
  %5571 = inttoptr i64 %5569 to i64*
  %5572 = load i64, i64* %5571, align 8
  store i64 %5572, i64* %RAX.i844, align 8
  %5573 = add i64 %5568, -44
  %5574 = add i64 %5567, 8
  store i64 %5574, i64* %3, align 8
  %5575 = inttoptr i64 %5573 to i32*
  %5576 = load i32, i32* %5575, align 4
  %5577 = sext i32 %5576 to i64
  store i64 %5577, i64* %RCX.i834, align 8
  %5578 = shl nsw i64 %5577, 2
  %5579 = add i64 %5578, %5572
  %5580 = add i64 %5567, 11
  store i64 %5580, i64* %3, align 8
  %5581 = inttoptr i64 %5579 to i32*
  %5582 = load i32, i32* %5581, align 4
  %5583 = add i32 %5582, 15000000
  %5584 = zext i32 %5583 to i64
  store i64 %5584, i64* %RDX.i470, align 8
  %5585 = icmp ugt i32 %5582, -15000001
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %12, align 1
  %5587 = and i32 %5583, 255
  %5588 = tail call i32 @llvm.ctpop.i32(i32 %5587)
  %5589 = trunc i32 %5588 to i8
  %5590 = and i8 %5589, 1
  %5591 = xor i8 %5590, 1
  store i8 %5591, i8* %13, align 1
  %5592 = xor i32 %5583, %5582
  %5593 = lshr i32 %5592, 4
  %5594 = trunc i32 %5593 to i8
  %5595 = and i8 %5594, 1
  store i8 %5595, i8* %14, align 1
  %5596 = icmp eq i32 %5583, 0
  %5597 = zext i1 %5596 to i8
  store i8 %5597, i8* %15, align 1
  %5598 = lshr i32 %5583, 31
  %5599 = trunc i32 %5598 to i8
  store i8 %5599, i8* %16, align 1
  %5600 = lshr i32 %5582, 31
  %5601 = xor i32 %5598, %5600
  %5602 = add nuw nsw i32 %5601, %5598
  %5603 = icmp eq i32 %5602, 2
  %5604 = zext i1 %5603 to i8
  store i8 %5604, i8* %17, align 1
  %5605 = add i64 %5567, 20
  store i64 %5605, i64* %3, align 8
  store i32 %5583, i32* %5581, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_416cf0

block_.L_416cf0:                                  ; preds = %block_416cb7, %block_416c92, %block_.L_416c6e, %block_416cdc
  %5606 = phi i64 [ %.pre90, %block_416cdc ], [ %5567, %block_416cb7 ], [ %5503, %block_416c92 ], [ %5439, %block_.L_416c6e ]
  %5607 = add i64 %5606, 5
  store i64 %5607, i64* %3, align 8
  br label %block_.L_416cf5

block_.L_416cf5:                                  ; preds = %block_.L_416cf0, %block_416c55
  %storemerge64 = phi i64 [ %5375, %block_416c55 ], [ %5607, %block_.L_416cf0 ]
  %5608 = add i64 %storemerge64, 5
  store i64 %5608, i64* %3, align 8
  br label %block_.L_416cfa

block_.L_416cfa:                                  ; preds = %block_.L_416cf5, %block_416bce
  %storemerge63 = phi i64 [ %5143, %block_416bce ], [ %5608, %block_.L_416cf5 ]
  %5609 = load i64, i64* %RBP.i, align 8
  %5610 = add i64 %5609, -44
  %5611 = add i64 %storemerge63, 8
  store i64 %5611, i64* %3, align 8
  %5612 = inttoptr i64 %5610 to i32*
  %5613 = load i32, i32* %5612, align 4
  %5614 = add i32 %5613, 1
  %5615 = zext i32 %5614 to i64
  store i64 %5615, i64* %RAX.i844, align 8
  %5616 = icmp eq i32 %5613, -1
  %5617 = icmp eq i32 %5614, 0
  %5618 = or i1 %5616, %5617
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %12, align 1
  %5620 = and i32 %5614, 255
  %5621 = tail call i32 @llvm.ctpop.i32(i32 %5620)
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = xor i8 %5623, 1
  store i8 %5624, i8* %13, align 1
  %5625 = xor i32 %5614, %5613
  %5626 = lshr i32 %5625, 4
  %5627 = trunc i32 %5626 to i8
  %5628 = and i8 %5627, 1
  store i8 %5628, i8* %14, align 1
  %5629 = zext i1 %5617 to i8
  store i8 %5629, i8* %15, align 1
  %5630 = lshr i32 %5614, 31
  %5631 = trunc i32 %5630 to i8
  store i8 %5631, i8* %16, align 1
  %5632 = lshr i32 %5613, 31
  %5633 = xor i32 %5630, %5632
  %5634 = add nuw nsw i32 %5633, %5630
  %5635 = icmp eq i32 %5634, 2
  %5636 = zext i1 %5635 to i8
  store i8 %5636, i8* %17, align 1
  %5637 = add i64 %storemerge63, 14
  store i64 %5637, i64* %3, align 8
  store i32 %5614, i32* %5612, align 4
  %5638 = load i64, i64* %3, align 8
  %5639 = add i64 %5638, -1498
  store i64 %5639, i64* %3, align 8
  br label %block_.L_41672e

block_.L_416d0d:                                  ; preds = %block_.L_41672e
  %5640 = add i64 %3260, 5
  store i64 %5640, i64* %3, align 8
  br label %block_.L_416d12

block_.L_416d12:                                  ; preds = %block_.L_416d0d, %block_.L_416722
  %storemerge61 = phi i64 [ %3217, %block_.L_416722 ], [ %5640, %block_.L_416d0d ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.0, %block_.L_416722 ], [ %MEMORY.24, %block_.L_416d0d ]
  %5641 = load i64, i64* %6, align 8
  %5642 = add i64 %5641, 128
  store i64 %5642, i64* %6, align 8
  %5643 = icmp ugt i64 %5641, -129
  %5644 = zext i1 %5643 to i8
  store i8 %5644, i8* %12, align 1
  %5645 = trunc i64 %5642 to i32
  %5646 = and i32 %5645, 255
  %5647 = tail call i32 @llvm.ctpop.i32(i32 %5646)
  %5648 = trunc i32 %5647 to i8
  %5649 = and i8 %5648, 1
  %5650 = xor i8 %5649, 1
  store i8 %5650, i8* %13, align 1
  %5651 = xor i64 %5642, %5641
  %5652 = lshr i64 %5651, 4
  %5653 = trunc i64 %5652 to i8
  %5654 = and i8 %5653, 1
  store i8 %5654, i8* %14, align 1
  %5655 = icmp eq i64 %5642, 0
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %15, align 1
  %5657 = lshr i64 %5642, 63
  %5658 = trunc i64 %5657 to i8
  store i8 %5658, i8* %16, align 1
  %5659 = lshr i64 %5641, 63
  %5660 = xor i64 %5657, %5659
  %5661 = add nuw nsw i64 %5660, %5657
  %5662 = icmp eq i64 %5661, 2
  %5663 = zext i1 %5662 to i8
  store i8 %5663, i8* %17, align 1
  %5664 = add i64 %storemerge61, 8
  store i64 %5664, i64* %3, align 8
  %5665 = add i64 %5641, 136
  %5666 = inttoptr i64 %5642 to i64*
  %5667 = load i64, i64* %5666, align 8
  store i64 %5667, i64* %RBP.i, align 8
  store i64 %5665, i64* %6, align 8
  %5668 = add i64 %storemerge61, 9
  store i64 %5668, i64* %3, align 8
  %5669 = inttoptr i64 %5665 to i64*
  %5670 = load i64, i64* %5669, align 8
  store i64 %5670, i64* %3, align 8
  %5671 = add i64 %5641, 144
  store i64 %5671, i64* %6, align 8
  ret %struct.Memory* %MEMORY.41
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
define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x639110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_416727(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x639110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_416722(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_je_.L_4160a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6478512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xf___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -16
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6478512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDI, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jl_.L_41603e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 35
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 50000000
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -50000001
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41609e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_callq_.see(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffce__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 50
  %10 = icmp ult i32 %8, -50
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_416082(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jmpq_.L_416090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4160b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7200
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -7201
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41620d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movl__0x1__0x639110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 100000000, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jl_.L_4161d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_416203(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41670f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
define %struct.Memory* @routine_je_.L_4162fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xfffffffe__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 2
  %10 = icmp ult i32 %8, -2
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
define %struct.Memory* @routine_jne_.L_4162fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4162f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jl_.L_4162c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jmpq_.L_4162f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4162f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41670a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41649e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 7200
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_jne_.L_416499(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_416494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jl_.L_41645e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jmpq_.L_41648f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416499(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_4164ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_416686(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x86bda0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41656e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x17d7840___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 25000000
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -25000001
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
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416681(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x639220___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4165f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1312d00___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20000000
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -20000001
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
define %struct.Memory* @routine_jmpq_.L_41667c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x882600___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416677(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xe4e1c0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15000000
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -15000001
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
define %struct.Memory* @routine_jmpq_.L_416700(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x864500___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f5e100___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -100000000
  %8 = icmp ult i32 %4, 100000000
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
define %struct.Memory* @routine_jle_.L_4166d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3e8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x884320___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8930080
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4166fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_416714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415f3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416d12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_416d0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_416873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_416873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41686e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jl_.L_416838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_jmpq_.L_416869(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41686e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416a14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_416a0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_416a0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_jl_.L_4169d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jmpq_.L_416a05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416a0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416a0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416b1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_jl_.L_416ab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_jmpq_.L_416b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_416af9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416be7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416cfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416c6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416cf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416cf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41672e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
