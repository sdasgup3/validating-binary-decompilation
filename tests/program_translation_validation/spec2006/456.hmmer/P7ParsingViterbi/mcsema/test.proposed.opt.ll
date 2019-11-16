; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x455f2a_type = type <{ [8 x i8] }>
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
@G__0x455f2a = global %G__0x455f2a_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d680.P7ReallocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d8d0.P7ReverseTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7ParsingViterbi(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i27, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -200
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 184
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, 16
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %13, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2009 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 2, i64* %RAX.i2009, align 8
  %R8.i2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -72
  store i64 %47, i64* %R8.i2250, align 8
  %R9.i2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %48 = add i64 %46, -80
  store i64 %48, i64* %R9.i2247, align 8
  %R10.i2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %49 = add i64 %46, -96
  store i64 %49, i64* %R10.i2244, align 8
  %R11.i2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %50 = add i64 %46, -88
  store i64 %50, i64* %R11.i2241, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i2237 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %52 = add i64 %46, -16
  %53 = load i64, i64* %RDI.i2237, align 8
  %54 = add i64 %15, 32
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2234 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -20
  %59 = load i32, i32* %ESI.i2234, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2231 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %RDX.i2231, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2228 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -40
  %73 = load i64, i64* %RCX.i2228, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -32
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RCX.i2228, align 8
  %RSI.i2223 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %83 = add i64 %82, 136
  %84 = add i64 %79, 10
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RSI.i2223, align 8
  %EAX.i2219 = bitcast %union.anon* %45 to i32*
  %88 = load i32, i32* %EAX.i2219, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RDI.i2237, align 8
  %90 = load i64, i64* %R8.i2250, align 8
  store i64 %90, i64* %RDX.i2231, align 8
  %91 = load i64, i64* %R9.i2247, align 8
  store i64 %91, i64* %RCX.i2228, align 8
  %92 = load i64, i64* %R10.i2244, align 8
  store i64 %92, i64* %R8.i2250, align 8
  %93 = load i64, i64* %R11.i2241, align 8
  store i64 %93, i64* %R9.i2247, align 8
  %94 = add i64 %79, -8960
  %95 = add i64 %79, 29
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %call2_409ba8 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %94, %struct.Memory* %2)
  %99 = load i64, i64* %3, align 8
  store i64 2, i64* %RDI.i2237, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -104
  store i64 %101, i64* %RDX.i2231, align 8
  %102 = add i64 %100, -112
  store i64 %102, i64* %RCX.i2228, align 8
  %103 = add i64 %100, -128
  store i64 %103, i64* %R8.i2250, align 8
  %104 = add i64 %100, -120
  store i64 %104, i64* %R9.i2247, align 8
  %105 = add i64 %100, -48
  %106 = load i64, i64* %RAX.i2009, align 8
  %107 = add i64 %99, 25
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -32
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i2009, align 8
  %115 = add i64 %114, 136
  %116 = add i64 %111, 10
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RSI.i2223, align 8
  %120 = add i64 %111, -9014
  %121 = add i64 %111, 15
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  %call2_409bd0 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %120, %struct.Memory* %call2_409ba8)
  %125 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i2237, align 8
  store i64 1083, i64* %RSI.i2223, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -56
  %128 = load i64, i64* %RAX.i2009, align 8
  %129 = add i64 %125, 19
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i64*
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -20
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, 1
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RBX.i27, align 8
  %139 = icmp eq i32 %137, 0
  %140 = zext i1 %139 to i8
  %141 = lshr i32 %137, 31
  %142 = trunc i32 %141 to i8
  %143 = sext i32 %137 to i64
  %144 = shl nsw i64 %143, 2
  store i64 %144, i64* %RAX.i2009, align 8
  store i8 %142, i8* %19, align 1
  %145 = trunc i64 %144 to i32
  %146 = and i32 %145, 252
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 %140, i8* %35, align 1
  %151 = lshr i64 %143, 61
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %144, i64* %RDX.i2231, align 8
  %154 = add i64 %133, 246904
  %155 = add i64 %133, 21
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %6, align 8
  store i64 %154, i64* %3, align 8
  %call2_409bf8 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %154, %struct.Memory* %call2_409bd0)
  %159 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i2237, align 8
  store i64 1084, i64* %RSI.i2223, align 8
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -136
  %162 = load i64, i64* %RAX.i2009, align 8
  %163 = add i64 %159, 22
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -20
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RBX.i27, align 8
  %173 = icmp eq i32 %171, 0
  %174 = zext i1 %173 to i8
  %175 = lshr i32 %171, 31
  %176 = trunc i32 %175 to i8
  %177 = sext i32 %171 to i64
  %178 = shl nsw i64 %177, 2
  store i64 %178, i64* %RAX.i2009, align 8
  store i8 %176, i8* %19, align 1
  %179 = trunc i64 %178 to i32
  %180 = and i32 %179, 252
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 %174, i8* %35, align 1
  %185 = lshr i64 %177, 61
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %178, i64* %RDX.i2231, align 8
  %188 = add i64 %167, 246861
  %189 = add i64 %167, 21
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, -8
  %192 = inttoptr i64 %191 to i64*
  store i64 %189, i64* %192, align 8
  store i64 %191, i64* %6, align 8
  store i64 %188, i64* %3, align 8
  %call2_409c23 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %188, %struct.Memory* %call2_409bf8)
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -144
  %195 = load i64, i64* %RAX.i2009, align 8
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 7
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -72
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 4
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX.i2009, align 8
  %205 = add i64 %201, 7
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX.i2009, align 8
  %208 = add i64 %207, 16
  %209 = add i64 %201, 14
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 0, i32* %210, align 4
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -32
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RAX.i2009, align 8
  %217 = add i64 %216, 336
  %218 = add i64 %213, 10
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RSI.i2223, align 8
  %222 = add i64 %211, -72
  %223 = add i64 %213, 14
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RAX.i2009, align 8
  %226 = add i64 %213, 17
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX.i2009, align 8
  %229 = add i64 %213, 19
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 %220, i32* %230, align 4
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -136
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 7
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %232 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RAX.i2009, align 8
  %237 = add i64 %233, 13
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 0, i32* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -72
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX.i2009, align 8
  %245 = add i64 %241, 7
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i2009, align 8
  %248 = add i64 %247, 12
  %249 = add i64 %241, 14
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 -987654321, i32* %250, align 4
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -72
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i2009, align 8
  %257 = add i64 %253, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RAX.i2009, align 8
  %260 = add i64 %259, 8
  %261 = add i64 %253, 14
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  store i32 -987654321, i32* %262, align 4
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -72
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 4
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RAX.i2009, align 8
  %269 = add i64 %265, 7
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RAX.i2009, align 8
  %272 = add i64 %271, 4
  %273 = add i64 %265, 14
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 -987654321, i32* %274, align 4
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -144
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 7
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i2009, align 8
  %281 = add i64 %277, 13
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  store i32 -1, i32* %282, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -156
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 10
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  store i32 0, i32* %287, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_409c9e

block_.L_409c9e:                                  ; preds = %block_409cb4, %entry
  %288 = phi i64 [ %411, %block_409cb4 ], [ %.pre, %entry ]
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -156
  %291 = add i64 %288, 6
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i2009, align 8
  %295 = add i64 %289, -32
  %296 = add i64 %288, 10
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %RCX.i2228, align 8
  %299 = add i64 %298, 136
  %300 = add i64 %288, 16
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = sub i32 %293, %302
  %304 = icmp ult i32 %293, %302
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %19, align 1
  %306 = and i32 %303, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %26, align 1
  %311 = xor i32 %302, %293
  %312 = xor i32 %311, %303
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  store i8 %315, i8* %32, align 1
  %316 = icmp eq i32 %303, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %35, align 1
  %318 = lshr i32 %303, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %38, align 1
  %320 = lshr i32 %293, 31
  %321 = lshr i32 %302, 31
  %322 = xor i32 %321, %320
  %323 = xor i32 %318, %320
  %324 = add nuw nsw i32 %323, %322
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %44, align 1
  %327 = icmp ne i8 %319, 0
  %328 = xor i1 %327, %325
  %.demorgan = or i1 %316, %328
  %.v = select i1 %.demorgan, i64 22, i64 105
  %329 = add i64 %288, %.v
  store i64 %329, i64* %3, align 8
  br i1 %.demorgan, label %block_409cb4, label %block_.L_409d07

block_409cb4:                                     ; preds = %block_.L_409c9e
  %330 = add i64 %289, -88
  %331 = add i64 %329, 4
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RAX.i2009, align 8
  %334 = add i64 %329, 7
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RAX.i2009, align 8
  %337 = add i64 %329, 14
  store i64 %337, i64* %3, align 8
  %338 = load i32, i32* %292, align 4
  %339 = sext i32 %338 to i64
  store i64 %339, i64* %RCX.i2228, align 8
  %340 = shl nsw i64 %339, 2
  %341 = add i64 %340, %336
  %342 = add i64 %329, 21
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  store i32 -987654321, i32* %343, align 4
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -96
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 4
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %345 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RAX.i2009, align 8
  %350 = add i64 %346, 7
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX.i2009, align 8
  %353 = add i64 %344, -156
  %354 = add i64 %346, 14
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RCX.i2228, align 8
  %358 = shl nsw i64 %357, 2
  %359 = add i64 %358, %352
  %360 = add i64 %346, 21
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  store i32 -987654321, i32* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -80
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RAX.i2009, align 8
  %368 = add i64 %364, 7
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RAX.i2009, align 8
  %371 = add i64 %362, -156
  %372 = add i64 %364, 14
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RCX.i2228, align 8
  %376 = shl nsw i64 %375, 2
  %377 = add i64 %376, %370
  %378 = add i64 %364, 21
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 -987654321, i32* %379, align 4
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -156
  %382 = load i64, i64* %3, align 8
  %383 = add i64 %382, 6
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, 1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i2009, align 8
  %388 = icmp eq i32 %385, -1
  %389 = icmp eq i32 %386, 0
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %19, align 1
  %392 = and i32 %386, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %26, align 1
  %397 = xor i32 %386, %385
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %32, align 1
  %401 = zext i1 %389 to i8
  store i8 %401, i8* %35, align 1
  %402 = lshr i32 %386, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %38, align 1
  %404 = lshr i32 %385, 31
  %405 = xor i32 %402, %404
  %406 = add nuw nsw i32 %405, %402
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %44, align 1
  %409 = add i64 %382, 15
  store i64 %409, i64* %3, align 8
  store i32 %386, i32* %384, align 4
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, -100
  store i64 %411, i64* %3, align 8
  br label %block_.L_409c9e

block_.L_409d07:                                  ; preds = %block_.L_409c9e
  %412 = add i64 %289, -152
  %413 = add i64 %329, 10
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  store i32 1, i32* %414, align 4
  %ECX.i2015 = bitcast %union.anon* %70 to i32*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %416 = bitcast %union.anon* %63 to i32*
  %SIL.i2001 = bitcast %union.anon* %56 to i8*
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_409d11

block_.L_409d11:                                  ; preds = %block_.L_40a8a9, %block_.L_409d07
  %417 = phi i64 [ %.pre41, %block_.L_409d07 ], [ %4152, %block_.L_40a8a9 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_409c23, %block_.L_409d07 ], [ %490, %block_.L_40a8a9 ]
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -152
  %420 = add i64 %417, 6
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX.i2009, align 8
  %424 = add i64 %418, -20
  %425 = add i64 %417, 9
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sub i32 %422, %427
  %429 = icmp ult i32 %422, %427
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %19, align 1
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %26, align 1
  %436 = xor i32 %427, %422
  %437 = xor i32 %436, %428
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %32, align 1
  %441 = icmp eq i32 %428, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %35, align 1
  %443 = lshr i32 %428, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %38, align 1
  %445 = lshr i32 %422, 31
  %446 = lshr i32 %427, 31
  %447 = xor i32 %446, %445
  %448 = xor i32 %443, %445
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %44, align 1
  %452 = icmp ne i8 %444, 0
  %453 = xor i1 %452, %450
  %.demorgan79 = or i1 %441, %453
  %.v82 = select i1 %.demorgan79, i64 15, i64 2993
  %454 = add i64 %417, %.v82
  store i64 %454, i64* %3, align 8
  br i1 %.demorgan79, label %block_409d20, label %block_.L_40a8c2

block_409d20:                                     ; preds = %block_.L_409d11
  store i64 2, i64* %RAX.i2009, align 8
  %455 = add i64 %454, 11
  store i64 %455, i64* %3, align 8
  %456 = load i32, i32* %421, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RCX.i2228, align 8
  %458 = add i64 %418, -176
  %459 = add i64 %454, 17
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 2, i32* %460, align 4
  %461 = load i32, i32* %ECX.i2015, align 4
  %462 = zext i32 %461 to i64
  %463 = load i64, i64* %3, align 8
  store i64 %462, i64* %RAX.i2009, align 8
  %464 = sext i32 %461 to i64
  %465 = lshr i64 %464, 32
  store i64 %465, i64* %415, align 8
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -176
  %468 = add i64 %463, 9
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i2228, align 8
  %472 = add i64 %463, 11
  store i64 %472, i64* %3, align 8
  %473 = sext i32 %470 to i64
  %474 = shl nuw i64 %465, 32
  %475 = or i64 %474, %462
  %476 = sdiv i64 %475, %473
  %477 = shl i64 %476, 32
  %478 = ashr exact i64 %477, 32
  %479 = icmp eq i64 %476, %478
  br i1 %479, label %482, label %480

; <label>:480:                                    ; preds = %block_409d20
  %481 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %472, %struct.Memory* %MEMORY.1)
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i32, i32* %416, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:482:                                    ; preds = %block_409d20
  %483 = srem i64 %475, %473
  %484 = and i64 %476, 4294967295
  store i64 %484, i64* %RAX.i2009, align 8
  %485 = and i64 %483, 4294967295
  store i64 %485, i64* %RDX.i2231, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %486 = trunc i64 %483 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %482, %480
  %487 = phi i64 [ %.pre44, %480 ], [ %472, %482 ]
  %488 = phi i32 [ %.pre43, %480 ], [ %486, %482 ]
  %489 = phi i64 [ %.pre42, %480 ], [ %466, %482 ]
  %490 = phi %struct.Memory* [ %481, %480 ], [ %MEMORY.1, %482 ]
  %491 = add i64 %489, -164
  %492 = add i64 %487, 6
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  store i32 %488, i32* %493, align 4
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -164
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %SIL.i2001, align 1
  store i8 0, i8* %19, align 1
  %502 = zext i1 %500 to i32
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = xor i8 %504, 1
  store i8 %505, i8* %26, align 1
  %506 = xor i8 %501, 1
  store i8 %506, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %507 = zext i1 %500 to i64
  store i64 %507, i64* %RDX.i2231, align 8
  %508 = add i64 %494, -168
  %509 = zext i1 %500 to i32
  %510 = add i64 %496, 29
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %508 to i32*
  store i32 %509, i32* %511, align 4
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -88
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RDI.i2237, align 8
  %518 = add i64 %512, -164
  %519 = add i64 %514, 11
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %R8.i2250, align 8
  %523 = shl nsw i64 %522, 3
  %524 = add i64 %523, %517
  %525 = add i64 %514, 15
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RDI.i2237, align 8
  %528 = add i64 %514, 21
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  store i32 -987654321, i32* %529, align 4
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -96
  %532 = load i64, i64* %3, align 8
  %533 = add i64 %532, 4
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %531 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RDI.i2237, align 8
  %536 = add i64 %530, -164
  %537 = add i64 %532, 11
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %R8.i2250, align 8
  %541 = shl nsw i64 %540, 3
  %542 = add i64 %541, %535
  %543 = add i64 %532, 15
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RDI.i2237, align 8
  %546 = add i64 %532, 21
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  store i32 -987654321, i32* %547, align 4
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -80
  %550 = load i64, i64* %3, align 8
  %551 = add i64 %550, 4
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %549 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RDI.i2237, align 8
  %554 = add i64 %548, -164
  %555 = add i64 %550, 11
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %R8.i2250, align 8
  %559 = shl nsw i64 %558, 3
  %560 = add i64 %559, %553
  %561 = add i64 %550, 15
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RDI.i2237, align 8
  %564 = add i64 %550, 21
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  store i32 -987654321, i32* %565, align 4
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -156
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 10
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %567 to i32*
  store i32 1, i32* %570, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_409da8

block_.L_409da8:                                  ; preds = %block_.L_40a4a1, %routine_idivl__ecx.exit
  %571 = phi i64 [ %2893, %block_.L_40a4a1 ], [ %.pre45, %routine_idivl__ecx.exit ]
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -156
  %574 = add i64 %571, 6
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i2009, align 8
  %578 = add i64 %572, -32
  %579 = add i64 %571, 10
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RCX.i2228, align 8
  %582 = add i64 %581, 136
  %583 = add i64 %571, 16
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = sub i32 %576, %585
  %587 = icmp ult i32 %576, %585
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %19, align 1
  %589 = and i32 %586, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %26, align 1
  %594 = xor i32 %585, %576
  %595 = xor i32 %594, %586
  %596 = lshr i32 %595, 4
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %32, align 1
  %599 = icmp eq i32 %586, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %35, align 1
  %601 = lshr i32 %586, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %38, align 1
  %603 = lshr i32 %576, 31
  %604 = lshr i32 %585, 31
  %605 = xor i32 %604, %603
  %606 = xor i32 %601, %603
  %607 = add nuw nsw i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %44, align 1
  %610 = icmp ne i8 %602, 0
  %611 = xor i1 %610, %608
  %.demorgan80 = or i1 %599, %611
  %.v84 = select i1 %.demorgan80, i64 22, i64 1810
  %612 = add i64 %571, %.v84
  store i64 %612, i64* %3, align 8
  br i1 %.demorgan80, label %block_409dbe, label %block_.L_40a4ba

block_409dbe:                                     ; preds = %block_.L_409da8
  %613 = add i64 %572, -80
  %614 = add i64 %612, 4
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RAX.i2009, align 8
  %617 = add i64 %572, -164
  %618 = add i64 %612, 11
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RCX.i2228, align 8
  %622 = shl nsw i64 %621, 3
  %623 = add i64 %622, %616
  %624 = add i64 %612, 15
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RAX.i2009, align 8
  %627 = add i64 %612, 22
  store i64 %627, i64* %3, align 8
  %628 = load i32, i32* %575, align 4
  %629 = sext i32 %628 to i64
  store i64 %629, i64* %RCX.i2228, align 8
  %630 = shl nsw i64 %629, 2
  %631 = add i64 %630, %626
  %632 = add i64 %612, 29
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  store i32 -987654321, i32* %633, align 4
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -80
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 4
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i2009, align 8
  %640 = add i64 %634, -168
  %641 = add i64 %636, 11
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX.i2228, align 8
  %645 = shl nsw i64 %644, 3
  %646 = add i64 %645, %639
  %647 = add i64 %636, 15
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RAX.i2009, align 8
  %650 = add i64 %634, -156
  %651 = add i64 %636, 21
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %653, -1
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDX.i2231, align 8
  %656 = icmp eq i32 %653, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %19, align 1
  %658 = and i32 %654, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %26, align 1
  %663 = xor i32 %654, %653
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %32, align 1
  %667 = icmp eq i32 %654, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %35, align 1
  %669 = lshr i32 %654, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %38, align 1
  %671 = lshr i32 %653, 31
  %672 = xor i32 %669, %671
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %44, align 1
  %676 = sext i32 %654 to i64
  store i64 %676, i64* %RCX.i2228, align 8
  %677 = shl nsw i64 %676, 2
  %678 = add i64 %649, %677
  %679 = add i64 %636, 30
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RDX.i2231, align 8
  %683 = add i64 %634, -32
  %684 = add i64 %636, 34
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RAX.i2009, align 8
  %687 = add i64 %686, 312
  %688 = add i64 %636, 41
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i2009, align 8
  %691 = add i64 %636, 44
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RAX.i2009, align 8
  %694 = add i64 %636, 50
  store i64 %694, i64* %3, align 8
  %695 = load i32, i32* %652, align 4
  %696 = add i32 %695, -1
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RSI.i2223, align 8
  %698 = icmp eq i32 %695, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %19, align 1
  %700 = and i32 %696, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %26, align 1
  %705 = xor i32 %696, %695
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %32, align 1
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %35, align 1
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %38, align 1
  %713 = lshr i32 %695, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %713
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %44, align 1
  %718 = sext i32 %696 to i64
  store i64 %718, i64* %RCX.i2228, align 8
  %719 = shl nsw i64 %718, 2
  %720 = add i64 %693, %719
  %721 = add i64 %636, 59
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %723, %681
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RDX.i2231, align 8
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -148
  %728 = add i64 %636, 65
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  store i32 %724, i32* %729, align 4
  %730 = load i32, i32* %416, align 4
  %731 = load i64, i64* %3, align 8
  %732 = add i32 %730, 987654321
  %733 = icmp ult i32 %730, -987654321
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %19, align 1
  %735 = and i32 %732, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %26, align 1
  %740 = xor i32 %732, %730
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %32, align 1
  %744 = icmp eq i32 %732, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %35, align 1
  %746 = lshr i32 %732, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %38, align 1
  %748 = lshr i32 %730, 31
  %749 = xor i32 %748, 1
  %750 = xor i32 %746, %748
  %751 = add nuw nsw i32 %750, %749
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %44, align 1
  %754 = icmp ne i8 %747, 0
  %755 = xor i1 %754, %752
  %756 = or i1 %744, %755
  %.v94 = select i1 %756, i64 98, i64 12
  %757 = add i64 %731, %.v94
  store i64 %757, i64* %3, align 8
  br i1 %756, label %block_.L_409e7e, label %block_409e28

block_409e28:                                     ; preds = %block_409dbe
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -148
  %760 = add i64 %757, 6
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RAX.i2009, align 8
  %764 = add i64 %758, -80
  %765 = add i64 %757, 10
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RCX.i2228, align 8
  %768 = add i64 %758, -164
  %769 = add i64 %757, 17
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = sext i32 %771 to i64
  store i64 %772, i64* %RDX.i2231, align 8
  %773 = shl nsw i64 %772, 3
  %774 = add i64 %773, %767
  %775 = add i64 %757, 21
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i64*
  %777 = load i64, i64* %776, align 8
  store i64 %777, i64* %RCX.i2228, align 8
  %778 = add i64 %758, -156
  %779 = add i64 %757, 28
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = sext i32 %781 to i64
  store i64 %782, i64* %RDX.i2231, align 8
  %783 = shl nsw i64 %782, 2
  %784 = add i64 %783, %777
  %785 = add i64 %757, 31
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  store i32 %762, i32* %786, align 4
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -112
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 4
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RCX.i2228, align 8
  %793 = add i64 %787, -168
  %794 = add i64 %789, 11
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = sext i32 %796 to i64
  store i64 %797, i64* %RDX.i2231, align 8
  %798 = shl nsw i64 %797, 3
  %799 = add i64 %798, %792
  %800 = add i64 %789, 15
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RCX.i2228, align 8
  %803 = add i64 %787, -156
  %804 = add i64 %789, 21
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, -1
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RAX.i2009, align 8
  %809 = icmp eq i32 %806, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %19, align 1
  %811 = and i32 %807, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %26, align 1
  %816 = xor i32 %807, %806
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %32, align 1
  %820 = icmp eq i32 %807, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %35, align 1
  %822 = lshr i32 %807, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %38, align 1
  %824 = lshr i32 %806, 31
  %825 = xor i32 %822, %824
  %826 = add nuw nsw i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %44, align 1
  %829 = sext i32 %807 to i64
  store i64 %829, i64* %RDX.i2231, align 8
  %830 = shl nsw i64 %829, 2
  %831 = add i64 %802, %830
  %832 = add i64 %789, 30
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX.i2009, align 8
  %836 = add i64 %789, 34
  store i64 %836, i64* %3, align 8
  %837 = load i64, i64* %791, align 8
  store i64 %837, i64* %RCX.i2228, align 8
  %838 = add i64 %787, -164
  %839 = add i64 %789, 41
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sext i32 %841 to i64
  store i64 %842, i64* %RDX.i2231, align 8
  %843 = shl nsw i64 %842, 3
  %844 = add i64 %843, %837
  %845 = add i64 %789, 45
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RCX.i2228, align 8
  %848 = add i64 %789, 52
  store i64 %848, i64* %3, align 8
  %849 = load i32, i32* %805, align 4
  %850 = sext i32 %849 to i64
  store i64 %850, i64* %RDX.i2231, align 8
  %851 = shl nsw i64 %850, 2
  %852 = add i64 %851, %847
  %853 = add i64 %789, 55
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  store i32 %834, i32* %854, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_409e7e

block_.L_409e7e:                                  ; preds = %block_409e28, %block_409dbe
  %855 = phi i64 [ %.pre46, %block_409e28 ], [ %757, %block_409dbe ]
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -96
  %858 = add i64 %855, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i2009, align 8
  %861 = add i64 %856, -168
  %862 = add i64 %855, 11
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX.i2228, align 8
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %866, %860
  %868 = add i64 %855, 15
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %RAX.i2009, align 8
  %871 = add i64 %856, -156
  %872 = add i64 %855, 21
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, -1
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RDX.i2231, align 8
  %877 = icmp eq i32 %874, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %19, align 1
  %879 = and i32 %875, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %26, align 1
  %884 = xor i32 %875, %874
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %32, align 1
  %888 = icmp eq i32 %875, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %35, align 1
  %890 = lshr i32 %875, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %38, align 1
  %892 = lshr i32 %874, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %44, align 1
  %897 = sext i32 %875 to i64
  store i64 %897, i64* %RCX.i2228, align 8
  %898 = shl nsw i64 %897, 2
  %899 = add i64 %870, %898
  %900 = add i64 %855, 30
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RDX.i2231, align 8
  %904 = add i64 %856, -32
  %905 = add i64 %855, 34
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RAX.i2009, align 8
  %908 = add i64 %907, 312
  %909 = add i64 %855, 41
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i2009, align 8
  %912 = add i64 %911, 24
  %913 = add i64 %855, 45
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %RAX.i2009, align 8
  %916 = add i64 %855, 51
  store i64 %916, i64* %3, align 8
  %917 = load i32, i32* %873, align 4
  %918 = add i32 %917, -1
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RSI.i2223, align 8
  %920 = icmp eq i32 %917, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %19, align 1
  %922 = and i32 %918, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %26, align 1
  %927 = xor i32 %918, %917
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %32, align 1
  %931 = icmp eq i32 %918, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %35, align 1
  %933 = lshr i32 %918, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %38, align 1
  %935 = lshr i32 %917, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %935
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %44, align 1
  %940 = sext i32 %918 to i64
  store i64 %940, i64* %RCX.i2228, align 8
  %941 = shl nsw i64 %940, 2
  %942 = add i64 %915, %941
  %943 = add i64 %855, 60
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, %902
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RDX.i2231, align 8
  %948 = icmp ult i32 %946, %902
  %949 = icmp ult i32 %946, %945
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %19, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %26, align 1
  %957 = xor i32 %945, %902
  %958 = xor i32 %957, %946
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %32, align 1
  %962 = icmp eq i32 %946, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %35, align 1
  %964 = lshr i32 %946, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %38, align 1
  %966 = lshr i32 %902, 31
  %967 = lshr i32 %945, 31
  %968 = xor i32 %964, %966
  %969 = xor i32 %964, %967
  %970 = add nuw nsw i32 %968, %969
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %44, align 1
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -148
  %975 = add i64 %855, 66
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  store i32 %946, i32* %976, align 4
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -80
  %979 = load i64, i64* %3, align 8
  %980 = add i64 %979, 4
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %978 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RAX.i2009, align 8
  %983 = add i64 %977, -164
  %984 = add i64 %979, 11
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = sext i32 %986 to i64
  store i64 %987, i64* %RCX.i2228, align 8
  %988 = shl nsw i64 %987, 3
  %989 = add i64 %988, %982
  %990 = add i64 %979, 15
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %RAX.i2009, align 8
  %993 = add i64 %977, -156
  %994 = add i64 %979, 22
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i32*
  %996 = load i32, i32* %995, align 4
  %997 = sext i32 %996 to i64
  store i64 %997, i64* %RCX.i2228, align 8
  %998 = load i32, i32* %416, align 4
  %999 = shl nsw i64 %997, 2
  %1000 = add i64 %992, %999
  %1001 = add i64 %979, 25
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sub i32 %998, %1003
  %1005 = icmp ult i32 %998, %1003
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %19, align 1
  %1007 = and i32 %1004, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %26, align 1
  %1012 = xor i32 %1003, %998
  %1013 = xor i32 %1012, %1004
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %32, align 1
  %1017 = icmp eq i32 %1004, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %35, align 1
  %1019 = lshr i32 %1004, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %38, align 1
  %1021 = lshr i32 %998, 31
  %1022 = lshr i32 %1003, 31
  %1023 = xor i32 %1022, %1021
  %1024 = xor i32 %1019, %1021
  %1025 = add nuw nsw i32 %1024, %1023
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %44, align 1
  %1028 = icmp ne i8 %1020, 0
  %1029 = xor i1 %1028, %1026
  %1030 = or i1 %1017, %1029
  %.v95 = select i1 %1030, i64 117, i64 31
  %1031 = add i64 %979, %.v95
  store i64 %1031, i64* %3, align 8
  br i1 %1030, label %block_.L_409f35, label %block_409edf

block_409edf:                                     ; preds = %block_.L_409e7e
  %1032 = add i64 %977, -148
  %1033 = add i64 %1031, 6
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX.i2009, align 8
  %1037 = add i64 %1031, 10
  store i64 %1037, i64* %3, align 8
  %1038 = load i64, i64* %981, align 8
  store i64 %1038, i64* %RCX.i2228, align 8
  %1039 = add i64 %1031, 17
  store i64 %1039, i64* %3, align 8
  %1040 = load i32, i32* %985, align 4
  %1041 = sext i32 %1040 to i64
  store i64 %1041, i64* %RDX.i2231, align 8
  %1042 = shl nsw i64 %1041, 3
  %1043 = add i64 %1042, %1038
  %1044 = add i64 %1031, 21
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RCX.i2228, align 8
  %1047 = add i64 %1031, 28
  store i64 %1047, i64* %3, align 8
  %1048 = load i32, i32* %995, align 4
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RDX.i2231, align 8
  %1050 = shl nsw i64 %1049, 2
  %1051 = add i64 %1050, %1046
  %1052 = add i64 %1031, 31
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  store i32 %1035, i32* %1053, align 4
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -128
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RCX.i2228, align 8
  %1060 = add i64 %1054, -168
  %1061 = add i64 %1056, 11
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RDX.i2231, align 8
  %1065 = shl nsw i64 %1064, 3
  %1066 = add i64 %1065, %1059
  %1067 = add i64 %1056, 15
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RCX.i2228, align 8
  %1070 = add i64 %1054, -156
  %1071 = add i64 %1056, 21
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, -1
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i2009, align 8
  %1076 = icmp eq i32 %1073, 0
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %19, align 1
  %1078 = and i32 %1074, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %26, align 1
  %1083 = xor i32 %1074, %1073
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %32, align 1
  %1087 = icmp eq i32 %1074, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %35, align 1
  %1089 = lshr i32 %1074, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %38, align 1
  %1091 = lshr i32 %1073, 31
  %1092 = xor i32 %1089, %1091
  %1093 = add nuw nsw i32 %1092, %1091
  %1094 = icmp eq i32 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %44, align 1
  %1096 = sext i32 %1074 to i64
  store i64 %1096, i64* %RDX.i2231, align 8
  %1097 = shl nsw i64 %1096, 2
  %1098 = add i64 %1069, %1097
  %1099 = add i64 %1056, 30
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX.i2009, align 8
  %1103 = add i64 %1054, -112
  %1104 = add i64 %1056, 34
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RCX.i2228, align 8
  %1107 = add i64 %1054, -164
  %1108 = add i64 %1056, 41
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = sext i32 %1110 to i64
  store i64 %1111, i64* %RDX.i2231, align 8
  %1112 = shl nsw i64 %1111, 3
  %1113 = add i64 %1112, %1106
  %1114 = add i64 %1056, 45
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i64*
  %1116 = load i64, i64* %1115, align 8
  store i64 %1116, i64* %RCX.i2228, align 8
  %1117 = add i64 %1056, 52
  store i64 %1117, i64* %3, align 8
  %1118 = load i32, i32* %1072, align 4
  %1119 = sext i32 %1118 to i64
  store i64 %1119, i64* %RDX.i2231, align 8
  %1120 = shl nsw i64 %1119, 2
  %1121 = add i64 %1120, %1116
  %1122 = add i64 %1056, 55
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  store i32 %1101, i32* %1123, align 4
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_409f35

block_.L_409f35:                                  ; preds = %block_409edf, %block_.L_409e7e
  %1124 = phi i64 [ %.pre48, %block_409edf ], [ %1031, %block_.L_409e7e ]
  %1125 = phi i64 [ %.pre47, %block_409edf ], [ %977, %block_.L_409e7e ]
  %1126 = add i64 %1125, -72
  %1127 = add i64 %1124, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i2009, align 8
  %1130 = add i64 %1125, -168
  %1131 = add i64 %1124, 11
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RCX.i2228, align 8
  %1135 = shl nsw i64 %1134, 3
  %1136 = add i64 %1135, %1129
  %1137 = add i64 %1124, 15
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RAX.i2009, align 8
  %1140 = add i64 %1124, 17
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RDX.i2231, align 8
  %1144 = add i64 %1125, -32
  %1145 = add i64 %1124, 21
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RAX.i2009, align 8
  %1148 = add i64 %1147, 368
  %1149 = add i64 %1124, 28
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RAX.i2009, align 8
  %1152 = add i64 %1125, -156
  %1153 = add i64 %1124, 35
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sext i32 %1155 to i64
  store i64 %1156, i64* %RCX.i2228, align 8
  %1157 = shl nsw i64 %1156, 2
  %1158 = add i64 %1151, %1157
  %1159 = add i64 %1124, 38
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = add i32 %1161, %1142
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i2231, align 8
  %1164 = icmp ult i32 %1162, %1142
  %1165 = icmp ult i32 %1162, %1161
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %19, align 1
  %1168 = and i32 %1162, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %26, align 1
  %1173 = xor i32 %1161, %1142
  %1174 = xor i32 %1173, %1162
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %32, align 1
  %1178 = icmp eq i32 %1162, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %35, align 1
  %1180 = lshr i32 %1162, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %38, align 1
  %1182 = lshr i32 %1142, 31
  %1183 = lshr i32 %1161, 31
  %1184 = xor i32 %1180, %1182
  %1185 = xor i32 %1180, %1183
  %1186 = add nuw nsw i32 %1184, %1185
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %44, align 1
  %1189 = add i64 %1125, -148
  %1190 = add i64 %1124, 44
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  store i32 %1162, i32* %1191, align 4
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -80
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1193 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RAX.i2009, align 8
  %1198 = add i64 %1192, -164
  %1199 = add i64 %1194, 11
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sext i32 %1201 to i64
  store i64 %1202, i64* %RCX.i2228, align 8
  %1203 = shl nsw i64 %1202, 3
  %1204 = add i64 %1203, %1197
  %1205 = add i64 %1194, 15
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RAX.i2009, align 8
  %1208 = add i64 %1192, -156
  %1209 = add i64 %1194, 22
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = sext i32 %1211 to i64
  store i64 %1212, i64* %RCX.i2228, align 8
  %1213 = load i32, i32* %416, align 4
  %1214 = shl nsw i64 %1212, 2
  %1215 = add i64 %1207, %1214
  %1216 = add i64 %1194, 25
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = sub i32 %1213, %1218
  %1220 = icmp ult i32 %1213, %1218
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %19, align 1
  %1222 = and i32 %1219, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %26, align 1
  %1227 = xor i32 %1218, %1213
  %1228 = xor i32 %1227, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %32, align 1
  %1232 = icmp eq i32 %1219, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %35, align 1
  %1234 = lshr i32 %1219, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %38, align 1
  %1236 = lshr i32 %1213, 31
  %1237 = lshr i32 %1218, 31
  %1238 = xor i32 %1237, %1236
  %1239 = xor i32 %1234, %1236
  %1240 = add nuw nsw i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %44, align 1
  %1243 = icmp ne i8 %1235, 0
  %1244 = xor i1 %1243, %1241
  %1245 = or i1 %1232, %1244
  %.v96 = select i1 %1245, i64 96, i64 31
  %1246 = add i64 %1194, %.v96
  store i64 %1246, i64* %3, align 8
  br i1 %1245, label %block_.L_409fc1, label %block_409f80

block_409f80:                                     ; preds = %block_.L_409f35
  %1247 = add i64 %1192, -148
  %1248 = add i64 %1246, 6
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i2009, align 8
  %1252 = add i64 %1246, 10
  store i64 %1252, i64* %3, align 8
  %1253 = load i64, i64* %1196, align 8
  store i64 %1253, i64* %RCX.i2228, align 8
  %1254 = add i64 %1246, 17
  store i64 %1254, i64* %3, align 8
  %1255 = load i32, i32* %1200, align 4
  %1256 = sext i32 %1255 to i64
  store i64 %1256, i64* %RDX.i2231, align 8
  %1257 = shl nsw i64 %1256, 3
  %1258 = add i64 %1257, %1253
  %1259 = add i64 %1246, 21
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RCX.i2228, align 8
  %1262 = add i64 %1246, 28
  store i64 %1262, i64* %3, align 8
  %1263 = load i32, i32* %1210, align 4
  %1264 = sext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i2231, align 8
  %1265 = shl nsw i64 %1264, 2
  %1266 = add i64 %1265, %1261
  %1267 = add i64 %1246, 31
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  store i32 %1250, i32* %1268, align 4
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -152
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 6
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, -1
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RAX.i2009, align 8
  %1277 = icmp eq i32 %1274, 0
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %19, align 1
  %1279 = and i32 %1275, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %26, align 1
  %1284 = xor i32 %1275, %1274
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %32, align 1
  %1288 = icmp eq i32 %1275, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %35, align 1
  %1290 = lshr i32 %1275, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %38, align 1
  %1292 = lshr i32 %1274, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1292
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %44, align 1
  %1297 = add i64 %1269, -112
  %1298 = add i64 %1271, 13
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i64*
  %1300 = load i64, i64* %1299, align 8
  store i64 %1300, i64* %RCX.i2228, align 8
  %1301 = add i64 %1269, -164
  %1302 = add i64 %1271, 20
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = sext i32 %1304 to i64
  store i64 %1305, i64* %RDX.i2231, align 8
  %1306 = shl nsw i64 %1305, 3
  %1307 = add i64 %1306, %1300
  %1308 = add i64 %1271, 24
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %RCX.i2228, align 8
  %1311 = add i64 %1269, -156
  %1312 = add i64 %1271, 31
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = sext i32 %1314 to i64
  store i64 %1315, i64* %RDX.i2231, align 8
  %1316 = shl nsw i64 %1315, 2
  %1317 = add i64 %1316, %1310
  %1318 = add i64 %1271, 34
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  store i32 %1275, i32* %1319, align 4
  %.pre49 = load i64, i64* %RBP.i, align 8
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_409fc1

block_.L_409fc1:                                  ; preds = %block_409f80, %block_.L_409f35
  %1320 = phi i64 [ %.pre50, %block_409f80 ], [ %1246, %block_.L_409f35 ]
  %1321 = phi i64 [ %.pre49, %block_409f80 ], [ %1192, %block_.L_409f35 ]
  %1322 = add i64 %1321, -88
  %1323 = add i64 %1320, 4
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RAX.i2009, align 8
  %1326 = add i64 %1321, -168
  %1327 = add i64 %1320, 11
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = sext i32 %1329 to i64
  store i64 %1330, i64* %RCX.i2228, align 8
  %1331 = shl nsw i64 %1330, 3
  %1332 = add i64 %1331, %1325
  %1333 = add i64 %1320, 15
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %RAX.i2009, align 8
  %1336 = add i64 %1321, -156
  %1337 = add i64 %1320, 21
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = add i32 %1339, -1
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RDX.i2231, align 8
  %1342 = icmp eq i32 %1339, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %19, align 1
  %1344 = and i32 %1340, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %26, align 1
  %1349 = xor i32 %1340, %1339
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %32, align 1
  %1353 = icmp eq i32 %1340, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %35, align 1
  %1355 = lshr i32 %1340, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %38, align 1
  %1357 = lshr i32 %1339, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1357
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %44, align 1
  %1362 = sext i32 %1340 to i64
  store i64 %1362, i64* %RCX.i2228, align 8
  %1363 = shl nsw i64 %1362, 2
  %1364 = add i64 %1335, %1363
  %1365 = add i64 %1320, 30
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RDX.i2231, align 8
  %1369 = add i64 %1321, -32
  %1370 = add i64 %1320, 34
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RAX.i2009, align 8
  %1373 = add i64 %1372, 312
  %1374 = add i64 %1320, 41
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  store i64 %1376, i64* %RAX.i2009, align 8
  %1377 = add i64 %1376, 40
  %1378 = add i64 %1320, 45
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i64*
  %1380 = load i64, i64* %1379, align 8
  store i64 %1380, i64* %RAX.i2009, align 8
  %1381 = add i64 %1320, 51
  store i64 %1381, i64* %3, align 8
  %1382 = load i32, i32* %1338, align 4
  %1383 = add i32 %1382, -1
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RSI.i2223, align 8
  %1385 = icmp eq i32 %1382, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %19, align 1
  %1387 = and i32 %1383, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %26, align 1
  %1392 = xor i32 %1383, %1382
  %1393 = lshr i32 %1392, 4
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  store i8 %1395, i8* %32, align 1
  %1396 = icmp eq i32 %1383, 0
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %35, align 1
  %1398 = lshr i32 %1383, 31
  %1399 = trunc i32 %1398 to i8
  store i8 %1399, i8* %38, align 1
  %1400 = lshr i32 %1382, 31
  %1401 = xor i32 %1398, %1400
  %1402 = add nuw nsw i32 %1401, %1400
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %44, align 1
  %1405 = sext i32 %1383 to i64
  store i64 %1405, i64* %RCX.i2228, align 8
  %1406 = shl nsw i64 %1405, 2
  %1407 = add i64 %1380, %1406
  %1408 = add i64 %1320, 60
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = add i32 %1410, %1367
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RDX.i2231, align 8
  %1413 = icmp ult i32 %1411, %1367
  %1414 = icmp ult i32 %1411, %1410
  %1415 = or i1 %1413, %1414
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %19, align 1
  %1417 = and i32 %1411, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %26, align 1
  %1422 = xor i32 %1410, %1367
  %1423 = xor i32 %1422, %1411
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  store i8 %1426, i8* %32, align 1
  %1427 = icmp eq i32 %1411, 0
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %35, align 1
  %1429 = lshr i32 %1411, 31
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, i8* %38, align 1
  %1431 = lshr i32 %1367, 31
  %1432 = lshr i32 %1410, 31
  %1433 = xor i32 %1429, %1431
  %1434 = xor i32 %1429, %1432
  %1435 = add nuw nsw i32 %1433, %1434
  %1436 = icmp eq i32 %1435, 2
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %44, align 1
  %1438 = load i64, i64* %RBP.i, align 8
  %1439 = add i64 %1438, -148
  %1440 = add i64 %1320, 66
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  store i32 %1411, i32* %1441, align 4
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -80
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i64*
  %1447 = load i64, i64* %1446, align 8
  store i64 %1447, i64* %RAX.i2009, align 8
  %1448 = add i64 %1442, -164
  %1449 = add i64 %1444, 11
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = sext i32 %1451 to i64
  store i64 %1452, i64* %RCX.i2228, align 8
  %1453 = shl nsw i64 %1452, 3
  %1454 = add i64 %1453, %1447
  %1455 = add i64 %1444, 15
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i64*
  %1457 = load i64, i64* %1456, align 8
  store i64 %1457, i64* %RAX.i2009, align 8
  %1458 = add i64 %1442, -156
  %1459 = add i64 %1444, 22
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i32*
  %1461 = load i32, i32* %1460, align 4
  %1462 = sext i32 %1461 to i64
  store i64 %1462, i64* %RCX.i2228, align 8
  %1463 = load i32, i32* %416, align 4
  %1464 = shl nsw i64 %1462, 2
  %1465 = add i64 %1457, %1464
  %1466 = add i64 %1444, 25
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = sub i32 %1463, %1468
  %1470 = icmp ult i32 %1463, %1468
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %19, align 1
  %1472 = and i32 %1469, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %26, align 1
  %1477 = xor i32 %1468, %1463
  %1478 = xor i32 %1477, %1469
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %32, align 1
  %1482 = icmp eq i32 %1469, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %35, align 1
  %1484 = lshr i32 %1469, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %38, align 1
  %1486 = lshr i32 %1463, 31
  %1487 = lshr i32 %1468, 31
  %1488 = xor i32 %1487, %1486
  %1489 = xor i32 %1484, %1486
  %1490 = add nuw nsw i32 %1489, %1488
  %1491 = icmp eq i32 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %44, align 1
  %1493 = icmp ne i8 %1485, 0
  %1494 = xor i1 %1493, %1491
  %1495 = or i1 %1482, %1494
  %.v97 = select i1 %1495, i64 117, i64 31
  %1496 = add i64 %1444, %.v97
  store i64 %1496, i64* %3, align 8
  br i1 %1495, label %block_.L_40a078, label %block_40a022

block_40a022:                                     ; preds = %block_.L_409fc1
  %1497 = add i64 %1442, -148
  %1498 = add i64 %1496, 6
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RAX.i2009, align 8
  %1502 = add i64 %1496, 10
  store i64 %1502, i64* %3, align 8
  %1503 = load i64, i64* %1446, align 8
  store i64 %1503, i64* %RCX.i2228, align 8
  %1504 = add i64 %1496, 17
  store i64 %1504, i64* %3, align 8
  %1505 = load i32, i32* %1450, align 4
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RDX.i2231, align 8
  %1507 = shl nsw i64 %1506, 3
  %1508 = add i64 %1507, %1503
  %1509 = add i64 %1496, 21
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RCX.i2228, align 8
  %1512 = add i64 %1496, 28
  store i64 %1512, i64* %3, align 8
  %1513 = load i32, i32* %1460, align 4
  %1514 = sext i32 %1513 to i64
  store i64 %1514, i64* %RDX.i2231, align 8
  %1515 = shl nsw i64 %1514, 2
  %1516 = add i64 %1515, %1511
  %1517 = add i64 %1496, 31
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  store i32 %1500, i32* %1518, align 4
  %1519 = load i64, i64* %RBP.i, align 8
  %1520 = add i64 %1519, -120
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %RCX.i2228, align 8
  %1525 = add i64 %1519, -168
  %1526 = add i64 %1521, 11
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  %1528 = load i32, i32* %1527, align 4
  %1529 = sext i32 %1528 to i64
  store i64 %1529, i64* %RDX.i2231, align 8
  %1530 = shl nsw i64 %1529, 3
  %1531 = add i64 %1530, %1524
  %1532 = add i64 %1521, 15
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %RCX.i2228, align 8
  %1535 = add i64 %1519, -156
  %1536 = add i64 %1521, 21
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = add i32 %1538, -1
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RAX.i2009, align 8
  %1541 = icmp eq i32 %1538, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %19, align 1
  %1543 = and i32 %1539, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %26, align 1
  %1548 = xor i32 %1539, %1538
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %32, align 1
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %35, align 1
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %38, align 1
  %1556 = lshr i32 %1538, 31
  %1557 = xor i32 %1554, %1556
  %1558 = add nuw nsw i32 %1557, %1556
  %1559 = icmp eq i32 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %44, align 1
  %1561 = sext i32 %1539 to i64
  store i64 %1561, i64* %RDX.i2231, align 8
  %1562 = shl nsw i64 %1561, 2
  %1563 = add i64 %1534, %1562
  %1564 = add i64 %1521, 30
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RAX.i2009, align 8
  %1568 = add i64 %1519, -112
  %1569 = add i64 %1521, 34
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i64*
  %1571 = load i64, i64* %1570, align 8
  store i64 %1571, i64* %RCX.i2228, align 8
  %1572 = add i64 %1519, -164
  %1573 = add i64 %1521, 41
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = sext i32 %1575 to i64
  store i64 %1576, i64* %RDX.i2231, align 8
  %1577 = shl nsw i64 %1576, 3
  %1578 = add i64 %1577, %1571
  %1579 = add i64 %1521, 45
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i64*
  %1581 = load i64, i64* %1580, align 8
  store i64 %1581, i64* %RCX.i2228, align 8
  %1582 = add i64 %1521, 52
  store i64 %1582, i64* %3, align 8
  %1583 = load i32, i32* %1537, align 4
  %1584 = sext i32 %1583 to i64
  store i64 %1584, i64* %RDX.i2231, align 8
  %1585 = shl nsw i64 %1584, 2
  %1586 = add i64 %1585, %1581
  %1587 = add i64 %1521, 55
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  store i32 %1566, i32* %1588, align 4
  %.pre51 = load i64, i64* %RBP.i, align 8
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_40a078

block_.L_40a078:                                  ; preds = %block_40a022, %block_.L_409fc1
  %1589 = phi i64 [ %.pre52, %block_40a022 ], [ %1496, %block_.L_409fc1 ]
  %1590 = phi i64 [ %.pre51, %block_40a022 ], [ %1442, %block_.L_409fc1 ]
  %1591 = add i64 %1590, -32
  %1592 = add i64 %1589, 4
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i64*
  %1594 = load i64, i64* %1593, align 8
  store i64 %1594, i64* %RAX.i2009, align 8
  %1595 = add i64 %1594, 320
  %1596 = add i64 %1589, 11
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i64*
  %1598 = load i64, i64* %1597, align 8
  store i64 %1598, i64* %RAX.i2009, align 8
  %1599 = add i64 %1590, -16
  %1600 = add i64 %1589, 15
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i64*
  %1602 = load i64, i64* %1601, align 8
  store i64 %1602, i64* %RCX.i2228, align 8
  %1603 = add i64 %1590, -152
  %1604 = add i64 %1589, 22
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = sext i32 %1606 to i64
  store i64 %1607, i64* %RDX.i2231, align 8
  %1608 = add i64 %1602, %1607
  %1609 = add i64 %1589, 26
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i8*
  %1611 = load i8, i8* %1610, align 1
  %1612 = sext i8 %1611 to i64
  %1613 = and i64 %1612, 4294967295
  store i64 %1613, i64* %RSI.i2223, align 8
  %1614 = sext i8 %1611 to i64
  store i64 %1614, i64* %RCX.i2228, align 8
  %1615 = shl nsw i64 %1614, 3
  %1616 = add i64 %1598, %1615
  %1617 = add i64 %1589, 33
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i64*
  %1619 = load i64, i64* %1618, align 8
  store i64 %1619, i64* %RAX.i2009, align 8
  %1620 = add i64 %1590, -156
  %1621 = add i64 %1589, 40
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = sext i32 %1623 to i64
  store i64 %1624, i64* %RCX.i2228, align 8
  %1625 = shl nsw i64 %1624, 2
  %1626 = add i64 %1625, %1619
  %1627 = add i64 %1589, 47
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = add i32 %1629, 987654321
  %1631 = icmp ult i32 %1629, -987654321
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %19, align 1
  %1633 = and i32 %1630, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %26, align 1
  %1638 = xor i32 %1630, %1629
  %1639 = lshr i32 %1638, 4
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %32, align 1
  %1642 = icmp eq i32 %1630, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %35, align 1
  %1644 = lshr i32 %1630, 31
  %1645 = trunc i32 %1644 to i8
  store i8 %1645, i8* %38, align 1
  %1646 = lshr i32 %1629, 31
  %1647 = xor i32 %1646, 1
  %1648 = xor i32 %1644, %1646
  %1649 = add nuw nsw i32 %1648, %1647
  %1650 = icmp eq i32 %1649, 2
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %44, align 1
  %.v98 = select i1 %1642, i64 129, i64 53
  %1652 = add i64 %1589, %.v98
  store i64 %1652, i64* %3, align 8
  br i1 %1642, label %block_.L_40a0f9, label %block_40a0ad

block_40a0ad:                                     ; preds = %block_.L_40a078
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %3, align 8
  %1654 = load i64, i64* %1593, align 8
  store i64 %1654, i64* %RAX.i2009, align 8
  %1655 = add i64 %1654, 320
  %1656 = add i64 %1652, 11
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i64*
  %1658 = load i64, i64* %1657, align 8
  store i64 %1658, i64* %RAX.i2009, align 8
  %1659 = add i64 %1652, 15
  store i64 %1659, i64* %3, align 8
  %1660 = load i64, i64* %1601, align 8
  store i64 %1660, i64* %RCX.i2228, align 8
  %1661 = add i64 %1652, 22
  store i64 %1661, i64* %3, align 8
  %1662 = load i32, i32* %1605, align 4
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RDX.i2231, align 8
  %1664 = add i64 %1660, %1663
  %1665 = add i64 %1652, 26
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i8*
  %1667 = load i8, i8* %1666, align 1
  %1668 = sext i8 %1667 to i64
  %1669 = and i64 %1668, 4294967295
  store i64 %1669, i64* %RSI.i2223, align 8
  %1670 = sext i8 %1667 to i64
  store i64 %1670, i64* %RCX.i2228, align 8
  %1671 = shl nsw i64 %1670, 3
  %1672 = add i64 %1658, %1671
  %1673 = add i64 %1652, 33
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i64*
  %1675 = load i64, i64* %1674, align 8
  store i64 %1675, i64* %RAX.i2009, align 8
  %1676 = add i64 %1652, 40
  store i64 %1676, i64* %3, align 8
  %1677 = load i32, i32* %1622, align 4
  %1678 = sext i32 %1677 to i64
  store i64 %1678, i64* %RCX.i2228, align 8
  %1679 = shl nsw i64 %1678, 2
  %1680 = add i64 %1679, %1675
  %1681 = add i64 %1652, 43
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RSI.i2223, align 8
  %1685 = add i64 %1590, -80
  %1686 = add i64 %1652, 47
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i64*
  %1688 = load i64, i64* %1687, align 8
  store i64 %1688, i64* %RAX.i2009, align 8
  %1689 = add i64 %1590, -164
  %1690 = add i64 %1652, 54
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = sext i32 %1692 to i64
  store i64 %1693, i64* %RCX.i2228, align 8
  %1694 = shl nsw i64 %1693, 3
  %1695 = add i64 %1694, %1688
  %1696 = add i64 %1652, 58
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i64*
  %1698 = load i64, i64* %1697, align 8
  store i64 %1698, i64* %RAX.i2009, align 8
  %1699 = add i64 %1652, 65
  store i64 %1699, i64* %3, align 8
  %1700 = load i32, i32* %1622, align 4
  %1701 = sext i32 %1700 to i64
  store i64 %1701, i64* %RCX.i2228, align 8
  %1702 = shl nsw i64 %1701, 2
  %1703 = add i64 %1698, %1702
  %1704 = add i64 %1652, 68
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = add i32 %1706, %1683
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RSI.i2223, align 8
  %1709 = icmp ult i32 %1707, %1683
  %1710 = icmp ult i32 %1707, %1706
  %1711 = or i1 %1709, %1710
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %19, align 1
  %1713 = and i32 %1707, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %26, align 1
  %1718 = xor i32 %1706, %1683
  %1719 = xor i32 %1718, %1707
  %1720 = lshr i32 %1719, 4
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %32, align 1
  %1723 = icmp eq i32 %1707, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %35, align 1
  %1725 = lshr i32 %1707, 31
  %1726 = trunc i32 %1725 to i8
  store i8 %1726, i8* %38, align 1
  %1727 = lshr i32 %1683, 31
  %1728 = lshr i32 %1706, 31
  %1729 = xor i32 %1725, %1727
  %1730 = xor i32 %1725, %1728
  %1731 = add nuw nsw i32 %1729, %1730
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %44, align 1
  %1734 = add i64 %1652, 71
  store i64 %1734, i64* %3, align 8
  store i32 %1707, i32* %1705, align 4
  %1735 = load i64, i64* %3, align 8
  %1736 = add i64 %1735, 34
  store i64 %1736, i64* %3, align 8
  br label %block_.L_40a116

block_.L_40a0f9:                                  ; preds = %block_.L_40a078
  %1737 = add i64 %1590, -80
  %1738 = add i64 %1652, 4
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i64*
  %1740 = load i64, i64* %1739, align 8
  store i64 %1740, i64* %RAX.i2009, align 8
  %1741 = add i64 %1590, -164
  %1742 = add i64 %1652, 11
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i2228, align 8
  %1746 = shl nsw i64 %1745, 3
  %1747 = add i64 %1746, %1740
  %1748 = add i64 %1652, 15
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i64*
  %1750 = load i64, i64* %1749, align 8
  store i64 %1750, i64* %RAX.i2009, align 8
  %1751 = add i64 %1652, 22
  store i64 %1751, i64* %3, align 8
  %1752 = load i32, i32* %1622, align 4
  %1753 = sext i32 %1752 to i64
  store i64 %1753, i64* %RCX.i2228, align 8
  %1754 = shl nsw i64 %1753, 2
  %1755 = add i64 %1754, %1750
  %1756 = add i64 %1652, 29
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  store i32 -987654321, i32* %1757, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_40a116

block_.L_40a116:                                  ; preds = %block_.L_40a0f9, %block_40a0ad
  %1758 = phi i64 [ %.pre53, %block_.L_40a0f9 ], [ %1736, %block_40a0ad ]
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -88
  %1761 = add i64 %1758, 4
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i64*
  %1763 = load i64, i64* %1762, align 8
  store i64 %1763, i64* %RAX.i2009, align 8
  %1764 = add i64 %1759, -164
  %1765 = add i64 %1758, 11
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i2228, align 8
  %1769 = shl nsw i64 %1768, 3
  %1770 = add i64 %1769, %1763
  %1771 = add i64 %1758, 15
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i64*
  %1773 = load i64, i64* %1772, align 8
  store i64 %1773, i64* %RAX.i2009, align 8
  %1774 = add i64 %1759, -156
  %1775 = add i64 %1758, 22
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = sext i32 %1777 to i64
  store i64 %1778, i64* %RCX.i2228, align 8
  %1779 = shl nsw i64 %1778, 2
  %1780 = add i64 %1779, %1773
  %1781 = add i64 %1758, 29
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  store i32 -987654321, i32* %1782, align 4
  %1783 = load i64, i64* %RBP.i, align 8
  %1784 = add i64 %1783, -80
  %1785 = load i64, i64* %3, align 8
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX.i2009, align 8
  %1789 = add i64 %1783, -164
  %1790 = add i64 %1785, 11
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = sext i32 %1792 to i64
  store i64 %1793, i64* %RCX.i2228, align 8
  %1794 = shl nsw i64 %1793, 3
  %1795 = add i64 %1794, %1788
  %1796 = add i64 %1785, 15
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RAX.i2009, align 8
  %1799 = add i64 %1783, -156
  %1800 = add i64 %1785, 21
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = add i32 %1802, -1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RDX.i2231, align 8
  %1805 = icmp eq i32 %1802, 0
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %19, align 1
  %1807 = and i32 %1803, 255
  %1808 = tail call i32 @llvm.ctpop.i32(i32 %1807)
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = xor i8 %1810, 1
  store i8 %1811, i8* %26, align 1
  %1812 = xor i32 %1803, %1802
  %1813 = lshr i32 %1812, 4
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  store i8 %1815, i8* %32, align 1
  %1816 = icmp eq i32 %1803, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %35, align 1
  %1818 = lshr i32 %1803, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %38, align 1
  %1820 = lshr i32 %1802, 31
  %1821 = xor i32 %1818, %1820
  %1822 = add nuw nsw i32 %1821, %1820
  %1823 = icmp eq i32 %1822, 2
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %44, align 1
  %1825 = sext i32 %1803 to i64
  store i64 %1825, i64* %RCX.i2228, align 8
  %1826 = shl nsw i64 %1825, 2
  %1827 = add i64 %1798, %1826
  %1828 = add i64 %1785, 30
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RDX.i2231, align 8
  %1832 = add i64 %1783, -32
  %1833 = add i64 %1785, 34
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i64*
  %1835 = load i64, i64* %1834, align 8
  store i64 %1835, i64* %RAX.i2009, align 8
  %1836 = add i64 %1835, 312
  %1837 = add i64 %1785, 41
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i64*
  %1839 = load i64, i64* %1838, align 8
  store i64 %1839, i64* %RAX.i2009, align 8
  %1840 = add i64 %1839, 16
  %1841 = add i64 %1785, 45
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i64*
  %1843 = load i64, i64* %1842, align 8
  store i64 %1843, i64* %RAX.i2009, align 8
  %1844 = add i64 %1785, 51
  store i64 %1844, i64* %3, align 8
  %1845 = load i32, i32* %1801, align 4
  %1846 = add i32 %1845, -1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RSI.i2223, align 8
  %1848 = icmp eq i32 %1845, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %19, align 1
  %1850 = and i32 %1846, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %26, align 1
  %1855 = xor i32 %1846, %1845
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %32, align 1
  %1859 = icmp eq i32 %1846, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %35, align 1
  %1861 = lshr i32 %1846, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %38, align 1
  %1863 = lshr i32 %1845, 31
  %1864 = xor i32 %1861, %1863
  %1865 = add nuw nsw i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %44, align 1
  %1868 = sext i32 %1846 to i64
  store i64 %1868, i64* %RCX.i2228, align 8
  %1869 = shl nsw i64 %1868, 2
  %1870 = add i64 %1843, %1869
  %1871 = add i64 %1785, 60
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = add i32 %1873, %1830
  %1875 = zext i32 %1874 to i64
  store i64 %1875, i64* %RDX.i2231, align 8
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -148
  %1878 = add i64 %1785, 66
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  store i32 %1874, i32* %1879, align 4
  %1880 = load i32, i32* %416, align 4
  %1881 = load i64, i64* %3, align 8
  %1882 = add i32 %1880, 987654321
  %1883 = icmp ult i32 %1880, -987654321
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %19, align 1
  %1885 = and i32 %1882, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %26, align 1
  %1890 = xor i32 %1882, %1880
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %32, align 1
  %1894 = icmp eq i32 %1882, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %35, align 1
  %1896 = lshr i32 %1882, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %38, align 1
  %1898 = lshr i32 %1880, 31
  %1899 = xor i32 %1898, 1
  %1900 = xor i32 %1896, %1898
  %1901 = add nuw nsw i32 %1900, %1899
  %1902 = icmp eq i32 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %44, align 1
  %1904 = icmp ne i8 %1897, 0
  %1905 = xor i1 %1904, %1902
  %1906 = or i1 %1894, %1905
  %.v99 = select i1 %1906, i64 98, i64 12
  %1907 = add i64 %1881, %.v99
  store i64 %1907, i64* %3, align 8
  br i1 %1906, label %block_.L_40a1d7, label %block_40a181

block_40a181:                                     ; preds = %block_.L_40a116
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -148
  %1910 = add i64 %1907, 6
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RAX.i2009, align 8
  %1914 = add i64 %1908, -88
  %1915 = add i64 %1907, 10
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i64*
  %1917 = load i64, i64* %1916, align 8
  store i64 %1917, i64* %RCX.i2228, align 8
  %1918 = add i64 %1908, -164
  %1919 = add i64 %1907, 17
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i32*
  %1921 = load i32, i32* %1920, align 4
  %1922 = sext i32 %1921 to i64
  store i64 %1922, i64* %RDX.i2231, align 8
  %1923 = shl nsw i64 %1922, 3
  %1924 = add i64 %1923, %1917
  %1925 = add i64 %1907, 21
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i64*
  %1927 = load i64, i64* %1926, align 8
  store i64 %1927, i64* %RCX.i2228, align 8
  %1928 = add i64 %1908, -156
  %1929 = add i64 %1907, 28
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RDX.i2231, align 8
  %1933 = shl nsw i64 %1932, 2
  %1934 = add i64 %1933, %1927
  %1935 = add i64 %1907, 31
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  store i32 %1912, i32* %1936, align 4
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -112
  %1939 = load i64, i64* %3, align 8
  %1940 = add i64 %1939, 4
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1938 to i64*
  %1942 = load i64, i64* %1941, align 8
  store i64 %1942, i64* %RCX.i2228, align 8
  %1943 = add i64 %1937, -164
  %1944 = add i64 %1939, 11
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  %1946 = load i32, i32* %1945, align 4
  %1947 = sext i32 %1946 to i64
  store i64 %1947, i64* %RDX.i2231, align 8
  %1948 = shl nsw i64 %1947, 3
  %1949 = add i64 %1948, %1942
  %1950 = add i64 %1939, 15
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i64*
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %RCX.i2228, align 8
  %1953 = add i64 %1937, -156
  %1954 = add i64 %1939, 21
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = add i32 %1956, -1
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX.i2009, align 8
  %1959 = icmp eq i32 %1956, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %19, align 1
  %1961 = and i32 %1957, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %26, align 1
  %1966 = xor i32 %1957, %1956
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %32, align 1
  %1970 = icmp eq i32 %1957, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %35, align 1
  %1972 = lshr i32 %1957, 31
  %1973 = trunc i32 %1972 to i8
  store i8 %1973, i8* %38, align 1
  %1974 = lshr i32 %1956, 31
  %1975 = xor i32 %1972, %1974
  %1976 = add nuw nsw i32 %1975, %1974
  %1977 = icmp eq i32 %1976, 2
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %44, align 1
  %1979 = sext i32 %1957 to i64
  store i64 %1979, i64* %RDX.i2231, align 8
  %1980 = shl nsw i64 %1979, 2
  %1981 = add i64 %1952, %1980
  %1982 = add i64 %1939, 30
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RAX.i2009, align 8
  %1986 = add i64 %1937, -120
  %1987 = add i64 %1939, 34
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i64*
  %1989 = load i64, i64* %1988, align 8
  store i64 %1989, i64* %RCX.i2228, align 8
  %1990 = add i64 %1939, 41
  store i64 %1990, i64* %3, align 8
  %1991 = load i32, i32* %1945, align 4
  %1992 = sext i32 %1991 to i64
  store i64 %1992, i64* %RDX.i2231, align 8
  %1993 = shl nsw i64 %1992, 3
  %1994 = add i64 %1993, %1989
  %1995 = add i64 %1939, 45
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %RCX.i2228, align 8
  %1998 = add i64 %1939, 52
  store i64 %1998, i64* %3, align 8
  %1999 = load i32, i32* %1955, align 4
  %2000 = sext i32 %1999 to i64
  store i64 %2000, i64* %RDX.i2231, align 8
  %2001 = shl nsw i64 %2000, 2
  %2002 = add i64 %2001, %1997
  %2003 = add i64 %1939, 55
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  store i32 %1984, i32* %2004, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_40a1d7

block_.L_40a1d7:                                  ; preds = %block_40a181, %block_.L_40a116
  %2005 = phi i64 [ %.pre54, %block_40a181 ], [ %1907, %block_.L_40a116 ]
  %2006 = load i64, i64* %RBP.i, align 8
  %2007 = add i64 %2006, -88
  %2008 = add i64 %2005, 4
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RAX.i2009, align 8
  %2011 = add i64 %2006, -164
  %2012 = add i64 %2005, 11
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sext i32 %2014 to i64
  store i64 %2015, i64* %RCX.i2228, align 8
  %2016 = shl nsw i64 %2015, 3
  %2017 = add i64 %2016, %2010
  %2018 = add i64 %2005, 15
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i64*
  %2020 = load i64, i64* %2019, align 8
  store i64 %2020, i64* %RAX.i2009, align 8
  %2021 = add i64 %2006, -156
  %2022 = add i64 %2005, 21
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, -1
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RDX.i2231, align 8
  %2027 = icmp eq i32 %2024, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %19, align 1
  %2029 = and i32 %2025, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %26, align 1
  %2034 = xor i32 %2025, %2024
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %32, align 1
  %2038 = icmp eq i32 %2025, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %35, align 1
  %2040 = lshr i32 %2025, 31
  %2041 = trunc i32 %2040 to i8
  store i8 %2041, i8* %38, align 1
  %2042 = lshr i32 %2024, 31
  %2043 = xor i32 %2040, %2042
  %2044 = add nuw nsw i32 %2043, %2042
  %2045 = icmp eq i32 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %44, align 1
  %2047 = sext i32 %2025 to i64
  store i64 %2047, i64* %RCX.i2228, align 8
  %2048 = shl nsw i64 %2047, 2
  %2049 = add i64 %2020, %2048
  %2050 = add i64 %2005, 30
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = zext i32 %2052 to i64
  store i64 %2053, i64* %RDX.i2231, align 8
  %2054 = add i64 %2006, -32
  %2055 = add i64 %2005, 34
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i64*
  %2057 = load i64, i64* %2056, align 8
  store i64 %2057, i64* %RAX.i2009, align 8
  %2058 = add i64 %2057, 312
  %2059 = add i64 %2005, 41
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i64*
  %2061 = load i64, i64* %2060, align 8
  store i64 %2061, i64* %RAX.i2009, align 8
  %2062 = add i64 %2061, 48
  %2063 = add i64 %2005, 45
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i64*
  %2065 = load i64, i64* %2064, align 8
  store i64 %2065, i64* %RAX.i2009, align 8
  %2066 = add i64 %2005, 51
  store i64 %2066, i64* %3, align 8
  %2067 = load i32, i32* %2023, align 4
  %2068 = add i32 %2067, -1
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RSI.i2223, align 8
  %2070 = icmp eq i32 %2067, 0
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %19, align 1
  %2072 = and i32 %2068, 255
  %2073 = tail call i32 @llvm.ctpop.i32(i32 %2072)
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  %2076 = xor i8 %2075, 1
  store i8 %2076, i8* %26, align 1
  %2077 = xor i32 %2068, %2067
  %2078 = lshr i32 %2077, 4
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  store i8 %2080, i8* %32, align 1
  %2081 = icmp eq i32 %2068, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %35, align 1
  %2083 = lshr i32 %2068, 31
  %2084 = trunc i32 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = lshr i32 %2067, 31
  %2086 = xor i32 %2083, %2085
  %2087 = add nuw nsw i32 %2086, %2085
  %2088 = icmp eq i32 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %44, align 1
  %2090 = sext i32 %2068 to i64
  store i64 %2090, i64* %RCX.i2228, align 8
  %2091 = shl nsw i64 %2090, 2
  %2092 = add i64 %2065, %2091
  %2093 = add i64 %2005, 60
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = add i32 %2095, %2052
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RDX.i2231, align 8
  %2098 = icmp ult i32 %2096, %2052
  %2099 = icmp ult i32 %2096, %2095
  %2100 = or i1 %2098, %2099
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %19, align 1
  %2102 = and i32 %2096, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %26, align 1
  %2107 = xor i32 %2095, %2052
  %2108 = xor i32 %2107, %2096
  %2109 = lshr i32 %2108, 4
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  store i8 %2111, i8* %32, align 1
  %2112 = icmp eq i32 %2096, 0
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %35, align 1
  %2114 = lshr i32 %2096, 31
  %2115 = trunc i32 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = lshr i32 %2052, 31
  %2117 = lshr i32 %2095, 31
  %2118 = xor i32 %2114, %2116
  %2119 = xor i32 %2114, %2117
  %2120 = add nuw nsw i32 %2118, %2119
  %2121 = icmp eq i32 %2120, 2
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %44, align 1
  %2123 = load i64, i64* %RBP.i, align 8
  %2124 = add i64 %2123, -148
  %2125 = add i64 %2005, 66
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  store i32 %2096, i32* %2126, align 4
  %2127 = load i64, i64* %RBP.i, align 8
  %2128 = add i64 %2127, -88
  %2129 = load i64, i64* %3, align 8
  %2130 = add i64 %2129, 4
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2128 to i64*
  %2132 = load i64, i64* %2131, align 8
  store i64 %2132, i64* %RAX.i2009, align 8
  %2133 = add i64 %2127, -164
  %2134 = add i64 %2129, 11
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = sext i32 %2136 to i64
  store i64 %2137, i64* %RCX.i2228, align 8
  %2138 = shl nsw i64 %2137, 3
  %2139 = add i64 %2138, %2132
  %2140 = add i64 %2129, 15
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i64*
  %2142 = load i64, i64* %2141, align 8
  store i64 %2142, i64* %RAX.i2009, align 8
  %2143 = add i64 %2127, -156
  %2144 = add i64 %2129, 22
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = sext i32 %2146 to i64
  store i64 %2147, i64* %RCX.i2228, align 8
  %2148 = load i32, i32* %416, align 4
  %2149 = shl nsw i64 %2147, 2
  %2150 = add i64 %2142, %2149
  %2151 = add i64 %2129, 25
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = sub i32 %2148, %2153
  %2155 = icmp ult i32 %2148, %2153
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %19, align 1
  %2157 = and i32 %2154, 255
  %2158 = tail call i32 @llvm.ctpop.i32(i32 %2157)
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  %2161 = xor i8 %2160, 1
  store i8 %2161, i8* %26, align 1
  %2162 = xor i32 %2153, %2148
  %2163 = xor i32 %2162, %2154
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  store i8 %2166, i8* %32, align 1
  %2167 = icmp eq i32 %2154, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %35, align 1
  %2169 = lshr i32 %2154, 31
  %2170 = trunc i32 %2169 to i8
  store i8 %2170, i8* %38, align 1
  %2171 = lshr i32 %2148, 31
  %2172 = lshr i32 %2153, 31
  %2173 = xor i32 %2172, %2171
  %2174 = xor i32 %2169, %2171
  %2175 = add nuw nsw i32 %2174, %2173
  %2176 = icmp eq i32 %2175, 2
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %44, align 1
  %2178 = icmp ne i8 %2170, 0
  %2179 = xor i1 %2178, %2176
  %2180 = or i1 %2167, %2179
  %.v100 = select i1 %2180, i64 117, i64 31
  %2181 = add i64 %2129, %.v100
  store i64 %2181, i64* %3, align 8
  br i1 %2180, label %block_.L_40a28e, label %block_40a238

block_40a238:                                     ; preds = %block_.L_40a1d7
  %2182 = add i64 %2127, -148
  %2183 = add i64 %2181, 6
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RAX.i2009, align 8
  %2187 = add i64 %2181, 10
  store i64 %2187, i64* %3, align 8
  %2188 = load i64, i64* %2131, align 8
  store i64 %2188, i64* %RCX.i2228, align 8
  %2189 = add i64 %2181, 17
  store i64 %2189, i64* %3, align 8
  %2190 = load i32, i32* %2135, align 4
  %2191 = sext i32 %2190 to i64
  store i64 %2191, i64* %RDX.i2231, align 8
  %2192 = shl nsw i64 %2191, 3
  %2193 = add i64 %2192, %2188
  %2194 = add i64 %2181, 21
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i64*
  %2196 = load i64, i64* %2195, align 8
  store i64 %2196, i64* %RCX.i2228, align 8
  %2197 = add i64 %2181, 28
  store i64 %2197, i64* %3, align 8
  %2198 = load i32, i32* %2145, align 4
  %2199 = sext i32 %2198 to i64
  store i64 %2199, i64* %RDX.i2231, align 8
  %2200 = shl nsw i64 %2199, 2
  %2201 = add i64 %2200, %2196
  %2202 = add i64 %2181, 31
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  store i32 %2185, i32* %2203, align 4
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -120
  %2206 = load i64, i64* %3, align 8
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2205 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RCX.i2228, align 8
  %2210 = add i64 %2204, -164
  %2211 = add i64 %2206, 11
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = sext i32 %2213 to i64
  store i64 %2214, i64* %RDX.i2231, align 8
  %2215 = shl nsw i64 %2214, 3
  %2216 = add i64 %2215, %2209
  %2217 = add i64 %2206, 15
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i64*
  %2219 = load i64, i64* %2218, align 8
  store i64 %2219, i64* %RCX.i2228, align 8
  %2220 = add i64 %2204, -156
  %2221 = add i64 %2206, 21
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  %2224 = add i32 %2223, -1
  %2225 = zext i32 %2224 to i64
  store i64 %2225, i64* %RAX.i2009, align 8
  %2226 = icmp eq i32 %2223, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %19, align 1
  %2228 = and i32 %2224, 255
  %2229 = tail call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  store i8 %2232, i8* %26, align 1
  %2233 = xor i32 %2224, %2223
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  store i8 %2236, i8* %32, align 1
  %2237 = icmp eq i32 %2224, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %35, align 1
  %2239 = lshr i32 %2224, 31
  %2240 = trunc i32 %2239 to i8
  store i8 %2240, i8* %38, align 1
  %2241 = lshr i32 %2223, 31
  %2242 = xor i32 %2239, %2241
  %2243 = add nuw nsw i32 %2242, %2241
  %2244 = icmp eq i32 %2243, 2
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %44, align 1
  %2246 = sext i32 %2224 to i64
  store i64 %2246, i64* %RDX.i2231, align 8
  %2247 = shl nsw i64 %2246, 2
  %2248 = add i64 %2219, %2247
  %2249 = add i64 %2206, 30
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RAX.i2009, align 8
  %2253 = add i64 %2206, 34
  store i64 %2253, i64* %3, align 8
  %2254 = load i64, i64* %2208, align 8
  store i64 %2254, i64* %RCX.i2228, align 8
  %2255 = add i64 %2206, 41
  store i64 %2255, i64* %3, align 8
  %2256 = load i32, i32* %2212, align 4
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RDX.i2231, align 8
  %2258 = shl nsw i64 %2257, 3
  %2259 = add i64 %2258, %2254
  %2260 = add i64 %2206, 45
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i64*
  %2262 = load i64, i64* %2261, align 8
  store i64 %2262, i64* %RCX.i2228, align 8
  %2263 = add i64 %2206, 52
  store i64 %2263, i64* %3, align 8
  %2264 = load i32, i32* %2222, align 4
  %2265 = sext i32 %2264 to i64
  store i64 %2265, i64* %RDX.i2231, align 8
  %2266 = shl nsw i64 %2265, 2
  %2267 = add i64 %2266, %2262
  %2268 = add i64 %2206, 55
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2267 to i32*
  store i32 %2251, i32* %2269, align 4
  %.pre55 = load i64, i64* %RBP.i, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_40a28e

block_.L_40a28e:                                  ; preds = %block_40a238, %block_.L_40a1d7
  %2270 = phi i64 [ %.pre56, %block_40a238 ], [ %2181, %block_.L_40a1d7 ]
  %2271 = phi i64 [ %.pre55, %block_40a238 ], [ %2127, %block_.L_40a1d7 ]
  %2272 = add i64 %2271, -156
  %2273 = add i64 %2270, 6
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RAX.i2009, align 8
  %2277 = add i64 %2271, -32
  %2278 = add i64 %2270, 10
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RCX.i2228, align 8
  %2281 = add i64 %2280, 136
  %2282 = add i64 %2270, 16
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = sub i32 %2275, %2284
  %2286 = icmp ult i32 %2275, %2284
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %19, align 1
  %2288 = and i32 %2285, 255
  %2289 = tail call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  store i8 %2292, i8* %26, align 1
  %2293 = xor i32 %2284, %2275
  %2294 = xor i32 %2293, %2285
  %2295 = lshr i32 %2294, 4
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  store i8 %2297, i8* %32, align 1
  %2298 = icmp eq i32 %2285, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %35, align 1
  %2300 = lshr i32 %2285, 31
  %2301 = trunc i32 %2300 to i8
  store i8 %2301, i8* %38, align 1
  %2302 = lshr i32 %2275, 31
  %2303 = lshr i32 %2284, 31
  %2304 = xor i32 %2303, %2302
  %2305 = xor i32 %2300, %2302
  %2306 = add nuw nsw i32 %2305, %2304
  %2307 = icmp eq i32 %2306, 2
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %44, align 1
  %2309 = icmp ne i8 %2301, 0
  %2310 = xor i1 %2309, %2307
  %.v101 = select i1 %2310, i64 22, i64 531
  %2311 = add i64 %2270, %.v101
  store i64 %2311, i64* %3, align 8
  br i1 %2310, label %block_40a2a4, label %block_.L_40a4a1

block_40a2a4:                                     ; preds = %block_.L_40a28e
  %2312 = add i64 %2271, -96
  %2313 = add i64 %2311, 4
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i64*
  %2315 = load i64, i64* %2314, align 8
  store i64 %2315, i64* %RAX.i2009, align 8
  %2316 = add i64 %2271, -164
  %2317 = add i64 %2311, 11
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i2228, align 8
  %2321 = shl nsw i64 %2320, 3
  %2322 = add i64 %2321, %2315
  %2323 = add i64 %2311, 15
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i64*
  %2325 = load i64, i64* %2324, align 8
  store i64 %2325, i64* %RAX.i2009, align 8
  %2326 = add i64 %2311, 22
  store i64 %2326, i64* %3, align 8
  %2327 = load i32, i32* %2274, align 4
  %2328 = sext i32 %2327 to i64
  store i64 %2328, i64* %RCX.i2228, align 8
  %2329 = shl nsw i64 %2328, 2
  %2330 = add i64 %2329, %2325
  %2331 = add i64 %2311, 29
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  store i32 -987654321, i32* %2332, align 4
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -80
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RAX.i2009, align 8
  %2339 = add i64 %2333, -168
  %2340 = add i64 %2335, 11
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = sext i32 %2342 to i64
  store i64 %2343, i64* %RCX.i2228, align 8
  %2344 = shl nsw i64 %2343, 3
  %2345 = add i64 %2344, %2338
  %2346 = add i64 %2335, 15
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  %2348 = load i64, i64* %2347, align 8
  store i64 %2348, i64* %RAX.i2009, align 8
  %2349 = add i64 %2333, -156
  %2350 = add i64 %2335, 22
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = sext i32 %2352 to i64
  store i64 %2353, i64* %RCX.i2228, align 8
  %2354 = shl nsw i64 %2353, 2
  %2355 = add i64 %2354, %2348
  %2356 = add i64 %2335, 25
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RDX.i2231, align 8
  %2360 = add i64 %2333, -32
  %2361 = add i64 %2335, 29
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i64*
  %2363 = load i64, i64* %2362, align 8
  store i64 %2363, i64* %RAX.i2009, align 8
  %2364 = add i64 %2363, 312
  %2365 = add i64 %2335, 36
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RAX.i2009, align 8
  %2368 = add i64 %2367, 8
  %2369 = add i64 %2335, 40
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i64*
  %2371 = load i64, i64* %2370, align 8
  store i64 %2371, i64* %RAX.i2009, align 8
  %2372 = add i64 %2335, 47
  store i64 %2372, i64* %3, align 8
  %2373 = load i32, i32* %2351, align 4
  %2374 = sext i32 %2373 to i64
  store i64 %2374, i64* %RCX.i2228, align 8
  %2375 = shl nsw i64 %2374, 2
  %2376 = add i64 %2371, %2375
  %2377 = add i64 %2335, 50
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = add i32 %2379, %2358
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RDX.i2231, align 8
  %2382 = load i64, i64* %RBP.i, align 8
  %2383 = add i64 %2382, -148
  %2384 = add i64 %2335, 56
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  store i32 %2380, i32* %2385, align 4
  %2386 = load i32, i32* %416, align 4
  %2387 = load i64, i64* %3, align 8
  %2388 = add i32 %2386, 987654321
  %2389 = icmp ult i32 %2386, -987654321
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %19, align 1
  %2391 = and i32 %2388, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %26, align 1
  %2396 = xor i32 %2388, %2386
  %2397 = lshr i32 %2396, 4
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  store i8 %2399, i8* %32, align 1
  %2400 = icmp eq i32 %2388, 0
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %35, align 1
  %2402 = lshr i32 %2388, 31
  %2403 = trunc i32 %2402 to i8
  store i8 %2403, i8* %38, align 1
  %2404 = lshr i32 %2386, 31
  %2405 = xor i32 %2404, 1
  %2406 = xor i32 %2402, %2404
  %2407 = add nuw nsw i32 %2406, %2405
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %44, align 1
  %2410 = icmp ne i8 %2403, 0
  %2411 = xor i1 %2410, %2408
  %2412 = or i1 %2400, %2411
  %.v102 = select i1 %2412, i64 93, i64 12
  %2413 = add i64 %2387, %.v102
  store i64 %2413, i64* %3, align 8
  br i1 %2412, label %block_.L_40a356, label %block_40a305

block_40a305:                                     ; preds = %block_40a2a4
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -148
  %2416 = add i64 %2413, 6
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i2009, align 8
  %2420 = add i64 %2414, -96
  %2421 = add i64 %2413, 10
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i64*
  %2423 = load i64, i64* %2422, align 8
  store i64 %2423, i64* %RCX.i2228, align 8
  %2424 = add i64 %2414, -164
  %2425 = add i64 %2413, 17
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sext i32 %2427 to i64
  store i64 %2428, i64* %RDX.i2231, align 8
  %2429 = shl nsw i64 %2428, 3
  %2430 = add i64 %2429, %2423
  %2431 = add i64 %2413, 21
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i64*
  %2433 = load i64, i64* %2432, align 8
  store i64 %2433, i64* %RCX.i2228, align 8
  %2434 = add i64 %2414, -156
  %2435 = add i64 %2413, 28
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  %2437 = load i32, i32* %2436, align 4
  %2438 = sext i32 %2437 to i64
  store i64 %2438, i64* %RDX.i2231, align 8
  %2439 = shl nsw i64 %2438, 2
  %2440 = add i64 %2439, %2433
  %2441 = add i64 %2413, 31
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  store i32 %2418, i32* %2442, align 4
  %2443 = load i64, i64* %RBP.i, align 8
  %2444 = add i64 %2443, -112
  %2445 = load i64, i64* %3, align 8
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2444 to i64*
  %2448 = load i64, i64* %2447, align 8
  store i64 %2448, i64* %RCX.i2228, align 8
  %2449 = add i64 %2443, -168
  %2450 = add i64 %2445, 11
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  %2452 = load i32, i32* %2451, align 4
  %2453 = sext i32 %2452 to i64
  store i64 %2453, i64* %RDX.i2231, align 8
  %2454 = shl nsw i64 %2453, 3
  %2455 = add i64 %2454, %2448
  %2456 = add i64 %2445, 15
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i64*
  %2458 = load i64, i64* %2457, align 8
  store i64 %2458, i64* %RCX.i2228, align 8
  %2459 = add i64 %2443, -156
  %2460 = add i64 %2445, 22
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = sext i32 %2462 to i64
  store i64 %2463, i64* %RDX.i2231, align 8
  %2464 = shl nsw i64 %2463, 2
  %2465 = add i64 %2464, %2458
  %2466 = add i64 %2445, 25
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RAX.i2009, align 8
  %2470 = add i64 %2443, -128
  %2471 = add i64 %2445, 29
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RCX.i2228, align 8
  %2474 = add i64 %2443, -164
  %2475 = add i64 %2445, 36
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = sext i32 %2477 to i64
  store i64 %2478, i64* %RDX.i2231, align 8
  %2479 = shl nsw i64 %2478, 3
  %2480 = add i64 %2479, %2473
  %2481 = add i64 %2445, 40
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i64*
  %2483 = load i64, i64* %2482, align 8
  store i64 %2483, i64* %RCX.i2228, align 8
  %2484 = add i64 %2445, 47
  store i64 %2484, i64* %3, align 8
  %2485 = load i32, i32* %2461, align 4
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RDX.i2231, align 8
  %2487 = shl nsw i64 %2486, 2
  %2488 = add i64 %2487, %2483
  %2489 = add i64 %2445, 50
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  store i32 %2468, i32* %2490, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_40a356

block_.L_40a356:                                  ; preds = %block_40a305, %block_40a2a4
  %2491 = phi i64 [ %.pre57, %block_40a305 ], [ %2413, %block_40a2a4 ]
  %2492 = load i64, i64* %RBP.i, align 8
  %2493 = add i64 %2492, -96
  %2494 = add i64 %2491, 4
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i64*
  %2496 = load i64, i64* %2495, align 8
  store i64 %2496, i64* %RAX.i2009, align 8
  %2497 = add i64 %2492, -168
  %2498 = add i64 %2491, 11
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = sext i32 %2500 to i64
  store i64 %2501, i64* %RCX.i2228, align 8
  %2502 = shl nsw i64 %2501, 3
  %2503 = add i64 %2502, %2496
  %2504 = add i64 %2491, 15
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i64*
  %2506 = load i64, i64* %2505, align 8
  store i64 %2506, i64* %RAX.i2009, align 8
  %2507 = add i64 %2492, -156
  %2508 = add i64 %2491, 22
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  %2510 = load i32, i32* %2509, align 4
  %2511 = sext i32 %2510 to i64
  store i64 %2511, i64* %RCX.i2228, align 8
  %2512 = shl nsw i64 %2511, 2
  %2513 = add i64 %2512, %2506
  %2514 = add i64 %2491, 25
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %RDX.i2231, align 8
  %2518 = add i64 %2492, -32
  %2519 = add i64 %2491, 29
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i64*
  %2521 = load i64, i64* %2520, align 8
  store i64 %2521, i64* %RAX.i2009, align 8
  %2522 = add i64 %2521, 312
  %2523 = add i64 %2491, 36
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i64*
  %2525 = load i64, i64* %2524, align 8
  store i64 %2525, i64* %RAX.i2009, align 8
  %2526 = add i64 %2525, 32
  %2527 = add i64 %2491, 40
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i64*
  %2529 = load i64, i64* %2528, align 8
  store i64 %2529, i64* %RAX.i2009, align 8
  %2530 = add i64 %2491, 47
  store i64 %2530, i64* %3, align 8
  %2531 = load i32, i32* %2509, align 4
  %2532 = sext i32 %2531 to i64
  store i64 %2532, i64* %RCX.i2228, align 8
  %2533 = shl nsw i64 %2532, 2
  %2534 = add i64 %2529, %2533
  %2535 = add i64 %2491, 50
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = add i32 %2537, %2516
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RDX.i2231, align 8
  %2540 = icmp ult i32 %2538, %2516
  %2541 = icmp ult i32 %2538, %2537
  %2542 = or i1 %2540, %2541
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %19, align 1
  %2544 = and i32 %2538, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %26, align 1
  %2549 = xor i32 %2537, %2516
  %2550 = xor i32 %2549, %2538
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  store i8 %2553, i8* %32, align 1
  %2554 = icmp eq i32 %2538, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %35, align 1
  %2556 = lshr i32 %2538, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %38, align 1
  %2558 = lshr i32 %2516, 31
  %2559 = lshr i32 %2537, 31
  %2560 = xor i32 %2556, %2558
  %2561 = xor i32 %2556, %2559
  %2562 = add nuw nsw i32 %2560, %2561
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %44, align 1
  %2565 = add i64 %2492, -148
  %2566 = add i64 %2491, 56
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  store i32 %2538, i32* %2567, align 4
  %2568 = load i64, i64* %RBP.i, align 8
  %2569 = add i64 %2568, -96
  %2570 = load i64, i64* %3, align 8
  %2571 = add i64 %2570, 4
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2569 to i64*
  %2573 = load i64, i64* %2572, align 8
  store i64 %2573, i64* %RAX.i2009, align 8
  %2574 = add i64 %2568, -164
  %2575 = add i64 %2570, 11
  store i64 %2575, i64* %3, align 8
  %2576 = inttoptr i64 %2574 to i32*
  %2577 = load i32, i32* %2576, align 4
  %2578 = sext i32 %2577 to i64
  store i64 %2578, i64* %RCX.i2228, align 8
  %2579 = shl nsw i64 %2578, 3
  %2580 = add i64 %2579, %2573
  %2581 = add i64 %2570, 15
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i64*
  %2583 = load i64, i64* %2582, align 8
  store i64 %2583, i64* %RAX.i2009, align 8
  %2584 = add i64 %2568, -156
  %2585 = add i64 %2570, 22
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i32*
  %2587 = load i32, i32* %2586, align 4
  %2588 = sext i32 %2587 to i64
  store i64 %2588, i64* %RCX.i2228, align 8
  %2589 = load i32, i32* %416, align 4
  %2590 = shl nsw i64 %2588, 2
  %2591 = add i64 %2583, %2590
  %2592 = add i64 %2570, 25
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = sub i32 %2589, %2594
  %2596 = icmp ult i32 %2589, %2594
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %19, align 1
  %2598 = and i32 %2595, 255
  %2599 = tail call i32 @llvm.ctpop.i32(i32 %2598)
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  %2602 = xor i8 %2601, 1
  store i8 %2602, i8* %26, align 1
  %2603 = xor i32 %2594, %2589
  %2604 = xor i32 %2603, %2595
  %2605 = lshr i32 %2604, 4
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  store i8 %2607, i8* %32, align 1
  %2608 = icmp eq i32 %2595, 0
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %35, align 1
  %2610 = lshr i32 %2595, 31
  %2611 = trunc i32 %2610 to i8
  store i8 %2611, i8* %38, align 1
  %2612 = lshr i32 %2589, 31
  %2613 = lshr i32 %2594, 31
  %2614 = xor i32 %2613, %2612
  %2615 = xor i32 %2610, %2612
  %2616 = add nuw nsw i32 %2615, %2614
  %2617 = icmp eq i32 %2616, 2
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %44, align 1
  %2619 = icmp ne i8 %2611, 0
  %2620 = xor i1 %2619, %2617
  %2621 = or i1 %2608, %2620
  %.v103 = select i1 %2621, i64 112, i64 31
  %2622 = add i64 %2570, %.v103
  store i64 %2622, i64* %3, align 8
  br i1 %2621, label %block_.L_40a3fe, label %block_40a3ad

block_40a3ad:                                     ; preds = %block_.L_40a356
  %2623 = add i64 %2568, -148
  %2624 = add i64 %2622, 6
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i2009, align 8
  %2628 = add i64 %2622, 10
  store i64 %2628, i64* %3, align 8
  %2629 = load i64, i64* %2572, align 8
  store i64 %2629, i64* %RCX.i2228, align 8
  %2630 = add i64 %2622, 17
  store i64 %2630, i64* %3, align 8
  %2631 = load i32, i32* %2576, align 4
  %2632 = sext i32 %2631 to i64
  store i64 %2632, i64* %RDX.i2231, align 8
  %2633 = shl nsw i64 %2632, 3
  %2634 = add i64 %2633, %2629
  %2635 = add i64 %2622, 21
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i64*
  %2637 = load i64, i64* %2636, align 8
  store i64 %2637, i64* %RCX.i2228, align 8
  %2638 = add i64 %2622, 28
  store i64 %2638, i64* %3, align 8
  %2639 = load i32, i32* %2586, align 4
  %2640 = sext i32 %2639 to i64
  store i64 %2640, i64* %RDX.i2231, align 8
  %2641 = shl nsw i64 %2640, 2
  %2642 = add i64 %2641, %2637
  %2643 = add i64 %2622, 31
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  store i32 %2626, i32* %2644, align 4
  %2645 = load i64, i64* %RBP.i, align 8
  %2646 = add i64 %2645, -128
  %2647 = load i64, i64* %3, align 8
  %2648 = add i64 %2647, 4
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2646 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RCX.i2228, align 8
  %2651 = add i64 %2645, -168
  %2652 = add i64 %2647, 11
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %RDX.i2231, align 8
  %2656 = shl nsw i64 %2655, 3
  %2657 = add i64 %2656, %2650
  %2658 = add i64 %2647, 15
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %RCX.i2228, align 8
  %2661 = add i64 %2645, -156
  %2662 = add i64 %2647, 22
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = sext i32 %2664 to i64
  store i64 %2665, i64* %RDX.i2231, align 8
  %2666 = shl nsw i64 %2665, 2
  %2667 = add i64 %2666, %2660
  %2668 = add i64 %2647, 25
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i32*
  %2670 = load i32, i32* %2669, align 4
  %2671 = zext i32 %2670 to i64
  store i64 %2671, i64* %RAX.i2009, align 8
  %2672 = add i64 %2647, 29
  store i64 %2672, i64* %3, align 8
  %2673 = load i64, i64* %2649, align 8
  store i64 %2673, i64* %RCX.i2228, align 8
  %2674 = add i64 %2645, -164
  %2675 = add i64 %2647, 36
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = sext i32 %2677 to i64
  store i64 %2678, i64* %RDX.i2231, align 8
  %2679 = shl nsw i64 %2678, 3
  %2680 = add i64 %2679, %2673
  %2681 = add i64 %2647, 40
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i64*
  %2683 = load i64, i64* %2682, align 8
  store i64 %2683, i64* %RCX.i2228, align 8
  %2684 = add i64 %2647, 47
  store i64 %2684, i64* %3, align 8
  %2685 = load i32, i32* %2663, align 4
  %2686 = sext i32 %2685 to i64
  store i64 %2686, i64* %RDX.i2231, align 8
  %2687 = shl nsw i64 %2686, 2
  %2688 = add i64 %2687, %2683
  %2689 = add i64 %2647, 50
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  store i32 %2670, i32* %2690, align 4
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_40a3fe

block_.L_40a3fe:                                  ; preds = %block_40a3ad, %block_.L_40a356
  %2691 = phi i64 [ %.pre59, %block_40a3ad ], [ %2622, %block_.L_40a356 ]
  %2692 = phi i64 [ %.pre58, %block_40a3ad ], [ %2568, %block_.L_40a356 ]
  %2693 = add i64 %2692, -32
  %2694 = add i64 %2691, 4
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i64*
  %2696 = load i64, i64* %2695, align 8
  store i64 %2696, i64* %RAX.i2009, align 8
  %2697 = add i64 %2696, 328
  %2698 = add i64 %2691, 11
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i64*
  %2700 = load i64, i64* %2699, align 8
  store i64 %2700, i64* %RAX.i2009, align 8
  %2701 = add i64 %2692, -16
  %2702 = add i64 %2691, 15
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i64*
  %2704 = load i64, i64* %2703, align 8
  store i64 %2704, i64* %RCX.i2228, align 8
  %2705 = add i64 %2692, -152
  %2706 = add i64 %2691, 22
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = sext i32 %2708 to i64
  store i64 %2709, i64* %RDX.i2231, align 8
  %2710 = add i64 %2704, %2709
  %2711 = add i64 %2691, 26
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i8*
  %2713 = load i8, i8* %2712, align 1
  %2714 = sext i8 %2713 to i64
  %2715 = and i64 %2714, 4294967295
  store i64 %2715, i64* %RSI.i2223, align 8
  %2716 = sext i8 %2713 to i64
  store i64 %2716, i64* %RCX.i2228, align 8
  %2717 = shl nsw i64 %2716, 3
  %2718 = add i64 %2700, %2717
  %2719 = add i64 %2691, 33
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i64*
  %2721 = load i64, i64* %2720, align 8
  store i64 %2721, i64* %RAX.i2009, align 8
  %2722 = add i64 %2692, -156
  %2723 = add i64 %2691, 40
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i32*
  %2725 = load i32, i32* %2724, align 4
  %2726 = sext i32 %2725 to i64
  store i64 %2726, i64* %RCX.i2228, align 8
  %2727 = shl nsw i64 %2726, 2
  %2728 = add i64 %2727, %2721
  %2729 = add i64 %2691, 47
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = add i32 %2731, 987654321
  %2733 = icmp ult i32 %2731, -987654321
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %19, align 1
  %2735 = and i32 %2732, 255
  %2736 = tail call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  store i8 %2739, i8* %26, align 1
  %2740 = xor i32 %2732, %2731
  %2741 = lshr i32 %2740, 4
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  store i8 %2743, i8* %32, align 1
  %2744 = icmp eq i32 %2732, 0
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %35, align 1
  %2746 = lshr i32 %2732, 31
  %2747 = trunc i32 %2746 to i8
  store i8 %2747, i8* %38, align 1
  %2748 = lshr i32 %2731, 31
  %2749 = xor i32 %2748, 1
  %2750 = xor i32 %2746, %2748
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %44, align 1
  %.v104 = select i1 %2744, i64 129, i64 53
  %2754 = add i64 %2691, %.v104
  store i64 %2754, i64* %3, align 8
  br i1 %2744, label %block_.L_40a47f, label %block_40a433

block_40a433:                                     ; preds = %block_.L_40a3fe
  %2755 = add i64 %2754, 4
  store i64 %2755, i64* %3, align 8
  %2756 = load i64, i64* %2695, align 8
  store i64 %2756, i64* %RAX.i2009, align 8
  %2757 = add i64 %2756, 328
  %2758 = add i64 %2754, 11
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i64*
  %2760 = load i64, i64* %2759, align 8
  store i64 %2760, i64* %RAX.i2009, align 8
  %2761 = add i64 %2754, 15
  store i64 %2761, i64* %3, align 8
  %2762 = load i64, i64* %2703, align 8
  store i64 %2762, i64* %RCX.i2228, align 8
  %2763 = add i64 %2754, 22
  store i64 %2763, i64* %3, align 8
  %2764 = load i32, i32* %2707, align 4
  %2765 = sext i32 %2764 to i64
  store i64 %2765, i64* %RDX.i2231, align 8
  %2766 = add i64 %2762, %2765
  %2767 = add i64 %2754, 26
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i8*
  %2769 = load i8, i8* %2768, align 1
  %2770 = sext i8 %2769 to i64
  %2771 = and i64 %2770, 4294967295
  store i64 %2771, i64* %RSI.i2223, align 8
  %2772 = sext i8 %2769 to i64
  store i64 %2772, i64* %RCX.i2228, align 8
  %2773 = shl nsw i64 %2772, 3
  %2774 = add i64 %2760, %2773
  %2775 = add i64 %2754, 33
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2774 to i64*
  %2777 = load i64, i64* %2776, align 8
  store i64 %2777, i64* %RAX.i2009, align 8
  %2778 = add i64 %2754, 40
  store i64 %2778, i64* %3, align 8
  %2779 = load i32, i32* %2724, align 4
  %2780 = sext i32 %2779 to i64
  store i64 %2780, i64* %RCX.i2228, align 8
  %2781 = shl nsw i64 %2780, 2
  %2782 = add i64 %2781, %2777
  %2783 = add i64 %2754, 43
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RSI.i2223, align 8
  %2787 = add i64 %2692, -96
  %2788 = add i64 %2754, 47
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i64*
  %2790 = load i64, i64* %2789, align 8
  store i64 %2790, i64* %RAX.i2009, align 8
  %2791 = add i64 %2692, -164
  %2792 = add i64 %2754, 54
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  %2794 = load i32, i32* %2793, align 4
  %2795 = sext i32 %2794 to i64
  store i64 %2795, i64* %RCX.i2228, align 8
  %2796 = shl nsw i64 %2795, 3
  %2797 = add i64 %2796, %2790
  %2798 = add i64 %2754, 58
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i64*
  %2800 = load i64, i64* %2799, align 8
  store i64 %2800, i64* %RAX.i2009, align 8
  %2801 = add i64 %2754, 65
  store i64 %2801, i64* %3, align 8
  %2802 = load i32, i32* %2724, align 4
  %2803 = sext i32 %2802 to i64
  store i64 %2803, i64* %RCX.i2228, align 8
  %2804 = shl nsw i64 %2803, 2
  %2805 = add i64 %2800, %2804
  %2806 = add i64 %2754, 68
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = add i32 %2808, %2785
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RSI.i2223, align 8
  %2811 = icmp ult i32 %2809, %2785
  %2812 = icmp ult i32 %2809, %2808
  %2813 = or i1 %2811, %2812
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %19, align 1
  %2815 = and i32 %2809, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %26, align 1
  %2820 = xor i32 %2808, %2785
  %2821 = xor i32 %2820, %2809
  %2822 = lshr i32 %2821, 4
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %32, align 1
  %2825 = icmp eq i32 %2809, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %35, align 1
  %2827 = lshr i32 %2809, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %38, align 1
  %2829 = lshr i32 %2785, 31
  %2830 = lshr i32 %2808, 31
  %2831 = xor i32 %2827, %2829
  %2832 = xor i32 %2827, %2830
  %2833 = add nuw nsw i32 %2831, %2832
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %44, align 1
  %2836 = add i64 %2754, 71
  store i64 %2836, i64* %3, align 8
  store i32 %2809, i32* %2807, align 4
  %2837 = load i64, i64* %3, align 8
  %2838 = add i64 %2837, 34
  store i64 %2838, i64* %3, align 8
  br label %block_.L_40a49c

block_.L_40a47f:                                  ; preds = %block_.L_40a3fe
  %2839 = add i64 %2692, -96
  %2840 = add i64 %2754, 4
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i64*
  %2842 = load i64, i64* %2841, align 8
  store i64 %2842, i64* %RAX.i2009, align 8
  %2843 = add i64 %2692, -164
  %2844 = add i64 %2754, 11
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = sext i32 %2846 to i64
  store i64 %2847, i64* %RCX.i2228, align 8
  %2848 = shl nsw i64 %2847, 3
  %2849 = add i64 %2848, %2842
  %2850 = add i64 %2754, 15
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i64*
  %2852 = load i64, i64* %2851, align 8
  store i64 %2852, i64* %RAX.i2009, align 8
  %2853 = add i64 %2754, 22
  store i64 %2853, i64* %3, align 8
  %2854 = load i32, i32* %2724, align 4
  %2855 = sext i32 %2854 to i64
  store i64 %2855, i64* %RCX.i2228, align 8
  %2856 = shl nsw i64 %2855, 2
  %2857 = add i64 %2856, %2852
  %2858 = add i64 %2754, 29
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  store i32 -987654321, i32* %2859, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_40a49c

block_.L_40a49c:                                  ; preds = %block_.L_40a47f, %block_40a433
  %2860 = phi i64 [ %.pre60, %block_.L_40a47f ], [ %2838, %block_40a433 ]
  %2861 = add i64 %2860, 5
  store i64 %2861, i64* %3, align 8
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40a4a1

block_.L_40a4a1:                                  ; preds = %block_.L_40a28e, %block_.L_40a49c
  %2862 = phi i64 [ %2271, %block_.L_40a28e ], [ %.pre61, %block_.L_40a49c ]
  %2863 = phi i64 [ %2311, %block_.L_40a28e ], [ %2861, %block_.L_40a49c ]
  %2864 = add i64 %2862, -156
  %2865 = add i64 %2863, 11
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = add i32 %2867, 1
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i2009, align 8
  %2870 = icmp eq i32 %2867, -1
  %2871 = icmp eq i32 %2868, 0
  %2872 = or i1 %2870, %2871
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %19, align 1
  %2874 = and i32 %2868, 255
  %2875 = tail call i32 @llvm.ctpop.i32(i32 %2874)
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  store i8 %2878, i8* %26, align 1
  %2879 = xor i32 %2868, %2867
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  store i8 %2882, i8* %32, align 1
  %2883 = zext i1 %2871 to i8
  store i8 %2883, i8* %35, align 1
  %2884 = lshr i32 %2868, 31
  %2885 = trunc i32 %2884 to i8
  store i8 %2885, i8* %38, align 1
  %2886 = lshr i32 %2867, 31
  %2887 = xor i32 %2884, %2886
  %2888 = add nuw nsw i32 %2887, %2884
  %2889 = icmp eq i32 %2888, 2
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %44, align 1
  %2891 = add i64 %2863, 20
  store i64 %2891, i64* %3, align 8
  store i32 %2868, i32* %2866, align 4
  %2892 = load i64, i64* %3, align 8
  %2893 = add i64 %2892, -1805
  store i64 %2893, i64* %3, align 8
  br label %block_.L_409da8

block_.L_40a4ba:                                  ; preds = %block_.L_409da8
  %2894 = add i64 %572, -72
  %2895 = add i64 %612, 4
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i64*
  %2897 = load i64, i64* %2896, align 8
  store i64 %2897, i64* %RAX.i2009, align 8
  %2898 = add i64 %572, -164
  %2899 = add i64 %612, 11
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = sext i32 %2901 to i64
  store i64 %2902, i64* %RCX.i2228, align 8
  %2903 = shl nsw i64 %2902, 3
  %2904 = add i64 %2903, %2897
  %2905 = add i64 %612, 15
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i64*
  %2907 = load i64, i64* %2906, align 8
  store i64 %2907, i64* %RAX.i2009, align 8
  %2908 = add i64 %2907, 16
  %2909 = add i64 %612, 22
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  store i32 -987654321, i32* %2910, align 4
  %2911 = load i64, i64* %RBP.i, align 8
  %2912 = add i64 %2911, -72
  %2913 = load i64, i64* %3, align 8
  %2914 = add i64 %2913, 4
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2912 to i64*
  %2916 = load i64, i64* %2915, align 8
  store i64 %2916, i64* %RAX.i2009, align 8
  %2917 = add i64 %2911, -168
  %2918 = add i64 %2913, 11
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i32*
  %2920 = load i32, i32* %2919, align 4
  %2921 = sext i32 %2920 to i64
  store i64 %2921, i64* %RCX.i2228, align 8
  %2922 = shl nsw i64 %2921, 3
  %2923 = add i64 %2922, %2916
  %2924 = add i64 %2913, 15
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %RAX.i2009, align 8
  %2927 = add i64 %2926, 16
  %2928 = add i64 %2913, 18
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RDX.i2231, align 8
  %2932 = add i64 %2911, -32
  %2933 = add i64 %2913, 22
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i64*
  %2935 = load i64, i64* %2934, align 8
  store i64 %2935, i64* %RAX.i2009, align 8
  %2936 = add i64 %2935, 340
  %2937 = add i64 %2913, 28
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = add i32 %2939, %2930
  %2941 = zext i32 %2940 to i64
  store i64 %2941, i64* %RDX.i2231, align 8
  %2942 = add i64 %2911, -148
  %2943 = add i64 %2913, 34
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  store i32 %2940, i32* %2944, align 4
  %2945 = load i32, i32* %416, align 4
  %2946 = load i64, i64* %3, align 8
  %2947 = add i32 %2945, 987654321
  %2948 = icmp ult i32 %2945, -987654321
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %19, align 1
  %2950 = and i32 %2947, 255
  %2951 = tail call i32 @llvm.ctpop.i32(i32 %2950)
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  %2954 = xor i8 %2953, 1
  store i8 %2954, i8* %26, align 1
  %2955 = xor i32 %2947, %2945
  %2956 = lshr i32 %2955, 4
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  store i8 %2958, i8* %32, align 1
  %2959 = icmp eq i32 %2947, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %35, align 1
  %2961 = lshr i32 %2947, 31
  %2962 = trunc i32 %2961 to i8
  store i8 %2962, i8* %38, align 1
  %2963 = lshr i32 %2945, 31
  %2964 = xor i32 %2963, 1
  %2965 = xor i32 %2961, %2963
  %2966 = add nuw nsw i32 %2965, %2964
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %44, align 1
  %2969 = icmp ne i8 %2962, 0
  %2970 = xor i1 %2969, %2967
  %2971 = or i1 %2959, %2970
  %.v85 = select i1 %2971, i64 36, i64 12
  %2972 = add i64 %2946, %.v85
  store i64 %2972, i64* %3, align 8
  br i1 %2971, label %block_.L_40a516, label %block_40a4fe

block_40a4fe:                                     ; preds = %block_.L_40a4ba
  %2973 = load i64, i64* %RBP.i, align 8
  %2974 = add i64 %2973, -148
  %2975 = add i64 %2972, 6
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RAX.i2009, align 8
  %2979 = add i64 %2973, -72
  %2980 = add i64 %2972, 10
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i64*
  %2982 = load i64, i64* %2981, align 8
  store i64 %2982, i64* %RCX.i2228, align 8
  %2983 = add i64 %2973, -164
  %2984 = add i64 %2972, 17
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = sext i32 %2986 to i64
  store i64 %2987, i64* %RDX.i2231, align 8
  %2988 = shl nsw i64 %2987, 3
  %2989 = add i64 %2988, %2982
  %2990 = add i64 %2972, 21
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i64*
  %2992 = load i64, i64* %2991, align 8
  store i64 %2992, i64* %RCX.i2228, align 8
  %2993 = add i64 %2992, 16
  %2994 = add i64 %2972, 24
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  store i32 %2977, i32* %2995, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_40a516

block_.L_40a516:                                  ; preds = %block_40a4fe, %block_.L_40a4ba
  %2996 = phi i64 [ %.pre62, %block_40a4fe ], [ %2972, %block_.L_40a4ba ]
  %2997 = load i64, i64* %RBP.i, align 8
  %2998 = add i64 %2997, -72
  %2999 = add i64 %2996, 4
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i64*
  %3001 = load i64, i64* %3000, align 8
  store i64 %3001, i64* %RAX.i2009, align 8
  %3002 = add i64 %2997, -164
  %3003 = add i64 %2996, 11
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = sext i32 %3005 to i64
  store i64 %3006, i64* %RCX.i2228, align 8
  %3007 = shl nsw i64 %3006, 3
  %3008 = add i64 %3007, %3001
  %3009 = add i64 %2996, 15
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  store i64 %3011, i64* %RAX.i2009, align 8
  %3012 = add i64 %3011, 4
  %3013 = add i64 %2996, 22
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  store i32 -987654321, i32* %3014, align 4
  %3015 = load i64, i64* %RBP.i, align 8
  %3016 = add i64 %3015, -156
  %3017 = load i64, i64* %3, align 8
  %3018 = add i64 %3017, 10
  store i64 %3018, i64* %3, align 8
  %3019 = inttoptr i64 %3016 to i32*
  store i32 1, i32* %3019, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_40a536

block_.L_40a536:                                  ; preds = %block_.L_40a5da, %block_.L_40a516
  %3020 = phi i64 [ %3267, %block_.L_40a5da ], [ %.pre63, %block_.L_40a516 ]
  %3021 = load i64, i64* %RBP.i, align 8
  %3022 = add i64 %3021, -156
  %3023 = add i64 %3020, 6
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RAX.i2009, align 8
  %3027 = add i64 %3021, -32
  %3028 = add i64 %3020, 10
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i64*
  %3030 = load i64, i64* %3029, align 8
  store i64 %3030, i64* %RCX.i2228, align 8
  %3031 = add i64 %3030, 136
  %3032 = add i64 %3020, 16
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = sub i32 %3025, %3034
  %3036 = icmp ult i32 %3025, %3034
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %19, align 1
  %3038 = and i32 %3035, 255
  %3039 = tail call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  store i8 %3042, i8* %26, align 1
  %3043 = xor i32 %3034, %3025
  %3044 = xor i32 %3043, %3035
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  store i8 %3047, i8* %32, align 1
  %3048 = icmp eq i32 %3035, 0
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %35, align 1
  %3050 = lshr i32 %3035, 31
  %3051 = trunc i32 %3050 to i8
  store i8 %3051, i8* %38, align 1
  %3052 = lshr i32 %3025, 31
  %3053 = lshr i32 %3034, 31
  %3054 = xor i32 %3053, %3052
  %3055 = xor i32 %3050, %3052
  %3056 = add nuw nsw i32 %3055, %3054
  %3057 = icmp eq i32 %3056, 2
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %44, align 1
  %3059 = icmp ne i8 %3051, 0
  %3060 = xor i1 %3059, %3057
  %.demorgan81 = or i1 %3048, %3060
  %.v86 = select i1 %.demorgan81, i64 22, i64 189
  %3061 = add i64 %3020, %.v86
  store i64 %3061, i64* %3, align 8
  br i1 %.demorgan81, label %block_40a54c, label %block_.L_40a5f3

block_40a54c:                                     ; preds = %block_.L_40a536
  %3062 = add i64 %3021, -80
  %3063 = add i64 %3061, 4
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i64*
  %3065 = load i64, i64* %3064, align 8
  store i64 %3065, i64* %RAX.i2009, align 8
  %3066 = add i64 %3021, -164
  %3067 = add i64 %3061, 11
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = sext i32 %3069 to i64
  store i64 %3070, i64* %RCX.i2228, align 8
  %3071 = shl nsw i64 %3070, 3
  %3072 = add i64 %3071, %3065
  %3073 = add i64 %3061, 15
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i64*
  %3075 = load i64, i64* %3074, align 8
  store i64 %3075, i64* %RAX.i2009, align 8
  %3076 = add i64 %3061, 22
  store i64 %3076, i64* %3, align 8
  %3077 = load i32, i32* %3024, align 4
  %3078 = sext i32 %3077 to i64
  store i64 %3078, i64* %RCX.i2228, align 8
  %3079 = shl nsw i64 %3078, 2
  %3080 = add i64 %3079, %3075
  %3081 = add i64 %3061, 25
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i32*
  %3083 = load i32, i32* %3082, align 4
  %3084 = zext i32 %3083 to i64
  store i64 %3084, i64* %RDX.i2231, align 8
  %3085 = add i64 %3061, 29
  store i64 %3085, i64* %3, align 8
  %3086 = load i64, i64* %3029, align 8
  store i64 %3086, i64* %RAX.i2009, align 8
  %3087 = add i64 %3086, 376
  %3088 = add i64 %3061, 36
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i64*
  %3090 = load i64, i64* %3089, align 8
  store i64 %3090, i64* %RAX.i2009, align 8
  %3091 = add i64 %3061, 43
  store i64 %3091, i64* %3, align 8
  %3092 = load i32, i32* %3024, align 4
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %RCX.i2228, align 8
  %3094 = shl nsw i64 %3093, 2
  %3095 = add i64 %3090, %3094
  %3096 = add i64 %3061, 46
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  %3099 = add i32 %3098, %3083
  %3100 = zext i32 %3099 to i64
  store i64 %3100, i64* %RDX.i2231, align 8
  %3101 = icmp ult i32 %3099, %3083
  %3102 = icmp ult i32 %3099, %3098
  %3103 = or i1 %3101, %3102
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %19, align 1
  %3105 = and i32 %3099, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %26, align 1
  %3110 = xor i32 %3098, %3083
  %3111 = xor i32 %3110, %3099
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %32, align 1
  %3115 = icmp eq i32 %3099, 0
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %35, align 1
  %3117 = lshr i32 %3099, 31
  %3118 = trunc i32 %3117 to i8
  store i8 %3118, i8* %38, align 1
  %3119 = lshr i32 %3083, 31
  %3120 = lshr i32 %3098, 31
  %3121 = xor i32 %3117, %3119
  %3122 = xor i32 %3117, %3120
  %3123 = add nuw nsw i32 %3121, %3122
  %3124 = icmp eq i32 %3123, 2
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %44, align 1
  %3126 = add i64 %3021, -148
  %3127 = add i64 %3061, 52
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i32*
  store i32 %3099, i32* %3128, align 4
  %3129 = load i64, i64* %RBP.i, align 8
  %3130 = add i64 %3129, -72
  %3131 = load i64, i64* %3, align 8
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3130 to i64*
  %3134 = load i64, i64* %3133, align 8
  store i64 %3134, i64* %RAX.i2009, align 8
  %3135 = add i64 %3129, -164
  %3136 = add i64 %3131, 11
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  %3138 = load i32, i32* %3137, align 4
  %3139 = sext i32 %3138 to i64
  store i64 %3139, i64* %RCX.i2228, align 8
  %3140 = shl nsw i64 %3139, 3
  %3141 = add i64 %3140, %3134
  %3142 = add i64 %3131, 15
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i64*
  %3144 = load i64, i64* %3143, align 8
  store i64 %3144, i64* %RAX.i2009, align 8
  %3145 = load i32, i32* %416, align 4
  %3146 = add i64 %3144, 4
  %3147 = add i64 %3131, 18
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = sub i32 %3145, %3149
  %3151 = icmp ult i32 %3145, %3149
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %19, align 1
  %3153 = and i32 %3150, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %26, align 1
  %3158 = xor i32 %3149, %3145
  %3159 = xor i32 %3158, %3150
  %3160 = lshr i32 %3159, 4
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  store i8 %3162, i8* %32, align 1
  %3163 = icmp eq i32 %3150, 0
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %35, align 1
  %3165 = lshr i32 %3150, 31
  %3166 = trunc i32 %3165 to i8
  store i8 %3166, i8* %38, align 1
  %3167 = lshr i32 %3145, 31
  %3168 = lshr i32 %3149, 31
  %3169 = xor i32 %3168, %3167
  %3170 = xor i32 %3165, %3167
  %3171 = add nuw nsw i32 %3170, %3169
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %44, align 1
  %3174 = icmp ne i8 %3166, 0
  %3175 = xor i1 %3174, %3172
  %3176 = or i1 %3163, %3175
  %.v93 = select i1 %3176, i64 90, i64 24
  %3177 = add i64 %3131, %.v93
  store i64 %3177, i64* %3, align 8
  br i1 %3176, label %block_.L_40a5da, label %block_40a598

block_40a598:                                     ; preds = %block_40a54c
  %3178 = add i64 %3129, -148
  %3179 = add i64 %3177, 6
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RAX.i2009, align 8
  %3183 = add i64 %3177, 10
  store i64 %3183, i64* %3, align 8
  %3184 = load i64, i64* %3133, align 8
  store i64 %3184, i64* %RCX.i2228, align 8
  %3185 = add i64 %3177, 17
  store i64 %3185, i64* %3, align 8
  %3186 = load i32, i32* %3137, align 4
  %3187 = sext i32 %3186 to i64
  store i64 %3187, i64* %RDX.i2231, align 8
  %3188 = shl nsw i64 %3187, 3
  %3189 = add i64 %3188, %3184
  %3190 = add i64 %3177, 21
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i64*
  %3192 = load i64, i64* %3191, align 8
  store i64 %3192, i64* %RCX.i2228, align 8
  %3193 = add i64 %3192, 4
  %3194 = add i64 %3177, 24
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i32*
  store i32 %3181, i32* %3195, align 4
  %3196 = load i64, i64* %RBP.i, align 8
  %3197 = add i64 %3196, -112
  %3198 = load i64, i64* %3, align 8
  %3199 = add i64 %3198, 4
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3197 to i64*
  %3201 = load i64, i64* %3200, align 8
  store i64 %3201, i64* %RCX.i2228, align 8
  %3202 = add i64 %3196, -164
  %3203 = add i64 %3198, 11
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i32*
  %3205 = load i32, i32* %3204, align 4
  %3206 = sext i32 %3205 to i64
  store i64 %3206, i64* %RDX.i2231, align 8
  %3207 = shl nsw i64 %3206, 3
  %3208 = add i64 %3207, %3201
  %3209 = add i64 %3198, 15
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i64*
  %3211 = load i64, i64* %3210, align 8
  store i64 %3211, i64* %RCX.i2228, align 8
  %3212 = add i64 %3196, -156
  %3213 = add i64 %3198, 22
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = sext i32 %3215 to i64
  store i64 %3216, i64* %RDX.i2231, align 8
  %3217 = shl nsw i64 %3216, 2
  %3218 = add i64 %3217, %3211
  %3219 = add i64 %3198, 25
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = zext i32 %3221 to i64
  store i64 %3222, i64* %RAX.i2009, align 8
  %3223 = add i64 %3196, -144
  %3224 = add i64 %3198, 32
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i64*
  %3226 = load i64, i64* %3225, align 8
  store i64 %3226, i64* %RCX.i2228, align 8
  %3227 = add i64 %3196, -152
  %3228 = add i64 %3198, 39
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i32*
  %3230 = load i32, i32* %3229, align 4
  %3231 = sext i32 %3230 to i64
  store i64 %3231, i64* %RDX.i2231, align 8
  %3232 = shl nsw i64 %3231, 2
  %3233 = add i64 %3232, %3226
  %3234 = add i64 %3198, 42
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  store i32 %3221, i32* %3235, align 4
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40a5da

block_.L_40a5da:                                  ; preds = %block_40a598, %block_40a54c
  %3236 = phi i64 [ %.pre65, %block_40a598 ], [ %3129, %block_40a54c ]
  %3237 = phi i64 [ %.pre64, %block_40a598 ], [ %3177, %block_40a54c ]
  %3238 = add i64 %3236, -156
  %3239 = add i64 %3237, 11
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = add i32 %3241, 1
  %3243 = zext i32 %3242 to i64
  store i64 %3243, i64* %RAX.i2009, align 8
  %3244 = icmp eq i32 %3241, -1
  %3245 = icmp eq i32 %3242, 0
  %3246 = or i1 %3244, %3245
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %19, align 1
  %3248 = and i32 %3242, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %26, align 1
  %3253 = xor i32 %3242, %3241
  %3254 = lshr i32 %3253, 4
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  store i8 %3256, i8* %32, align 1
  %3257 = zext i1 %3245 to i8
  store i8 %3257, i8* %35, align 1
  %3258 = lshr i32 %3242, 31
  %3259 = trunc i32 %3258 to i8
  store i8 %3259, i8* %38, align 1
  %3260 = lshr i32 %3241, 31
  %3261 = xor i32 %3258, %3260
  %3262 = add nuw nsw i32 %3261, %3258
  %3263 = icmp eq i32 %3262, 2
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %44, align 1
  %3265 = add i64 %3237, 20
  store i64 %3265, i64* %3, align 8
  store i32 %3242, i32* %3240, align 4
  %3266 = load i64, i64* %3, align 8
  %3267 = add i64 %3266, -184
  store i64 %3267, i64* %3, align 8
  br label %block_.L_40a536

block_.L_40a5f3:                                  ; preds = %block_.L_40a536
  %3268 = add i64 %3021, -72
  %3269 = add i64 %3061, 4
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RAX.i2009, align 8
  %3272 = add i64 %3021, -164
  %3273 = add i64 %3061, 11
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %RCX.i2228, align 8
  %3277 = shl nsw i64 %3276, 3
  %3278 = add i64 %3277, %3271
  %3279 = add i64 %3061, 15
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i64*
  %3281 = load i64, i64* %3280, align 8
  store i64 %3281, i64* %RAX.i2009, align 8
  %3282 = add i64 %3281, 12
  %3283 = add i64 %3061, 22
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i32*
  store i32 -987654321, i32* %3284, align 4
  %3285 = load i64, i64* %RBP.i, align 8
  %3286 = add i64 %3285, -72
  %3287 = load i64, i64* %3, align 8
  %3288 = add i64 %3287, 4
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3286 to i64*
  %3290 = load i64, i64* %3289, align 8
  store i64 %3290, i64* %RAX.i2009, align 8
  %3291 = add i64 %3285, -168
  %3292 = add i64 %3287, 11
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i32*
  %3294 = load i32, i32* %3293, align 4
  %3295 = sext i32 %3294 to i64
  store i64 %3295, i64* %RCX.i2228, align 8
  %3296 = shl nsw i64 %3295, 3
  %3297 = add i64 %3296, %3290
  %3298 = add i64 %3287, 15
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i64*
  %3300 = load i64, i64* %3299, align 8
  store i64 %3300, i64* %RAX.i2009, align 8
  %3301 = add i64 %3300, 12
  %3302 = add i64 %3287, 18
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RDX.i2231, align 8
  %3306 = add i64 %3285, -32
  %3307 = add i64 %3287, 22
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i64*
  %3309 = load i64, i64* %3308, align 8
  store i64 %3309, i64* %RAX.i2009, align 8
  %3310 = add i64 %3309, 364
  %3311 = add i64 %3287, 28
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3310 to i32*
  %3313 = load i32, i32* %3312, align 4
  %3314 = add i32 %3313, %3304
  %3315 = zext i32 %3314 to i64
  store i64 %3315, i64* %RDX.i2231, align 8
  %3316 = add i64 %3285, -148
  %3317 = add i64 %3287, 34
  store i64 %3317, i64* %3, align 8
  %3318 = inttoptr i64 %3316 to i32*
  store i32 %3314, i32* %3318, align 4
  %3319 = load i32, i32* %416, align 4
  %3320 = load i64, i64* %3, align 8
  %3321 = add i32 %3319, 987654321
  %3322 = icmp ult i32 %3319, -987654321
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %19, align 1
  %3324 = and i32 %3321, 255
  %3325 = tail call i32 @llvm.ctpop.i32(i32 %3324)
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  store i8 %3328, i8* %26, align 1
  %3329 = xor i32 %3321, %3319
  %3330 = lshr i32 %3329, 4
  %3331 = trunc i32 %3330 to i8
  %3332 = and i8 %3331, 1
  store i8 %3332, i8* %32, align 1
  %3333 = icmp eq i32 %3321, 0
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %35, align 1
  %3335 = lshr i32 %3321, 31
  %3336 = trunc i32 %3335 to i8
  store i8 %3336, i8* %38, align 1
  %3337 = lshr i32 %3319, 31
  %3338 = xor i32 %3337, 1
  %3339 = xor i32 %3335, %3337
  %3340 = add nuw nsw i32 %3339, %3338
  %3341 = icmp eq i32 %3340, 2
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %44, align 1
  %3343 = icmp ne i8 %3336, 0
  %3344 = xor i1 %3343, %3341
  %3345 = or i1 %3333, %3344
  %.v87 = select i1 %3345, i64 72, i64 12
  %3346 = add i64 %3320, %.v87
  store i64 %3346, i64* %3, align 8
  br i1 %3345, label %block_.L_40a673, label %block_40a637

block_40a637:                                     ; preds = %block_.L_40a5f3
  %3347 = load i64, i64* %RBP.i, align 8
  %3348 = add i64 %3347, -148
  %3349 = add i64 %3346, 6
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RAX.i2009, align 8
  %3353 = add i64 %3347, -72
  %3354 = add i64 %3346, 10
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3353 to i64*
  %3356 = load i64, i64* %3355, align 8
  store i64 %3356, i64* %RCX.i2228, align 8
  %3357 = add i64 %3347, -164
  %3358 = add i64 %3346, 17
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = sext i32 %3360 to i64
  store i64 %3361, i64* %RDX.i2231, align 8
  %3362 = shl nsw i64 %3361, 3
  %3363 = add i64 %3362, %3356
  %3364 = add i64 %3346, 21
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i64*
  %3366 = load i64, i64* %3365, align 8
  store i64 %3366, i64* %RCX.i2228, align 8
  %3367 = add i64 %3366, 12
  %3368 = add i64 %3346, 24
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  store i32 %3351, i32* %3369, align 4
  %3370 = load i64, i64* %RBP.i, align 8
  %3371 = add i64 %3370, -104
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 4
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i64*
  %3375 = load i64, i64* %3374, align 8
  store i64 %3375, i64* %RCX.i2228, align 8
  %3376 = add i64 %3370, -168
  %3377 = add i64 %3372, 11
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  store i64 %3380, i64* %RDX.i2231, align 8
  %3381 = shl nsw i64 %3380, 3
  %3382 = add i64 %3381, %3375
  %3383 = add i64 %3372, 15
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %RCX.i2228, align 8
  %3386 = add i64 %3385, 12
  %3387 = add i64 %3372, 18
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i32*
  %3389 = load i32, i32* %3388, align 4
  %3390 = zext i32 %3389 to i64
  store i64 %3390, i64* %RAX.i2009, align 8
  %3391 = add i64 %3372, 22
  store i64 %3391, i64* %3, align 8
  %3392 = load i64, i64* %3374, align 8
  store i64 %3392, i64* %RCX.i2228, align 8
  %3393 = add i64 %3370, -164
  %3394 = add i64 %3372, 29
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = sext i32 %3396 to i64
  store i64 %3397, i64* %RDX.i2231, align 8
  %3398 = shl nsw i64 %3397, 3
  %3399 = add i64 %3398, %3392
  %3400 = add i64 %3372, 33
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3399 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %RCX.i2228, align 8
  %3403 = add i64 %3402, 12
  %3404 = add i64 %3372, 36
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  store i32 %3389, i32* %3405, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_40a673

block_.L_40a673:                                  ; preds = %block_40a637, %block_.L_40a5f3
  %3406 = phi i64 [ %.pre66, %block_40a637 ], [ %3346, %block_.L_40a5f3 ]
  %3407 = load i64, i64* %RBP.i, align 8
  %3408 = add i64 %3407, -72
  %3409 = add i64 %3406, 4
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i64*
  %3411 = load i64, i64* %3410, align 8
  store i64 %3411, i64* %RAX.i2009, align 8
  %3412 = add i64 %3407, -164
  %3413 = add i64 %3406, 11
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = sext i32 %3415 to i64
  store i64 %3416, i64* %RCX.i2228, align 8
  %3417 = shl nsw i64 %3416, 3
  %3418 = add i64 %3417, %3411
  %3419 = add i64 %3406, 15
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %RAX.i2009, align 8
  %3422 = add i64 %3421, 4
  %3423 = add i64 %3406, 18
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i32*
  %3425 = load i32, i32* %3424, align 4
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RDX.i2231, align 8
  %3427 = add i64 %3407, -32
  %3428 = add i64 %3406, 22
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i64*
  %3430 = load i64, i64* %3429, align 8
  store i64 %3430, i64* %RAX.i2009, align 8
  %3431 = add i64 %3430, 348
  %3432 = add i64 %3406, 28
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3431 to i32*
  %3434 = load i32, i32* %3433, align 4
  %3435 = add i32 %3434, %3425
  %3436 = zext i32 %3435 to i64
  store i64 %3436, i64* %RDX.i2231, align 8
  %3437 = icmp ult i32 %3435, %3425
  %3438 = icmp ult i32 %3435, %3434
  %3439 = or i1 %3437, %3438
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %19, align 1
  %3441 = and i32 %3435, 255
  %3442 = tail call i32 @llvm.ctpop.i32(i32 %3441)
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = xor i8 %3444, 1
  store i8 %3445, i8* %26, align 1
  %3446 = xor i32 %3434, %3425
  %3447 = xor i32 %3446, %3435
  %3448 = lshr i32 %3447, 4
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  store i8 %3450, i8* %32, align 1
  %3451 = icmp eq i32 %3435, 0
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %35, align 1
  %3453 = lshr i32 %3435, 31
  %3454 = trunc i32 %3453 to i8
  store i8 %3454, i8* %38, align 1
  %3455 = lshr i32 %3425, 31
  %3456 = lshr i32 %3434, 31
  %3457 = xor i32 %3453, %3455
  %3458 = xor i32 %3453, %3456
  %3459 = add nuw nsw i32 %3457, %3458
  %3460 = icmp eq i32 %3459, 2
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %44, align 1
  %3462 = add i64 %3407, -148
  %3463 = add i64 %3406, 34
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to i32*
  store i32 %3435, i32* %3464, align 4
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -72
  %3467 = load i64, i64* %3, align 8
  %3468 = add i64 %3467, 4
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3466 to i64*
  %3470 = load i64, i64* %3469, align 8
  store i64 %3470, i64* %RAX.i2009, align 8
  %3471 = add i64 %3465, -164
  %3472 = add i64 %3467, 11
  store i64 %3472, i64* %3, align 8
  %3473 = inttoptr i64 %3471 to i32*
  %3474 = load i32, i32* %3473, align 4
  %3475 = sext i32 %3474 to i64
  store i64 %3475, i64* %RCX.i2228, align 8
  %3476 = shl nsw i64 %3475, 3
  %3477 = add i64 %3476, %3470
  %3478 = add i64 %3467, 15
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i64*
  %3480 = load i64, i64* %3479, align 8
  store i64 %3480, i64* %RAX.i2009, align 8
  %3481 = load i32, i32* %416, align 4
  %3482 = add i64 %3480, 12
  %3483 = add i64 %3467, 18
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = sub i32 %3481, %3485
  %3487 = icmp ult i32 %3481, %3485
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %19, align 1
  %3489 = and i32 %3486, 255
  %3490 = tail call i32 @llvm.ctpop.i32(i32 %3489)
  %3491 = trunc i32 %3490 to i8
  %3492 = and i8 %3491, 1
  %3493 = xor i8 %3492, 1
  store i8 %3493, i8* %26, align 1
  %3494 = xor i32 %3485, %3481
  %3495 = xor i32 %3494, %3486
  %3496 = lshr i32 %3495, 4
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  store i8 %3498, i8* %32, align 1
  %3499 = icmp eq i32 %3486, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %35, align 1
  %3501 = lshr i32 %3486, 31
  %3502 = trunc i32 %3501 to i8
  store i8 %3502, i8* %38, align 1
  %3503 = lshr i32 %3481, 31
  %3504 = lshr i32 %3485, 31
  %3505 = xor i32 %3504, %3503
  %3506 = xor i32 %3501, %3503
  %3507 = add nuw nsw i32 %3506, %3505
  %3508 = icmp eq i32 %3507, 2
  %3509 = zext i1 %3508 to i8
  store i8 %3509, i8* %44, align 1
  %3510 = icmp ne i8 %3502, 0
  %3511 = xor i1 %3510, %3508
  %3512 = or i1 %3499, %3511
  %.v88 = select i1 %3512, i64 72, i64 24
  %3513 = add i64 %3467, %.v88
  store i64 %3513, i64* %3, align 8
  br i1 %3512, label %block_.L_40a6dd, label %block_40a6ad

block_40a6ad:                                     ; preds = %block_.L_40a673
  %3514 = add i64 %3465, -148
  %3515 = add i64 %3513, 6
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RAX.i2009, align 8
  %3519 = add i64 %3513, 10
  store i64 %3519, i64* %3, align 8
  %3520 = load i64, i64* %3469, align 8
  store i64 %3520, i64* %RCX.i2228, align 8
  %3521 = add i64 %3513, 17
  store i64 %3521, i64* %3, align 8
  %3522 = load i32, i32* %3473, align 4
  %3523 = sext i32 %3522 to i64
  store i64 %3523, i64* %RDX.i2231, align 8
  %3524 = shl nsw i64 %3523, 3
  %3525 = add i64 %3524, %3520
  %3526 = add i64 %3513, 21
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i64*
  %3528 = load i64, i64* %3527, align 8
  store i64 %3528, i64* %RCX.i2228, align 8
  %3529 = add i64 %3528, 12
  %3530 = add i64 %3513, 24
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  store i32 %3517, i32* %3531, align 4
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -152
  %3534 = load i64, i64* %3, align 8
  %3535 = add i64 %3534, 6
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3533 to i32*
  %3537 = load i32, i32* %3536, align 4
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RAX.i2009, align 8
  %3539 = add i64 %3532, -104
  %3540 = add i64 %3534, 10
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i64*
  %3542 = load i64, i64* %3541, align 8
  store i64 %3542, i64* %RCX.i2228, align 8
  %3543 = add i64 %3532, -164
  %3544 = add i64 %3534, 17
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = sext i32 %3546 to i64
  store i64 %3547, i64* %RDX.i2231, align 8
  %3548 = shl nsw i64 %3547, 3
  %3549 = add i64 %3548, %3542
  %3550 = add i64 %3534, 21
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i64*
  %3552 = load i64, i64* %3551, align 8
  store i64 %3552, i64* %RCX.i2228, align 8
  %3553 = add i64 %3552, 12
  %3554 = add i64 %3534, 24
  store i64 %3554, i64* %3, align 8
  %3555 = inttoptr i64 %3553 to i32*
  store i32 %3537, i32* %3555, align 4
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_40a6dd

block_.L_40a6dd:                                  ; preds = %block_40a6ad, %block_.L_40a673
  %3556 = phi i64 [ %.pre68, %block_40a6ad ], [ %3513, %block_.L_40a673 ]
  %3557 = phi i64 [ %.pre67, %block_40a6ad ], [ %3465, %block_.L_40a673 ]
  %3558 = add i64 %3557, -72
  %3559 = add i64 %3556, 4
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i64*
  %3561 = load i64, i64* %3560, align 8
  store i64 %3561, i64* %RAX.i2009, align 8
  %3562 = add i64 %3557, -164
  %3563 = add i64 %3556, 11
  store i64 %3563, i64* %3, align 8
  %3564 = inttoptr i64 %3562 to i32*
  %3565 = load i32, i32* %3564, align 4
  %3566 = sext i32 %3565 to i64
  store i64 %3566, i64* %RCX.i2228, align 8
  %3567 = shl nsw i64 %3566, 3
  %3568 = add i64 %3567, %3561
  %3569 = add i64 %3556, 15
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i64*
  %3571 = load i64, i64* %3570, align 8
  store i64 %3571, i64* %RAX.i2009, align 8
  %3572 = add i64 %3556, 21
  store i64 %3572, i64* %3, align 8
  %3573 = inttoptr i64 %3571 to i32*
  store i32 -987654321, i32* %3573, align 4
  %3574 = load i64, i64* %RBP.i, align 8
  %3575 = add i64 %3574, -72
  %3576 = load i64, i64* %3, align 8
  %3577 = add i64 %3576, 4
  store i64 %3577, i64* %3, align 8
  %3578 = inttoptr i64 %3575 to i64*
  %3579 = load i64, i64* %3578, align 8
  store i64 %3579, i64* %RAX.i2009, align 8
  %3580 = add i64 %3574, -164
  %3581 = add i64 %3576, 11
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = sext i32 %3583 to i64
  store i64 %3584, i64* %RCX.i2228, align 8
  %3585 = shl nsw i64 %3584, 3
  %3586 = add i64 %3585, %3579
  %3587 = add i64 %3576, 15
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i64*
  %3589 = load i64, i64* %3588, align 8
  store i64 %3589, i64* %RAX.i2009, align 8
  %3590 = add i64 %3589, 16
  %3591 = add i64 %3576, 18
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RDX.i2231, align 8
  %3595 = add i64 %3574, -32
  %3596 = add i64 %3576, 22
  store i64 %3596, i64* %3, align 8
  %3597 = inttoptr i64 %3595 to i64*
  %3598 = load i64, i64* %3597, align 8
  store i64 %3598, i64* %RAX.i2009, align 8
  %3599 = add i64 %3598, 336
  %3600 = add i64 %3576, 28
  store i64 %3600, i64* %3, align 8
  %3601 = inttoptr i64 %3599 to i32*
  %3602 = load i32, i32* %3601, align 4
  %3603 = add i32 %3602, %3593
  %3604 = zext i32 %3603 to i64
  store i64 %3604, i64* %RDX.i2231, align 8
  %3605 = add i64 %3574, -148
  %3606 = add i64 %3576, 34
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  store i32 %3603, i32* %3607, align 4
  %3608 = load i32, i32* %416, align 4
  %3609 = load i64, i64* %3, align 8
  %3610 = add i32 %3608, 987654321
  %3611 = icmp ult i32 %3608, -987654321
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %19, align 1
  %3613 = and i32 %3610, 255
  %3614 = tail call i32 @llvm.ctpop.i32(i32 %3613)
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = xor i8 %3616, 1
  store i8 %3617, i8* %26, align 1
  %3618 = xor i32 %3610, %3608
  %3619 = lshr i32 %3618, 4
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  store i8 %3621, i8* %32, align 1
  %3622 = icmp eq i32 %3610, 0
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %35, align 1
  %3624 = lshr i32 %3610, 31
  %3625 = trunc i32 %3624 to i8
  store i8 %3625, i8* %38, align 1
  %3626 = lshr i32 %3608, 31
  %3627 = xor i32 %3626, 1
  %3628 = xor i32 %3624, %3626
  %3629 = add nuw nsw i32 %3628, %3627
  %3630 = icmp eq i32 %3629, 2
  %3631 = zext i1 %3630 to i8
  store i8 %3631, i8* %44, align 1
  %3632 = icmp ne i8 %3625, 0
  %3633 = xor i1 %3632, %3630
  %3634 = or i1 %3622, %3633
  %.v89 = select i1 %3634, i64 56, i64 12
  %3635 = add i64 %3609, %.v89
  store i64 %3635, i64* %3, align 8
  br i1 %3634, label %block_.L_40a74c, label %block_40a720

block_40a720:                                     ; preds = %block_.L_40a6dd
  %3636 = load i64, i64* %RBP.i, align 8
  %3637 = add i64 %3636, -148
  %3638 = add i64 %3635, 6
  store i64 %3638, i64* %3, align 8
  %3639 = inttoptr i64 %3637 to i32*
  %3640 = load i32, i32* %3639, align 4
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RAX.i2009, align 8
  %3642 = add i64 %3636, -72
  %3643 = add i64 %3635, 10
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3642 to i64*
  %3645 = load i64, i64* %3644, align 8
  store i64 %3645, i64* %RCX.i2228, align 8
  %3646 = add i64 %3636, -164
  %3647 = add i64 %3635, 17
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3646 to i32*
  %3649 = load i32, i32* %3648, align 4
  %3650 = sext i32 %3649 to i64
  store i64 %3650, i64* %RDX.i2231, align 8
  %3651 = shl nsw i64 %3650, 3
  %3652 = add i64 %3651, %3645
  %3653 = add i64 %3635, 21
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RCX.i2228, align 8
  %3656 = add i64 %3635, 23
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i32*
  store i32 %3640, i32* %3657, align 4
  %3658 = load i64, i64* %RBP.i, align 8
  %3659 = add i64 %3658, -136
  %3660 = load i64, i64* %3, align 8
  %3661 = add i64 %3660, 7
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3659 to i64*
  %3663 = load i64, i64* %3662, align 8
  store i64 %3663, i64* %RCX.i2228, align 8
  %3664 = add i64 %3658, -152
  %3665 = add i64 %3660, 14
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = sext i32 %3667 to i64
  store i64 %3668, i64* %RDX.i2231, align 8
  %3669 = shl nsw i64 %3668, 2
  %3670 = add i64 %3669, %3663
  %3671 = add i64 %3660, 21
  store i64 %3671, i64* %3, align 8
  %3672 = inttoptr i64 %3670 to i32*
  store i32 0, i32* %3672, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_40a74c

block_.L_40a74c:                                  ; preds = %block_40a720, %block_.L_40a6dd
  %3673 = phi i64 [ %.pre69, %block_40a720 ], [ %3635, %block_.L_40a6dd ]
  %3674 = load i64, i64* %RBP.i, align 8
  %3675 = add i64 %3674, -72
  %3676 = add i64 %3673, 4
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i64*
  %3678 = load i64, i64* %3677, align 8
  store i64 %3678, i64* %RAX.i2009, align 8
  %3679 = add i64 %3674, -164
  %3680 = add i64 %3673, 11
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = sext i32 %3682 to i64
  store i64 %3683, i64* %RCX.i2228, align 8
  %3684 = shl nsw i64 %3683, 3
  %3685 = add i64 %3684, %3678
  %3686 = add i64 %3673, 15
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i64*
  %3688 = load i64, i64* %3687, align 8
  store i64 %3688, i64* %RAX.i2009, align 8
  %3689 = add i64 %3688, 12
  %3690 = add i64 %3673, 18
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RDX.i2231, align 8
  %3694 = add i64 %3674, -32
  %3695 = add i64 %3673, 22
  store i64 %3695, i64* %3, align 8
  %3696 = inttoptr i64 %3694 to i64*
  %3697 = load i64, i64* %3696, align 8
  store i64 %3697, i64* %RAX.i2009, align 8
  %3698 = add i64 %3697, 360
  %3699 = add i64 %3673, 28
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = add i32 %3701, %3692
  %3703 = zext i32 %3702 to i64
  store i64 %3703, i64* %RDX.i2231, align 8
  %3704 = icmp ult i32 %3702, %3692
  %3705 = icmp ult i32 %3702, %3701
  %3706 = or i1 %3704, %3705
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %19, align 1
  %3708 = and i32 %3702, 255
  %3709 = tail call i32 @llvm.ctpop.i32(i32 %3708)
  %3710 = trunc i32 %3709 to i8
  %3711 = and i8 %3710, 1
  %3712 = xor i8 %3711, 1
  store i8 %3712, i8* %26, align 1
  %3713 = xor i32 %3701, %3692
  %3714 = xor i32 %3713, %3702
  %3715 = lshr i32 %3714, 4
  %3716 = trunc i32 %3715 to i8
  %3717 = and i8 %3716, 1
  store i8 %3717, i8* %32, align 1
  %3718 = icmp eq i32 %3702, 0
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %35, align 1
  %3720 = lshr i32 %3702, 31
  %3721 = trunc i32 %3720 to i8
  store i8 %3721, i8* %38, align 1
  %3722 = lshr i32 %3692, 31
  %3723 = lshr i32 %3701, 31
  %3724 = xor i32 %3720, %3722
  %3725 = xor i32 %3720, %3723
  %3726 = add nuw nsw i32 %3724, %3725
  %3727 = icmp eq i32 %3726, 2
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %44, align 1
  %3729 = add i64 %3674, -148
  %3730 = add i64 %3673, 34
  store i64 %3730, i64* %3, align 8
  %3731 = inttoptr i64 %3729 to i32*
  store i32 %3702, i32* %3731, align 4
  %3732 = load i64, i64* %RBP.i, align 8
  %3733 = add i64 %3732, -72
  %3734 = load i64, i64* %3, align 8
  %3735 = add i64 %3734, 4
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3733 to i64*
  %3737 = load i64, i64* %3736, align 8
  store i64 %3737, i64* %RAX.i2009, align 8
  %3738 = add i64 %3732, -164
  %3739 = add i64 %3734, 11
  store i64 %3739, i64* %3, align 8
  %3740 = inttoptr i64 %3738 to i32*
  %3741 = load i32, i32* %3740, align 4
  %3742 = sext i32 %3741 to i64
  store i64 %3742, i64* %RCX.i2228, align 8
  %3743 = shl nsw i64 %3742, 3
  %3744 = add i64 %3743, %3737
  %3745 = add i64 %3734, 15
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i64*
  %3747 = load i64, i64* %3746, align 8
  store i64 %3747, i64* %RAX.i2009, align 8
  %3748 = load i32, i32* %416, align 4
  %3749 = add i64 %3734, 17
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3747 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = sub i32 %3748, %3751
  %3753 = icmp ult i32 %3748, %3751
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %19, align 1
  %3755 = and i32 %3752, 255
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %26, align 1
  %3760 = xor i32 %3751, %3748
  %3761 = xor i32 %3760, %3752
  %3762 = lshr i32 %3761, 4
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  store i8 %3764, i8* %32, align 1
  %3765 = icmp eq i32 %3752, 0
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %35, align 1
  %3767 = lshr i32 %3752, 31
  %3768 = trunc i32 %3767 to i8
  store i8 %3768, i8* %38, align 1
  %3769 = lshr i32 %3748, 31
  %3770 = lshr i32 %3751, 31
  %3771 = xor i32 %3770, %3769
  %3772 = xor i32 %3767, %3769
  %3773 = add nuw nsw i32 %3772, %3771
  %3774 = icmp eq i32 %3773, 2
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %44, align 1
  %3776 = icmp ne i8 %3768, 0
  %3777 = xor i1 %3776, %3774
  %3778 = or i1 %3765, %3777
  %.v90 = select i1 %3778, i64 81, i64 23
  %3779 = add i64 %3734, %.v90
  store i64 %3779, i64* %3, align 8
  br i1 %3778, label %block_.L_40a7bf, label %block_40a785

block_40a785:                                     ; preds = %block_.L_40a74c
  %3780 = add i64 %3732, -148
  %3781 = add i64 %3779, 6
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3780 to i32*
  %3783 = load i32, i32* %3782, align 4
  %3784 = zext i32 %3783 to i64
  store i64 %3784, i64* %RAX.i2009, align 8
  %3785 = add i64 %3779, 10
  store i64 %3785, i64* %3, align 8
  %3786 = load i64, i64* %3736, align 8
  store i64 %3786, i64* %RCX.i2228, align 8
  %3787 = add i64 %3779, 17
  store i64 %3787, i64* %3, align 8
  %3788 = load i32, i32* %3740, align 4
  %3789 = sext i32 %3788 to i64
  store i64 %3789, i64* %RDX.i2231, align 8
  %3790 = shl nsw i64 %3789, 3
  %3791 = add i64 %3790, %3786
  %3792 = add i64 %3779, 21
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i64*
  %3794 = load i64, i64* %3793, align 8
  store i64 %3794, i64* %RCX.i2228, align 8
  %3795 = add i64 %3779, 23
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  store i32 %3783, i32* %3796, align 4
  %3797 = load i64, i64* %RBP.i, align 8
  %3798 = add i64 %3797, -104
  %3799 = load i64, i64* %3, align 8
  %3800 = add i64 %3799, 4
  store i64 %3800, i64* %3, align 8
  %3801 = inttoptr i64 %3798 to i64*
  %3802 = load i64, i64* %3801, align 8
  store i64 %3802, i64* %RCX.i2228, align 8
  %3803 = add i64 %3797, -164
  %3804 = add i64 %3799, 11
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3803 to i32*
  %3806 = load i32, i32* %3805, align 4
  %3807 = sext i32 %3806 to i64
  store i64 %3807, i64* %RDX.i2231, align 8
  %3808 = shl nsw i64 %3807, 3
  %3809 = add i64 %3808, %3802
  %3810 = add i64 %3799, 15
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i64*
  %3812 = load i64, i64* %3811, align 8
  store i64 %3812, i64* %RCX.i2228, align 8
  %3813 = add i64 %3812, 12
  %3814 = add i64 %3799, 18
  store i64 %3814, i64* %3, align 8
  %3815 = inttoptr i64 %3813 to i32*
  %3816 = load i32, i32* %3815, align 4
  %3817 = zext i32 %3816 to i64
  store i64 %3817, i64* %RAX.i2009, align 8
  %3818 = add i64 %3797, -136
  %3819 = add i64 %3799, 25
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3818 to i64*
  %3821 = load i64, i64* %3820, align 8
  store i64 %3821, i64* %RCX.i2228, align 8
  %3822 = add i64 %3797, -152
  %3823 = add i64 %3799, 32
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i32*
  %3825 = load i32, i32* %3824, align 4
  %3826 = sext i32 %3825 to i64
  store i64 %3826, i64* %RDX.i2231, align 8
  %3827 = shl nsw i64 %3826, 2
  %3828 = add i64 %3827, %3821
  %3829 = add i64 %3799, 35
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3828 to i32*
  store i32 %3816, i32* %3830, align 4
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_40a7bf

block_.L_40a7bf:                                  ; preds = %block_40a785, %block_.L_40a74c
  %3831 = phi i64 [ %.pre71, %block_40a785 ], [ %3779, %block_.L_40a74c ]
  %3832 = phi i64 [ %.pre70, %block_40a785 ], [ %3732, %block_.L_40a74c ]
  %3833 = add i64 %3832, -72
  %3834 = add i64 %3831, 4
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i64*
  %3836 = load i64, i64* %3835, align 8
  store i64 %3836, i64* %RAX.i2009, align 8
  %3837 = add i64 %3832, -164
  %3838 = add i64 %3831, 11
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = sext i32 %3840 to i64
  store i64 %3841, i64* %RCX.i2228, align 8
  %3842 = shl nsw i64 %3841, 3
  %3843 = add i64 %3842, %3836
  %3844 = add i64 %3831, 15
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i64*
  %3846 = load i64, i64* %3845, align 8
  store i64 %3846, i64* %RAX.i2009, align 8
  %3847 = add i64 %3846, 8
  %3848 = add i64 %3831, 22
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  store i32 -987654321, i32* %3849, align 4
  %3850 = load i64, i64* %RBP.i, align 8
  %3851 = add i64 %3850, -72
  %3852 = load i64, i64* %3, align 8
  %3853 = add i64 %3852, 4
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3851 to i64*
  %3855 = load i64, i64* %3854, align 8
  store i64 %3855, i64* %RAX.i2009, align 8
  %3856 = add i64 %3850, -168
  %3857 = add i64 %3852, 11
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i32*
  %3859 = load i32, i32* %3858, align 4
  %3860 = sext i32 %3859 to i64
  store i64 %3860, i64* %RCX.i2228, align 8
  %3861 = shl nsw i64 %3860, 3
  %3862 = add i64 %3861, %3855
  %3863 = add i64 %3852, 15
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i64*
  %3865 = load i64, i64* %3864, align 8
  store i64 %3865, i64* %RAX.i2009, align 8
  %3866 = add i64 %3865, 8
  %3867 = add i64 %3852, 18
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3866 to i32*
  %3869 = load i32, i32* %3868, align 4
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RDX.i2231, align 8
  %3871 = add i64 %3850, -32
  %3872 = add i64 %3852, 22
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i64*
  %3874 = load i64, i64* %3873, align 8
  store i64 %3874, i64* %RAX.i2009, align 8
  %3875 = add i64 %3874, 356
  %3876 = add i64 %3852, 28
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = add i32 %3878, %3869
  %3880 = zext i32 %3879 to i64
  store i64 %3880, i64* %RDX.i2231, align 8
  %3881 = add i64 %3850, -148
  %3882 = add i64 %3852, 34
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i32*
  store i32 %3879, i32* %3883, align 4
  %3884 = load i32, i32* %416, align 4
  %3885 = load i64, i64* %3, align 8
  %3886 = add i32 %3884, 987654321
  %3887 = icmp ult i32 %3884, -987654321
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %19, align 1
  %3889 = and i32 %3886, 255
  %3890 = tail call i32 @llvm.ctpop.i32(i32 %3889)
  %3891 = trunc i32 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = xor i8 %3892, 1
  store i8 %3893, i8* %26, align 1
  %3894 = xor i32 %3886, %3884
  %3895 = lshr i32 %3894, 4
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  store i8 %3897, i8* %32, align 1
  %3898 = icmp eq i32 %3886, 0
  %3899 = zext i1 %3898 to i8
  store i8 %3899, i8* %35, align 1
  %3900 = lshr i32 %3886, 31
  %3901 = trunc i32 %3900 to i8
  store i8 %3901, i8* %38, align 1
  %3902 = lshr i32 %3884, 31
  %3903 = xor i32 %3902, 1
  %3904 = xor i32 %3900, %3902
  %3905 = add nuw nsw i32 %3904, %3903
  %3906 = icmp eq i32 %3905, 2
  %3907 = zext i1 %3906 to i8
  store i8 %3907, i8* %44, align 1
  %3908 = icmp ne i8 %3901, 0
  %3909 = xor i1 %3908, %3906
  %3910 = or i1 %3898, %3909
  %.v91 = select i1 %3910, i64 72, i64 12
  %3911 = add i64 %3885, %.v91
  store i64 %3911, i64* %3, align 8
  br i1 %3910, label %block_.L_40a83f, label %block_40a803

block_40a803:                                     ; preds = %block_.L_40a7bf
  %3912 = load i64, i64* %RBP.i, align 8
  %3913 = add i64 %3912, -148
  %3914 = add i64 %3911, 6
  store i64 %3914, i64* %3, align 8
  %3915 = inttoptr i64 %3913 to i32*
  %3916 = load i32, i32* %3915, align 4
  %3917 = zext i32 %3916 to i64
  store i64 %3917, i64* %RAX.i2009, align 8
  %3918 = add i64 %3912, -72
  %3919 = add i64 %3911, 10
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3918 to i64*
  %3921 = load i64, i64* %3920, align 8
  store i64 %3921, i64* %RCX.i2228, align 8
  %3922 = add i64 %3912, -164
  %3923 = add i64 %3911, 17
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = sext i32 %3925 to i64
  store i64 %3926, i64* %RDX.i2231, align 8
  %3927 = shl nsw i64 %3926, 3
  %3928 = add i64 %3927, %3921
  %3929 = add i64 %3911, 21
  store i64 %3929, i64* %3, align 8
  %3930 = inttoptr i64 %3928 to i64*
  %3931 = load i64, i64* %3930, align 8
  store i64 %3931, i64* %RCX.i2228, align 8
  %3932 = add i64 %3931, 8
  %3933 = add i64 %3911, 24
  store i64 %3933, i64* %3, align 8
  %3934 = inttoptr i64 %3932 to i32*
  store i32 %3916, i32* %3934, align 4
  %3935 = load i64, i64* %RBP.i, align 8
  %3936 = add i64 %3935, -104
  %3937 = load i64, i64* %3, align 8
  %3938 = add i64 %3937, 4
  store i64 %3938, i64* %3, align 8
  %3939 = inttoptr i64 %3936 to i64*
  %3940 = load i64, i64* %3939, align 8
  store i64 %3940, i64* %RCX.i2228, align 8
  %3941 = add i64 %3935, -168
  %3942 = add i64 %3937, 11
  store i64 %3942, i64* %3, align 8
  %3943 = inttoptr i64 %3941 to i32*
  %3944 = load i32, i32* %3943, align 4
  %3945 = sext i32 %3944 to i64
  store i64 %3945, i64* %RDX.i2231, align 8
  %3946 = shl nsw i64 %3945, 3
  %3947 = add i64 %3946, %3940
  %3948 = add i64 %3937, 15
  store i64 %3948, i64* %3, align 8
  %3949 = inttoptr i64 %3947 to i64*
  %3950 = load i64, i64* %3949, align 8
  store i64 %3950, i64* %RCX.i2228, align 8
  %3951 = add i64 %3950, 8
  %3952 = add i64 %3937, 18
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3951 to i32*
  %3954 = load i32, i32* %3953, align 4
  %3955 = zext i32 %3954 to i64
  store i64 %3955, i64* %RAX.i2009, align 8
  %3956 = add i64 %3937, 22
  store i64 %3956, i64* %3, align 8
  %3957 = load i64, i64* %3939, align 8
  store i64 %3957, i64* %RCX.i2228, align 8
  %3958 = add i64 %3935, -164
  %3959 = add i64 %3937, 29
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i32*
  %3961 = load i32, i32* %3960, align 4
  %3962 = sext i32 %3961 to i64
  store i64 %3962, i64* %RDX.i2231, align 8
  %3963 = shl nsw i64 %3962, 3
  %3964 = add i64 %3963, %3957
  %3965 = add i64 %3937, 33
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i64*
  %3967 = load i64, i64* %3966, align 8
  store i64 %3967, i64* %RCX.i2228, align 8
  %3968 = add i64 %3967, 8
  %3969 = add i64 %3937, 36
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3968 to i32*
  store i32 %3954, i32* %3970, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_40a83f

block_.L_40a83f:                                  ; preds = %block_40a803, %block_.L_40a7bf
  %3971 = phi i64 [ %.pre72, %block_40a803 ], [ %3911, %block_.L_40a7bf ]
  %3972 = load i64, i64* %RBP.i, align 8
  %3973 = add i64 %3972, -72
  %3974 = add i64 %3971, 4
  store i64 %3974, i64* %3, align 8
  %3975 = inttoptr i64 %3973 to i64*
  %3976 = load i64, i64* %3975, align 8
  store i64 %3976, i64* %RAX.i2009, align 8
  %3977 = add i64 %3972, -164
  %3978 = add i64 %3971, 11
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RCX.i2228, align 8
  %3982 = shl nsw i64 %3981, 3
  %3983 = add i64 %3982, %3976
  %3984 = add i64 %3971, 15
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to i64*
  %3986 = load i64, i64* %3985, align 8
  store i64 %3986, i64* %RAX.i2009, align 8
  %3987 = add i64 %3986, 4
  %3988 = add i64 %3971, 18
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i32*
  %3990 = load i32, i32* %3989, align 4
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RDX.i2231, align 8
  %3992 = add i64 %3972, -32
  %3993 = add i64 %3971, 22
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i64*
  %3995 = load i64, i64* %3994, align 8
  store i64 %3995, i64* %RAX.i2009, align 8
  %3996 = add i64 %3995, 344
  %3997 = add i64 %3971, 28
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  %4000 = add i32 %3999, %3990
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RDX.i2231, align 8
  %4002 = icmp ult i32 %4000, %3990
  %4003 = icmp ult i32 %4000, %3999
  %4004 = or i1 %4002, %4003
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %19, align 1
  %4006 = and i32 %4000, 255
  %4007 = tail call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  store i8 %4010, i8* %26, align 1
  %4011 = xor i32 %3999, %3990
  %4012 = xor i32 %4011, %4000
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  store i8 %4015, i8* %32, align 1
  %4016 = icmp eq i32 %4000, 0
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %35, align 1
  %4018 = lshr i32 %4000, 31
  %4019 = trunc i32 %4018 to i8
  store i8 %4019, i8* %38, align 1
  %4020 = lshr i32 %3990, 31
  %4021 = lshr i32 %3999, 31
  %4022 = xor i32 %4018, %4020
  %4023 = xor i32 %4018, %4021
  %4024 = add nuw nsw i32 %4022, %4023
  %4025 = icmp eq i32 %4024, 2
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %44, align 1
  %4027 = add i64 %3972, -148
  %4028 = add i64 %3971, 34
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i32*
  store i32 %4000, i32* %4029, align 4
  %4030 = load i64, i64* %RBP.i, align 8
  %4031 = add i64 %4030, -72
  %4032 = load i64, i64* %3, align 8
  %4033 = add i64 %4032, 4
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4031 to i64*
  %4035 = load i64, i64* %4034, align 8
  store i64 %4035, i64* %RAX.i2009, align 8
  %4036 = add i64 %4030, -164
  %4037 = add i64 %4032, 11
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i32*
  %4039 = load i32, i32* %4038, align 4
  %4040 = sext i32 %4039 to i64
  store i64 %4040, i64* %RCX.i2228, align 8
  %4041 = shl nsw i64 %4040, 3
  %4042 = add i64 %4041, %4035
  %4043 = add i64 %4032, 15
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i64*
  %4045 = load i64, i64* %4044, align 8
  store i64 %4045, i64* %RAX.i2009, align 8
  %4046 = load i32, i32* %416, align 4
  %4047 = add i64 %4045, 8
  %4048 = add i64 %4032, 18
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i32*
  %4050 = load i32, i32* %4049, align 4
  %4051 = sub i32 %4046, %4050
  %4052 = icmp ult i32 %4046, %4050
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %19, align 1
  %4054 = and i32 %4051, 255
  %4055 = tail call i32 @llvm.ctpop.i32(i32 %4054)
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = xor i8 %4057, 1
  store i8 %4058, i8* %26, align 1
  %4059 = xor i32 %4050, %4046
  %4060 = xor i32 %4059, %4051
  %4061 = lshr i32 %4060, 4
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  store i8 %4063, i8* %32, align 1
  %4064 = icmp eq i32 %4051, 0
  %4065 = zext i1 %4064 to i8
  store i8 %4065, i8* %35, align 1
  %4066 = lshr i32 %4051, 31
  %4067 = trunc i32 %4066 to i8
  store i8 %4067, i8* %38, align 1
  %4068 = lshr i32 %4046, 31
  %4069 = lshr i32 %4050, 31
  %4070 = xor i32 %4069, %4068
  %4071 = xor i32 %4066, %4068
  %4072 = add nuw nsw i32 %4071, %4070
  %4073 = icmp eq i32 %4072, 2
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %44, align 1
  %4075 = icmp ne i8 %4067, 0
  %4076 = xor i1 %4075, %4073
  %4077 = or i1 %4064, %4076
  %.v92 = select i1 %4077, i64 72, i64 24
  %4078 = add i64 %4032, %.v92
  store i64 %4078, i64* %3, align 8
  br i1 %4077, label %block_.L_40a8a9, label %block_40a879

block_40a879:                                     ; preds = %block_.L_40a83f
  %4079 = add i64 %4030, -148
  %4080 = add i64 %4078, 6
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i32*
  %4082 = load i32, i32* %4081, align 4
  %4083 = zext i32 %4082 to i64
  store i64 %4083, i64* %RAX.i2009, align 8
  %4084 = add i64 %4078, 10
  store i64 %4084, i64* %3, align 8
  %4085 = load i64, i64* %4034, align 8
  store i64 %4085, i64* %RCX.i2228, align 8
  %4086 = add i64 %4078, 17
  store i64 %4086, i64* %3, align 8
  %4087 = load i32, i32* %4038, align 4
  %4088 = sext i32 %4087 to i64
  store i64 %4088, i64* %RDX.i2231, align 8
  %4089 = shl nsw i64 %4088, 3
  %4090 = add i64 %4089, %4085
  %4091 = add i64 %4078, 21
  store i64 %4091, i64* %3, align 8
  %4092 = inttoptr i64 %4090 to i64*
  %4093 = load i64, i64* %4092, align 8
  store i64 %4093, i64* %RCX.i2228, align 8
  %4094 = add i64 %4093, 8
  %4095 = add i64 %4078, 24
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i32*
  store i32 %4082, i32* %4096, align 4
  %4097 = load i64, i64* %RBP.i, align 8
  %4098 = add i64 %4097, -152
  %4099 = load i64, i64* %3, align 8
  %4100 = add i64 %4099, 6
  store i64 %4100, i64* %3, align 8
  %4101 = inttoptr i64 %4098 to i32*
  %4102 = load i32, i32* %4101, align 4
  %4103 = zext i32 %4102 to i64
  store i64 %4103, i64* %RAX.i2009, align 8
  %4104 = add i64 %4097, -104
  %4105 = add i64 %4099, 10
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i64*
  %4107 = load i64, i64* %4106, align 8
  store i64 %4107, i64* %RCX.i2228, align 8
  %4108 = add i64 %4097, -164
  %4109 = add i64 %4099, 17
  store i64 %4109, i64* %3, align 8
  %4110 = inttoptr i64 %4108 to i32*
  %4111 = load i32, i32* %4110, align 4
  %4112 = sext i32 %4111 to i64
  store i64 %4112, i64* %RDX.i2231, align 8
  %4113 = shl nsw i64 %4112, 3
  %4114 = add i64 %4113, %4107
  %4115 = add i64 %4099, 21
  store i64 %4115, i64* %3, align 8
  %4116 = inttoptr i64 %4114 to i64*
  %4117 = load i64, i64* %4116, align 8
  store i64 %4117, i64* %RCX.i2228, align 8
  %4118 = add i64 %4117, 8
  %4119 = add i64 %4099, 24
  store i64 %4119, i64* %3, align 8
  %4120 = inttoptr i64 %4118 to i32*
  store i32 %4102, i32* %4120, align 4
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40a8a9

block_.L_40a8a9:                                  ; preds = %block_40a879, %block_.L_40a83f
  %4121 = phi i64 [ %.pre74, %block_40a879 ], [ %4030, %block_.L_40a83f ]
  %4122 = phi i64 [ %.pre73, %block_40a879 ], [ %4078, %block_.L_40a83f ]
  %4123 = add i64 %4121, -152
  %4124 = add i64 %4122, 11
  store i64 %4124, i64* %3, align 8
  %4125 = inttoptr i64 %4123 to i32*
  %4126 = load i32, i32* %4125, align 4
  %4127 = add i32 %4126, 1
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RAX.i2009, align 8
  %4129 = icmp eq i32 %4126, -1
  %4130 = icmp eq i32 %4127, 0
  %4131 = or i1 %4129, %4130
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %19, align 1
  %4133 = and i32 %4127, 255
  %4134 = tail call i32 @llvm.ctpop.i32(i32 %4133)
  %4135 = trunc i32 %4134 to i8
  %4136 = and i8 %4135, 1
  %4137 = xor i8 %4136, 1
  store i8 %4137, i8* %26, align 1
  %4138 = xor i32 %4127, %4126
  %4139 = lshr i32 %4138, 4
  %4140 = trunc i32 %4139 to i8
  %4141 = and i8 %4140, 1
  store i8 %4141, i8* %32, align 1
  %4142 = zext i1 %4130 to i8
  store i8 %4142, i8* %35, align 1
  %4143 = lshr i32 %4127, 31
  %4144 = trunc i32 %4143 to i8
  store i8 %4144, i8* %38, align 1
  %4145 = lshr i32 %4126, 31
  %4146 = xor i32 %4143, %4145
  %4147 = add nuw nsw i32 %4146, %4143
  %4148 = icmp eq i32 %4147, 2
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %44, align 1
  %4150 = add i64 %4122, 20
  store i64 %4150, i64* %3, align 8
  store i32 %4127, i32* %4125, align 4
  %4151 = load i64, i64* %3, align 8
  %4152 = add i64 %4151, -2988
  store i64 %4152, i64* %3, align 8
  br label %block_.L_409d11

block_.L_40a8c2:                                  ; preds = %block_.L_409d11
  %4153 = add i64 %418, -64
  store i64 %4153, i64* %RSI.i2223, align 8
  %4154 = add i64 %418, -72
  %4155 = add i64 %454, 8
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4154 to i64*
  %4157 = load i64, i64* %4156, align 8
  store i64 %4157, i64* %RAX.i2009, align 8
  %4158 = add i64 %418, -164
  %4159 = add i64 %454, 15
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = sext i32 %4161 to i64
  store i64 %4162, i64* %RCX.i2228, align 8
  %4163 = shl nsw i64 %4162, 3
  %4164 = add i64 %4163, %4157
  %4165 = add i64 %454, 19
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i64*
  %4167 = load i64, i64* %4166, align 8
  store i64 %4167, i64* %RAX.i2009, align 8
  %4168 = add i64 %4167, 8
  %4169 = add i64 %454, 22
  store i64 %4169, i64* %3, align 8
  %4170 = inttoptr i64 %4168 to i32*
  %4171 = load i32, i32* %4170, align 4
  %4172 = zext i32 %4171 to i64
  store i64 %4172, i64* %RDX.i2231, align 8
  %4173 = add i64 %418, -32
  %4174 = add i64 %454, 26
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i64*
  %4176 = load i64, i64* %4175, align 8
  store i64 %4176, i64* %RAX.i2009, align 8
  %4177 = add i64 %4176, 352
  %4178 = add i64 %454, 32
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4177 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = add i32 %4180, %4171
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RDX.i2231, align 8
  %4183 = icmp ult i32 %4181, %4171
  %4184 = icmp ult i32 %4181, %4180
  %4185 = or i1 %4183, %4184
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %19, align 1
  %4187 = and i32 %4181, 255
  %4188 = tail call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %26, align 1
  %4192 = xor i32 %4180, %4171
  %4193 = xor i32 %4192, %4181
  %4194 = lshr i32 %4193, 4
  %4195 = trunc i32 %4194 to i8
  %4196 = and i8 %4195, 1
  store i8 %4196, i8* %32, align 1
  %4197 = icmp eq i32 %4181, 0
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %35, align 1
  %4199 = lshr i32 %4181, 31
  %4200 = trunc i32 %4199 to i8
  store i8 %4200, i8* %38, align 1
  %4201 = lshr i32 %4171, 31
  %4202 = lshr i32 %4180, 31
  %4203 = xor i32 %4199, %4201
  %4204 = xor i32 %4199, %4202
  %4205 = add nuw nsw i32 %4203, %4204
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %44, align 1
  %4208 = add i64 %418, -148
  %4209 = add i64 %454, 38
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i32*
  store i32 %4181, i32* %4210, align 4
  %4211 = load i64, i64* %RBP.i, align 8
  %4212 = add i64 %4211, -172
  %4213 = load i64, i64* %3, align 8
  %4214 = add i64 %4213, 10
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4212 to i32*
  store i32 2, i32* %4215, align 4
  %4216 = load i64, i64* %RBP.i, align 8
  %4217 = add i64 %4216, -172
  %4218 = load i64, i64* %3, align 8
  %4219 = add i64 %4218, 6
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4217 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = zext i32 %4221 to i64
  store i64 %4222, i64* %RDI.i2237, align 8
  %4223 = add i64 %4218, 273614
  %4224 = add i64 %4218, 11
  %4225 = load i64, i64* %6, align 8
  %4226 = add i64 %4225, -8
  %4227 = inttoptr i64 %4226 to i64*
  store i64 %4224, i64* %4227, align 8
  store i64 %4226, i64* %6, align 8
  store i64 %4223, i64* %3, align 8
  %call2_40a8f8 = tail call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* nonnull %0, i64 %4223, %struct.Memory* %MEMORY.1)
  %4228 = load i64, i64* %3, align 8
  store i64 2, i64* %RDX.i2231, align 8
  %4229 = load i64, i64* %RBP.i, align 8
  %4230 = add i64 %4229, -160
  %4231 = add i64 %4228, 15
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i32*
  store i32 0, i32* %4232, align 4
  %4233 = load i64, i64* %RBP.i, align 8
  %4234 = add i64 %4233, -64
  %4235 = load i64, i64* %3, align 8
  %4236 = add i64 %4235, 4
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4234 to i64*
  %4238 = load i64, i64* %4237, align 8
  store i64 %4238, i64* %RAX.i2009, align 8
  %4239 = add i64 %4238, 8
  %4240 = add i64 %4235, 8
  store i64 %4240, i64* %3, align 8
  %4241 = inttoptr i64 %4239 to i64*
  %4242 = load i64, i64* %4241, align 8
  store i64 %4242, i64* %RAX.i2009, align 8
  %4243 = add i64 %4233, -160
  %4244 = add i64 %4235, 15
  store i64 %4244, i64* %3, align 8
  %4245 = inttoptr i64 %4243 to i32*
  %4246 = load i32, i32* %4245, align 4
  %4247 = sext i32 %4246 to i64
  store i64 %4247, i64* %RCX.i2228, align 8
  %4248 = add i64 %4242, %4247
  %4249 = add i64 %4235, 19
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i8*
  store i8 9, i8* %4250, align 1
  %4251 = load i64, i64* %RBP.i, align 8
  %4252 = add i64 %4251, -64
  %4253 = load i64, i64* %3, align 8
  %4254 = add i64 %4253, 4
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4252 to i64*
  %4256 = load i64, i64* %4255, align 8
  store i64 %4256, i64* %RAX.i2009, align 8
  %4257 = add i64 %4256, 24
  %4258 = add i64 %4253, 8
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i64*
  %4260 = load i64, i64* %4259, align 8
  store i64 %4260, i64* %RAX.i2009, align 8
  %4261 = add i64 %4251, -160
  %4262 = add i64 %4253, 15
  store i64 %4262, i64* %3, align 8
  %4263 = inttoptr i64 %4261 to i32*
  %4264 = load i32, i32* %4263, align 4
  %4265 = sext i32 %4264 to i64
  store i64 %4265, i64* %RCX.i2228, align 8
  %4266 = shl nsw i64 %4265, 2
  %4267 = add i64 %4266, %4260
  %4268 = add i64 %4253, 22
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i32*
  store i32 0, i32* %4269, align 4
  %4270 = load i64, i64* %RBP.i, align 8
  %4271 = add i64 %4270, -104
  %4272 = load i64, i64* %3, align 8
  %4273 = add i64 %4272, 4
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4271 to i64*
  %4275 = load i64, i64* %4274, align 8
  store i64 %4275, i64* %RAX.i2009, align 8
  %4276 = add i64 %4270, -20
  %4277 = add i64 %4272, 7
  store i64 %4277, i64* %3, align 8
  %4278 = inttoptr i64 %4276 to i32*
  %4279 = load i32, i32* %4278, align 4
  %4280 = zext i32 %4279 to i64
  store i64 %4280, i64* %RDI.i2237, align 8
  %4281 = add i64 %4270, -184
  %4282 = add i64 %4272, 14
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i64*
  store i64 %4275, i64* %4283, align 8
  %EDI.i223 = bitcast %union.anon* %51 to i32*
  %4284 = load i32, i32* %EDI.i223, align 4
  %4285 = zext i32 %4284 to i64
  %4286 = load i64, i64* %3, align 8
  store i64 %4285, i64* %RAX.i2009, align 8
  %4287 = load i64, i64* %RBP.i, align 8
  %4288 = add i64 %4287, -188
  %4289 = load i32, i32* %416, align 4
  %4290 = add i64 %4286, 8
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4288 to i32*
  store i32 %4289, i32* %4291, align 4
  %4292 = load i64, i64* %3, align 8
  %4293 = load i32, i32* %EAX.i2219, align 8
  %4294 = sext i32 %4293 to i64
  %4295 = lshr i64 %4294, 32
  store i64 %4295, i64* %415, align 8
  %4296 = load i64, i64* %RBP.i, align 8
  %4297 = add i64 %4296, -188
  %4298 = add i64 %4292, 7
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i32*
  %4300 = load i32, i32* %4299, align 4
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RDI.i2237, align 8
  %4302 = add i64 %4292, 9
  store i64 %4302, i64* %3, align 8
  %4303 = zext i32 %4293 to i64
  %4304 = sext i32 %4300 to i64
  %4305 = shl nuw i64 %4295, 32
  %4306 = or i64 %4305, %4303
  %4307 = sdiv i64 %4306, %4304
  %4308 = shl i64 %4307, 32
  %4309 = ashr exact i64 %4308, 32
  %4310 = icmp eq i64 %4307, %4309
  br i1 %4310, label %4313, label %4311

; <label>:4311:                                   ; preds = %block_.L_40a8c2
  %4312 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4302, %struct.Memory* %call2_40a8f8)
  %.pre75 = load i32, i32* %416, align 4
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:4313:                                   ; preds = %block_.L_40a8c2
  %4314 = srem i64 %4306, %4304
  %4315 = and i64 %4307, 4294967295
  store i64 %4315, i64* %RAX.i2009, align 8
  %4316 = and i64 %4314, 4294967295
  store i64 %4316, i64* %RDX.i2231, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %4317 = trunc i64 %4314 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %4313, %4311
  %4318 = phi i64 [ %.pre77, %4311 ], [ %4296, %4313 ]
  %4319 = phi i64 [ %.pre76, %4311 ], [ %4302, %4313 ]
  %4320 = phi i32 [ %.pre75, %4311 ], [ %4317, %4313 ]
  %4321 = phi %struct.Memory* [ %4312, %4311 ], [ %call2_40a8f8, %4313 ]
  %4322 = sext i32 %4320 to i64
  store i64 %4322, i64* %RCX.i2228, align 8
  %4323 = add i64 %4318, -184
  %4324 = add i64 %4319, 10
  store i64 %4324, i64* %3, align 8
  %4325 = inttoptr i64 %4323 to i64*
  %4326 = load i64, i64* %4325, align 8
  store i64 %4326, i64* %RSI.i2223, align 8
  %4327 = shl nsw i64 %4322, 3
  %4328 = add i64 %4327, %4326
  %4329 = add i64 %4319, 14
  store i64 %4329, i64* %3, align 8
  %4330 = inttoptr i64 %4328 to i64*
  %4331 = load i64, i64* %4330, align 8
  store i64 %4331, i64* %RCX.i2228, align 8
  %4332 = add i64 %4331, 8
  %4333 = add i64 %4319, 17
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4332 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RDX.i2231, align 8
  %4337 = add i64 %4318, -152
  %4338 = add i64 %4319, 23
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  store i32 %4335, i32* %4339, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_40a96b

block_.L_40a96b:                                  ; preds = %block_40a978, %routine_idivl__edi.exit
  %4340 = phi i64 [ %4582, %block_40a978 ], [ %.pre78, %routine_idivl__edi.exit ]
  %4341 = load i64, i64* %RBP.i, align 8
  %4342 = add i64 %4341, -152
  %4343 = add i64 %4340, 7
  store i64 %4343, i64* %3, align 8
  %4344 = inttoptr i64 %4342 to i32*
  %4345 = load i32, i32* %4344, align 4
  store i8 0, i8* %19, align 1
  %4346 = and i32 %4345, 255
  %4347 = tail call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  store i8 %4350, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %4351 = icmp eq i32 %4345, 0
  %4352 = zext i1 %4351 to i8
  store i8 %4352, i8* %35, align 1
  %4353 = lshr i32 %4345, 31
  %4354 = trunc i32 %4353 to i8
  store i8 %4354, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %4355 = icmp ne i8 %4354, 0
  %4356 = or i1 %4351, %4355
  %.v83 = select i1 %4356, i64 210, i64 13
  %4357 = add i64 %4340, %.v83
  store i64 %4357, i64* %3, align 8
  br i1 %4356, label %block_.L_40aa3d, label %block_40a978

block_40a978:                                     ; preds = %block_.L_40a96b
  %4358 = add i64 %4341, -172
  %4359 = add i64 %4357, 6
  store i64 %4359, i64* %3, align 8
  %4360 = inttoptr i64 %4358 to i32*
  %4361 = load i32, i32* %4360, align 4
  %4362 = add i32 %4361, 2
  %4363 = zext i32 %4362 to i64
  store i64 %4363, i64* %RAX.i2009, align 8
  %4364 = icmp ugt i32 %4361, -3
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %19, align 1
  %4366 = and i32 %4362, 255
  %4367 = tail call i32 @llvm.ctpop.i32(i32 %4366)
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  %4370 = xor i8 %4369, 1
  store i8 %4370, i8* %26, align 1
  %4371 = xor i32 %4362, %4361
  %4372 = lshr i32 %4371, 4
  %4373 = trunc i32 %4372 to i8
  %4374 = and i8 %4373, 1
  store i8 %4374, i8* %32, align 1
  %4375 = icmp eq i32 %4362, 0
  %4376 = zext i1 %4375 to i8
  store i8 %4376, i8* %35, align 1
  %4377 = lshr i32 %4362, 31
  %4378 = trunc i32 %4377 to i8
  store i8 %4378, i8* %38, align 1
  %4379 = lshr i32 %4361, 31
  %4380 = xor i32 %4377, %4379
  %4381 = add nuw nsw i32 %4380, %4377
  %4382 = icmp eq i32 %4381, 2
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %44, align 1
  %4384 = add i64 %4357, 15
  store i64 %4384, i64* %3, align 8
  store i32 %4362, i32* %4360, align 4
  %4385 = load i64, i64* %RBP.i, align 8
  %4386 = add i64 %4385, -64
  %4387 = load i64, i64* %3, align 8
  %4388 = add i64 %4387, 4
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4386 to i64*
  %4390 = load i64, i64* %4389, align 8
  store i64 %4390, i64* %RDI.i2237, align 8
  %4391 = add i64 %4385, -172
  %4392 = add i64 %4387, 10
  store i64 %4392, i64* %3, align 8
  %4393 = inttoptr i64 %4391 to i32*
  %4394 = load i32, i32* %4393, align 4
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RSI.i2223, align 8
  %4396 = add i64 %4387, 273657
  %4397 = add i64 %4387, 15
  %4398 = load i64, i64* %6, align 8
  %4399 = add i64 %4398, -8
  %4400 = inttoptr i64 %4399 to i64*
  store i64 %4397, i64* %4400, align 8
  store i64 %4399, i64* %6, align 8
  store i64 %4396, i64* %3, align 8
  %call2_40a991 = tail call %struct.Memory* @sub_44d680.P7ReallocTrace(%struct.State* nonnull %0, i64 %4396, %struct.Memory* %4321)
  %4401 = load i64, i64* %RBP.i, align 8
  %4402 = add i64 %4401, -160
  %4403 = load i64, i64* %3, align 8
  %4404 = add i64 %4403, 6
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4402 to i32*
  %4406 = load i32, i32* %4405, align 4
  %4407 = add i32 %4406, 1
  %4408 = zext i32 %4407 to i64
  store i64 %4408, i64* %RAX.i2009, align 8
  %4409 = icmp eq i32 %4406, -1
  %4410 = icmp eq i32 %4407, 0
  %4411 = or i1 %4409, %4410
  %4412 = zext i1 %4411 to i8
  store i8 %4412, i8* %19, align 1
  %4413 = and i32 %4407, 255
  %4414 = tail call i32 @llvm.ctpop.i32(i32 %4413)
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  %4417 = xor i8 %4416, 1
  store i8 %4417, i8* %26, align 1
  %4418 = xor i32 %4407, %4406
  %4419 = lshr i32 %4418, 4
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %32, align 1
  %4422 = zext i1 %4410 to i8
  store i8 %4422, i8* %35, align 1
  %4423 = lshr i32 %4407, 31
  %4424 = trunc i32 %4423 to i8
  store i8 %4424, i8* %38, align 1
  %4425 = lshr i32 %4406, 31
  %4426 = xor i32 %4423, %4425
  %4427 = add nuw nsw i32 %4426, %4423
  %4428 = icmp eq i32 %4427, 2
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %44, align 1
  %4430 = add i64 %4403, 15
  store i64 %4430, i64* %3, align 8
  store i32 %4407, i32* %4405, align 4
  %4431 = load i64, i64* %RBP.i, align 8
  %4432 = add i64 %4431, -64
  %4433 = load i64, i64* %3, align 8
  %4434 = add i64 %4433, 4
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4432 to i64*
  %4436 = load i64, i64* %4435, align 8
  store i64 %4436, i64* %RDI.i2237, align 8
  %4437 = add i64 %4436, 8
  %4438 = add i64 %4433, 8
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4437 to i64*
  %4440 = load i64, i64* %4439, align 8
  store i64 %4440, i64* %RDI.i2237, align 8
  %4441 = add i64 %4431, -160
  %4442 = add i64 %4433, 15
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  %4444 = load i32, i32* %4443, align 4
  %4445 = sext i32 %4444 to i64
  store i64 %4445, i64* %RCX.i2228, align 8
  %4446 = add i64 %4440, %4445
  %4447 = add i64 %4433, 19
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i8*
  store i8 7, i8* %4448, align 1
  %4449 = load i64, i64* %RBP.i, align 8
  %4450 = add i64 %4449, -152
  %4451 = load i64, i64* %3, align 8
  %4452 = add i64 %4451, 6
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4450 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %RAX.i2009, align 8
  %4456 = add i64 %4449, -64
  %4457 = add i64 %4451, 10
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i64*
  %4459 = load i64, i64* %4458, align 8
  store i64 %4459, i64* %RCX.i2228, align 8
  %4460 = add i64 %4459, 24
  %4461 = add i64 %4451, 14
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4460 to i64*
  %4463 = load i64, i64* %4462, align 8
  store i64 %4463, i64* %RCX.i2228, align 8
  %4464 = add i64 %4449, -160
  %4465 = add i64 %4451, 21
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sext i32 %4467 to i64
  store i64 %4468, i64* %RDI.i2237, align 8
  %4469 = shl nsw i64 %4468, 2
  %4470 = add i64 %4469, %4463
  %4471 = add i64 %4451, 24
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i32*
  store i32 %4454, i32* %4472, align 4
  %4473 = load i64, i64* %RBP.i, align 8
  %4474 = add i64 %4473, -144
  %4475 = load i64, i64* %3, align 8
  %4476 = add i64 %4475, 7
  store i64 %4476, i64* %3, align 8
  %4477 = inttoptr i64 %4474 to i64*
  %4478 = load i64, i64* %4477, align 8
  store i64 %4478, i64* %RCX.i2228, align 8
  %4479 = add i64 %4473, -152
  %4480 = add i64 %4475, 14
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = sext i32 %4482 to i64
  store i64 %4483, i64* %RDI.i2237, align 8
  %4484 = shl nsw i64 %4483, 2
  %4485 = add i64 %4484, %4478
  %4486 = add i64 %4475, 17
  store i64 %4486, i64* %3, align 8
  %4487 = inttoptr i64 %4485 to i32*
  %4488 = load i32, i32* %4487, align 4
  %4489 = zext i32 %4488 to i64
  store i64 %4489, i64* %RAX.i2009, align 8
  %4490 = add i64 %4475, 23
  store i64 %4490, i64* %3, align 8
  store i32 %4488, i32* %4481, align 4
  %4491 = load i64, i64* %RBP.i, align 8
  %4492 = add i64 %4491, -160
  %4493 = load i64, i64* %3, align 8
  %4494 = add i64 %4493, 6
  store i64 %4494, i64* %3, align 8
  %4495 = inttoptr i64 %4492 to i32*
  %4496 = load i32, i32* %4495, align 4
  %4497 = add i32 %4496, 1
  %4498 = zext i32 %4497 to i64
  store i64 %4498, i64* %RAX.i2009, align 8
  %4499 = icmp eq i32 %4496, -1
  %4500 = icmp eq i32 %4497, 0
  %4501 = or i1 %4499, %4500
  %4502 = zext i1 %4501 to i8
  store i8 %4502, i8* %19, align 1
  %4503 = and i32 %4497, 255
  %4504 = tail call i32 @llvm.ctpop.i32(i32 %4503)
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  %4507 = xor i8 %4506, 1
  store i8 %4507, i8* %26, align 1
  %4508 = xor i32 %4497, %4496
  %4509 = lshr i32 %4508, 4
  %4510 = trunc i32 %4509 to i8
  %4511 = and i8 %4510, 1
  store i8 %4511, i8* %32, align 1
  %4512 = zext i1 %4500 to i8
  store i8 %4512, i8* %35, align 1
  %4513 = lshr i32 %4497, 31
  %4514 = trunc i32 %4513 to i8
  store i8 %4514, i8* %38, align 1
  %4515 = lshr i32 %4496, 31
  %4516 = xor i32 %4513, %4515
  %4517 = add nuw nsw i32 %4516, %4513
  %4518 = icmp eq i32 %4517, 2
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %44, align 1
  %4520 = add i64 %4493, 15
  store i64 %4520, i64* %3, align 8
  store i32 %4497, i32* %4495, align 4
  %4521 = load i64, i64* %RBP.i, align 8
  %4522 = add i64 %4521, -64
  %4523 = load i64, i64* %3, align 8
  %4524 = add i64 %4523, 4
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4522 to i64*
  %4526 = load i64, i64* %4525, align 8
  store i64 %4526, i64* %RCX.i2228, align 8
  %4527 = add i64 %4526, 8
  %4528 = add i64 %4523, 8
  store i64 %4528, i64* %3, align 8
  %4529 = inttoptr i64 %4527 to i64*
  %4530 = load i64, i64* %4529, align 8
  store i64 %4530, i64* %RCX.i2228, align 8
  %4531 = add i64 %4521, -160
  %4532 = add i64 %4523, 15
  store i64 %4532, i64* %3, align 8
  %4533 = inttoptr i64 %4531 to i32*
  %4534 = load i32, i32* %4533, align 4
  %4535 = sext i32 %4534 to i64
  store i64 %4535, i64* %RDI.i2237, align 8
  %4536 = add i64 %4530, %4535
  %4537 = add i64 %4523, 19
  store i64 %4537, i64* %3, align 8
  %4538 = inttoptr i64 %4536 to i8*
  store i8 6, i8* %4538, align 1
  %4539 = load i64, i64* %RBP.i, align 8
  %4540 = add i64 %4539, -152
  %4541 = load i64, i64* %3, align 8
  %4542 = add i64 %4541, 6
  store i64 %4542, i64* %3, align 8
  %4543 = inttoptr i64 %4540 to i32*
  %4544 = load i32, i32* %4543, align 4
  %4545 = zext i32 %4544 to i64
  store i64 %4545, i64* %RAX.i2009, align 8
  %4546 = add i64 %4539, -64
  %4547 = add i64 %4541, 10
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4546 to i64*
  %4549 = load i64, i64* %4548, align 8
  store i64 %4549, i64* %RCX.i2228, align 8
  %4550 = add i64 %4549, 24
  %4551 = add i64 %4541, 14
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i64*
  %4553 = load i64, i64* %4552, align 8
  store i64 %4553, i64* %RCX.i2228, align 8
  %4554 = add i64 %4539, -160
  %4555 = add i64 %4541, 21
  store i64 %4555, i64* %3, align 8
  %4556 = inttoptr i64 %4554 to i32*
  %4557 = load i32, i32* %4556, align 4
  %4558 = sext i32 %4557 to i64
  store i64 %4558, i64* %RDI.i2237, align 8
  %4559 = shl nsw i64 %4558, 2
  %4560 = add i64 %4559, %4553
  %4561 = add i64 %4541, 24
  store i64 %4561, i64* %3, align 8
  %4562 = inttoptr i64 %4560 to i32*
  store i32 %4544, i32* %4562, align 4
  %4563 = load i64, i64* %RBP.i, align 8
  %4564 = add i64 %4563, -136
  %4565 = load i64, i64* %3, align 8
  %4566 = add i64 %4565, 7
  store i64 %4566, i64* %3, align 8
  %4567 = inttoptr i64 %4564 to i64*
  %4568 = load i64, i64* %4567, align 8
  store i64 %4568, i64* %RCX.i2228, align 8
  %4569 = add i64 %4563, -152
  %4570 = add i64 %4565, 14
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = sext i32 %4572 to i64
  store i64 %4573, i64* %RDI.i2237, align 8
  %4574 = shl nsw i64 %4573, 2
  %4575 = add i64 %4574, %4568
  %4576 = add i64 %4565, 17
  store i64 %4576, i64* %3, align 8
  %4577 = inttoptr i64 %4575 to i32*
  %4578 = load i32, i32* %4577, align 4
  %4579 = zext i32 %4578 to i64
  store i64 %4579, i64* %RAX.i2009, align 8
  %4580 = add i64 %4565, 23
  store i64 %4580, i64* %3, align 8
  store i32 %4578, i32* %4571, align 4
  %4581 = load i64, i64* %3, align 8
  %4582 = add i64 %4581, -205
  store i64 %4582, i64* %3, align 8
  br label %block_.L_40a96b

block_.L_40aa3d:                                  ; preds = %block_.L_40a96b
  %4583 = add i64 %4341, -160
  %4584 = add i64 %4357, 6
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i32*
  %4586 = load i32, i32* %4585, align 4
  %4587 = add i32 %4586, 1
  %4588 = zext i32 %4587 to i64
  store i64 %4588, i64* %RAX.i2009, align 8
  %4589 = icmp eq i32 %4586, -1
  %4590 = icmp eq i32 %4587, 0
  %4591 = or i1 %4589, %4590
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %19, align 1
  %4593 = and i32 %4587, 255
  %4594 = tail call i32 @llvm.ctpop.i32(i32 %4593)
  %4595 = trunc i32 %4594 to i8
  %4596 = and i8 %4595, 1
  %4597 = xor i8 %4596, 1
  store i8 %4597, i8* %26, align 1
  %4598 = xor i32 %4587, %4586
  %4599 = lshr i32 %4598, 4
  %4600 = trunc i32 %4599 to i8
  %4601 = and i8 %4600, 1
  store i8 %4601, i8* %32, align 1
  %4602 = zext i1 %4590 to i8
  store i8 %4602, i8* %35, align 1
  %4603 = lshr i32 %4587, 31
  %4604 = trunc i32 %4603 to i8
  store i8 %4604, i8* %38, align 1
  %4605 = lshr i32 %4586, 31
  %4606 = xor i32 %4603, %4605
  %4607 = add nuw nsw i32 %4606, %4603
  %4608 = icmp eq i32 %4607, 2
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %44, align 1
  %4610 = add i64 %4357, 15
  store i64 %4610, i64* %3, align 8
  store i32 %4587, i32* %4585, align 4
  %4611 = load i64, i64* %RBP.i, align 8
  %4612 = add i64 %4611, -64
  %4613 = load i64, i64* %3, align 8
  %4614 = add i64 %4613, 4
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4612 to i64*
  %4616 = load i64, i64* %4615, align 8
  store i64 %4616, i64* %RCX.i2228, align 8
  %4617 = add i64 %4616, 8
  %4618 = add i64 %4613, 8
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i64*
  %4620 = load i64, i64* %4619, align 8
  store i64 %4620, i64* %RCX.i2228, align 8
  %4621 = add i64 %4611, -160
  %4622 = add i64 %4613, 15
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4621 to i32*
  %4624 = load i32, i32* %4623, align 4
  %4625 = sext i32 %4624 to i64
  store i64 %4625, i64* %RDX.i2231, align 8
  %4626 = add i64 %4620, %4625
  %4627 = add i64 %4613, 19
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4626 to i8*
  store i8 4, i8* %4628, align 1
  %4629 = load i64, i64* %RBP.i, align 8
  %4630 = add i64 %4629, -64
  %4631 = load i64, i64* %3, align 8
  %4632 = add i64 %4631, 4
  store i64 %4632, i64* %3, align 8
  %4633 = inttoptr i64 %4630 to i64*
  %4634 = load i64, i64* %4633, align 8
  store i64 %4634, i64* %RCX.i2228, align 8
  %4635 = add i64 %4634, 24
  %4636 = add i64 %4631, 8
  store i64 %4636, i64* %3, align 8
  %4637 = inttoptr i64 %4635 to i64*
  %4638 = load i64, i64* %4637, align 8
  store i64 %4638, i64* %RCX.i2228, align 8
  %4639 = add i64 %4629, -160
  %4640 = add i64 %4631, 15
  store i64 %4640, i64* %3, align 8
  %4641 = inttoptr i64 %4639 to i32*
  %4642 = load i32, i32* %4641, align 4
  %4643 = sext i32 %4642 to i64
  store i64 %4643, i64* %RDX.i2231, align 8
  %4644 = shl nsw i64 %4643, 2
  %4645 = add i64 %4644, %4638
  %4646 = add i64 %4631, 22
  store i64 %4646, i64* %3, align 8
  %4647 = inttoptr i64 %4645 to i32*
  store i32 0, i32* %4647, align 4
  %4648 = load i64, i64* %RBP.i, align 8
  %4649 = add i64 %4648, -160
  %4650 = load i64, i64* %3, align 8
  %4651 = add i64 %4650, 6
  store i64 %4651, i64* %3, align 8
  %4652 = inttoptr i64 %4649 to i32*
  %4653 = load i32, i32* %4652, align 4
  %4654 = add i32 %4653, 1
  %4655 = zext i32 %4654 to i64
  store i64 %4655, i64* %RAX.i2009, align 8
  %4656 = icmp eq i32 %4653, -1
  %4657 = icmp eq i32 %4654, 0
  %4658 = or i1 %4656, %4657
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %19, align 1
  %4660 = and i32 %4654, 255
  %4661 = tail call i32 @llvm.ctpop.i32(i32 %4660)
  %4662 = trunc i32 %4661 to i8
  %4663 = and i8 %4662, 1
  %4664 = xor i8 %4663, 1
  store i8 %4664, i8* %26, align 1
  %4665 = xor i32 %4654, %4653
  %4666 = lshr i32 %4665, 4
  %4667 = trunc i32 %4666 to i8
  %4668 = and i8 %4667, 1
  store i8 %4668, i8* %32, align 1
  %4669 = zext i1 %4657 to i8
  store i8 %4669, i8* %35, align 1
  %4670 = lshr i32 %4654, 31
  %4671 = trunc i32 %4670 to i8
  store i8 %4671, i8* %38, align 1
  %4672 = lshr i32 %4653, 31
  %4673 = xor i32 %4670, %4672
  %4674 = add nuw nsw i32 %4673, %4670
  %4675 = icmp eq i32 %4674, 2
  %4676 = zext i1 %4675 to i8
  store i8 %4676, i8* %44, align 1
  %4677 = add i64 %4648, -64
  %4678 = add i64 %4650, 13
  store i64 %4678, i64* %3, align 8
  %4679 = inttoptr i64 %4677 to i64*
  %4680 = load i64, i64* %4679, align 8
  store i64 %4680, i64* %RCX.i2228, align 8
  %4681 = add i64 %4650, 15
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4680 to i32*
  store i32 %4654, i32* %4682, align 4
  %4683 = load i64, i64* %RBP.i, align 8
  %4684 = add i64 %4683, -64
  %4685 = load i64, i64* %3, align 8
  %4686 = add i64 %4685, 4
  store i64 %4686, i64* %3, align 8
  %4687 = inttoptr i64 %4684 to i64*
  %4688 = load i64, i64* %4687, align 8
  store i64 %4688, i64* %RDI.i2237, align 8
  %4689 = add i64 %4685, 273996
  %4690 = add i64 %4685, 9
  %4691 = load i64, i64* %6, align 8
  %4692 = add i64 %4691, -8
  %4693 = inttoptr i64 %4692 to i64*
  store i64 %4690, i64* %4693, align 8
  store i64 %4692, i64* %6, align 8
  store i64 %4689, i64* %3, align 8
  %call2_40aa88 = tail call %struct.Memory* @sub_44d8d0.P7ReverseTrace(%struct.State* nonnull %0, i64 %4689, %struct.Memory* %4321)
  %4694 = load i64, i64* %RBP.i, align 8
  %4695 = add i64 %4694, -48
  %4696 = load i64, i64* %3, align 8
  %4697 = add i64 %4696, 4
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4695 to i64*
  %4699 = load i64, i64* %4698, align 8
  store i64 %4699, i64* %RDI.i2237, align 8
  %4700 = add i64 %4696, -12621
  %4701 = add i64 %4696, 9
  %4702 = load i64, i64* %6, align 8
  %4703 = add i64 %4702, -8
  %4704 = inttoptr i64 %4703 to i64*
  store i64 %4701, i64* %4704, align 8
  store i64 %4703, i64* %6, align 8
  store i64 %4700, i64* %3, align 8
  %call2_40aa91 = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %4700, %struct.Memory* %call2_40aa88)
  %4705 = load i64, i64* %RBP.i, align 8
  %4706 = add i64 %4705, -56
  %4707 = load i64, i64* %3, align 8
  %4708 = add i64 %4707, 4
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4706 to i64*
  %4710 = load i64, i64* %4709, align 8
  store i64 %4710, i64* %RDI.i2237, align 8
  %4711 = add i64 %4707, -12630
  %4712 = add i64 %4707, 9
  %4713 = load i64, i64* %6, align 8
  %4714 = add i64 %4713, -8
  %4715 = inttoptr i64 %4714 to i64*
  store i64 %4712, i64* %4715, align 8
  store i64 %4714, i64* %6, align 8
  store i64 %4711, i64* %3, align 8
  %call2_40aa9a = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %4711, %struct.Memory* %call2_40aa91)
  %4716 = load i64, i64* %RBP.i, align 8
  %4717 = add i64 %4716, -136
  %4718 = load i64, i64* %3, align 8
  %4719 = add i64 %4718, 7
  store i64 %4719, i64* %3, align 8
  %4720 = inttoptr i64 %4717 to i64*
  %4721 = load i64, i64* %4720, align 8
  store i64 %4721, i64* %RCX.i2228, align 8
  store i64 %4721, i64* %RDI.i2237, align 8
  %4722 = add i64 %4718, -38687
  %4723 = add i64 %4718, 15
  %4724 = load i64, i64* %6, align 8
  %4725 = add i64 %4724, -8
  %4726 = inttoptr i64 %4725 to i64*
  store i64 %4723, i64* %4726, align 8
  store i64 %4725, i64* %6, align 8
  store i64 %4722, i64* %3, align 8
  %4727 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_40aa9a)
  %4728 = load i64, i64* %RBP.i, align 8
  %4729 = add i64 %4728, -144
  %4730 = load i64, i64* %3, align 8
  %4731 = add i64 %4730, 7
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4729 to i64*
  %4733 = load i64, i64* %4732, align 8
  store i64 %4733, i64* %RCX.i2228, align 8
  store i64 %4733, i64* %RDI.i2237, align 8
  %4734 = add i64 %4730, -38702
  %4735 = add i64 %4730, 15
  %4736 = load i64, i64* %6, align 8
  %4737 = add i64 %4736, -8
  %4738 = inttoptr i64 %4737 to i64*
  store i64 %4735, i64* %4738, align 8
  store i64 %4737, i64* %6, align 8
  store i64 %4734, i64* %3, align 8
  %4739 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %4727)
  %4740 = load i64, i64* %RBP.i, align 8
  %4741 = add i64 %4740, -64
  %4742 = load i64, i64* %3, align 8
  %4743 = add i64 %4742, 4
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4741 to i64*
  %4745 = load i64, i64* %4744, align 8
  store i64 %4745, i64* %RCX.i2228, align 8
  %4746 = add i64 %4740, -40
  %4747 = add i64 %4742, 8
  store i64 %4747, i64* %3, align 8
  %4748 = inttoptr i64 %4746 to i64*
  %4749 = load i64, i64* %4748, align 8
  store i64 %4749, i64* %RDX.i2231, align 8
  %4750 = add i64 %4742, 11
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i64*
  store i64 %4745, i64* %4751, align 8
  %4752 = load i64, i64* %RBP.i, align 8
  %4753 = add i64 %4752, -148
  %4754 = load i64, i64* %3, align 8
  %4755 = add i64 %4754, 6
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4753 to i32*
  %4757 = load i32, i32* %4756, align 4
  %4758 = zext i32 %4757 to i64
  store i64 %4758, i64* %RDI.i2237, align 8
  %4759 = add i64 %4754, 119848
  %4760 = add i64 %4754, 11
  %4761 = load i64, i64* %6, align 8
  %4762 = add i64 %4761, -8
  %4763 = inttoptr i64 %4762 to i64*
  store i64 %4760, i64* %4763, align 8
  store i64 %4762, i64* %6, align 8
  store i64 %4759, i64* %3, align 8
  %call2_40aace = tail call %struct.Memory* @sub_427ef0.Scorify(%struct.State* nonnull %0, i64 %4759, %struct.Memory* %4739)
  %4764 = load i64, i64* %6, align 8
  %4765 = load i64, i64* %3, align 8
  %4766 = add i64 %4764, 184
  store i64 %4766, i64* %6, align 8
  %4767 = icmp ugt i64 %4764, -185
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %19, align 1
  %4769 = trunc i64 %4766 to i32
  %4770 = and i32 %4769, 255
  %4771 = tail call i32 @llvm.ctpop.i32(i32 %4770)
  %4772 = trunc i32 %4771 to i8
  %4773 = and i8 %4772, 1
  %4774 = xor i8 %4773, 1
  store i8 %4774, i8* %26, align 1
  %4775 = xor i64 %4764, 16
  %4776 = xor i64 %4775, %4766
  %4777 = lshr i64 %4776, 4
  %4778 = trunc i64 %4777 to i8
  %4779 = and i8 %4778, 1
  store i8 %4779, i8* %32, align 1
  %4780 = icmp eq i64 %4766, 0
  %4781 = zext i1 %4780 to i8
  store i8 %4781, i8* %35, align 1
  %4782 = lshr i64 %4766, 63
  %4783 = trunc i64 %4782 to i8
  store i8 %4783, i8* %38, align 1
  %4784 = lshr i64 %4764, 63
  %4785 = xor i64 %4782, %4784
  %4786 = add nuw nsw i64 %4785, %4782
  %4787 = icmp eq i64 %4786, 2
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %44, align 1
  %4789 = add i64 %4765, 8
  store i64 %4789, i64* %3, align 8
  %4790 = add i64 %4764, 192
  %4791 = inttoptr i64 %4766 to i64*
  %4792 = load i64, i64* %4791, align 8
  store i64 %4792, i64* %RBX.i27, align 8
  store i64 %4790, i64* %6, align 8
  %4793 = add i64 %4765, 9
  store i64 %4793, i64* %3, align 8
  %4794 = add i64 %4764, 200
  %4795 = inttoptr i64 %4790 to i64*
  %4796 = load i64, i64* %4795, align 8
  store i64 %4796, i64* %RBP.i, align 8
  store i64 %4794, i64* %6, align 8
  %4797 = add i64 %4765, 10
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4794 to i64*
  %4799 = load i64, i64* %4798, align 8
  store i64 %4799, i64* %3, align 8
  %4800 = add i64 %4764, 208
  store i64 %4800, i64* %6, align 8
  ret %struct.Memory* %call2_40aace
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
define %struct.Memory* @routine_subq__0xb8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -184
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 184
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
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x78__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x43b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1083, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RBX, align 8
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
define %struct.Memory* @routine_movslq__ebx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x43c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1084, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_movl__esi____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_jg_.L_409d07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -987654321, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_409c9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_jg_.L_40a8c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_setne__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %SIL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %SIL, align 1
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
define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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
define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
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
define %struct.Memory* @routine_movl__0x1__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40a4ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
  store i64 %14, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_409e7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_409f35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_409fc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40a078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 987654321
  %12 = icmp ult i32 %10, -987654321
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40a0f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40a116(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_40a1d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40a28e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40a4a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40a356(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40a3fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40a47f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a49c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a4a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a4a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_409da8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x154__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 340
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
define %struct.Memory* @routine_jle_.L_40a516(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40a5f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jle_.L_40a5da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a5df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x16c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 364
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
define %struct.Memory* @routine_jle_.L_40a673(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x15c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 348
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
define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jle_.L_40a6dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 336
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
define %struct.Memory* @routine_jle_.L_40a74c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 360
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
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jle_.L_40a7bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x164__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 356
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
define %struct.Memory* @routine_jle_.L_40a83f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 344
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
define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jle_.L_40a8a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a8ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_409d11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 352
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
define %struct.Memory* @routine_movl__0x2__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movb__0x9____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 9, i8* %8, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_jle_.L_40aa3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_callq_.P7ReallocTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x7____rdi__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 7, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x6____rcx__rdi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 6, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a96b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x4____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 4, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7ReverseTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Scorify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xb8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 184
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -185
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
