; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45594d_type = type <{ [8 x i8] }>
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
@G__0x45594d = global %G__0x45594d_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @make_ref_alilist(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = add i64 %7, 8
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RAX.i553, align 8
  %R10.i585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %R10.i585, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i583 = bitcast %union.anon* %43 to i32*
  %44 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  store i64 236, i64* %44, align 8
  %RDI.i580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %45 = add i64 %7, -16
  %46 = load i64, i64* %RDI.i580, align 8
  %47 = add i64 %10, 34
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i577 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i577, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %RDX.i574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %RDX.i574, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %RCX.i571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RCX.i571, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -40
  %70 = load i64, i64* %R8.i, align 8
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -48
  %76 = load i64, i64* %R9.i, align 8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -56
  %82 = load i64, i64* %RAX.i553, align 8
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -32
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RDI.i580, align 8
  %92 = add i64 %86, -96
  %93 = load i32, i32* %R11D.i583, align 4
  %94 = add i64 %88, 8
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -104
  %98 = load i64, i64* %R10.i585, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, -3575
  %104 = add i64 %102, 5
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %108 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  %109 = load i64, i64* %RAX.i553, align 8
  %110 = load i64, i64* %3, align 8
  %111 = shl i64 %109, 2
  store i64 %111, i64* %RAX.i553, align 8
  %112 = lshr i64 %109, 62
  %113 = trunc i64 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %14, align 1
  %115 = trunc i64 %111 to i32
  %116 = and i32 %115, 252
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %121 = icmp eq i64 %111, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i64 %109, 61
  %124 = trunc i64 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -104
  %128 = add i64 %110, 8
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RDI.i580, align 8
  %131 = add i64 %126, -96
  %132 = add i64 %110, 11
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RSI.i577, align 8
  store i64 %111, i64* %RDX.i574, align 8
  %136 = add i64 %110, 278020
  %137 = add i64 %110, 19
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, -8
  %140 = inttoptr i64 %139 to i64*
  store i64 %137, i64* %140, align 8
  store i64 %139, i64* %6, align 8
  store i64 %136, i64* %3, align 8
  %call2_40226a = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %136, %struct.Memory* %108)
  %141 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RDI.i580, align 8
  store i64 237, i64* %RSI.i577, align 8
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -64
  %144 = load i64, i64* %RAX.i553, align 8
  %145 = add i64 %141, 19
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %143 to i64*
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -32
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 4
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i553, align 8
  %153 = add i64 %147, -112
  %154 = load i64, i64* %RDI.i580, align 8
  %155 = add i64 %149, 8
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %153 to i64*
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %RAX.i553, align 8
  %158 = load i64, i64* %3, align 8
  store i64 %157, i64* %RDI.i580, align 8
  %ESI.i = bitcast %union.anon* %49 to i32*
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -116
  %161 = load i32, i32* %ESI.i, align 4
  %162 = add i64 %158, 6
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %163, align 4
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, -3632
  %166 = add i64 %164, 5
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %166, i64* %169, align 8
  store i64 %168, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  %170 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %call2_40226a)
  %171 = load i64, i64* %RAX.i553, align 8
  %172 = load i64, i64* %3, align 8
  %173 = shl i64 %171, 2
  store i64 %173, i64* %RAX.i553, align 8
  %174 = lshr i64 %171, 62
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %14, align 1
  %177 = trunc i64 %173 to i32
  %178 = and i32 %177, 252
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %183 = icmp eq i64 %173, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %29, align 1
  %185 = lshr i64 %171, 61
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -112
  %190 = add i64 %172, 8
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RDI.i580, align 8
  %193 = add i64 %188, -116
  %194 = add i64 %172, 11
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RSI.i577, align 8
  store i64 %173, i64* %RDX.i574, align 8
  %198 = add i64 %172, 277963
  %199 = add i64 %172, 19
  %200 = load i64, i64* %6, align 8
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %199, i64* %202, align 8
  store i64 %201, i64* %6, align 8
  store i64 %198, i64* %3, align 8
  %call2_4022a3 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %198, %struct.Memory* %170)
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -88
  %205 = load i64, i64* %RAX.i553, align 8
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 4
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %208, align 8
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -72
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %210 to i32*
  store i32 0, i32* %213, align 4
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -68
  %216 = load i64, i64* %3, align 8
  %217 = add i64 %216, 7
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %215 to i32*
  store i32 0, i32* %218, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4022ba

block_.L_4022ba:                                  ; preds = %block_.L_402362, %entry
  %219 = phi i64 [ %517, %block_.L_402362 ], [ %.pre, %entry ]
  %220 = load i64, i64* %RBP.i, align 8
  %221 = add i64 %220, -16
  %222 = add i64 %219, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i553, align 8
  %225 = add i64 %220, -68
  %226 = add i64 %219, 8
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i571, align 8
  %230 = add i64 %224, %229
  %231 = add i64 %219, 12
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i8*
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i64
  %235 = and i64 %234, 4294967295
  store i64 %235, i64* %RDX.i574, align 8
  %236 = sext i8 %233 to i32
  store i8 0, i8* %14, align 1
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %242 = icmp eq i8 %233, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %29, align 1
  %244 = lshr i32 %236, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %242, i64 187, i64 21
  %246 = add i64 %219, %.v
  store i64 %246, i64* %3, align 8
  br i1 %242, label %block_.L_402375, label %block_4022cf

block_4022cf:                                     ; preds = %block_.L_4022ba
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = load i64, i64* %223, align 8
  store i64 %248, i64* %RAX.i553, align 8
  %249 = add i64 %246, 8
  store i64 %249, i64* %3, align 8
  %250 = load i32, i32* %227, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RCX.i571, align 8
  %252 = add i64 %248, %251
  %253 = add i64 %246, 12
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i8*
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i64
  %257 = and i64 %256, 4294967295
  store i64 %257, i64* %RDX.i574, align 8
  %258 = sext i8 %255 to i32
  %259 = add nsw i32 %258, -32
  %260 = icmp ult i8 %255, 32
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i32 %259, %258
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %26, align 1
  %271 = icmp eq i32 %259, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %29, align 1
  %273 = lshr i32 %259, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %32, align 1
  %275 = lshr i32 %258, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %38, align 1
  %.v44 = select i1 %271, i64 147, i64 21
  %280 = add i64 %246, %.v44
  store i64 %280, i64* %3, align 8
  br i1 %271, label %block_.L_402362, label %block_4022e4

block_4022e4:                                     ; preds = %block_4022cf
  %281 = add i64 %280, 4
  store i64 %281, i64* %3, align 8
  %282 = load i64, i64* %223, align 8
  store i64 %282, i64* %RAX.i553, align 8
  %283 = add i64 %280, 8
  store i64 %283, i64* %3, align 8
  %284 = load i32, i32* %227, align 4
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %RCX.i571, align 8
  %286 = add i64 %282, %285
  %287 = add i64 %280, 12
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i8*
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i64
  %291 = and i64 %290, 4294967295
  store i64 %291, i64* %RDX.i574, align 8
  %292 = sext i8 %289 to i32
  %293 = add nsw i32 %292, -46
  %294 = icmp ult i8 %289, 46
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %14, align 1
  %296 = and i32 %293, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  %301 = xor i32 %293, %292
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %26, align 1
  %305 = icmp eq i32 %293, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %29, align 1
  %307 = lshr i32 %293, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %32, align 1
  %309 = lshr i32 %292, 31
  %310 = xor i32 %307, %309
  %311 = add nuw nsw i32 %310, %309
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %38, align 1
  %.v45 = select i1 %305, i64 126, i64 21
  %314 = add i64 %280, %.v45
  store i64 %314, i64* %3, align 8
  br i1 %305, label %block_.L_402362, label %block_4022f9

block_4022f9:                                     ; preds = %block_4022e4
  %315 = add i64 %314, 4
  store i64 %315, i64* %3, align 8
  %316 = load i64, i64* %223, align 8
  store i64 %316, i64* %RAX.i553, align 8
  %317 = add i64 %314, 8
  store i64 %317, i64* %3, align 8
  %318 = load i32, i32* %227, align 4
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %RCX.i571, align 8
  %320 = add i64 %316, %319
  %321 = add i64 %314, 12
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i8*
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i64
  %325 = and i64 %324, 4294967295
  store i64 %325, i64* %RDX.i574, align 8
  %326 = sext i8 %323 to i32
  %327 = add nsw i32 %326, -95
  %328 = icmp ult i8 %323, 95
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %14, align 1
  %330 = and i32 %327, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %21, align 1
  %335 = xor i32 %326, 16
  %336 = xor i32 %335, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %26, align 1
  %340 = icmp eq i32 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %29, align 1
  %342 = lshr i32 %327, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %32, align 1
  %344 = lshr i32 %326, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %38, align 1
  %.v46 = select i1 %340, i64 105, i64 21
  %349 = add i64 %314, %.v46
  store i64 %349, i64* %3, align 8
  br i1 %340, label %block_.L_402362, label %block_40230e

block_40230e:                                     ; preds = %block_4022f9
  %350 = add i64 %349, 4
  store i64 %350, i64* %3, align 8
  %351 = load i64, i64* %223, align 8
  store i64 %351, i64* %RAX.i553, align 8
  %352 = add i64 %349, 8
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %227, align 4
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %RCX.i571, align 8
  %355 = add i64 %351, %354
  %356 = add i64 %349, 12
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i8*
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i64
  %360 = and i64 %359, 4294967295
  store i64 %360, i64* %RDX.i574, align 8
  %361 = sext i8 %358 to i32
  %362 = add nsw i32 %361, -45
  %363 = icmp ult i8 %358, 45
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i32 %362, %361
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %26, align 1
  %374 = icmp eq i32 %362, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i32 %362, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %32, align 1
  %378 = lshr i32 %361, 31
  %379 = xor i32 %376, %378
  %380 = add nuw nsw i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %38, align 1
  %.v47 = select i1 %374, i64 84, i64 21
  %383 = add i64 %349, %.v47
  store i64 %383, i64* %3, align 8
  br i1 %374, label %block_.L_402362, label %block_402323

block_402323:                                     ; preds = %block_40230e
  %384 = add i64 %383, 4
  store i64 %384, i64* %3, align 8
  %385 = load i64, i64* %223, align 8
  store i64 %385, i64* %RAX.i553, align 8
  %386 = add i64 %383, 8
  store i64 %386, i64* %3, align 8
  %387 = load i32, i32* %227, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX.i571, align 8
  %389 = add i64 %385, %388
  %390 = add i64 %383, 12
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i8*
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i64
  %394 = and i64 %393, 4294967295
  store i64 %394, i64* %RDX.i574, align 8
  %395 = sext i8 %392 to i32
  %396 = add nsw i32 %395, -126
  %397 = icmp ult i8 %392, 126
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %396, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %395, 16
  %405 = xor i32 %404, %396
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %26, align 1
  %409 = icmp eq i32 %396, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %29, align 1
  %411 = lshr i32 %396, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %32, align 1
  %413 = lshr i32 %395, 31
  %414 = xor i32 %411, %413
  %415 = add nuw nsw i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %38, align 1
  %.v48 = select i1 %409, i64 63, i64 21
  %418 = add i64 %383, %.v48
  store i64 %418, i64* %3, align 8
  br i1 %409, label %block_.L_402362, label %block_402338

block_402338:                                     ; preds = %block_402323
  store i64 0, i64* %RAX.i553, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i571, align 8
  %419 = add i64 %220, -8
  %420 = add i64 %418, 11
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RDX.i574, align 8
  %423 = add i64 %418, 15
  store i64 %423, i64* %3, align 8
  %424 = load i32, i32* %227, align 4
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RSI.i577, align 8
  %426 = shl nsw i64 %425, 2
  %427 = add i64 %426, %422
  %428 = add i64 %418, 19
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  store i8 0, i8* %14, align 1
  %431 = and i32 %430, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %436 = icmp eq i32 %430, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %29, align 1
  %438 = lshr i32 %430, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %440 = xor i1 %436, true
  %441 = zext i1 %440 to i64
  store i64 %441, i64* %RAX.i553, align 8
  %442 = add i64 %220, -88
  %443 = add i64 %418, 26
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RDX.i574, align 8
  %446 = add i64 %220, -72
  %447 = add i64 %418, 30
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RSI.i577, align 8
  %451 = shl nsw i64 %450, 2
  %452 = add i64 %451, %445
  %453 = zext i1 %440 to i32
  %454 = add i64 %418, 33
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i32*
  store i32 %453, i32* %455, align 4
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -72
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 3
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i553, align 8
  %464 = icmp eq i32 %461, -1
  %465 = icmp eq i32 %462, 0
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %14, align 1
  %468 = and i32 %462, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i32 %462, %461
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %26, align 1
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %29, align 1
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %32, align 1
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %38, align 1
  %485 = add i64 %458, 9
  store i64 %485, i64* %3, align 8
  store i32 %462, i32* %460, align 4
  %.pre34 = load i64, i64* %3, align 8
  %.pre35 = load i64, i64* %RBP.i, align 8
  br label %block_.L_402362

block_.L_402362:                                  ; preds = %block_402338, %block_402323, %block_40230e, %block_4022f9, %block_4022e4, %block_4022cf
  %486 = phi i64 [ %.pre35, %block_402338 ], [ %220, %block_402323 ], [ %220, %block_40230e ], [ %220, %block_4022f9 ], [ %220, %block_4022e4 ], [ %220, %block_4022cf ]
  %487 = phi i64 [ %.pre34, %block_402338 ], [ %418, %block_402323 ], [ %383, %block_40230e ], [ %349, %block_4022f9 ], [ %314, %block_4022e4 ], [ %280, %block_4022cf ]
  %488 = add i64 %486, -68
  %489 = add i64 %487, 8
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = add i32 %491, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i553, align 8
  %494 = icmp eq i32 %491, -1
  %495 = icmp eq i32 %492, 0
  %496 = or i1 %494, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = and i32 %492, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  %503 = xor i32 %492, %491
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %26, align 1
  %507 = zext i1 %495 to i8
  store i8 %507, i8* %29, align 1
  %508 = lshr i32 %492, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %32, align 1
  %510 = lshr i32 %491, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %508
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %38, align 1
  %515 = add i64 %487, 14
  store i64 %515, i64* %3, align 8
  store i32 %492, i32* %490, align 4
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, -182
  store i64 %517, i64* %3, align 8
  br label %block_.L_4022ba

block_.L_402375:                                  ; preds = %block_.L_4022ba
  %518 = add i64 %220, -92
  %519 = add i64 %246, 7
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 0, i32* %520, align 4
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -76
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 7
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 0, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -72
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 7
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  store i32 0, i32* %530, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -68
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 7
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 0, i32* %535, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_402391

block_.L_402391:                                  ; preds = %block_.L_402598, %block_.L_402375
  %536 = phi i64 [ %1441, %block_.L_402598 ], [ %.pre36, %block_.L_402375 ]
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -32
  %539 = add i64 %536, 4
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX.i553, align 8
  %542 = add i64 %537, -68
  %543 = add i64 %536, 8
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = sext i32 %545 to i64
  store i64 %546, i64* %RCX.i571, align 8
  %547 = add i64 %541, %546
  %548 = add i64 %536, 12
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i8*
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i64
  %552 = and i64 %551, 4294967295
  store i64 %552, i64* %RDX.i574, align 8
  %553 = sext i8 %550 to i32
  store i8 0, i8* %14, align 1
  %554 = and i32 %553, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %559 = icmp eq i8 %550, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %29, align 1
  %561 = lshr i32 %553, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %559, i64 538, i64 21
  %563 = add i64 %536, %.v49
  store i64 %563, i64* %3, align 8
  br i1 %559, label %block_.L_4025ab, label %block_4023a6

block_4023a6:                                     ; preds = %block_.L_402391
  %564 = add i64 %563, 4
  store i64 %564, i64* %3, align 8
  %565 = load i64, i64* %540, align 8
  store i64 %565, i64* %RAX.i553, align 8
  %566 = add i64 %563, 8
  store i64 %566, i64* %3, align 8
  %567 = load i32, i32* %544, align 4
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RCX.i571, align 8
  %569 = add i64 %565, %568
  %570 = add i64 %563, 12
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i8*
  %572 = load i8, i8* %571, align 1
  %573 = sext i8 %572 to i64
  %574 = and i64 %573, 4294967295
  store i64 %574, i64* %RDX.i574, align 8
  %575 = sext i8 %572 to i32
  %576 = add nsw i32 %575, -32
  %577 = icmp ult i8 %572, 32
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %576, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %576, %575
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1
  %588 = icmp eq i32 %576, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %29, align 1
  %590 = lshr i32 %576, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %32, align 1
  %592 = lshr i32 %575, 31
  %593 = xor i32 %590, %592
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %38, align 1
  %.v50 = select i1 %588, i64 270, i64 21
  %597 = add i64 %563, %.v50
  store i64 %597, i64* %3, align 8
  br i1 %588, label %block_.L_4024b4, label %block_4023bb

block_4023bb:                                     ; preds = %block_4023a6
  %598 = add i64 %597, 4
  store i64 %598, i64* %3, align 8
  %599 = load i64, i64* %540, align 8
  store i64 %599, i64* %RAX.i553, align 8
  %600 = add i64 %597, 8
  store i64 %600, i64* %3, align 8
  %601 = load i32, i32* %544, align 4
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RCX.i571, align 8
  %603 = add i64 %599, %602
  %604 = add i64 %597, 12
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i8*
  %606 = load i8, i8* %605, align 1
  %607 = sext i8 %606 to i64
  %608 = and i64 %607, 4294967295
  store i64 %608, i64* %RDX.i574, align 8
  %609 = sext i8 %606 to i32
  %610 = add nsw i32 %609, -46
  %611 = icmp ult i8 %606, 46
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %610, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %610, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %26, align 1
  %622 = icmp eq i32 %610, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %29, align 1
  %624 = lshr i32 %610, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %32, align 1
  %626 = lshr i32 %609, 31
  %627 = xor i32 %624, %626
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %38, align 1
  %.v51 = select i1 %622, i64 249, i64 21
  %631 = add i64 %597, %.v51
  store i64 %631, i64* %3, align 8
  br i1 %622, label %block_.L_4024b4, label %block_4023d0

block_4023d0:                                     ; preds = %block_4023bb
  %632 = add i64 %631, 4
  store i64 %632, i64* %3, align 8
  %633 = load i64, i64* %540, align 8
  store i64 %633, i64* %RAX.i553, align 8
  %634 = add i64 %631, 8
  store i64 %634, i64* %3, align 8
  %635 = load i32, i32* %544, align 4
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RCX.i571, align 8
  %637 = add i64 %633, %636
  %638 = add i64 %631, 12
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i8*
  %640 = load i8, i8* %639, align 1
  %641 = sext i8 %640 to i64
  %642 = and i64 %641, 4294967295
  store i64 %642, i64* %RDX.i574, align 8
  %643 = sext i8 %640 to i32
  %644 = add nsw i32 %643, -95
  %645 = icmp ult i8 %640, 95
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %14, align 1
  %647 = and i32 %644, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  %652 = xor i32 %643, 16
  %653 = xor i32 %652, %644
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %26, align 1
  %657 = icmp eq i32 %644, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %29, align 1
  %659 = lshr i32 %644, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %32, align 1
  %661 = lshr i32 %643, 31
  %662 = xor i32 %659, %661
  %663 = add nuw nsw i32 %662, %661
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %38, align 1
  %.v52 = select i1 %657, i64 228, i64 21
  %666 = add i64 %631, %.v52
  store i64 %666, i64* %3, align 8
  br i1 %657, label %block_.L_4024b4, label %block_4023e5

block_4023e5:                                     ; preds = %block_4023d0
  %667 = add i64 %666, 4
  store i64 %667, i64* %3, align 8
  %668 = load i64, i64* %540, align 8
  store i64 %668, i64* %RAX.i553, align 8
  %669 = add i64 %666, 8
  store i64 %669, i64* %3, align 8
  %670 = load i32, i32* %544, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RCX.i571, align 8
  %672 = add i64 %668, %671
  %673 = add i64 %666, 12
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i8*
  %675 = load i8, i8* %674, align 1
  %676 = sext i8 %675 to i64
  %677 = and i64 %676, 4294967295
  store i64 %677, i64* %RDX.i574, align 8
  %678 = sext i8 %675 to i32
  %679 = add nsw i32 %678, -45
  %680 = icmp ult i8 %675, 45
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %14, align 1
  %682 = and i32 %679, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %21, align 1
  %687 = xor i32 %679, %678
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %26, align 1
  %691 = icmp eq i32 %679, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %29, align 1
  %693 = lshr i32 %679, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %32, align 1
  %695 = lshr i32 %678, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %38, align 1
  %.v53 = select i1 %691, i64 207, i64 21
  %700 = add i64 %666, %.v53
  store i64 %700, i64* %3, align 8
  br i1 %691, label %block_.L_4024b4, label %block_4023fa

block_4023fa:                                     ; preds = %block_4023e5
  %701 = add i64 %700, 4
  store i64 %701, i64* %3, align 8
  %702 = load i64, i64* %540, align 8
  store i64 %702, i64* %RAX.i553, align 8
  %703 = add i64 %700, 8
  store i64 %703, i64* %3, align 8
  %704 = load i32, i32* %544, align 4
  %705 = sext i32 %704 to i64
  store i64 %705, i64* %RCX.i571, align 8
  %706 = add i64 %702, %705
  %707 = add i64 %700, 12
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i8*
  %709 = load i8, i8* %708, align 1
  %710 = sext i8 %709 to i64
  %711 = and i64 %710, 4294967295
  store i64 %711, i64* %RDX.i574, align 8
  %712 = sext i8 %709 to i32
  %713 = add nsw i32 %712, -126
  %714 = icmp ult i8 %709, 126
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %713, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %712, 16
  %722 = xor i32 %721, %713
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %26, align 1
  %726 = icmp eq i32 %713, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %29, align 1
  %728 = lshr i32 %713, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %32, align 1
  %730 = lshr i32 %712, 31
  %731 = xor i32 %728, %730
  %732 = add nuw nsw i32 %731, %730
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %38, align 1
  %.v54 = select i1 %726, i64 186, i64 21
  %735 = add i64 %700, %.v54
  store i64 %735, i64* %3, align 8
  br i1 %726, label %block_.L_4024b4, label %block_40240f

block_40240f:                                     ; preds = %block_4023fa
  %736 = add i64 %537, -88
  %737 = add i64 %735, 4
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RAX.i553, align 8
  %740 = add i64 %537, -72
  %741 = add i64 %735, 8
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = sext i32 %743 to i64
  store i64 %744, i64* %RCX.i571, align 8
  %745 = shl nsw i64 %744, 2
  %746 = add i64 %745, %739
  %747 = add i64 %735, 12
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  store i8 0, i8* %14, align 1
  %750 = and i32 %749, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %755 = icmp eq i32 %749, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %29, align 1
  %757 = lshr i32 %749, 31
  %758 = trunc i32 %757 to i8
  store i8 %758, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v55 = select i1 %755, i64 165, i64 18
  %759 = add i64 %735, %.v55
  store i64 %759, i64* %3, align 8
  br i1 %755, label %block_.L_4024b4, label %block_402421

block_402421:                                     ; preds = %block_40240f
  %760 = add i64 %537, -40
  %761 = add i64 %759, 4
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RAX.i553, align 8
  %764 = add i64 %759, 8
  store i64 %764, i64* %3, align 8
  %765 = load i32, i32* %544, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RCX.i571, align 8
  %767 = add i64 %763, %766
  %768 = add i64 %759, 12
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i8*
  %770 = load i8, i8* %769, align 1
  %771 = sext i8 %770 to i64
  %772 = and i64 %771, 4294967295
  store i64 %772, i64* %RDX.i574, align 8
  %773 = sext i8 %770 to i32
  %774 = add nsw i32 %773, -32
  %775 = icmp ult i8 %770, 32
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %774, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %774, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %774, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i32 %773, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %.v56 = select i1 %786, i64 105, i64 21
  %795 = add i64 %759, %.v56
  store i64 %795, i64* %3, align 8
  br i1 %786, label %block_.L_40248a, label %block_402436

block_402436:                                     ; preds = %block_402421
  %796 = add i64 %795, 4
  store i64 %796, i64* %3, align 8
  %797 = load i64, i64* %762, align 8
  store i64 %797, i64* %RAX.i553, align 8
  %798 = add i64 %795, 8
  store i64 %798, i64* %3, align 8
  %799 = load i32, i32* %544, align 4
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %RCX.i571, align 8
  %801 = add i64 %797, %800
  %802 = add i64 %795, 12
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i8*
  %804 = load i8, i8* %803, align 1
  %805 = sext i8 %804 to i64
  %806 = and i64 %805, 4294967295
  store i64 %806, i64* %RDX.i574, align 8
  %807 = sext i8 %804 to i32
  %808 = add nsw i32 %807, -46
  %809 = icmp ult i8 %804, 46
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %14, align 1
  %811 = and i32 %808, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  %816 = xor i32 %808, %807
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %26, align 1
  %820 = icmp eq i32 %808, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %29, align 1
  %822 = lshr i32 %808, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %32, align 1
  %824 = lshr i32 %807, 31
  %825 = xor i32 %822, %824
  %826 = add nuw nsw i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %38, align 1
  %.v57 = select i1 %820, i64 84, i64 21
  %829 = add i64 %795, %.v57
  store i64 %829, i64* %3, align 8
  br i1 %820, label %block_.L_40248a, label %block_40244b

block_40244b:                                     ; preds = %block_402436
  %830 = add i64 %829, 4
  store i64 %830, i64* %3, align 8
  %831 = load i64, i64* %762, align 8
  store i64 %831, i64* %RAX.i553, align 8
  %832 = add i64 %829, 8
  store i64 %832, i64* %3, align 8
  %833 = load i32, i32* %544, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX.i571, align 8
  %835 = add i64 %831, %834
  %836 = add i64 %829, 12
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i8*
  %838 = load i8, i8* %837, align 1
  %839 = sext i8 %838 to i64
  %840 = and i64 %839, 4294967295
  store i64 %840, i64* %RDX.i574, align 8
  %841 = sext i8 %838 to i32
  %842 = add nsw i32 %841, -95
  %843 = icmp ult i8 %838, 95
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %14, align 1
  %845 = and i32 %842, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  %850 = xor i32 %841, 16
  %851 = xor i32 %850, %842
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %26, align 1
  %855 = icmp eq i32 %842, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %29, align 1
  %857 = lshr i32 %842, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %32, align 1
  %859 = lshr i32 %841, 31
  %860 = xor i32 %857, %859
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %38, align 1
  %.v58 = select i1 %855, i64 63, i64 21
  %864 = add i64 %829, %.v58
  store i64 %864, i64* %3, align 8
  br i1 %855, label %block_.L_40248a, label %block_402460

block_402460:                                     ; preds = %block_40244b
  %865 = add i64 %864, 4
  store i64 %865, i64* %3, align 8
  %866 = load i64, i64* %762, align 8
  store i64 %866, i64* %RAX.i553, align 8
  %867 = add i64 %864, 8
  store i64 %867, i64* %3, align 8
  %868 = load i32, i32* %544, align 4
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX.i571, align 8
  %870 = add i64 %866, %869
  %871 = add i64 %864, 12
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i8*
  %873 = load i8, i8* %872, align 1
  %874 = sext i8 %873 to i64
  %875 = and i64 %874, 4294967295
  store i64 %875, i64* %RDX.i574, align 8
  %876 = sext i8 %873 to i32
  %877 = add nsw i32 %876, -45
  %878 = icmp ult i8 %873, 45
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %877, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %877, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %26, align 1
  %889 = icmp eq i32 %877, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %29, align 1
  %891 = lshr i32 %877, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = lshr i32 %876, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %.v59 = select i1 %889, i64 42, i64 21
  %898 = add i64 %864, %.v59
  store i64 %898, i64* %3, align 8
  br i1 %889, label %block_.L_40248a, label %block_402475

block_402475:                                     ; preds = %block_402460
  %899 = add i64 %898, 4
  store i64 %899, i64* %3, align 8
  %900 = load i64, i64* %762, align 8
  store i64 %900, i64* %RAX.i553, align 8
  %901 = add i64 %898, 8
  store i64 %901, i64* %3, align 8
  %902 = load i32, i32* %544, align 4
  %903 = sext i32 %902 to i64
  store i64 %903, i64* %RCX.i571, align 8
  %904 = add i64 %900, %903
  %905 = add i64 %898, 12
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i8*
  %907 = load i8, i8* %906, align 1
  %908 = sext i8 %907 to i64
  %909 = and i64 %908, 4294967295
  store i64 %909, i64* %RDX.i574, align 8
  %910 = sext i8 %907 to i32
  %911 = add nsw i32 %910, -126
  %912 = icmp ult i8 %907, 126
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %14, align 1
  %914 = and i32 %911, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  %919 = xor i32 %910, 16
  %920 = xor i32 %919, %911
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %26, align 1
  %924 = icmp eq i32 %911, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1
  %926 = lshr i32 %911, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %32, align 1
  %928 = lshr i32 %910, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %38, align 1
  %.v60 = select i1 %924, i64 21, i64 34
  %933 = add i64 %898, %.v60
  store i64 %933, i64* %3, align 8
  br i1 %924, label %block_.L_40248a, label %block_.L_402497

block_.L_40248a:                                  ; preds = %block_402475, %block_402460, %block_40244b, %block_402436, %block_402421
  %934 = phi i64 [ %933, %block_402475 ], [ %898, %block_402460 ], [ %864, %block_40244b ], [ %829, %block_402436 ], [ %795, %block_402421 ]
  store i64 4294967295, i64* %RAX.i553, align 8
  %935 = add i64 %537, -120
  %936 = add i64 %934, 8
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  store i32 -1, i32* %937, align 4
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 11
  store i64 %939, i64* %3, align 8
  br label %block_.L_40249d

block_.L_402497:                                  ; preds = %block_402475
  %940 = add i64 %537, -76
  %941 = add i64 %933, 3
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i553, align 8
  %945 = add i64 %537, -120
  %946 = add i64 %933, 6
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  store i32 %943, i32* %947, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_40249d

block_.L_40249d:                                  ; preds = %block_.L_402497, %block_.L_40248a
  %948 = phi i64 [ %.pre37, %block_.L_402497 ], [ %939, %block_.L_40248a ]
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -120
  %951 = add i64 %948, 3
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX.i553, align 8
  %955 = add i64 %949, -64
  %956 = add i64 %948, 7
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RCX.i571, align 8
  %959 = add i64 %949, -92
  %960 = add i64 %948, 11
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RDX.i574, align 8
  %964 = shl nsw i64 %963, 2
  %965 = add i64 %964, %958
  %966 = add i64 %948, 14
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  store i32 %953, i32* %967, align 4
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -92
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 3
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = add i32 %973, 1
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i553, align 8
  %976 = icmp eq i32 %973, -1
  %977 = icmp eq i32 %974, 0
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %14, align 1
  %980 = and i32 %974, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i32 %974, %973
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %26, align 1
  %989 = zext i1 %977 to i8
  store i8 %989, i8* %29, align 1
  %990 = lshr i32 %974, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %32, align 1
  %992 = lshr i32 %973, 31
  %993 = xor i32 %990, %992
  %994 = add nuw nsw i32 %993, %990
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %38, align 1
  %997 = add i64 %970, 9
  store i64 %997, i64* %3, align 8
  store i32 %974, i32* %972, align 4
  %.pre38 = load i64, i64* %RBP.i, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_4024b4

block_.L_4024b4:                                  ; preds = %block_.L_40249d, %block_40240f, %block_4023fa, %block_4023e5, %block_4023d0, %block_4023bb, %block_4023a6
  %998 = phi i64 [ %.pre39, %block_.L_40249d ], [ %759, %block_40240f ], [ %735, %block_4023fa ], [ %700, %block_4023e5 ], [ %666, %block_4023d0 ], [ %631, %block_4023bb ], [ %597, %block_4023a6 ]
  %999 = phi i64 [ %.pre38, %block_.L_40249d ], [ %537, %block_40240f ], [ %537, %block_4023fa ], [ %537, %block_4023e5 ], [ %537, %block_4023d0 ], [ %537, %block_4023bb ], [ %537, %block_4023a6 ]
  %1000 = add i64 %999, -32
  %1001 = add i64 %998, 4
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RAX.i553, align 8
  %1004 = add i64 %999, -68
  %1005 = add i64 %998, 8
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i571, align 8
  %1009 = add i64 %1003, %1008
  %1010 = add i64 %998, 12
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i8*
  %1012 = load i8, i8* %1011, align 1
  %1013 = sext i8 %1012 to i64
  %1014 = and i64 %1013, 4294967295
  store i64 %1014, i64* %RDX.i574, align 8
  %1015 = sext i8 %1012 to i32
  %1016 = add nsw i32 %1015, -32
  %1017 = icmp ult i8 %1012, 32
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %14, align 1
  %1019 = and i32 %1016, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %21, align 1
  %1024 = xor i32 %1016, %1015
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %26, align 1
  %1028 = icmp eq i32 %1016, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %29, align 1
  %1030 = lshr i32 %1016, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %32, align 1
  %1032 = lshr i32 %1015, 31
  %1033 = xor i32 %1030, %1032
  %1034 = add nuw nsw i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %38, align 1
  %.v61 = select i1 %1028, i64 114, i64 21
  %1037 = add i64 %998, %.v61
  store i64 %1037, i64* %3, align 8
  br i1 %1028, label %block_.L_402526, label %block_4024c9

block_4024c9:                                     ; preds = %block_.L_4024b4
  %1038 = add i64 %1037, 4
  store i64 %1038, i64* %3, align 8
  %1039 = load i64, i64* %1002, align 8
  store i64 %1039, i64* %RAX.i553, align 8
  %1040 = add i64 %1037, 8
  store i64 %1040, i64* %3, align 8
  %1041 = load i32, i32* %1006, align 4
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RCX.i571, align 8
  %1043 = add i64 %1039, %1042
  %1044 = add i64 %1037, 12
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i8*
  %1046 = load i8, i8* %1045, align 1
  %1047 = sext i8 %1046 to i64
  %1048 = and i64 %1047, 4294967295
  store i64 %1048, i64* %RDX.i574, align 8
  %1049 = sext i8 %1046 to i32
  %1050 = add nsw i32 %1049, -46
  %1051 = icmp ult i8 %1046, 46
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %14, align 1
  %1053 = and i32 %1050, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %21, align 1
  %1058 = xor i32 %1050, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %26, align 1
  %1062 = icmp eq i32 %1050, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %29, align 1
  %1064 = lshr i32 %1050, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %32, align 1
  %1066 = lshr i32 %1049, 31
  %1067 = xor i32 %1064, %1066
  %1068 = add nuw nsw i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %38, align 1
  %.v62 = select i1 %1062, i64 93, i64 21
  %1071 = add i64 %1037, %.v62
  store i64 %1071, i64* %3, align 8
  br i1 %1062, label %block_.L_402526, label %block_4024de

block_4024de:                                     ; preds = %block_4024c9
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %3, align 8
  %1073 = load i64, i64* %1002, align 8
  store i64 %1073, i64* %RAX.i553, align 8
  %1074 = add i64 %1071, 8
  store i64 %1074, i64* %3, align 8
  %1075 = load i32, i32* %1006, align 4
  %1076 = sext i32 %1075 to i64
  store i64 %1076, i64* %RCX.i571, align 8
  %1077 = add i64 %1073, %1076
  %1078 = add i64 %1071, 12
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i8*
  %1080 = load i8, i8* %1079, align 1
  %1081 = sext i8 %1080 to i64
  %1082 = and i64 %1081, 4294967295
  store i64 %1082, i64* %RDX.i574, align 8
  %1083 = sext i8 %1080 to i32
  %1084 = add nsw i32 %1083, -95
  %1085 = icmp ult i8 %1080, 95
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %14, align 1
  %1087 = and i32 %1084, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %21, align 1
  %1092 = xor i32 %1083, 16
  %1093 = xor i32 %1092, %1084
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %26, align 1
  %1097 = icmp eq i32 %1084, 0
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %29, align 1
  %1099 = lshr i32 %1084, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %32, align 1
  %1101 = lshr i32 %1083, 31
  %1102 = xor i32 %1099, %1101
  %1103 = add nuw nsw i32 %1102, %1101
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %38, align 1
  %.v63 = select i1 %1097, i64 72, i64 21
  %1106 = add i64 %1071, %.v63
  store i64 %1106, i64* %3, align 8
  br i1 %1097, label %block_.L_402526, label %block_4024f3

block_4024f3:                                     ; preds = %block_4024de
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %3, align 8
  %1108 = load i64, i64* %1002, align 8
  store i64 %1108, i64* %RAX.i553, align 8
  %1109 = add i64 %1106, 8
  store i64 %1109, i64* %3, align 8
  %1110 = load i32, i32* %1006, align 4
  %1111 = sext i32 %1110 to i64
  store i64 %1111, i64* %RCX.i571, align 8
  %1112 = add i64 %1108, %1111
  %1113 = add i64 %1106, 12
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i8*
  %1115 = load i8, i8* %1114, align 1
  %1116 = sext i8 %1115 to i64
  %1117 = and i64 %1116, 4294967295
  store i64 %1117, i64* %RDX.i574, align 8
  %1118 = sext i8 %1115 to i32
  %1119 = add nsw i32 %1118, -45
  %1120 = icmp ult i8 %1115, 45
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %14, align 1
  %1122 = and i32 %1119, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %21, align 1
  %1127 = xor i32 %1119, %1118
  %1128 = lshr i32 %1127, 4
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %26, align 1
  %1131 = icmp eq i32 %1119, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %29, align 1
  %1133 = lshr i32 %1119, 31
  %1134 = trunc i32 %1133 to i8
  store i8 %1134, i8* %32, align 1
  %1135 = lshr i32 %1118, 31
  %1136 = xor i32 %1133, %1135
  %1137 = add nuw nsw i32 %1136, %1135
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %38, align 1
  %.v64 = select i1 %1131, i64 51, i64 21
  %1140 = add i64 %1106, %.v64
  store i64 %1140, i64* %3, align 8
  br i1 %1131, label %block_.L_402526, label %block_402508

block_402508:                                     ; preds = %block_4024f3
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = load i64, i64* %1002, align 8
  store i64 %1142, i64* %RAX.i553, align 8
  %1143 = add i64 %1140, 8
  store i64 %1143, i64* %3, align 8
  %1144 = load i32, i32* %1006, align 4
  %1145 = sext i32 %1144 to i64
  store i64 %1145, i64* %RCX.i571, align 8
  %1146 = add i64 %1142, %1145
  %1147 = add i64 %1140, 12
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i8*
  %1149 = load i8, i8* %1148, align 1
  %1150 = sext i8 %1149 to i64
  %1151 = and i64 %1150, 4294967295
  store i64 %1151, i64* %RDX.i574, align 8
  %1152 = sext i8 %1149 to i32
  %1153 = add nsw i32 %1152, -126
  %1154 = icmp ult i8 %1149, 126
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %14, align 1
  %1156 = and i32 %1153, 255
  %1157 = tail call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  store i8 %1160, i8* %21, align 1
  %1161 = xor i32 %1152, 16
  %1162 = xor i32 %1161, %1153
  %1163 = lshr i32 %1162, 4
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, i8* %26, align 1
  %1166 = icmp eq i32 %1153, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %29, align 1
  %1168 = lshr i32 %1153, 31
  %1169 = trunc i32 %1168 to i8
  store i8 %1169, i8* %32, align 1
  %1170 = lshr i32 %1152, 31
  %1171 = xor i32 %1168, %1170
  %1172 = add nuw nsw i32 %1171, %1170
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %38, align 1
  %.v65 = select i1 %1166, i64 30, i64 21
  %1175 = add i64 %1140, %.v65
  store i64 %1175, i64* %3, align 8
  br i1 %1166, label %block_.L_402526, label %block_40251d

block_40251d:                                     ; preds = %block_402508
  %1176 = add i64 %999, -72
  %1177 = add i64 %1175, 3
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, 1
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RAX.i553, align 8
  %1182 = icmp eq i32 %1179, -1
  %1183 = icmp eq i32 %1180, 0
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %14, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i32 %1180, %1179
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %26, align 1
  %1195 = zext i1 %1183 to i8
  store i8 %1195, i8* %29, align 1
  %1196 = lshr i32 %1180, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %32, align 1
  %1198 = lshr i32 %1179, 31
  %1199 = xor i32 %1196, %1198
  %1200 = add nuw nsw i32 %1199, %1196
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %38, align 1
  %1203 = add i64 %1175, 9
  store i64 %1203, i64* %3, align 8
  store i32 %1180, i32* %1178, align 4
  %.pre40 = load i64, i64* %RBP.i, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_402526

block_.L_402526:                                  ; preds = %block_40251d, %block_402508, %block_4024f3, %block_4024de, %block_4024c9, %block_.L_4024b4
  %1204 = phi i64 [ %.pre41, %block_40251d ], [ %1175, %block_402508 ], [ %1140, %block_4024f3 ], [ %1106, %block_4024de ], [ %1071, %block_4024c9 ], [ %1037, %block_.L_4024b4 ]
  %1205 = phi i64 [ %.pre40, %block_40251d ], [ %999, %block_402508 ], [ %999, %block_4024f3 ], [ %999, %block_4024de ], [ %999, %block_4024c9 ], [ %999, %block_.L_4024b4 ]
  %1206 = add i64 %1205, -40
  %1207 = add i64 %1204, 4
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RAX.i553, align 8
  %1210 = add i64 %1205, -68
  %1211 = add i64 %1204, 8
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = sext i32 %1213 to i64
  store i64 %1214, i64* %RCX.i571, align 8
  %1215 = add i64 %1209, %1214
  %1216 = add i64 %1204, 12
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i8*
  %1218 = load i8, i8* %1217, align 1
  %1219 = sext i8 %1218 to i64
  %1220 = and i64 %1219, 4294967295
  store i64 %1220, i64* %RDX.i574, align 8
  %1221 = sext i8 %1218 to i32
  %1222 = add nsw i32 %1221, -32
  %1223 = icmp ult i8 %1218, 32
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %14, align 1
  %1225 = and i32 %1222, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %21, align 1
  %1230 = xor i32 %1222, %1221
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %26, align 1
  %1234 = icmp eq i32 %1222, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %29, align 1
  %1236 = lshr i32 %1222, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %32, align 1
  %1238 = lshr i32 %1221, 31
  %1239 = xor i32 %1236, %1238
  %1240 = add nuw nsw i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %38, align 1
  %.v66 = select i1 %1234, i64 114, i64 21
  %1243 = add i64 %1204, %.v66
  store i64 %1243, i64* %3, align 8
  br i1 %1234, label %block_.L_402598, label %block_40253b

block_40253b:                                     ; preds = %block_.L_402526
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %3, align 8
  %1245 = load i64, i64* %1208, align 8
  store i64 %1245, i64* %RAX.i553, align 8
  %1246 = add i64 %1243, 8
  store i64 %1246, i64* %3, align 8
  %1247 = load i32, i32* %1212, align 4
  %1248 = sext i32 %1247 to i64
  store i64 %1248, i64* %RCX.i571, align 8
  %1249 = add i64 %1245, %1248
  %1250 = add i64 %1243, 12
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i8*
  %1252 = load i8, i8* %1251, align 1
  %1253 = sext i8 %1252 to i64
  %1254 = and i64 %1253, 4294967295
  store i64 %1254, i64* %RDX.i574, align 8
  %1255 = sext i8 %1252 to i32
  %1256 = add nsw i32 %1255, -46
  %1257 = icmp ult i8 %1252, 46
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = and i32 %1256, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i32 %1256, %1255
  %1265 = lshr i32 %1264, 4
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %26, align 1
  %1268 = icmp eq i32 %1256, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %29, align 1
  %1270 = lshr i32 %1256, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %32, align 1
  %1272 = lshr i32 %1255, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1272
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %38, align 1
  %.v67 = select i1 %1268, i64 93, i64 21
  %1277 = add i64 %1243, %.v67
  store i64 %1277, i64* %3, align 8
  br i1 %1268, label %block_.L_402598, label %block_402550

block_402550:                                     ; preds = %block_40253b
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %3, align 8
  %1279 = load i64, i64* %1208, align 8
  store i64 %1279, i64* %RAX.i553, align 8
  %1280 = add i64 %1277, 8
  store i64 %1280, i64* %3, align 8
  %1281 = load i32, i32* %1212, align 4
  %1282 = sext i32 %1281 to i64
  store i64 %1282, i64* %RCX.i571, align 8
  %1283 = add i64 %1279, %1282
  %1284 = add i64 %1277, 12
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i8*
  %1286 = load i8, i8* %1285, align 1
  %1287 = sext i8 %1286 to i64
  %1288 = and i64 %1287, 4294967295
  store i64 %1288, i64* %RDX.i574, align 8
  %1289 = sext i8 %1286 to i32
  %1290 = add nsw i32 %1289, -95
  %1291 = icmp ult i8 %1286, 95
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %21, align 1
  %1298 = xor i32 %1289, 16
  %1299 = xor i32 %1298, %1290
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %26, align 1
  %1303 = icmp eq i32 %1290, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %29, align 1
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %32, align 1
  %1307 = lshr i32 %1289, 31
  %1308 = xor i32 %1305, %1307
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %38, align 1
  %.v68 = select i1 %1303, i64 72, i64 21
  %1312 = add i64 %1277, %.v68
  store i64 %1312, i64* %3, align 8
  br i1 %1303, label %block_.L_402598, label %block_402565

block_402565:                                     ; preds = %block_402550
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %3, align 8
  %1314 = load i64, i64* %1208, align 8
  store i64 %1314, i64* %RAX.i553, align 8
  %1315 = add i64 %1312, 8
  store i64 %1315, i64* %3, align 8
  %1316 = load i32, i32* %1212, align 4
  %1317 = sext i32 %1316 to i64
  store i64 %1317, i64* %RCX.i571, align 8
  %1318 = add i64 %1314, %1317
  %1319 = add i64 %1312, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i8*
  %1321 = load i8, i8* %1320, align 1
  %1322 = sext i8 %1321 to i64
  %1323 = and i64 %1322, 4294967295
  store i64 %1323, i64* %RDX.i574, align 8
  %1324 = sext i8 %1321 to i32
  %1325 = add nsw i32 %1324, -45
  %1326 = icmp ult i8 %1321, 45
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %14, align 1
  %1328 = and i32 %1325, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %21, align 1
  %1333 = xor i32 %1325, %1324
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %26, align 1
  %1337 = icmp eq i32 %1325, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %29, align 1
  %1339 = lshr i32 %1325, 31
  %1340 = trunc i32 %1339 to i8
  store i8 %1340, i8* %32, align 1
  %1341 = lshr i32 %1324, 31
  %1342 = xor i32 %1339, %1341
  %1343 = add nuw nsw i32 %1342, %1341
  %1344 = icmp eq i32 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %38, align 1
  %.v69 = select i1 %1337, i64 51, i64 21
  %1346 = add i64 %1312, %.v69
  store i64 %1346, i64* %3, align 8
  br i1 %1337, label %block_.L_402598, label %block_40257a

block_40257a:                                     ; preds = %block_402565
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %3, align 8
  %1348 = load i64, i64* %1208, align 8
  store i64 %1348, i64* %RAX.i553, align 8
  %1349 = add i64 %1346, 8
  store i64 %1349, i64* %3, align 8
  %1350 = load i32, i32* %1212, align 4
  %1351 = sext i32 %1350 to i64
  store i64 %1351, i64* %RCX.i571, align 8
  %1352 = add i64 %1348, %1351
  %1353 = add i64 %1346, 12
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i8*
  %1355 = load i8, i8* %1354, align 1
  %1356 = sext i8 %1355 to i64
  %1357 = and i64 %1356, 4294967295
  store i64 %1357, i64* %RDX.i574, align 8
  %1358 = sext i8 %1355 to i32
  %1359 = add nsw i32 %1358, -126
  %1360 = icmp ult i8 %1355, 126
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %14, align 1
  %1362 = and i32 %1359, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362)
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %21, align 1
  %1367 = xor i32 %1358, 16
  %1368 = xor i32 %1367, %1359
  %1369 = lshr i32 %1368, 4
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  store i8 %1371, i8* %26, align 1
  %1372 = icmp eq i32 %1359, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %29, align 1
  %1374 = lshr i32 %1359, 31
  %1375 = trunc i32 %1374 to i8
  store i8 %1375, i8* %32, align 1
  %1376 = lshr i32 %1358, 31
  %1377 = xor i32 %1374, %1376
  %1378 = add nuw nsw i32 %1377, %1376
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %38, align 1
  %.v70 = select i1 %1372, i64 30, i64 21
  %1381 = add i64 %1346, %.v70
  store i64 %1381, i64* %3, align 8
  br i1 %1372, label %block_.L_402598, label %block_40258f

block_40258f:                                     ; preds = %block_40257a
  %1382 = add i64 %1205, -76
  %1383 = add i64 %1381, 3
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = add i32 %1385, 1
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i553, align 8
  %1388 = icmp eq i32 %1385, -1
  %1389 = icmp eq i32 %1386, 0
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %14, align 1
  %1392 = and i32 %1386, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %21, align 1
  %1397 = xor i32 %1386, %1385
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %26, align 1
  %1401 = zext i1 %1389 to i8
  store i8 %1401, i8* %29, align 1
  %1402 = lshr i32 %1386, 31
  %1403 = trunc i32 %1402 to i8
  store i8 %1403, i8* %32, align 1
  %1404 = lshr i32 %1385, 31
  %1405 = xor i32 %1402, %1404
  %1406 = add nuw nsw i32 %1405, %1402
  %1407 = icmp eq i32 %1406, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %38, align 1
  %1409 = add i64 %1381, 9
  store i64 %1409, i64* %3, align 8
  store i32 %1386, i32* %1384, align 4
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_402598

block_.L_402598:                                  ; preds = %block_40258f, %block_40257a, %block_402565, %block_402550, %block_40253b, %block_.L_402526
  %1410 = phi i64 [ %.pre43, %block_40258f ], [ %1205, %block_40257a ], [ %1205, %block_402565 ], [ %1205, %block_402550 ], [ %1205, %block_40253b ], [ %1205, %block_.L_402526 ]
  %1411 = phi i64 [ %.pre42, %block_40258f ], [ %1381, %block_40257a ], [ %1346, %block_402565 ], [ %1312, %block_402550 ], [ %1277, %block_40253b ], [ %1243, %block_.L_402526 ]
  %1412 = add i64 %1410, -68
  %1413 = add i64 %1411, 8
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = add i32 %1415, 1
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i553, align 8
  %1418 = icmp eq i32 %1415, -1
  %1419 = icmp eq i32 %1416, 0
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %14, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %21, align 1
  %1427 = xor i32 %1416, %1415
  %1428 = lshr i32 %1427, 4
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %26, align 1
  %1431 = zext i1 %1419 to i8
  store i8 %1431, i8* %29, align 1
  %1432 = lshr i32 %1416, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %32, align 1
  %1434 = lshr i32 %1415, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1432
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %38, align 1
  %1439 = add i64 %1411, 14
  store i64 %1439, i64* %3, align 8
  store i32 %1416, i32* %1414, align 4
  %1440 = load i64, i64* %3, align 8
  %1441 = add i64 %1440, -533
  store i64 %1441, i64* %3, align 8
  br label %block_.L_402391

block_.L_4025ab:                                  ; preds = %block_.L_402391
  %1442 = add i64 %537, -88
  %1443 = add i64 %563, 4
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %RAX.i553, align 8
  store i64 %1445, i64* %RDI.i580, align 8
  %1446 = add i64 %563, -4651
  %1447 = add i64 %563, 12
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %1451 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4022a3)
  %1452 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i553, align 8
  %1453 = load i64, i64* %RBP.i, align 8
  %1454 = add i64 %1453, -92
  %1455 = add i64 %1452, 8
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i571, align 8
  %1459 = add i64 %1453, -56
  %1460 = add i64 %1452, 12
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i64*
  %1462 = load i64, i64* %1461, align 8
  store i64 %1462, i64* %RDI.i580, align 8
  %1463 = add i64 %1452, 14
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  store i32 %1457, i32* %1464, align 4
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -64
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RDI.i580, align 8
  %1471 = add i64 %1465, -48
  %1472 = add i64 %1467, 8
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i64*
  %1474 = load i64, i64* %1473, align 8
  store i64 %1474, i64* %RDX.i574, align 8
  %1475 = add i64 %1467, 11
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  store i64 %1470, i64* %1476, align 8
  %1477 = load i64, i64* %6, align 8
  %1478 = load i64, i64* %3, align 8
  %1479 = add i64 %1477, 128
  store i64 %1479, i64* %6, align 8
  %1480 = icmp ugt i64 %1477, -129
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %14, align 1
  %1482 = trunc i64 %1479 to i32
  %1483 = and i32 %1482, 255
  %1484 = tail call i32 @llvm.ctpop.i32(i32 %1483)
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = xor i8 %1486, 1
  store i8 %1487, i8* %21, align 1
  %1488 = xor i64 %1479, %1477
  %1489 = lshr i64 %1488, 4
  %1490 = trunc i64 %1489 to i8
  %1491 = and i8 %1490, 1
  store i8 %1491, i8* %26, align 1
  %1492 = icmp eq i64 %1479, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %29, align 1
  %1494 = lshr i64 %1479, 63
  %1495 = trunc i64 %1494 to i8
  store i8 %1495, i8* %32, align 1
  %1496 = lshr i64 %1477, 63
  %1497 = xor i64 %1494, %1496
  %1498 = add nuw nsw i64 %1497, %1494
  %1499 = icmp eq i64 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %38, align 1
  %1501 = add i64 %1478, 8
  store i64 %1501, i64* %3, align 8
  %1502 = add i64 %1477, 136
  %1503 = inttoptr i64 %1479 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RBP.i, align 8
  store i64 %1502, i64* %6, align 8
  %1505 = add i64 %1478, 9
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1502 to i64*
  %1507 = load i64, i64* %1506, align 8
  store i64 %1507, i64* %3, align 8
  %1508 = add i64 %1477, 144
  store i64 %1508, i64* %6, align 8
  ret %struct.Memory* %1451
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movq__0x45594d___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xec___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 236, i64* %3, align 8
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
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__r11d__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__0x45594d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xed___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 237, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_je_.L_402375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_je_.L_402362(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_402367(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jmpq_.L_4022ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_je_.L_4025ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4024b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40248a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_402497(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40249d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_je_.L_402526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_402598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40259d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402391(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__ecx____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
