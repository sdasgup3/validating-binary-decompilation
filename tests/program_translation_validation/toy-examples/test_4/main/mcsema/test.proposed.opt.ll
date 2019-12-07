; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x400800_type = type <{ [8 x i8] }>
%G__0x400830_type = type <{ [8 x i8] }>
%G__0x400858_type = type <{ [8 x i8] }>
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
@G__0x400800 = global %G__0x400800_type zeroinitializer
@G__0x400830 = global %G__0x400830_type zeroinitializer
@G__0x400858 = global %G__0x400858_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400550.foo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R15.i59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i59, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC.i, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i74, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC.i, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13.i159 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  %21 = load i64, i64* %R13.i159, align 8
  %22 = load i64, i64* %PC.i, align 8
  %23 = add i64 %22, 2
  store i64 %23, i64* %PC.i, align 8
  %24 = add i64 %7, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %R12.i157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %26 = load i64, i64* %R12.i157, align 8
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 2
  store i64 %28, i64* %PC.i, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %26, i64* %30, align 8
  %RBX.i155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %31 = load i64, i64* %RBX.i155, align 8
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %PC.i, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %PC.i, align 8
  %37 = add i64 %7, -264
  store i64 %37, i64* %RSP.i16, align 8
  %38 = icmp ult i64 %34, 216
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %39, i8* %40, align 1
  %41 = trunc i64 %37 to i32
  %42 = and i32 %41, 255
  %43 = tail call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1
  %48 = xor i64 %34, 16
  %49 = xor i64 %48, %37
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %52, i8* %53, align 1
  %54 = icmp eq i64 %37, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %55, i8* %56, align 1
  %57 = lshr i64 %37, 63
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %58, i8* %59, align 1
  %60 = lshr i64 %34, 63
  %61 = xor i64 %57, %60
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i151 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  store i64 100, i64* %RAX.i151, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i149 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  store i64 200, i64* %RCX.i149, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i147 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  store i64 300, i64* %RDX.i147, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i145 = bitcast %union.anon* %69 to i32*
  %70 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  store i64 400, i64* %70, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i143 = bitcast %union.anon* %71 to i32*
  %72 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  store i64 500, i64* %72, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i141 = bitcast %union.anon* %73 to i32*
  %74 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  store i64 600, i64* %74, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i139 = bitcast %union.anon* %75 to i32*
  %76 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  store i64 10, i64* %76, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -144
  store i64 %78, i64* %RBX.i155, align 8
  %79 = add i64 %77, -96
  store i64 %79, i64* %R14.i74, align 8
  store i64 ptrtoint (%G__0x400830_type* @G__0x400830 to i64), i64* %R15.i59, align 8
  %80 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  store i64 40, i64* %80, align 8
  store i64 ptrtoint (%G__0x400800_type* @G__0x400800 to i64), i64* %R12.i157, align 8
  %81 = add i64 %77, -44
  %82 = add i64 %36, 93
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %84 to i32*
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -48
  %87 = load i32, i32* %EDI.i, align 4
  %88 = load i64, i64* %PC.i, align 8
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %90, align 4
  %RSI.i119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -56
  %93 = load i64, i64* %RSI.i119, align 8
  %94 = load i64, i64* %PC.i, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* %R14.i74, align 8
  %98 = load i64, i64* %PC.i, align 8
  %RDI.i114 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  store i64 %97, i64* %RDI.i114, align 8
  %99 = load i64, i64* %R12.i157, align 8
  store i64 %99, i64* %RSI.i119, align 8
  %EDX.i = bitcast %union.anon* %68 to i32*
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -152
  %102 = load i32, i32* %EDX.i, align 4
  %103 = add i64 %98, 15
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %R13.i159, align 8
  %106 = load i64, i64* %PC.i, align 8
  store i64 %105, i64* %RDX.i147, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -160
  %109 = load i64, i64* %R15.i59, align 8
  %110 = add i64 %106, 10
  store i64 %110, i64* %PC.i, align 8
  %111 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -168
  %114 = load i64, i64* %R13.i159, align 8
  %115 = load i64, i64* %PC.i, align 8
  %116 = add i64 %115, 7
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117, align 8
  %EAX.i96 = bitcast %union.anon* %66 to i32*
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -172
  %120 = load i32, i32* %EAX.i96, align 4
  %121 = load i64, i64* %PC.i, align 8
  %122 = add i64 %121, 6
  store i64 %122, i64* %PC.i, align 8
  %123 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %123, align 4
  %ECX.i93 = bitcast %union.anon* %67 to i32*
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -176
  %126 = load i32, i32* %ECX.i93, align 4
  %127 = load i64, i64* %PC.i, align 8
  %128 = add i64 %127, 6
  store i64 %128, i64* %PC.i, align 8
  %129 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -184
  %132 = load i64, i64* %R14.i74, align 8
  %133 = load i64, i64* %PC.i, align 8
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -188
  %138 = load i32, i32* %R8D.i145, align 4
  %139 = load i64, i64* %PC.i, align 8
  %140 = add i64 %139, 7
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %137 to i32*
  store i32 %138, i32* %141, align 4
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -192
  %144 = load i32, i32* %R9D.i143, align 4
  %145 = load i64, i64* %PC.i, align 8
  %146 = add i64 %145, 7
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %143 to i32*
  store i32 %144, i32* %147, align 4
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -196
  %150 = load i32, i32* %R10D.i141, align 4
  %151 = load i64, i64* %PC.i, align 8
  %152 = add i64 %151, 7
  store i64 %152, i64* %PC.i, align 8
  %153 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %153, align 4
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -200
  %156 = load i32, i32* %R11D.i139, align 4
  %157 = load i64, i64* %PC.i, align 8
  %158 = add i64 %157, 7
  store i64 %158, i64* %PC.i, align 8
  %159 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %159, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -208
  %162 = load i64, i64* %RBX.i155, align 8
  %163 = load i64, i64* %PC.i, align 8
  %164 = add i64 %163, 7
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165, align 8
  %166 = load i64, i64* %PC.i, align 8
  %167 = add i64 %166, -615
  %168 = add i64 %166, 5
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %6, align 8
  store i64 %167, i64* %3, align 8
  %172 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -208
  %175 = load i64, i64* %PC.i, align 8
  %176 = add i64 %175, 7
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %174 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RDX.i147, align 8
  store i64 %178, i64* %RDI.i114, align 8
  %179 = add i64 %173, -160
  %180 = add i64 %175, 17
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RSI.i119, align 8
  %183 = add i64 %173, -168
  %184 = add i64 %175, 24
  store i64 %184, i64* %PC.i, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RDX.i147, align 8
  %187 = add i64 %175, -620
  %188 = add i64 %175, 29
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %192 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %172)
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -172
  %195 = load i64, i64* %PC.i, align 8
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC.i, align 8
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RDI.i114, align 8
  %200 = add i64 %193, -176
  %201 = add i64 %195, 12
  store i64 %201, i64* %PC.i, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RSI.i119, align 8
  %205 = add i64 %193, -152
  %206 = add i64 %195, 18
  store i64 %206, i64* %PC.i, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RDX.i147, align 8
  %210 = add i64 %193, -188
  %211 = add i64 %195, 24
  store i64 %211, i64* %PC.i, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RCX.i149, align 8
  %215 = add i64 %193, -192
  %216 = add i64 %195, 31
  store i64 %216, i64* %PC.i, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %70, align 8
  %220 = add i64 %193, -196
  %221 = add i64 %195, 38
  store i64 %221, i64* %PC.i, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %72, align 8
  %225 = bitcast i64* %RSP.i16 to i32**
  %226 = load i32*, i32** %225, align 8
  %227 = add i64 %195, 45
  store i64 %227, i64* %PC.i, align 8
  store i32 10, i32* %226, align 4
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -184
  %230 = load i64, i64* %PC.i, align 8
  %231 = add i64 %230, 7
  store i64 %231, i64* %PC.i, align 8
  %232 = inttoptr i64 %229 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RBX.i155, align 8
  %234 = load i64, i64* %RSP.i16, align 8
  %235 = add i64 %234, 8
  %236 = add i64 %230, 12
  store i64 %236, i64* %PC.i, align 8
  %237 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %237, align 8
  %238 = load i64, i64* %RSP.i16, align 8
  %239 = add i64 %238, 16
  %240 = load i64, i64* %PC.i, align 8
  %241 = add i64 %240, 8
  store i64 %241, i64* %PC.i, align 8
  %242 = inttoptr i64 %239 to i32*
  store i32 10, i32* %242, align 4
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -208
  %245 = load i64, i64* %PC.i, align 8
  %246 = add i64 %245, 7
  store i64 %246, i64* %PC.i, align 8
  %247 = inttoptr i64 %244 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %R14.i74, align 8
  %249 = load i64, i64* %RSP.i16, align 8
  %250 = add i64 %249, 24
  %251 = add i64 %245, 12
  store i64 %251, i64* %PC.i, align 8
  %252 = inttoptr i64 %250 to i64*
  store i64 %248, i64* %252, align 8
  %253 = load i64, i64* %PC.i, align 8
  %254 = add i64 %253, -470
  %255 = add i64 %253, 5
  %256 = load i64, i64* %6, align 8
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %6, align 8
  store i64 %254, i64* %3, align 8
  %call2_400726 = tail call %struct.Memory* @sub_400550.foo(%struct.State* %0, i64 %254, %struct.Memory* %192)
  %259 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400858_type* @G__0x400858 to i64), i64* %RDI.i114, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -148
  %262 = load i32, i32* %EAX.i96, align 4
  %263 = add i64 %259, 16
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %264, align 4
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -148
  %267 = load i64, i64* %PC.i, align 8
  %268 = add i64 %267, 6
  store i64 %268, i64* %PC.i, align 8
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RSI.i119, align 8
  %AL.i = bitcast %union.anon* %66 to i8*
  store i8 0, i8* %AL.i, align 1
  %272 = add i64 %267, -763
  %273 = add i64 %267, 13
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %277 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400726)
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -148
  %280 = load i64, i64* %PC.i, align 8
  %281 = add i64 %280, 6
  store i64 %281, i64* %PC.i, align 8
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RCX.i149, align 8
  %285 = add i64 %278, -212
  %286 = load i32, i32* %EAX.i96, align 4
  %287 = add i64 %280, 12
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %285 to i32*
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* %ECX.i93, align 4
  %290 = zext i32 %289 to i64
  %291 = load i64, i64* %PC.i, align 8
  store i64 %290, i64* %RAX.i151, align 8
  %292 = load i64, i64* %RSP.i16, align 8
  %293 = add i64 %292, 216
  store i64 %293, i64* %RSP.i16, align 8
  %294 = icmp ugt i64 %292, -217
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %40, align 1
  %296 = trunc i64 %293 to i32
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %47, align 1
  %302 = xor i64 %292, 16
  %303 = xor i64 %302, %293
  %304 = lshr i64 %303, 4
  %305 = trunc i64 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %53, align 1
  %307 = icmp eq i64 %293, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %56, align 1
  %309 = lshr i64 %293, 63
  %310 = trunc i64 %309 to i8
  store i8 %310, i8* %59, align 1
  %311 = lshr i64 %292, 63
  %312 = xor i64 %309, %311
  %313 = add nuw nsw i64 %312, %309
  %314 = icmp eq i64 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %65, align 1
  %316 = add i64 %291, 10
  store i64 %316, i64* %PC.i, align 8
  %317 = add i64 %292, 224
  %318 = inttoptr i64 %293 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RBX.i155, align 8
  store i64 %317, i64* %6, align 8
  %320 = add i64 %291, 12
  store i64 %320, i64* %PC.i, align 8
  %321 = add i64 %292, 232
  %322 = inttoptr i64 %317 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %R12.i157, align 8
  store i64 %321, i64* %6, align 8
  %324 = add i64 %291, 14
  store i64 %324, i64* %PC.i, align 8
  %325 = add i64 %292, 240
  %326 = inttoptr i64 %321 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %R13.i159, align 8
  store i64 %325, i64* %6, align 8
  %328 = add i64 %291, 16
  store i64 %328, i64* %PC.i, align 8
  %329 = add i64 %292, 248
  %330 = inttoptr i64 %325 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %R14.i74, align 8
  store i64 %329, i64* %6, align 8
  %332 = add i64 %291, 18
  store i64 %332, i64* %PC.i, align 8
  %333 = add i64 %292, 256
  %334 = inttoptr i64 %329 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %R15.i59, align 8
  store i64 %333, i64* %6, align 8
  %336 = add i64 %291, 19
  store i64 %336, i64* %PC.i, align 8
  %337 = add i64 %292, 264
  %338 = inttoptr i64 %333 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RBP.i, align 8
  store i64 %337, i64* %6, align 8
  %340 = add i64 %291, 20
  store i64 %340, i64* %PC.i, align 8
  %341 = inttoptr i64 %337 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %3, align 8
  %343 = add i64 %292, 272
  store i64 %343, i64* %6, align 8
  ret %struct.Memory* %277
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
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

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0xd8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -216
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 216
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

define %struct.Memory* @routine_movl__0x64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 200, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x12c___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 300, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x190___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 400, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1f4___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 500, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x258___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 600, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x90__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400830___r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400830_type* @G__0x400830 to i64), i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x28___r12d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 40, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r12d___r13d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %5 = load i32, i32* %R12D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400800___r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400800_type* @G__0x400800 to i64), i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0xc0__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc4__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 10, i32* %4, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 10, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.foo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400858___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400858_type* @G__0x400858 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0xd8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 216
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -217
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
