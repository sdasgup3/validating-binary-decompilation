; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x456328_type = type <{ [8 x i8] }>
%G__0x456339_type = type <{ [8 x i8] }>
%G__0x456346_type = type <{ [8 x i8] }>
%G__0x45634d_type = type <{ [8 x i8] }>
%G__0x456355_type = type <{ [8 x i8] }>
%G__0x45635d_type = type <{ [8 x i8] }>
%G__0x456364_type = type <{ [8 x i8] }>
%G__0x45636b_type = type <{ [8 x i8] }>
%G__0x456372_type = type <{ [8 x i8] }>
%G__0x456379_type = type <{ [8 x i8] }>
%G__0x45749d_type = type <{ [8 x i8] }>
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
@G__0x456328 = global %G__0x456328_type zeroinitializer
@G__0x456339 = global %G__0x456339_type zeroinitializer
@G__0x456346 = global %G__0x456346_type zeroinitializer
@G__0x45634d = global %G__0x45634d_type zeroinitializer
@G__0x456355 = global %G__0x456355_type zeroinitializer
@G__0x45635d = global %G__0x45635d_type zeroinitializer
@G__0x456364 = global %G__0x456364_type zeroinitializer
@G__0x45636b = global %G__0x45636b_type zeroinitializer
@G__0x456372 = global %G__0x456372_type zeroinitializer
@G__0x456379 = global %G__0x456379_type zeroinitializer
@G__0x45749d = global %G__0x45749d_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_413d40.PrintIscore(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @DisplayPlan7Matrix(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %RAX.i119 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x456328_type* @G__0x456328 to i64), i64* %RAX.i119, align 8
  %RDI.i162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i162, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RCX.i306, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RAX.i119, align 8
  %64 = load i64, i64* %3, align 8
  store i64 %63, i64* %RDI.i162, align 8
  %AL.i438 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i438, align 1
  %65 = add i64 %64, -75057
  %66 = add i64 %64, 10
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  %70 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -36
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 1, i32* %75, align 4
  %EAX.i485 = bitcast %union.anon* %39 to i32*
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -44
  %78 = load i32, i32* %EAX.i485, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %RSI.i462 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4139d5

block_.L_4139d5:                                  ; preds = %block_4139e1, %entry
  %82 = phi i64 [ %.pre, %entry ], [ %184, %block_4139e1 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %entry ], [ %146, %block_4139e1 ]
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -36
  %85 = add i64 %82, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX.i119, align 8
  %89 = add i64 %83, -12
  %90 = add i64 %82, 6
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sub i32 %87, %92
  %94 = icmp ult i32 %87, %92
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %14, align 1
  %96 = and i32 %93, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %21, align 1
  %101 = xor i32 %92, %87
  %102 = xor i32 %101, %93
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1
  %106 = icmp eq i32 %93, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i32 %93, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %32, align 1
  %110 = lshr i32 %87, 31
  %111 = lshr i32 %92, 31
  %112 = xor i32 %111, %110
  %113 = xor i32 %108, %110
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1
  %117 = icmp ne i8 %109, 0
  %118 = xor i1 %117, %115
  %.demorgan = or i1 %106, %118
  %.v62 = select i1 %.demorgan, i64 12, i64 69
  %119 = add i64 %82, %.v62
  %120 = add i64 %119, 10
  store i64 %120, i64* %3, align 8
  br i1 %.demorgan, label %block_4139e1, label %block_.L_413a1a

block_4139e1:                                     ; preds = %block_.L_4139d5
  store i64 ptrtoint (%G__0x456339_type* @G__0x456339 to i64), i64* %RDI.i162, align 8
  %121 = add i64 %83, -8
  %122 = add i64 %119, 14
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX.i119, align 8
  %125 = add i64 %119, 18
  store i64 %125, i64* %3, align 8
  %126 = load i32, i32* %86, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX.i306, align 8
  %128 = add i64 %124, %127
  %129 = add i64 %119, 22
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i8*
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i64
  %133 = and i64 %132, 4294967295
  store i64 %133, i64* %RDX.i, align 8
  %134 = sext i8 %131 to i64
  store i64 %134, i64* %RAX.i119, align 8
  %135 = add nsw i64 %134, 6778848
  %136 = add i64 %119, 33
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i8*
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i64
  %140 = and i64 %139, 4294967295
  store i64 %140, i64* %RSI.i462, align 8
  store i8 0, i8* %AL.i438, align 1
  %141 = add i64 %119, -75089
  %142 = add i64 %119, 40
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %142, i64* %145, align 8
  store i64 %144, i64* %6, align 8
  store i64 %141, i64* %3, align 8
  %146 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -48
  %149 = load i32, i32* %EAX.i485, align 4
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 3
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %148 to i32*
  store i32 %149, i32* %152, align 4
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -36
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 3
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, 1
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX.i119, align 8
  %161 = icmp eq i32 %158, -1
  %162 = icmp eq i32 %159, 0
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %14, align 1
  %165 = and i32 %159, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %21, align 1
  %170 = xor i32 %159, %158
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %26, align 1
  %174 = zext i1 %162 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i32 %159, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %32, align 1
  %177 = lshr i32 %158, 31
  %178 = xor i32 %175, %177
  %179 = add nuw nsw i32 %178, %175
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %38, align 1
  %182 = add i64 %155, 9
  store i64 %182, i64* %3, align 8
  store i32 %159, i32* %157, align 4
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, -64
  store i64 %184, i64* %3, align 8
  br label %block_.L_4139d5

block_.L_413a1a:                                  ; preds = %block_.L_4139d5
  store i64 ptrtoint (%G__0x456346_type* @G__0x456346 to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %185 = add i64 %119, -75146
  %186 = add i64 %119, 17
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %190 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -36
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 7
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i32*
  store i32 0, i32* %195, align 4
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -52
  %198 = load i32, i32* %EAX.i485, align 4
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 3
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %197 to i32*
  store i32 %198, i32* %201, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_413a35

block_.L_413a35:                                  ; preds = %block_413a41, %block_.L_413a1a
  %202 = phi i64 [ %296, %block_413a41 ], [ %.pre32, %block_.L_413a1a ]
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -36
  %205 = add i64 %202, 3
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX.i119, align 8
  %209 = add i64 %203, -12
  %210 = add i64 %202, 6
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sub i32 %207, %212
  %214 = icmp ult i32 %207, %212
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %14, align 1
  %216 = and i32 %213, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216)
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %21, align 1
  %221 = xor i32 %212, %207
  %222 = xor i32 %221, %213
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %26, align 1
  %226 = icmp eq i32 %213, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %29, align 1
  %228 = lshr i32 %213, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %32, align 1
  %230 = lshr i32 %207, 31
  %231 = lshr i32 %212, 31
  %232 = xor i32 %231, %230
  %233 = xor i32 %228, %230
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %38, align 1
  %237 = icmp ne i8 %229, 0
  %238 = xor i1 %237, %235
  %.demorgan43 = or i1 %226, %238
  %.v54 = select i1 %.demorgan43, i64 12, i64 49
  %239 = add i64 %202, %.v54
  store i64 %239, i64* %3, align 8
  br i1 %.demorgan43, label %block_413a41, label %block_.L_413a66

block_413a41:                                     ; preds = %block_.L_413a35
  %240 = add i64 %203, -32
  %241 = add i64 %239, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i119, align 8
  %244 = add i64 %239, 7
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RAX.i119, align 8
  %247 = add i64 %239, 11
  store i64 %247, i64* %3, align 8
  %248 = load i32, i32* %206, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX.i306, align 8
  %250 = shl nsw i64 %249, 3
  %251 = add i64 %250, %246
  %252 = add i64 %239, 15
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RAX.i119, align 8
  %255 = add i64 %254, 16
  %256 = add i64 %239, 18
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RDI.i162, align 8
  %260 = add i64 %239, 767
  %261 = add i64 %239, 23
  %262 = load i64, i64* %6, align 8
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %6, align 8
  store i64 %260, i64* %3, align 8
  %call2_413a53 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %260, %struct.Memory* %190)
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -36
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 3
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, 1
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i119, align 8
  %273 = icmp eq i32 %270, -1
  %274 = icmp eq i32 %271, 0
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1
  %277 = and i32 %271, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %21, align 1
  %282 = xor i32 %271, %270
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %26, align 1
  %286 = zext i1 %274 to i8
  store i8 %286, i8* %29, align 1
  %287 = lshr i32 %271, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %32, align 1
  %289 = lshr i32 %270, 31
  %290 = xor i32 %287, %289
  %291 = add nuw nsw i32 %290, %287
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %38, align 1
  %294 = add i64 %267, 9
  store i64 %294, i64* %3, align 8
  store i32 %271, i32* %269, align 4
  %295 = load i64, i64* %3, align 8
  %296 = add i64 %295, -44
  store i64 %296, i64* %3, align 8
  br label %block_.L_413a35

block_.L_413a66:                                  ; preds = %block_.L_413a35
  %297 = add i64 %203, -40
  %298 = add i64 %239, 7
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  store i32 1, i32* %299, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_413a6d

block_.L_413a6d:                                  ; preds = %block_.L_413ad4, %block_.L_413a66
  %300 = phi i64 [ %.pre33, %block_.L_413a66 ], [ %493, %block_.L_413ad4 ]
  %MEMORY.2 = phi %struct.Memory* [ %190, %block_.L_413a66 ], [ %350, %block_.L_413ad4 ]
  %301 = load i64, i64* %RBP.i, align 8
  %302 = add i64 %301, -40
  %303 = add i64 %300, 3
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX.i119, align 8
  %307 = add i64 %301, -24
  %308 = add i64 %300, 7
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RCX.i306, align 8
  %311 = add i64 %310, 136
  %312 = add i64 %300, 13
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sub i32 %305, %314
  %316 = icmp ult i32 %305, %314
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %14, align 1
  %318 = and i32 %315, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %21, align 1
  %323 = xor i32 %314, %305
  %324 = xor i32 %323, %315
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  %328 = icmp eq i32 %315, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i32 %315, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %32, align 1
  %332 = lshr i32 %305, 31
  %333 = lshr i32 %314, 31
  %334 = xor i32 %333, %332
  %335 = xor i32 %330, %332
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %38, align 1
  %339 = icmp ne i8 %331, 0
  %340 = xor i1 %339, %337
  %.demorgan44 = or i1 %328, %340
  %.v55 = select i1 %.demorgan44, i64 19, i64 122
  %341 = add i64 %300, %.v55
  store i64 %341, i64* %3, align 8
  br i1 %.demorgan44, label %block_413a80, label %block_.L_413ae7

block_413a80:                                     ; preds = %block_.L_413a6d
  store i64 ptrtoint (%G__0x45634d_type* @G__0x45634d to i64), i64* %RDI.i162, align 8
  %342 = add i64 %341, 13
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %304, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RSI.i462, align 8
  store i8 0, i8* %AL.i438, align 1
  %345 = add i64 %341, -75248
  %346 = add i64 %341, 20
  %347 = load i64, i64* %6, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %346, i64* %349, align 8
  store i64 %348, i64* %6, align 8
  store i64 %345, i64* %3, align 8
  %350 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.2)
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -36
  %353 = load i64, i64* %3, align 8
  %354 = add i64 %353, 7
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %352 to i32*
  store i32 0, i32* %355, align 4
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -56
  %358 = load i32, i32* %EAX.i485, align 4
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 3
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %357 to i32*
  store i32 %358, i32* %361, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_413a9e

block_.L_413a9e:                                  ; preds = %block_413aaa, %block_413a80
  %362 = phi i64 [ %463, %block_413aaa ], [ %.pre34, %block_413a80 ]
  %363 = load i64, i64* %RBP.i, align 8
  %364 = add i64 %363, -36
  %365 = add i64 %362, 3
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i119, align 8
  %369 = add i64 %363, -12
  %370 = add i64 %362, 6
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sub i32 %367, %372
  %374 = icmp ult i32 %367, %372
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %14, align 1
  %376 = and i32 %373, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  %381 = xor i32 %372, %367
  %382 = xor i32 %381, %373
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %26, align 1
  %386 = icmp eq i32 %373, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %29, align 1
  %388 = lshr i32 %373, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %32, align 1
  %390 = lshr i32 %367, 31
  %391 = lshr i32 %372, 31
  %392 = xor i32 %391, %390
  %393 = xor i32 %388, %390
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1
  %397 = icmp ne i8 %389, 0
  %398 = xor i1 %397, %395
  %.demorgan45 = or i1 %386, %398
  %.v = select i1 %.demorgan45, i64 12, i64 54
  %399 = add i64 %362, %.v
  store i64 %399, i64* %3, align 8
  br i1 %.demorgan45, label %block_413aaa, label %block_.L_413ad4

block_413aaa:                                     ; preds = %block_.L_413a9e
  %400 = add i64 %363, -32
  %401 = add i64 %399, 4
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX.i119, align 8
  %404 = add i64 %403, 8
  %405 = add i64 %399, 8
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i119, align 8
  %408 = add i64 %399, 12
  store i64 %408, i64* %3, align 8
  %409 = load i32, i32* %366, align 4
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %RCX.i306, align 8
  %411 = shl nsw i64 %410, 3
  %412 = add i64 %411, %407
  %413 = add i64 %399, 16
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX.i119, align 8
  %416 = add i64 %363, -40
  %417 = add i64 %399, 20
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RCX.i306, align 8
  %421 = shl nsw i64 %420, 2
  %422 = add i64 %421, %415
  %423 = add i64 %399, 23
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RDI.i162, align 8
  %427 = add i64 %399, 662
  %428 = add i64 %399, 28
  %429 = load i64, i64* %6, align 8
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 %428, i64* %431, align 8
  store i64 %430, i64* %6, align 8
  store i64 %427, i64* %3, align 8
  %call2_413ac1 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %427, %struct.Memory* %350)
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -36
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 3
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %433 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, 1
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RAX.i119, align 8
  %440 = icmp eq i32 %437, -1
  %441 = icmp eq i32 %438, 0
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = and i32 %438, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %21, align 1
  %449 = xor i32 %438, %437
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %26, align 1
  %453 = zext i1 %441 to i8
  store i8 %453, i8* %29, align 1
  %454 = lshr i32 %438, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %32, align 1
  %456 = lshr i32 %437, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %454
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %38, align 1
  %461 = add i64 %434, 9
  store i64 %461, i64* %3, align 8
  store i32 %438, i32* %436, align 4
  %462 = load i64, i64* %3, align 8
  %463 = add i64 %462, -49
  store i64 %463, i64* %3, align 8
  br label %block_.L_413a9e

block_.L_413ad4:                                  ; preds = %block_.L_413a9e
  %464 = add i64 %363, -40
  %465 = add i64 %399, 8
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, 1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i119, align 8
  %470 = icmp eq i32 %467, -1
  %471 = icmp eq i32 %468, 0
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = and i32 %468, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i32 %468, %467
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %26, align 1
  %483 = zext i1 %471 to i8
  store i8 %483, i8* %29, align 1
  %484 = lshr i32 %468, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %32, align 1
  %486 = lshr i32 %467, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %484
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %38, align 1
  %491 = add i64 %399, 14
  store i64 %491, i64* %3, align 8
  store i32 %468, i32* %466, align 4
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, -117
  store i64 %493, i64* %3, align 8
  br label %block_.L_413a6d

block_.L_413ae7:                                  ; preds = %block_.L_413a6d
  %494 = add i64 %341, 7
  store i64 %494, i64* %3, align 8
  store i32 1, i32* %304, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_413aee

block_.L_413aee:                                  ; preds = %block_.L_413b55, %block_.L_413ae7
  %495 = phi i64 [ %.pre35, %block_.L_413ae7 ], [ %689, %block_.L_413b55 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_413ae7 ], [ %546, %block_.L_413b55 ]
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -40
  %498 = add i64 %495, 3
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX.i119, align 8
  %502 = add i64 %496, -24
  %503 = add i64 %495, 7
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RCX.i306, align 8
  %506 = add i64 %505, 136
  %507 = add i64 %495, 13
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = sub i32 %500, %509
  %511 = icmp ult i32 %500, %509
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %14, align 1
  %513 = and i32 %510, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %21, align 1
  %518 = xor i32 %509, %500
  %519 = xor i32 %518, %510
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %26, align 1
  %523 = icmp eq i32 %510, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %29, align 1
  %525 = lshr i32 %510, 31
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %32, align 1
  %527 = lshr i32 %500, 31
  %528 = lshr i32 %509, 31
  %529 = xor i32 %528, %527
  %530 = xor i32 %525, %527
  %531 = add nuw nsw i32 %530, %529
  %532 = icmp eq i32 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %38, align 1
  %534 = icmp ne i8 %526, 0
  %535 = xor i1 %534, %532
  %.v56 = select i1 %535, i64 19, i64 122
  %536 = add i64 %495, %.v56
  %537 = add i64 %536, 10
  store i64 %537, i64* %3, align 8
  br i1 %535, label %block_413b01, label %block_.L_413b68

block_413b01:                                     ; preds = %block_.L_413aee
  store i64 ptrtoint (%G__0x456355_type* @G__0x456355 to i64), i64* %RDI.i162, align 8
  %538 = add i64 %536, 13
  store i64 %538, i64* %3, align 8
  %539 = load i32, i32* %499, align 4
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RSI.i462, align 8
  store i8 0, i8* %AL.i438, align 1
  %541 = add i64 %536, -75377
  %542 = add i64 %536, 20
  %543 = load i64, i64* %6, align 8
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %6, align 8
  store i64 %541, i64* %3, align 8
  %546 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -36
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 0, i32* %551, align 4
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -60
  %554 = load i32, i32* %EAX.i485, align 4
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 3
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %553 to i32*
  store i32 %554, i32* %557, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_413b1f

block_.L_413b1f:                                  ; preds = %block_413b2b, %block_413b01
  %558 = phi i64 [ %659, %block_413b2b ], [ %.pre42, %block_413b01 ]
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -36
  %561 = add i64 %558, 3
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX.i119, align 8
  %565 = add i64 %559, -12
  %566 = add i64 %558, 6
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = sub i32 %563, %568
  %570 = icmp ult i32 %563, %568
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %14, align 1
  %572 = and i32 %569, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %21, align 1
  %577 = xor i32 %568, %563
  %578 = xor i32 %577, %569
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %26, align 1
  %582 = icmp eq i32 %569, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %29, align 1
  %584 = lshr i32 %569, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %32, align 1
  %586 = lshr i32 %563, 31
  %587 = lshr i32 %568, 31
  %588 = xor i32 %587, %586
  %589 = xor i32 %584, %586
  %590 = add nuw nsw i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %38, align 1
  %593 = icmp ne i8 %585, 0
  %594 = xor i1 %593, %591
  %.demorgan52 = or i1 %582, %594
  %.v53 = select i1 %.demorgan52, i64 12, i64 54
  %595 = add i64 %558, %.v53
  store i64 %595, i64* %3, align 8
  br i1 %.demorgan52, label %block_413b2b, label %block_.L_413b55

block_413b2b:                                     ; preds = %block_.L_413b1f
  %596 = add i64 %559, -32
  %597 = add i64 %595, 4
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %RAX.i119, align 8
  %600 = add i64 %599, 16
  %601 = add i64 %595, 8
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RAX.i119, align 8
  %604 = add i64 %595, 12
  store i64 %604, i64* %3, align 8
  %605 = load i32, i32* %562, align 4
  %606 = sext i32 %605 to i64
  store i64 %606, i64* %RCX.i306, align 8
  %607 = shl nsw i64 %606, 3
  %608 = add i64 %607, %603
  %609 = add i64 %595, 16
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i64*
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %RAX.i119, align 8
  %612 = add i64 %559, -40
  %613 = add i64 %595, 20
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = sext i32 %615 to i64
  store i64 %616, i64* %RCX.i306, align 8
  %617 = shl nsw i64 %616, 2
  %618 = add i64 %617, %611
  %619 = add i64 %595, 23
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDI.i162, align 8
  %623 = add i64 %595, 533
  %624 = add i64 %595, 28
  %625 = load i64, i64* %6, align 8
  %626 = add i64 %625, -8
  %627 = inttoptr i64 %626 to i64*
  store i64 %624, i64* %627, align 8
  store i64 %626, i64* %6, align 8
  store i64 %623, i64* %3, align 8
  %call2_413b42 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %623, %struct.Memory* %546)
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -36
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 3
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %629 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = add i32 %633, 1
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RAX.i119, align 8
  %636 = icmp eq i32 %633, -1
  %637 = icmp eq i32 %634, 0
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = and i32 %634, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %21, align 1
  %645 = xor i32 %634, %633
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %26, align 1
  %649 = zext i1 %637 to i8
  store i8 %649, i8* %29, align 1
  %650 = lshr i32 %634, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %32, align 1
  %652 = lshr i32 %633, 31
  %653 = xor i32 %650, %652
  %654 = add nuw nsw i32 %653, %650
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %38, align 1
  %657 = add i64 %630, 9
  store i64 %657, i64* %3, align 8
  store i32 %634, i32* %632, align 4
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, -49
  store i64 %659, i64* %3, align 8
  br label %block_.L_413b1f

block_.L_413b55:                                  ; preds = %block_.L_413b1f
  %660 = add i64 %559, -40
  %661 = add i64 %595, 8
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = add i32 %663, 1
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RAX.i119, align 8
  %666 = icmp eq i32 %663, -1
  %667 = icmp eq i32 %664, 0
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %14, align 1
  %670 = and i32 %664, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  %675 = xor i32 %664, %663
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = zext i1 %667 to i8
  store i8 %679, i8* %29, align 1
  %680 = lshr i32 %664, 31
  %681 = trunc i32 %680 to i8
  store i8 %681, i8* %32, align 1
  %682 = lshr i32 %663, 31
  %683 = xor i32 %680, %682
  %684 = add nuw nsw i32 %683, %680
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %38, align 1
  %687 = add i64 %595, 14
  store i64 %687, i64* %3, align 8
  store i32 %664, i32* %662, align 4
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, -117
  store i64 %689, i64* %3, align 8
  br label %block_.L_413aee

block_.L_413b68:                                  ; preds = %block_.L_413aee
  store i64 ptrtoint (%G__0x45635d_type* @G__0x45635d to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %690 = add i64 %536, -75480
  %691 = add i64 %536, 17
  %692 = load i64, i64* %6, align 8
  %693 = add i64 %692, -8
  %694 = inttoptr i64 %693 to i64*
  store i64 %691, i64* %694, align 8
  store i64 %693, i64* %6, align 8
  store i64 %690, i64* %3, align 8
  %695 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -36
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 7
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %697 to i32*
  store i32 0, i32* %700, align 4
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -64
  %703 = load i32, i32* %EAX.i485, align 4
  %704 = load i64, i64* %3, align 8
  %705 = add i64 %704, 3
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %702 to i32*
  store i32 %703, i32* %706, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_413b83

block_.L_413b83:                                  ; preds = %block_413b8f, %block_.L_413b68
  %707 = phi i64 [ %801, %block_413b8f ], [ %.pre36, %block_.L_413b68 ]
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -36
  %710 = add i64 %707, 3
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX.i119, align 8
  %714 = add i64 %708, -12
  %715 = add i64 %707, 6
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sub i32 %712, %717
  %719 = icmp ult i32 %712, %717
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %14, align 1
  %721 = and i32 %718, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %21, align 1
  %726 = xor i32 %717, %712
  %727 = xor i32 %726, %718
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %26, align 1
  %731 = icmp eq i32 %718, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %29, align 1
  %733 = lshr i32 %718, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %32, align 1
  %735 = lshr i32 %712, 31
  %736 = lshr i32 %717, 31
  %737 = xor i32 %736, %735
  %738 = xor i32 %733, %735
  %739 = add nuw nsw i32 %738, %737
  %740 = icmp eq i32 %739, 2
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %38, align 1
  %742 = icmp ne i8 %734, 0
  %743 = xor i1 %742, %740
  %.demorgan46 = or i1 %731, %743
  %.v57 = select i1 %.demorgan46, i64 12, i64 49
  %744 = add i64 %707, %.v57
  store i64 %744, i64* %3, align 8
  br i1 %.demorgan46, label %block_413b8f, label %block_.L_413bb4

block_413b8f:                                     ; preds = %block_.L_413b83
  %745 = add i64 %708, -32
  %746 = add i64 %744, 4
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RAX.i119, align 8
  %749 = add i64 %744, 7
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RAX.i119, align 8
  %752 = add i64 %744, 11
  store i64 %752, i64* %3, align 8
  %753 = load i32, i32* %711, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i306, align 8
  %755 = shl nsw i64 %754, 3
  %756 = add i64 %755, %751
  %757 = add i64 %744, 15
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %RAX.i119, align 8
  %760 = add i64 %759, 4
  %761 = add i64 %744, 18
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RDI.i162, align 8
  %765 = add i64 %744, 433
  %766 = add i64 %744, 23
  %767 = load i64, i64* %6, align 8
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %766, i64* %769, align 8
  store i64 %768, i64* %6, align 8
  store i64 %765, i64* %3, align 8
  %call2_413ba1 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %765, %struct.Memory* %695)
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -36
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 3
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, 1
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RAX.i119, align 8
  %778 = icmp eq i32 %775, -1
  %779 = icmp eq i32 %776, 0
  %780 = or i1 %778, %779
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %776, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %776, %775
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = zext i1 %779 to i8
  store i8 %791, i8* %29, align 1
  %792 = lshr i32 %776, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %32, align 1
  %794 = lshr i32 %775, 31
  %795 = xor i32 %792, %794
  %796 = add nuw nsw i32 %795, %792
  %797 = icmp eq i32 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %38, align 1
  %799 = add i64 %772, 9
  store i64 %799, i64* %3, align 8
  store i32 %776, i32* %774, align 4
  %800 = load i64, i64* %3, align 8
  %801 = add i64 %800, -44
  store i64 %801, i64* %3, align 8
  br label %block_.L_413b83

block_.L_413bb4:                                  ; preds = %block_.L_413b83
  store i64 ptrtoint (%G__0x456364_type* @G__0x456364 to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %802 = add i64 %744, -75556
  %803 = add i64 %744, 17
  %804 = load i64, i64* %6, align 8
  %805 = add i64 %804, -8
  %806 = inttoptr i64 %805 to i64*
  store i64 %803, i64* %806, align 8
  store i64 %805, i64* %6, align 8
  store i64 %802, i64* %3, align 8
  %807 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %695)
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -36
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 7
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i32*
  store i32 0, i32* %812, align 4
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -68
  %815 = load i32, i32* %EAX.i485, align 4
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 3
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %814 to i32*
  store i32 %815, i32* %818, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_413bcf

block_.L_413bcf:                                  ; preds = %block_413bdb, %block_.L_413bb4
  %819 = phi i64 [ %913, %block_413bdb ], [ %.pre37, %block_.L_413bb4 ]
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -36
  %822 = add i64 %819, 3
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RAX.i119, align 8
  %826 = add i64 %820, -12
  %827 = add i64 %819, 6
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = sub i32 %824, %829
  %831 = icmp ult i32 %824, %829
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %14, align 1
  %833 = and i32 %830, 255
  %834 = tail call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  store i8 %837, i8* %21, align 1
  %838 = xor i32 %829, %824
  %839 = xor i32 %838, %830
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %26, align 1
  %843 = icmp eq i32 %830, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %29, align 1
  %845 = lshr i32 %830, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %32, align 1
  %847 = lshr i32 %824, 31
  %848 = lshr i32 %829, 31
  %849 = xor i32 %848, %847
  %850 = xor i32 %845, %847
  %851 = add nuw nsw i32 %850, %849
  %852 = icmp eq i32 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %38, align 1
  %854 = icmp ne i8 %846, 0
  %855 = xor i1 %854, %852
  %.demorgan47 = or i1 %843, %855
  %.v58 = select i1 %.demorgan47, i64 12, i64 49
  %856 = add i64 %819, %.v58
  store i64 %856, i64* %3, align 8
  br i1 %.demorgan47, label %block_413bdb, label %block_.L_413c00

block_413bdb:                                     ; preds = %block_.L_413bcf
  %857 = add i64 %820, -32
  %858 = add i64 %856, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i119, align 8
  %861 = add i64 %856, 7
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX.i119, align 8
  %864 = add i64 %856, 11
  store i64 %864, i64* %3, align 8
  %865 = load i32, i32* %823, align 4
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RCX.i306, align 8
  %867 = shl nsw i64 %866, 3
  %868 = add i64 %867, %863
  %869 = add i64 %856, 15
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i64*
  %871 = load i64, i64* %870, align 8
  store i64 %871, i64* %RAX.i119, align 8
  %872 = add i64 %871, 8
  %873 = add i64 %856, 18
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RDI.i162, align 8
  %877 = add i64 %856, 357
  %878 = add i64 %856, 23
  %879 = load i64, i64* %6, align 8
  %880 = add i64 %879, -8
  %881 = inttoptr i64 %880 to i64*
  store i64 %878, i64* %881, align 8
  store i64 %880, i64* %6, align 8
  store i64 %877, i64* %3, align 8
  %call2_413bed = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %877, %struct.Memory* %807)
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -36
  %884 = load i64, i64* %3, align 8
  %885 = add i64 %884, 3
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %883 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = add i32 %887, 1
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RAX.i119, align 8
  %890 = icmp eq i32 %887, -1
  %891 = icmp eq i32 %888, 0
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %14, align 1
  %894 = and i32 %888, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894)
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %21, align 1
  %899 = xor i32 %888, %887
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %26, align 1
  %903 = zext i1 %891 to i8
  store i8 %903, i8* %29, align 1
  %904 = lshr i32 %888, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %32, align 1
  %906 = lshr i32 %887, 31
  %907 = xor i32 %904, %906
  %908 = add nuw nsw i32 %907, %904
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %38, align 1
  %911 = add i64 %884, 9
  store i64 %911, i64* %3, align 8
  store i32 %888, i32* %886, align 4
  %912 = load i64, i64* %3, align 8
  %913 = add i64 %912, -44
  store i64 %913, i64* %3, align 8
  br label %block_.L_413bcf

block_.L_413c00:                                  ; preds = %block_.L_413bcf
  store i64 ptrtoint (%G__0x45636b_type* @G__0x45636b to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %914 = add i64 %856, -75632
  %915 = add i64 %856, 17
  %916 = load i64, i64* %6, align 8
  %917 = add i64 %916, -8
  %918 = inttoptr i64 %917 to i64*
  store i64 %915, i64* %918, align 8
  store i64 %917, i64* %6, align 8
  store i64 %914, i64* %3, align 8
  %919 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %807)
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -36
  %922 = load i64, i64* %3, align 8
  %923 = add i64 %922, 7
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %921 to i32*
  store i32 0, i32* %924, align 4
  %925 = load i64, i64* %RBP.i, align 8
  %926 = add i64 %925, -72
  %927 = load i32, i32* %EAX.i485, align 4
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 3
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %926 to i32*
  store i32 %927, i32* %930, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_413c1b

block_.L_413c1b:                                  ; preds = %block_413c27, %block_.L_413c00
  %931 = phi i64 [ %1025, %block_413c27 ], [ %.pre38, %block_.L_413c00 ]
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -36
  %934 = add i64 %931, 3
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i119, align 8
  %938 = add i64 %932, -12
  %939 = add i64 %931, 6
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = sub i32 %936, %941
  %943 = icmp ult i32 %936, %941
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %14, align 1
  %945 = and i32 %942, 255
  %946 = tail call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  store i8 %949, i8* %21, align 1
  %950 = xor i32 %941, %936
  %951 = xor i32 %950, %942
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  store i8 %954, i8* %26, align 1
  %955 = icmp eq i32 %942, 0
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %29, align 1
  %957 = lshr i32 %942, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %32, align 1
  %959 = lshr i32 %936, 31
  %960 = lshr i32 %941, 31
  %961 = xor i32 %960, %959
  %962 = xor i32 %957, %959
  %963 = add nuw nsw i32 %962, %961
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %38, align 1
  %966 = icmp ne i8 %958, 0
  %967 = xor i1 %966, %964
  %.demorgan48 = or i1 %955, %967
  %.v59 = select i1 %.demorgan48, i64 12, i64 49
  %968 = add i64 %931, %.v59
  store i64 %968, i64* %3, align 8
  br i1 %.demorgan48, label %block_413c27, label %block_.L_413c4c

block_413c27:                                     ; preds = %block_.L_413c1b
  %969 = add i64 %932, -32
  %970 = add i64 %968, 4
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %RAX.i119, align 8
  %973 = add i64 %968, 7
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RAX.i119, align 8
  %976 = add i64 %968, 11
  store i64 %976, i64* %3, align 8
  %977 = load i32, i32* %935, align 4
  %978 = sext i32 %977 to i64
  store i64 %978, i64* %RCX.i306, align 8
  %979 = shl nsw i64 %978, 3
  %980 = add i64 %979, %975
  %981 = add i64 %968, 15
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RAX.i119, align 8
  %984 = add i64 %983, 12
  %985 = add i64 %968, 18
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RDI.i162, align 8
  %989 = add i64 %968, 281
  %990 = add i64 %968, 23
  %991 = load i64, i64* %6, align 8
  %992 = add i64 %991, -8
  %993 = inttoptr i64 %992 to i64*
  store i64 %990, i64* %993, align 8
  store i64 %992, i64* %6, align 8
  store i64 %989, i64* %3, align 8
  %call2_413c39 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %989, %struct.Memory* %919)
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -36
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 3
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = add i32 %999, 1
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i119, align 8
  %1002 = icmp eq i32 %999, -1
  %1003 = icmp eq i32 %1000, 0
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %14, align 1
  %1006 = and i32 %1000, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %21, align 1
  %1011 = xor i32 %1000, %999
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %26, align 1
  %1015 = zext i1 %1003 to i8
  store i8 %1015, i8* %29, align 1
  %1016 = lshr i32 %1000, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %32, align 1
  %1018 = lshr i32 %999, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1016
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %38, align 1
  %1023 = add i64 %996, 9
  store i64 %1023, i64* %3, align 8
  store i32 %1000, i32* %998, align 4
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, -44
  store i64 %1025, i64* %3, align 8
  br label %block_.L_413c1b

block_.L_413c4c:                                  ; preds = %block_.L_413c1b
  store i64 ptrtoint (%G__0x456372_type* @G__0x456372 to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %1026 = add i64 %968, -75708
  %1027 = add i64 %968, 17
  %1028 = load i64, i64* %6, align 8
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1027, i64* %1030, align 8
  store i64 %1029, i64* %6, align 8
  store i64 %1026, i64* %3, align 8
  %1031 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %919)
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -36
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 7
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to i32*
  store i32 0, i32* %1036, align 4
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -76
  %1039 = load i32, i32* %EAX.i485, align 4
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1038 to i32*
  store i32 %1039, i32* %1042, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_413c67

block_.L_413c67:                                  ; preds = %block_413c73, %block_.L_413c4c
  %1043 = phi i64 [ %1136, %block_413c73 ], [ %.pre39, %block_.L_413c4c ]
  %1044 = load i64, i64* %RBP.i, align 8
  %1045 = add i64 %1044, -36
  %1046 = add i64 %1043, 3
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RAX.i119, align 8
  %1050 = add i64 %1044, -12
  %1051 = add i64 %1043, 6
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = sub i32 %1048, %1053
  %1055 = icmp ult i32 %1048, %1053
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %14, align 1
  %1057 = and i32 %1054, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  %1062 = xor i32 %1053, %1048
  %1063 = xor i32 %1062, %1054
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %26, align 1
  %1067 = icmp eq i32 %1054, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %29, align 1
  %1069 = lshr i32 %1054, 31
  %1070 = trunc i32 %1069 to i8
  store i8 %1070, i8* %32, align 1
  %1071 = lshr i32 %1048, 31
  %1072 = lshr i32 %1053, 31
  %1073 = xor i32 %1072, %1071
  %1074 = xor i32 %1069, %1071
  %1075 = add nuw nsw i32 %1074, %1073
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %38, align 1
  %1078 = icmp ne i8 %1070, 0
  %1079 = xor i1 %1078, %1076
  %.demorgan49 = or i1 %1067, %1079
  %.v60 = select i1 %.demorgan49, i64 12, i64 48
  %1080 = add i64 %1043, %.v60
  store i64 %1080, i64* %3, align 8
  br i1 %.demorgan49, label %block_413c73, label %block_.L_413c97

block_413c73:                                     ; preds = %block_.L_413c67
  %1081 = add i64 %1044, -32
  %1082 = add i64 %1080, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RAX.i119, align 8
  %1085 = add i64 %1080, 7
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i119, align 8
  %1088 = add i64 %1080, 11
  store i64 %1088, i64* %3, align 8
  %1089 = load i32, i32* %1047, align 4
  %1090 = sext i32 %1089 to i64
  store i64 %1090, i64* %RCX.i306, align 8
  %1091 = shl nsw i64 %1090, 3
  %1092 = add i64 %1091, %1087
  %1093 = add i64 %1080, 15
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i64*
  %1095 = load i64, i64* %1094, align 8
  store i64 %1095, i64* %RAX.i119, align 8
  %1096 = add i64 %1080, 17
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RDI.i162, align 8
  %1100 = add i64 %1080, 205
  %1101 = add i64 %1080, 22
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %call2_413c84 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %1100, %struct.Memory* %1031)
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -36
  %1107 = load i64, i64* %3, align 8
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1106 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = add i32 %1110, 1
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RAX.i119, align 8
  %1113 = icmp eq i32 %1110, -1
  %1114 = icmp eq i32 %1111, 0
  %1115 = or i1 %1113, %1114
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %14, align 1
  %1117 = and i32 %1111, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i32 %1111, %1110
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %26, align 1
  %1126 = zext i1 %1114 to i8
  store i8 %1126, i8* %29, align 1
  %1127 = lshr i32 %1111, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %32, align 1
  %1129 = lshr i32 %1110, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1127
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %38, align 1
  %1134 = add i64 %1107, 9
  store i64 %1134, i64* %3, align 8
  store i32 %1111, i32* %1109, align 4
  %1135 = load i64, i64* %3, align 8
  %1136 = add i64 %1135, -43
  store i64 %1136, i64* %3, align 8
  br label %block_.L_413c67

block_.L_413c97:                                  ; preds = %block_.L_413c67
  %1137 = add i64 %1044, -40
  %1138 = add i64 %1080, 7
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  store i32 2, i32* %1139, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_413c9e

block_.L_413c9e:                                  ; preds = %block_.L_413d05, %block_.L_413c97
  %1140 = phi i64 [ %.pre40, %block_.L_413c97 ], [ %1334, %block_.L_413d05 ]
  %MEMORY.10 = phi %struct.Memory* [ %1031, %block_.L_413c97 ], [ %1191, %block_.L_413d05 ]
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -40
  %1143 = add i64 %1140, 3
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RAX.i119, align 8
  %1147 = add i64 %1141, -24
  %1148 = add i64 %1140, 7
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %RCX.i306, align 8
  %1151 = add i64 %1150, 136
  %1152 = add i64 %1140, 13
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sub i32 %1145, %1154
  %1156 = icmp ult i32 %1145, %1154
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %14, align 1
  %1158 = and i32 %1155, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %21, align 1
  %1163 = xor i32 %1154, %1145
  %1164 = xor i32 %1163, %1155
  %1165 = lshr i32 %1164, 4
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %26, align 1
  %1168 = icmp eq i32 %1155, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %29, align 1
  %1170 = lshr i32 %1155, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %32, align 1
  %1172 = lshr i32 %1145, 31
  %1173 = lshr i32 %1154, 31
  %1174 = xor i32 %1173, %1172
  %1175 = xor i32 %1170, %1172
  %1176 = add nuw nsw i32 %1175, %1174
  %1177 = icmp eq i32 %1176, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %38, align 1
  %1179 = icmp ne i8 %1171, 0
  %1180 = xor i1 %1179, %1177
  %.v61 = select i1 %1180, i64 19, i64 122
  %1181 = add i64 %1140, %.v61
  %1182 = add i64 %1181, 10
  store i64 %1182, i64* %3, align 8
  br i1 %1180, label %block_413cb1, label %block_.L_413d18

block_413cb1:                                     ; preds = %block_.L_413c9e
  store i64 ptrtoint (%G__0x456379_type* @G__0x456379 to i64), i64* %RDI.i162, align 8
  %1183 = add i64 %1181, 13
  store i64 %1183, i64* %3, align 8
  %1184 = load i32, i32* %1144, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RSI.i462, align 8
  store i8 0, i8* %AL.i438, align 1
  %1186 = add i64 %1181, -75809
  %1187 = add i64 %1181, 20
  %1188 = load i64, i64* %6, align 8
  %1189 = add i64 %1188, -8
  %1190 = inttoptr i64 %1189 to i64*
  store i64 %1187, i64* %1190, align 8
  store i64 %1189, i64* %6, align 8
  store i64 %1186, i64* %3, align 8
  %1191 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.10)
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -36
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 7
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1193 to i32*
  store i32 0, i32* %1196, align 4
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -80
  %1199 = load i32, i32* %EAX.i485, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1198 to i32*
  store i32 %1199, i32* %1202, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_413ccf

block_.L_413ccf:                                  ; preds = %block_413cdb, %block_413cb1
  %1203 = phi i64 [ %1304, %block_413cdb ], [ %.pre41, %block_413cb1 ]
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -36
  %1206 = add i64 %1203, 3
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RAX.i119, align 8
  %1210 = add i64 %1204, -12
  %1211 = add i64 %1203, 6
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = sub i32 %1208, %1213
  %1215 = icmp ult i32 %1208, %1213
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %14, align 1
  %1217 = and i32 %1214, 255
  %1218 = tail call i32 @llvm.ctpop.i32(i32 %1217)
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = xor i8 %1220, 1
  store i8 %1221, i8* %21, align 1
  %1222 = xor i32 %1213, %1208
  %1223 = xor i32 %1222, %1214
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  store i8 %1226, i8* %26, align 1
  %1227 = icmp eq i32 %1214, 0
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %29, align 1
  %1229 = lshr i32 %1214, 31
  %1230 = trunc i32 %1229 to i8
  store i8 %1230, i8* %32, align 1
  %1231 = lshr i32 %1208, 31
  %1232 = lshr i32 %1213, 31
  %1233 = xor i32 %1232, %1231
  %1234 = xor i32 %1229, %1231
  %1235 = add nuw nsw i32 %1234, %1233
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %38, align 1
  %1238 = icmp ne i8 %1230, 0
  %1239 = xor i1 %1238, %1236
  %.demorgan50 = or i1 %1227, %1239
  %.v51 = select i1 %.demorgan50, i64 12, i64 54
  %1240 = add i64 %1203, %.v51
  store i64 %1240, i64* %3, align 8
  br i1 %.demorgan50, label %block_413cdb, label %block_.L_413d05

block_413cdb:                                     ; preds = %block_.L_413ccf
  %1241 = add i64 %1204, -32
  %1242 = add i64 %1240, 4
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i64*
  %1244 = load i64, i64* %1243, align 8
  store i64 %1244, i64* %RAX.i119, align 8
  %1245 = add i64 %1244, 24
  %1246 = add i64 %1240, 8
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RAX.i119, align 8
  %1249 = add i64 %1240, 12
  store i64 %1249, i64* %3, align 8
  %1250 = load i32, i32* %1207, align 4
  %1251 = sext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i306, align 8
  %1252 = shl nsw i64 %1251, 3
  %1253 = add i64 %1252, %1248
  %1254 = add i64 %1240, 16
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i64*
  %1256 = load i64, i64* %1255, align 8
  store i64 %1256, i64* %RAX.i119, align 8
  %1257 = add i64 %1204, -40
  %1258 = add i64 %1240, 20
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RCX.i306, align 8
  %1262 = shl nsw i64 %1261, 2
  %1263 = add i64 %1262, %1256
  %1264 = add i64 %1240, 23
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDI.i162, align 8
  %1268 = add i64 %1240, 101
  %1269 = add i64 %1240, 28
  %1270 = load i64, i64* %6, align 8
  %1271 = add i64 %1270, -8
  %1272 = inttoptr i64 %1271 to i64*
  store i64 %1269, i64* %1272, align 8
  store i64 %1271, i64* %6, align 8
  store i64 %1268, i64* %3, align 8
  %call2_413cf2 = tail call %struct.Memory* @sub_413d40.PrintIscore(%struct.State* nonnull %0, i64 %1268, %struct.Memory* %1191)
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -36
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 3
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = add i32 %1278, 1
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i119, align 8
  %1281 = icmp eq i32 %1278, -1
  %1282 = icmp eq i32 %1279, 0
  %1283 = or i1 %1281, %1282
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %14, align 1
  %1285 = and i32 %1279, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i32 %1279, %1278
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %26, align 1
  %1294 = zext i1 %1282 to i8
  store i8 %1294, i8* %29, align 1
  %1295 = lshr i32 %1279, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %32, align 1
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1295, %1297
  %1299 = add nuw nsw i32 %1298, %1295
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %38, align 1
  %1302 = add i64 %1275, 9
  store i64 %1302, i64* %3, align 8
  store i32 %1279, i32* %1277, align 4
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, -49
  store i64 %1304, i64* %3, align 8
  br label %block_.L_413ccf

block_.L_413d05:                                  ; preds = %block_.L_413ccf
  %1305 = add i64 %1204, -40
  %1306 = add i64 %1240, 8
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = add i32 %1308, 1
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX.i119, align 8
  %1311 = icmp eq i32 %1308, -1
  %1312 = icmp eq i32 %1309, 0
  %1313 = or i1 %1311, %1312
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %14, align 1
  %1315 = and i32 %1309, 255
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  store i8 %1319, i8* %21, align 1
  %1320 = xor i32 %1309, %1308
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %26, align 1
  %1324 = zext i1 %1312 to i8
  store i8 %1324, i8* %29, align 1
  %1325 = lshr i32 %1309, 31
  %1326 = trunc i32 %1325 to i8
  store i8 %1326, i8* %32, align 1
  %1327 = lshr i32 %1308, 31
  %1328 = xor i32 %1325, %1327
  %1329 = add nuw nsw i32 %1328, %1325
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %38, align 1
  %1332 = add i64 %1240, 14
  store i64 %1332, i64* %3, align 8
  store i32 %1309, i32* %1307, align 4
  %1333 = load i64, i64* %3, align 8
  %1334 = add i64 %1333, -117
  store i64 %1334, i64* %3, align 8
  br label %block_.L_413c9e

block_.L_413d18:                                  ; preds = %block_.L_413c9e
  store i64 ptrtoint (%G__0x45749d_type* @G__0x45749d to i64), i64* %RDI.i162, align 8
  store i8 0, i8* %AL.i438, align 1
  %1335 = add i64 %1181, -75912
  %1336 = add i64 %1181, 17
  %1337 = load i64, i64* %6, align 8
  %1338 = add i64 %1337, -8
  %1339 = inttoptr i64 %1338 to i64*
  store i64 %1336, i64* %1339, align 8
  store i64 %1338, i64* %6, align 8
  store i64 %1335, i64* %3, align 8
  %1340 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.10)
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -84
  %1343 = load i32, i32* %EAX.i485, align 4
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1342 to i32*
  store i32 %1343, i32* %1346, align 4
  %1347 = load i64, i64* %6, align 8
  %1348 = load i64, i64* %3, align 8
  %1349 = add i64 %1347, 96
  store i64 %1349, i64* %6, align 8
  %1350 = icmp ugt i64 %1347, -97
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %14, align 1
  %1352 = trunc i64 %1349 to i32
  %1353 = and i32 %1352, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i64 %1349, %1347
  %1359 = lshr i64 %1358, 4
  %1360 = trunc i64 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %26, align 1
  %1362 = icmp eq i64 %1349, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %29, align 1
  %1364 = lshr i64 %1349, 63
  %1365 = trunc i64 %1364 to i8
  store i8 %1365, i8* %32, align 1
  %1366 = lshr i64 %1347, 63
  %1367 = xor i64 %1364, %1366
  %1368 = add nuw nsw i64 %1367, %1364
  %1369 = icmp eq i64 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %38, align 1
  %1371 = add i64 %1348, 5
  store i64 %1371, i64* %3, align 8
  %1372 = add i64 %1347, 104
  %1373 = inttoptr i64 %1349 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RBP.i, align 8
  store i64 %1372, i64* %6, align 8
  %1375 = add i64 %1348, 6
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1372 to i64*
  %1377 = load i64, i64* %1376, align 8
  store i64 %1377, i64* %3, align 8
  %1378 = add i64 %1347, 112
  store i64 %1378, i64* %6, align 8
  ret %struct.Memory* %1340
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movq__0x456328___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456328_type* @G__0x456328 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jg_.L_413a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456339___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456339_type* @G__0x456339 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6778848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4139d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456346___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456346_type* @G__0x456346 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_413a66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_callq_.PrintIscore(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413a35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_413ae7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45634d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45634d_type* @G__0x45634d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jg_.L_413ad4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413a9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413ad9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_413a6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413b68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456355___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456355_type* @G__0x456355 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413b55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413b1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413b5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413aee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45635d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45635d_type* @G__0x45635d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413bb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_jmpq_.L_413b83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456364___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456364_type* @G__0x456364 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413c00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x8__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_jmpq_.L_413bcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45636b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45636b_type* @G__0x45636b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413c4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jmpq_.L_413c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456372___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456372_type* @G__0x456372 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413c97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413c67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413d18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456379___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456379_type* @G__0x456379 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jg_.L_413d05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413ccf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413d0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413c9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45749d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45749d_type* @G__0x45749d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
