; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dfa_shuffle(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i462 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 4, i64* %RAX.i462, align 8
  %EAX.i484 = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i485 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 4, i64* %RSI.i485, align 8
  %RDI.i507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i507, align 8
  %44 = add i64 %10, 18
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RDI.i507, align 8
  %52 = add i64 %51, 100
  %53 = add i64 %48, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RAX.i462, align 8
  %58 = icmp eq i32 %55, -1
  %59 = icmp eq i32 %56, 0
  %60 = or i1 %58, %59
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %14, align 1
  %62 = and i32 %56, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1
  %67 = xor i32 %56, %55
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  store i8 %70, i8* %27, align 1
  %71 = zext i1 %59 to i8
  store i8 %71, i8* %30, align 1
  %72 = lshr i32 %56, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %33, align 1
  %74 = lshr i32 %55, 31
  %75 = xor i32 %72, %74
  %76 = add nuw nsw i32 %75, %72
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %39, align 1
  %79 = sext i32 %56 to i64
  store i64 %79, i64* %RDI.i507, align 8
  %80 = add i64 %48, -682995
  %81 = add i64 %48, 18
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  %85 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %RCX.i505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %86 = load i64, i64* %3, align 8
  store i64 4, i64* %RCX.i505, align 8
  store i64 4, i64* %RSI.i485, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -24
  %89 = load i64, i64* %RAX.i462, align 8
  %90 = add i64 %86, 11
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -8
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RAX.i462, align 8
  %98 = add i64 %97, 100
  %99 = add i64 %94, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX.i505, align 8
  %104 = icmp eq i32 %101, -1
  %105 = icmp eq i32 %102, 0
  %106 = or i1 %104, %105
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1
  %108 = and i32 %102, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i32 %102, %101
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %27, align 1
  %117 = zext i1 %105 to i8
  store i8 %117, i8* %30, align 1
  %118 = lshr i32 %102, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %33, align 1
  %120 = lshr i32 %101, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %39, align 1
  %125 = sext i32 %102 to i64
  store i64 %125, i64* %RDI.i507, align 8
  %126 = add i64 %94, -683024
  %127 = add i64 %94, 18
  %128 = load i64, i64* %6, align 8
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %6, align 8
  store i64 %126, i64* %3, align 8
  %131 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %85)
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -32
  %134 = load i64, i64* %RAX.i462, align 8
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 4
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %137, align 8
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -8
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %139 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RAX.i462, align 8
  %144 = add i64 %143, 100
  %145 = add i64 %140, 7
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RCX.i505, align 8
  %150 = icmp eq i32 %148, 0
  %151 = zext i1 %150 to i8
  %152 = lshr i32 %148, 31
  %153 = trunc i32 %152 to i8
  %154 = sext i32 %148 to i64
  %155 = shl nsw i64 %154, 2
  store i64 %155, i64* %RAX.i462, align 8
  store i8 %153, i8* %14, align 1
  %156 = trunc i64 %155 to i32
  %157 = and i32 %156, 252
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %151, i8* %30, align 1
  %162 = lshr i64 %154, 61
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %155, i64* %RDI.i507, align 8
  %165 = add i64 %140, -682950
  %166 = add i64 %140, 25
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %166, i64* %169, align 8
  store i64 %168, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  %170 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %131)
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -40
  %173 = load i64, i64* %RAX.i462, align 8
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %172 to i64*
  store i64 %173, i64* %176, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -8
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RAX.i462, align 8
  %183 = add i64 %182, 100
  %184 = add i64 %179, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RCX.i505, align 8
  %189 = icmp eq i32 %187, 0
  %190 = zext i1 %189 to i8
  %191 = lshr i32 %187, 31
  %192 = trunc i32 %191 to i8
  %193 = sext i32 %187 to i64
  %194 = shl nsw i64 %193, 2
  store i64 %194, i64* %RAX.i462, align 8
  store i8 %192, i8* %14, align 1
  %195 = trunc i64 %194 to i32
  %196 = and i32 %195, 252
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %190, i8* %30, align 1
  %201 = lshr i64 %193, 61
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %194, i64* %RDI.i507, align 8
  %204 = add i64 %179, -682979
  %205 = add i64 %179, 25
  %206 = load i64, i64* %6, align 8
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %6, align 8
  store i64 %204, i64* %3, align 8
  %209 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %170)
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -48
  %212 = load i64, i64* %RAX.i462, align 8
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %211 to i64*
  store i64 %212, i64* %215, align 8
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -64
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 1, i32* %220, align 4
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -68
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 7
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to i32*
  store i32 0, i32* %225, align 4
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -40
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, 4
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %227 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX.i462, align 8
  %232 = add i64 %228, 10
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  store i32 1, i32* %233, align 4
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -24
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 4
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %235 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RAX.i462, align 8
  %240 = add i64 %236, 10
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 0, i32* %241, align 4
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -32
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 4
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i462, align 8
  %248 = add i64 %244, 10
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  store i32 0, i32* %249, align 4
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -24
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 4
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RAX.i462, align 8
  %256 = add i64 %255, 4
  %257 = add i64 %252, 11
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  store i32 1, i32* %258, align 4
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -32
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, 4
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %260 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX.i462, align 8
  %265 = add i64 %264, 4
  %266 = add i64 %261, 11
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  store i32 1, i32* %267, align 4
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -60
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 7
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i32*
  store i32 2, i32* %272, align 4
  %RDX.i378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %ESI.i360 = bitcast %union.anon* %41 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a7d59

block_.L_4a7d59:                                  ; preds = %block_.L_4a7e2c, %entry
  %273 = phi i64 [ %682, %block_.L_4a7e2c ], [ %.pre, %entry ]
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -64
  %276 = add i64 %273, 4
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  store i8 0, i8* %14, align 1
  %279 = and i32 %278, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %284 = icmp eq i32 %278, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %30, align 1
  %286 = lshr i32 %278, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v40 = select i1 %284, i64 253, i64 10
  %288 = add i64 %273, %.v40
  store i64 %288, i64* %3, align 8
  br i1 %284, label %block_.L_4a7e56, label %block_4a7d63

block_4a7d63:                                     ; preds = %block_.L_4a7d59
  %289 = add i64 %274, -72
  %290 = add i64 %288, 7
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  store i32 0, i32* %291, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_4a7d6a

block_.L_4a7d6a:                                  ; preds = %block_.L_4a7e19, %block_4a7d63
  %292 = phi i64 [ %640, %block_.L_4a7e19 ], [ %.pre30, %block_4a7d63 ]
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -72
  %295 = add i64 %292, 3
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i462, align 8
  %299 = add i64 %293, -64
  %300 = add i64 %292, 6
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = sub i32 %297, %302
  %304 = icmp ult i32 %297, %302
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %14, align 1
  %306 = and i32 %303, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %21, align 1
  %311 = xor i32 %302, %297
  %312 = xor i32 %311, %303
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  store i8 %315, i8* %27, align 1
  %316 = icmp eq i32 %303, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %30, align 1
  %318 = lshr i32 %303, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %33, align 1
  %320 = lshr i32 %297, 31
  %321 = lshr i32 %302, 31
  %322 = xor i32 %321, %320
  %323 = xor i32 %318, %320
  %324 = add nuw nsw i32 %323, %322
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %39, align 1
  %327 = icmp ne i8 %319, 0
  %328 = xor i1 %327, %325
  %.v41 = select i1 %328, i64 12, i64 194
  %329 = add i64 %292, %.v41
  store i64 %329, i64* %3, align 8
  br i1 %328, label %block_4a7d76, label %block_.L_4a7e2c

block_4a7d76:                                     ; preds = %block_.L_4a7d6a
  %330 = add i64 %293, -76
  %331 = add i64 %329, 7
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  store i32 0, i32* %332, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4a7d7d

block_.L_4a7d7d:                                  ; preds = %block_.L_4a7e06, %block_4a7d76
  %333 = phi i64 [ %610, %block_.L_4a7e06 ], [ %.pre31, %block_4a7d76 ]
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -76
  %336 = add i64 %333, 4
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = add i32 %338, -4
  %340 = icmp ult i32 %338, 4
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %14, align 1
  %342 = and i32 %339, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = xor i32 %339, %338
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %27, align 1
  %351 = icmp eq i32 %339, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %30, align 1
  %353 = lshr i32 %339, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %33, align 1
  %355 = lshr i32 %338, 31
  %356 = xor i32 %353, %355
  %357 = add nuw nsw i32 %356, %355
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %39, align 1
  %360 = icmp ne i8 %354, 0
  %361 = xor i1 %360, %358
  %.v = select i1 %361, i64 10, i64 156
  %362 = add i64 %333, %.v
  store i64 %362, i64* %3, align 8
  br i1 %361, label %block_4a7d87, label %block_.L_4a7e19

block_4a7d87:                                     ; preds = %block_.L_4a7d7d
  %363 = add i64 %334, -8
  %364 = add i64 %362, 4
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i462, align 8
  %367 = add i64 %366, 88
  %368 = add i64 %362, 8
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RAX.i462, align 8
  %371 = add i64 %334, -40
  %372 = add i64 %362, 12
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %RCX.i505, align 8
  %375 = add i64 %334, -72
  %376 = add i64 %362, 16
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  store i64 %379, i64* %RDX.i378, align 8
  %380 = shl nsw i64 %379, 2
  %381 = add i64 %380, %374
  %382 = add i64 %362, 20
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = mul nsw i64 %385, 20
  store i64 %386, i64* %RCX.i505, align 8
  %387 = lshr i64 %386, 63
  %388 = add i64 %386, %370
  store i64 %388, i64* %RAX.i462, align 8
  %389 = icmp ult i64 %388, %370
  %390 = icmp ult i64 %388, %386
  %391 = or i1 %389, %390
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %14, align 1
  %393 = trunc i64 %388 to i32
  %394 = and i32 %393, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  %399 = xor i64 %386, %370
  %400 = xor i64 %399, %388
  %401 = lshr i64 %400, 4
  %402 = trunc i64 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %27, align 1
  %404 = icmp eq i64 %388, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %30, align 1
  %406 = lshr i64 %388, 63
  %407 = trunc i64 %406 to i8
  store i8 %407, i8* %33, align 1
  %408 = lshr i64 %370, 63
  %409 = xor i64 %406, %408
  %410 = xor i64 %406, %387
  %411 = add nuw nsw i64 %409, %410
  %412 = icmp eq i64 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %39, align 1
  %414 = add i64 %362, 31
  store i64 %414, i64* %3, align 8
  %415 = load i32, i32* %337, align 4
  %416 = sext i32 %415 to i64
  store i64 %416, i64* %RCX.i505, align 8
  %417 = shl nsw i64 %416, 2
  %418 = add i64 %388, 4
  %419 = add i64 %418, %417
  %420 = add i64 %362, 35
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RSI.i485, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -80
  %426 = add i64 %362, 38
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 %422, i32* %427, align 4
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -80
  %430 = load i64, i64* %3, align 8
  %431 = add i64 %430, 4
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %429 to i32*
  %433 = load i32, i32* %432, align 4
  store i8 0, i8* %14, align 1
  %434 = and i32 %433, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %439 = icmp eq i32 %433, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = lshr i32 %433, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v42 = select i1 %439, i64 89, i64 10
  %443 = add i64 %430, %.v42
  store i64 %443, i64* %3, align 8
  br i1 %439, label %block_.L_4a7e06, label %block_4a7db7

block_4a7db7:                                     ; preds = %block_4a7d87
  %444 = add i64 %428, -24
  %445 = add i64 %443, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %RAX.i462, align 8
  %448 = add i64 %443, 8
  store i64 %448, i64* %3, align 8
  %449 = load i32, i32* %432, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RCX.i505, align 8
  %451 = shl nsw i64 %450, 2
  %452 = add i64 %451, %447
  %453 = add i64 %443, 12
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  store i8 0, i8* %14, align 1
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %461 = icmp eq i32 %455, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %30, align 1
  %463 = lshr i32 %455, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v43 = select i1 %461, i64 18, i64 79
  %465 = add i64 %443, %.v43
  store i64 %465, i64* %3, align 8
  br i1 %461, label %block_4a7dc9, label %block_.L_4a7e06

block_4a7dc9:                                     ; preds = %block_4a7db7
  %466 = add i64 %428, -60
  %467 = add i64 %465, 3
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX.i462, align 8
  %471 = add i64 %465, 7
  store i64 %471, i64* %3, align 8
  %472 = load i64, i64* %446, align 8
  store i64 %472, i64* %RCX.i505, align 8
  %473 = add i64 %465, 11
  store i64 %473, i64* %3, align 8
  %474 = load i32, i32* %432, align 4
  %475 = sext i32 %474 to i64
  store i64 %475, i64* %RDX.i378, align 8
  %476 = shl nsw i64 %475, 2
  %477 = add i64 %476, %472
  %478 = add i64 %465, 14
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  store i32 %469, i32* %479, align 4
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -80
  %482 = load i64, i64* %3, align 8
  %483 = add i64 %482, 3
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %481 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RAX.i462, align 8
  %487 = add i64 %480, -32
  %488 = add i64 %482, 7
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RCX.i505, align 8
  %491 = add i64 %480, -60
  %492 = add i64 %482, 11
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %RDX.i378, align 8
  %496 = shl nsw i64 %495, 2
  %497 = add i64 %496, %490
  %498 = add i64 %482, 14
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  store i32 %485, i32* %499, align 4
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -60
  %502 = load i64, i64* %3, align 8
  %503 = add i64 %502, 3
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %501 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = add i32 %505, 1
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i462, align 8
  %508 = icmp eq i32 %505, -1
  %509 = icmp eq i32 %506, 0
  %510 = or i1 %508, %509
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %506, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %506, %505
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %27, align 1
  %521 = zext i1 %509 to i8
  store i8 %521, i8* %30, align 1
  %522 = lshr i32 %506, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %33, align 1
  %524 = lshr i32 %505, 31
  %525 = xor i32 %522, %524
  %526 = add nuw nsw i32 %525, %522
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = add i64 %502, 9
  store i64 %529, i64* %3, align 8
  store i32 %506, i32* %504, align 4
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -80
  %532 = load i64, i64* %3, align 8
  %533 = add i64 %532, 3
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RAX.i462, align 8
  %537 = add i64 %530, -48
  %538 = add i64 %532, 7
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RCX.i505, align 8
  %541 = add i64 %530, -68
  %542 = add i64 %532, 10
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RSI.i485, align 8
  %546 = add i32 %544, 1
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RDI.i507, align 8
  %548 = icmp eq i32 %544, -1
  %549 = icmp eq i32 %546, 0
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %14, align 1
  %552 = and i32 %546, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %21, align 1
  %557 = xor i32 %546, %544
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %27, align 1
  %561 = zext i1 %549 to i8
  store i8 %561, i8* %30, align 1
  %562 = lshr i32 %546, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %33, align 1
  %564 = lshr i32 %544, 31
  %565 = xor i32 %562, %564
  %566 = add nuw nsw i32 %565, %562
  %567 = icmp eq i32 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %39, align 1
  %569 = add i64 %532, 18
  store i64 %569, i64* %3, align 8
  store i32 %546, i32* %543, align 4
  %570 = load i32, i32* %ESI.i360, align 4
  %571 = load i64, i64* %3, align 8
  %572 = sext i32 %570 to i64
  store i64 %572, i64* %RDX.i378, align 8
  %573 = load i64, i64* %RCX.i505, align 8
  %574 = shl nsw i64 %572, 2
  %575 = add i64 %573, %574
  %576 = load i32, i32* %EAX.i484, align 4
  %577 = add i64 %571, 6
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i32*
  store i32 %576, i32* %578, align 4
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a7e06

block_.L_4a7e06:                                  ; preds = %block_4a7db7, %block_4a7dc9, %block_4a7d87
  %579 = phi i64 [ %.pre33, %block_4a7dc9 ], [ %428, %block_4a7db7 ], [ %428, %block_4a7d87 ]
  %580 = phi i64 [ %.pre32, %block_4a7dc9 ], [ %465, %block_4a7db7 ], [ %443, %block_4a7d87 ]
  %581 = add i64 %579, -76
  %582 = add i64 %580, 8
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, 1
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i462, align 8
  %587 = icmp eq i32 %584, -1
  %588 = icmp eq i32 %585, 0
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %14, align 1
  %591 = and i32 %585, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  %596 = xor i32 %585, %584
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %27, align 1
  %600 = zext i1 %588 to i8
  store i8 %600, i8* %30, align 1
  %601 = lshr i32 %585, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %33, align 1
  %603 = lshr i32 %584, 31
  %604 = xor i32 %601, %603
  %605 = add nuw nsw i32 %604, %601
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %39, align 1
  %608 = add i64 %580, 14
  store i64 %608, i64* %3, align 8
  store i32 %585, i32* %583, align 4
  %609 = load i64, i64* %3, align 8
  %610 = add i64 %609, -151
  store i64 %610, i64* %3, align 8
  br label %block_.L_4a7d7d

block_.L_4a7e19:                                  ; preds = %block_.L_4a7d7d
  %611 = add i64 %334, -72
  %612 = add i64 %362, 8
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, 1
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i462, align 8
  %617 = icmp eq i32 %614, -1
  %618 = icmp eq i32 %615, 0
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = and i32 %615, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  %626 = xor i32 %615, %614
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %27, align 1
  %630 = zext i1 %618 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %615, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %33, align 1
  %633 = lshr i32 %614, 31
  %634 = xor i32 %631, %633
  %635 = add nuw nsw i32 %634, %631
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %39, align 1
  %638 = add i64 %362, 14
  store i64 %638, i64* %3, align 8
  store i32 %615, i32* %613, align 4
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, -189
  store i64 %640, i64* %3, align 8
  br label %block_.L_4a7d6a

block_.L_4a7e2c:                                  ; preds = %block_.L_4a7d6a
  %641 = add i64 %293, -40
  %642 = add i64 %329, 4
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RAX.i462, align 8
  %645 = add i64 %293, -56
  %646 = add i64 %329, 8
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  store i64 %644, i64* %647, align 8
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -48
  %650 = load i64, i64* %3, align 8
  %651 = add i64 %650, 4
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RAX.i462, align 8
  %654 = add i64 %648, -40
  %655 = add i64 %650, 8
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  store i64 %653, i64* %656, align 8
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -56
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 4
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RAX.i462, align 8
  %663 = add i64 %657, -48
  %664 = add i64 %659, 8
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  store i64 %662, i64* %665, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -68
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 3
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RCX.i505, align 8
  %673 = add i64 %666, -64
  %674 = add i64 %668, 6
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  store i32 %671, i32* %675, align 4
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -68
  %678 = load i64, i64* %3, align 8
  %679 = add i64 %678, 7
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %677 to i32*
  store i32 0, i32* %680, align 4
  %681 = load i64, i64* %3, align 8
  %682 = add i64 %681, -248
  store i64 %682, i64* %3, align 8
  br label %block_.L_4a7d59

block_.L_4a7e56:                                  ; preds = %block_.L_4a7d59
  %683 = add i64 %274, -8
  %684 = add i64 %288, 4
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RAX.i462, align 8
  %687 = add i64 %686, 100
  %688 = add i64 %288, 7
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = add i32 %690, 1
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RCX.i505, align 8
  %693 = sext i32 %691 to i64
  store i64 %693, i64* %RAX.i462, align 8
  %694 = sext i32 %691 to i128
  %695 = and i128 %694, -18446744073709551616
  %696 = zext i64 %693 to i128
  %697 = or i128 %695, %696
  %698 = mul nsw i128 %697, 20
  %699 = trunc i128 %698 to i64
  store i64 %699, i64* %RDI.i507, align 8
  %700 = sext i64 %699 to i128
  %701 = icmp ne i128 %700, %698
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %14, align 1
  %703 = trunc i128 %698 to i32
  %704 = and i32 %703, 252
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %709 = lshr i64 %699, 63
  %710 = trunc i64 %709 to i8
  store i8 %710, i8* %33, align 1
  store i8 %702, i8* %39, align 1
  %711 = add i64 %288, -683334
  %712 = add i64 %288, 22
  %713 = load i64, i64* %6, align 8
  %714 = add i64 %713, -8
  %715 = inttoptr i64 %714 to i64*
  store i64 %712, i64* %715, align 8
  store i64 %714, i64* %6, align 8
  store i64 %711, i64* %3, align 8
  %716 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %209)
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -16
  %719 = load i64, i64* %RAX.i462, align 8
  %720 = load i64, i64* %3, align 8
  %721 = add i64 %720, 4
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %718 to i64*
  store i64 %719, i64* %722, align 8
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -72
  %725 = load i64, i64* %3, align 8
  %726 = add i64 %725, 7
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %724 to i32*
  store i32 1, i32* %727, align 4
  %RDX.i187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_4a7e77

block_.L_4a7e77:                                  ; preds = %block_.L_4a7efe, %block_.L_4a7e56
  %728 = phi i64 [ %1047, %block_.L_4a7efe ], [ %.pre34, %block_.L_4a7e56 ]
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -72
  %731 = add i64 %728, 3
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RAX.i462, align 8
  %735 = add i64 %729, -8
  %736 = add i64 %728, 7
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %RCX.i505, align 8
  %739 = add i64 %738, 100
  %740 = add i64 %728, 10
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = sub i32 %733, %742
  %744 = icmp ult i32 %733, %742
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %14, align 1
  %746 = and i32 %743, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %21, align 1
  %751 = xor i32 %742, %733
  %752 = xor i32 %751, %743
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  store i8 %755, i8* %27, align 1
  %756 = icmp eq i32 %743, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %30, align 1
  %758 = lshr i32 %743, 31
  %759 = trunc i32 %758 to i8
  store i8 %759, i8* %33, align 1
  %760 = lshr i32 %733, 31
  %761 = lshr i32 %742, 31
  %762 = xor i32 %761, %760
  %763 = xor i32 %758, %760
  %764 = add nuw nsw i32 %763, %762
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %39, align 1
  %767 = icmp ne i8 %759, 0
  %768 = xor i1 %767, %765
  %.demorgan = or i1 %756, %768
  %.v44 = select i1 %.demorgan, i64 16, i64 154
  %769 = add i64 %728, %.v44
  store i64 %769, i64* %3, align 8
  br i1 %.demorgan, label %block_4a7e87, label %block_.L_4a7f11

block_4a7e87:                                     ; preds = %block_.L_4a7e77
  %770 = add i64 %729, -76
  %771 = add i64 %769, 7
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  store i32 0, i32* %772, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_4a7e8e

block_.L_4a7e8e:                                  ; preds = %block_4a7e98, %block_4a7e87
  %773 = phi i64 [ %1017, %block_4a7e98 ], [ %.pre35, %block_4a7e87 ]
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -76
  %776 = add i64 %773, 4
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = add i32 %778, -4
  %780 = icmp ult i32 %778, 4
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %779, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %779, %778
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %27, align 1
  %791 = icmp eq i32 %779, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %30, align 1
  %793 = lshr i32 %779, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %33, align 1
  %795 = lshr i32 %778, 31
  %796 = xor i32 %793, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %39, align 1
  %800 = icmp ne i8 %794, 0
  %801 = xor i1 %800, %798
  %.v38 = select i1 %801, i64 10, i64 112
  %802 = add i64 %773, %.v38
  store i64 %802, i64* %3, align 8
  br i1 %801, label %block_4a7e98, label %block_.L_4a7efe

block_4a7e98:                                     ; preds = %block_.L_4a7e8e
  %803 = add i64 %774, -8
  %804 = add i64 %802, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i462, align 8
  %807 = add i64 %806, 88
  %808 = add i64 %802, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RAX.i462, align 8
  %811 = add i64 %774, -72
  %812 = add i64 %802, 12
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sext i32 %814 to i64
  %816 = mul nsw i64 %815, 20
  store i64 %816, i64* %RCX.i505, align 8
  %817 = lshr i64 %816, 63
  %818 = add i64 %816, %810
  store i64 %818, i64* %RAX.i462, align 8
  %819 = icmp ult i64 %818, %810
  %820 = icmp ult i64 %818, %816
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = trunc i64 %818 to i32
  %824 = and i32 %823, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %21, align 1
  %829 = xor i64 %816, %810
  %830 = xor i64 %829, %818
  %831 = lshr i64 %830, 4
  %832 = trunc i64 %831 to i8
  %833 = and i8 %832, 1
  store i8 %833, i8* %27, align 1
  %834 = icmp eq i64 %818, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %30, align 1
  %836 = lshr i64 %818, 63
  %837 = trunc i64 %836 to i8
  store i8 %837, i8* %33, align 1
  %838 = lshr i64 %810, 63
  %839 = xor i64 %836, %838
  %840 = xor i64 %836, %817
  %841 = add nuw nsw i64 %839, %840
  %842 = icmp eq i64 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %39, align 1
  %844 = add i64 %802, 23
  store i64 %844, i64* %3, align 8
  %845 = load i32, i32* %777, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i505, align 8
  %847 = shl nsw i64 %846, 2
  %848 = add i64 %818, 4
  %849 = add i64 %848, %847
  %850 = add i64 %802, 27
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RDX.i187, align 8
  %854 = add i64 %774, -16
  %855 = add i64 %802, 31
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i462, align 8
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -72
  %860 = add i64 %802, 35
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  %864 = mul nsw i64 %863, 20
  store i64 %864, i64* %RCX.i505, align 8
  %865 = lshr i64 %864, 63
  %866 = add i64 %864, %857
  store i64 %866, i64* %RAX.i462, align 8
  %867 = icmp ult i64 %866, %857
  %868 = icmp ult i64 %866, %864
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = trunc i64 %866 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i64 %864, %857
  %878 = xor i64 %877, %866
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %27, align 1
  %882 = icmp eq i64 %866, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %30, align 1
  %884 = lshr i64 %866, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %33, align 1
  %886 = lshr i64 %857, 63
  %887 = xor i64 %884, %886
  %888 = xor i64 %884, %865
  %889 = add nuw nsw i64 %887, %888
  %890 = icmp eq i64 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %39, align 1
  %892 = add i64 %858, -76
  %893 = add i64 %802, 46
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  store i64 %896, i64* %RCX.i505, align 8
  %897 = shl nsw i64 %896, 2
  %898 = add i64 %866, 4
  %899 = add i64 %898, %897
  %900 = add i64 %802, 50
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  store i32 %852, i32* %901, align 4
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -8
  %904 = load i64, i64* %3, align 8
  %905 = add i64 %904, 4
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %903 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RAX.i462, align 8
  %908 = add i64 %907, 88
  %909 = add i64 %904, 8
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i462, align 8
  %912 = add i64 %902, -72
  %913 = add i64 %904, 12
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %915 to i64
  %917 = mul nsw i64 %916, 20
  store i64 %917, i64* %RCX.i505, align 8
  %918 = lshr i64 %917, 63
  %919 = add i64 %917, %911
  store i64 %919, i64* %RAX.i462, align 8
  %920 = icmp ult i64 %919, %911
  %921 = icmp ult i64 %919, %917
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %14, align 1
  %924 = trunc i64 %919 to i32
  %925 = and i32 %924, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %21, align 1
  %930 = xor i64 %917, %911
  %931 = xor i64 %930, %919
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %27, align 1
  %935 = icmp eq i64 %919, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %30, align 1
  %937 = lshr i64 %919, 63
  %938 = trunc i64 %937 to i8
  store i8 %938, i8* %33, align 1
  %939 = lshr i64 %911, 63
  %940 = xor i64 %937, %939
  %941 = xor i64 %937, %918
  %942 = add nuw nsw i64 %940, %941
  %943 = icmp eq i64 %942, 2
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %39, align 1
  %945 = inttoptr i64 %919 to i32*
  %946 = add i64 %904, 21
  store i64 %946, i64* %3, align 8
  %947 = load i32, i32* %945, align 4
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RDX.i187, align 8
  %949 = add i64 %902, -16
  %950 = add i64 %904, 25
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RAX.i462, align 8
  %953 = add i64 %904, 29
  store i64 %953, i64* %3, align 8
  %954 = load i32, i32* %914, align 4
  %955 = sext i32 %954 to i64
  %956 = mul nsw i64 %955, 20
  store i64 %956, i64* %RCX.i505, align 8
  %957 = lshr i64 %956, 63
  %958 = add i64 %956, %952
  store i64 %958, i64* %RAX.i462, align 8
  %959 = icmp ult i64 %958, %952
  %960 = icmp ult i64 %958, %956
  %961 = or i1 %959, %960
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %14, align 1
  %963 = trunc i64 %958 to i32
  %964 = and i32 %963, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %21, align 1
  %969 = xor i64 %956, %952
  %970 = xor i64 %969, %958
  %971 = lshr i64 %970, 4
  %972 = trunc i64 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %27, align 1
  %974 = icmp eq i64 %958, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %30, align 1
  %976 = lshr i64 %958, 63
  %977 = trunc i64 %976 to i8
  store i8 %977, i8* %33, align 1
  %978 = lshr i64 %952, 63
  %979 = xor i64 %976, %978
  %980 = xor i64 %976, %957
  %981 = add nuw nsw i64 %979, %980
  %982 = icmp eq i64 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %39, align 1
  %984 = inttoptr i64 %958 to i32*
  %985 = add i64 %904, 38
  store i64 %985, i64* %3, align 8
  store i32 %947, i32* %984, align 4
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -76
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, 3
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %987 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = add i32 %991, 1
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX.i462, align 8
  %994 = icmp eq i32 %991, -1
  %995 = icmp eq i32 %992, 0
  %996 = or i1 %994, %995
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %14, align 1
  %998 = and i32 %992, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998)
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %21, align 1
  %1003 = xor i32 %992, %991
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %27, align 1
  %1007 = zext i1 %995 to i8
  store i8 %1007, i8* %30, align 1
  %1008 = lshr i32 %992, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %33, align 1
  %1010 = lshr i32 %991, 31
  %1011 = xor i32 %1008, %1010
  %1012 = add nuw nsw i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %39, align 1
  %1015 = add i64 %988, 9
  store i64 %1015, i64* %3, align 8
  store i32 %992, i32* %990, align 4
  %1016 = load i64, i64* %3, align 8
  %1017 = add i64 %1016, -107
  store i64 %1017, i64* %3, align 8
  br label %block_.L_4a7e8e

block_.L_4a7efe:                                  ; preds = %block_.L_4a7e8e
  %1018 = add i64 %774, -72
  %1019 = add i64 %802, 8
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = add i32 %1021, 1
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RAX.i462, align 8
  %1024 = icmp eq i32 %1021, -1
  %1025 = icmp eq i32 %1022, 0
  %1026 = or i1 %1024, %1025
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = and i32 %1022, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  %1033 = xor i32 %1022, %1021
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  store i8 %1036, i8* %27, align 1
  %1037 = zext i1 %1025 to i8
  store i8 %1037, i8* %30, align 1
  %1038 = lshr i32 %1022, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %33, align 1
  %1040 = lshr i32 %1021, 31
  %1041 = xor i32 %1038, %1040
  %1042 = add nuw nsw i32 %1041, %1038
  %1043 = icmp eq i32 %1042, 2
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %39, align 1
  %1045 = add i64 %802, 14
  store i64 %1045, i64* %3, align 8
  store i32 %1022, i32* %1020, align 4
  %1046 = load i64, i64* %3, align 8
  %1047 = add i64 %1046, -149
  store i64 %1047, i64* %3, align 8
  br label %block_.L_4a7e77

block_.L_4a7f11:                                  ; preds = %block_.L_4a7e77
  %1048 = add i64 %769, 7
  store i64 %1048, i64* %3, align 8
  store i32 1, i32* %732, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4a7f18

block_.L_4a7f18:                                  ; preds = %block_.L_4a7f89, %block_.L_4a7f11
  %1049 = phi i64 [ %1402, %block_.L_4a7f89 ], [ %.pre36, %block_.L_4a7f11 ]
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -72
  %1052 = add i64 %1049, 3
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i462, align 8
  %1056 = add i64 %1050, -8
  %1057 = add i64 %1049, 7
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RCX.i505, align 8
  %1060 = add i64 %1059, 100
  %1061 = add i64 %1049, 10
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sub i32 %1054, %1063
  %1065 = icmp ult i32 %1054, %1063
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %14, align 1
  %1067 = and i32 %1064, 255
  %1068 = tail call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  store i8 %1071, i8* %21, align 1
  %1072 = xor i32 %1063, %1054
  %1073 = xor i32 %1072, %1064
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %27, align 1
  %1077 = icmp eq i32 %1064, 0
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %30, align 1
  %1079 = lshr i32 %1064, 31
  %1080 = trunc i32 %1079 to i8
  store i8 %1080, i8* %33, align 1
  %1081 = lshr i32 %1054, 31
  %1082 = lshr i32 %1063, 31
  %1083 = xor i32 %1082, %1081
  %1084 = xor i32 %1079, %1081
  %1085 = add nuw nsw i32 %1084, %1083
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %39, align 1
  %1088 = icmp ne i8 %1080, 0
  %1089 = xor i1 %1088, %1086
  %.demorgan39 = or i1 %1077, %1089
  %.v45 = select i1 %.demorgan39, i64 16, i64 173
  %1090 = add i64 %1049, %.v45
  store i64 %1090, i64* %3, align 8
  br i1 %.demorgan39, label %block_4a7f28, label %block_.L_4a7fc5

block_4a7f28:                                     ; preds = %block_.L_4a7f18
  %1091 = add i64 %1050, -76
  %1092 = add i64 %1090, 7
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  store i32 0, i32* %1093, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4a7f2f

block_.L_4a7f2f:                                  ; preds = %block_4a7f39, %block_4a7f28
  %1094 = phi i64 [ %1275, %block_4a7f39 ], [ %.pre37, %block_4a7f28 ]
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -76
  %1097 = add i64 %1094, 4
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = add i32 %1099, -4
  %1101 = icmp ult i32 %1099, 4
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1100, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1100, %1099
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %27, align 1
  %1112 = icmp eq i32 %1100, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %30, align 1
  %1114 = lshr i32 %1100, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %33, align 1
  %1116 = lshr i32 %1099, 31
  %1117 = xor i32 %1114, %1116
  %1118 = add nuw nsw i32 %1117, %1116
  %1119 = icmp eq i32 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %39, align 1
  %1121 = icmp ne i8 %1115, 0
  %1122 = xor i1 %1121, %1119
  %.v46 = select i1 %1122, i64 10, i64 90
  %1123 = add i64 %1094, %.v46
  store i64 %1123, i64* %3, align 8
  br i1 %1122, label %block_4a7f39, label %block_.L_4a7f89

block_4a7f39:                                     ; preds = %block_.L_4a7f2f
  %1124 = add i64 %1095, -24
  %1125 = add i64 %1123, 4
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i64*
  %1127 = load i64, i64* %1126, align 8
  store i64 %1127, i64* %RAX.i462, align 8
  %1128 = add i64 %1095, -16
  %1129 = add i64 %1123, 8
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  %1131 = load i64, i64* %1130, align 8
  store i64 %1131, i64* %RCX.i505, align 8
  %1132 = add i64 %1095, -32
  %1133 = add i64 %1123, 12
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i64 %1135, i64* %RDX.i378, align 8
  %1136 = add i64 %1095, -72
  %1137 = add i64 %1123, 16
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = sext i32 %1139 to i64
  store i64 %1140, i64* %RSI.i485, align 8
  %1141 = shl nsw i64 %1140, 2
  %1142 = add i64 %1141, %1135
  %1143 = add i64 %1123, 20
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sext i32 %1145 to i64
  %1147 = mul nsw i64 %1146, 20
  store i64 %1147, i64* %RDX.i378, align 8
  %1148 = lshr i64 %1147, 63
  %1149 = add i64 %1147, %1131
  store i64 %1149, i64* %RCX.i505, align 8
  %1150 = icmp ult i64 %1149, %1131
  %1151 = icmp ult i64 %1149, %1147
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = trunc i64 %1149 to i32
  %1155 = and i32 %1154, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  %1160 = xor i64 %1147, %1131
  %1161 = xor i64 %1160, %1149
  %1162 = lshr i64 %1161, 4
  %1163 = trunc i64 %1162 to i8
  %1164 = and i8 %1163, 1
  store i8 %1164, i8* %27, align 1
  %1165 = icmp eq i64 %1149, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %30, align 1
  %1167 = lshr i64 %1149, 63
  %1168 = trunc i64 %1167 to i8
  store i8 %1168, i8* %33, align 1
  %1169 = lshr i64 %1131, 63
  %1170 = xor i64 %1167, %1169
  %1171 = xor i64 %1167, %1148
  %1172 = add nuw nsw i64 %1170, %1171
  %1173 = icmp eq i64 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %39, align 1
  %1175 = add i64 %1123, 31
  store i64 %1175, i64* %3, align 8
  %1176 = load i32, i32* %1098, align 4
  %1177 = sext i32 %1176 to i64
  store i64 %1177, i64* %RDX.i378, align 8
  %1178 = shl nsw i64 %1177, 2
  %1179 = add i64 %1149, 4
  %1180 = add i64 %1179, %1178
  %1181 = add i64 %1123, 36
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = sext i32 %1183 to i64
  store i64 %1184, i64* %RCX.i505, align 8
  %1185 = load i64, i64* %RAX.i462, align 8
  %1186 = shl nsw i64 %1184, 2
  %1187 = add i64 %1186, %1185
  %1188 = add i64 %1123, 39
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RDI.i507, align 8
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -8
  %1194 = add i64 %1123, 43
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i64*
  %1196 = load i64, i64* %1195, align 8
  store i64 %1196, i64* %RAX.i462, align 8
  %1197 = add i64 %1196, 88
  %1198 = add i64 %1123, 47
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i64*
  %1200 = load i64, i64* %1199, align 8
  store i64 %1200, i64* %RAX.i462, align 8
  %1201 = add i64 %1192, -72
  %1202 = add i64 %1123, 51
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = mul nsw i64 %1205, 20
  store i64 %1206, i64* %RCX.i505, align 8
  %1207 = lshr i64 %1206, 63
  %1208 = add i64 %1206, %1200
  store i64 %1208, i64* %RAX.i462, align 8
  %1209 = icmp ult i64 %1208, %1200
  %1210 = icmp ult i64 %1208, %1206
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %14, align 1
  %1213 = trunc i64 %1208 to i32
  %1214 = and i32 %1213, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %21, align 1
  %1219 = xor i64 %1206, %1200
  %1220 = xor i64 %1219, %1208
  %1221 = lshr i64 %1220, 4
  %1222 = trunc i64 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %27, align 1
  %1224 = icmp eq i64 %1208, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %30, align 1
  %1226 = lshr i64 %1208, 63
  %1227 = trunc i64 %1226 to i8
  store i8 %1227, i8* %33, align 1
  %1228 = lshr i64 %1200, 63
  %1229 = xor i64 %1226, %1228
  %1230 = xor i64 %1226, %1207
  %1231 = add nuw nsw i64 %1229, %1230
  %1232 = icmp eq i64 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %39, align 1
  %1234 = add i64 %1192, -76
  %1235 = add i64 %1123, 62
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = sext i32 %1237 to i64
  store i64 %1238, i64* %RCX.i505, align 8
  %1239 = shl nsw i64 %1238, 2
  %1240 = add i64 %1208, 4
  %1241 = add i64 %1240, %1239
  %1242 = add i64 %1123, 66
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  store i32 %1190, i32* %1243, align 4
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -76
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1245 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = add i32 %1249, 1
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i462, align 8
  %1252 = icmp eq i32 %1249, -1
  %1253 = icmp eq i32 %1250, 0
  %1254 = or i1 %1252, %1253
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %14, align 1
  %1256 = and i32 %1250, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %21, align 1
  %1261 = xor i32 %1250, %1249
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %27, align 1
  %1265 = zext i1 %1253 to i8
  store i8 %1265, i8* %30, align 1
  %1266 = lshr i32 %1250, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %33, align 1
  %1268 = lshr i32 %1249, 31
  %1269 = xor i32 %1266, %1268
  %1270 = add nuw nsw i32 %1269, %1266
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %39, align 1
  %1273 = add i64 %1246, 9
  store i64 %1273, i64* %3, align 8
  store i32 %1250, i32* %1248, align 4
  %1274 = load i64, i64* %3, align 8
  %1275 = add i64 %1274, -85
  store i64 %1275, i64* %3, align 8
  br label %block_.L_4a7f2f

block_.L_4a7f89:                                  ; preds = %block_.L_4a7f2f
  %1276 = add i64 %1095, -16
  %1277 = add i64 %1123, 4
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %RAX.i462, align 8
  %1280 = add i64 %1095, -32
  %1281 = add i64 %1123, 8
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RCX.i505, align 8
  %1284 = add i64 %1095, -72
  %1285 = add i64 %1123, 12
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = sext i32 %1287 to i64
  store i64 %1288, i64* %RDX.i378, align 8
  %1289 = shl nsw i64 %1288, 2
  %1290 = add i64 %1289, %1283
  %1291 = add i64 %1123, 16
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  %1293 = load i32, i32* %1292, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = mul nsw i64 %1294, 20
  store i64 %1295, i64* %RCX.i505, align 8
  %1296 = lshr i64 %1295, 63
  %1297 = add i64 %1295, %1279
  store i64 %1297, i64* %RAX.i462, align 8
  %1298 = icmp ult i64 %1297, %1279
  %1299 = icmp ult i64 %1297, %1295
  %1300 = or i1 %1298, %1299
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %14, align 1
  %1302 = trunc i64 %1297 to i32
  %1303 = and i32 %1302, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %21, align 1
  %1308 = xor i64 %1295, %1279
  %1309 = xor i64 %1308, %1297
  %1310 = lshr i64 %1309, 4
  %1311 = trunc i64 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %27, align 1
  %1313 = icmp eq i64 %1297, 0
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %30, align 1
  %1315 = lshr i64 %1297, 63
  %1316 = trunc i64 %1315 to i8
  store i8 %1316, i8* %33, align 1
  %1317 = lshr i64 %1279, 63
  %1318 = xor i64 %1315, %1317
  %1319 = xor i64 %1315, %1296
  %1320 = add nuw nsw i64 %1318, %1319
  %1321 = icmp eq i64 %1320, 2
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %39, align 1
  %1323 = inttoptr i64 %1297 to i32*
  %1324 = add i64 %1123, 25
  store i64 %1324, i64* %3, align 8
  %1325 = load i32, i32* %1323, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RSI.i485, align 8
  %1327 = add i64 %1095, -8
  %1328 = add i64 %1123, 29
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RAX.i462, align 8
  %1331 = add i64 %1330, 88
  %1332 = add i64 %1123, 33
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RAX.i462, align 8
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -72
  %1337 = add i64 %1123, 37
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = mul nsw i64 %1340, 20
  store i64 %1341, i64* %RCX.i505, align 8
  %1342 = lshr i64 %1341, 63
  %1343 = add i64 %1341, %1334
  store i64 %1343, i64* %RAX.i462, align 8
  %1344 = icmp ult i64 %1343, %1334
  %1345 = icmp ult i64 %1343, %1341
  %1346 = or i1 %1344, %1345
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %14, align 1
  %1348 = trunc i64 %1343 to i32
  %1349 = and i32 %1348, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i64 %1341, %1334
  %1355 = xor i64 %1354, %1343
  %1356 = lshr i64 %1355, 4
  %1357 = trunc i64 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %27, align 1
  %1359 = icmp eq i64 %1343, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %30, align 1
  %1361 = lshr i64 %1343, 63
  %1362 = trunc i64 %1361 to i8
  store i8 %1362, i8* %33, align 1
  %1363 = lshr i64 %1334, 63
  %1364 = xor i64 %1361, %1363
  %1365 = xor i64 %1361, %1342
  %1366 = add nuw nsw i64 %1364, %1365
  %1367 = icmp eq i64 %1366, 2
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %39, align 1
  %1369 = inttoptr i64 %1343 to i32*
  %1370 = add i64 %1123, 46
  store i64 %1370, i64* %3, align 8
  store i32 %1325, i32* %1369, align 4
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -72
  %1373 = load i64, i64* %3, align 8
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = add i32 %1376, 1
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i462, align 8
  %1379 = icmp eq i32 %1376, -1
  %1380 = icmp eq i32 %1377, 0
  %1381 = or i1 %1379, %1380
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %14, align 1
  %1383 = and i32 %1377, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %21, align 1
  %1388 = xor i32 %1377, %1376
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = zext i1 %1380 to i8
  store i8 %1392, i8* %30, align 1
  %1393 = lshr i32 %1377, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %33, align 1
  %1395 = lshr i32 %1376, 31
  %1396 = xor i32 %1393, %1395
  %1397 = add nuw nsw i32 %1396, %1393
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %39, align 1
  %1400 = add i64 %1373, 9
  store i64 %1400, i64* %3, align 8
  store i32 %1377, i32* %1375, align 4
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, -168
  store i64 %1402, i64* %3, align 8
  br label %block_.L_4a7f18

block_.L_4a7fc5:                                  ; preds = %block_.L_4a7f18
  %1403 = load i64, i64* %6, align 8
  %1404 = add i64 %1403, 80
  store i64 %1404, i64* %6, align 8
  %1405 = icmp ugt i64 %1403, -81
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %14, align 1
  %1407 = trunc i64 %1404 to i32
  %1408 = and i32 %1407, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %21, align 1
  %1413 = xor i64 %1403, 16
  %1414 = xor i64 %1413, %1404
  %1415 = lshr i64 %1414, 4
  %1416 = trunc i64 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %27, align 1
  %1418 = icmp eq i64 %1404, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %30, align 1
  %1420 = lshr i64 %1404, 63
  %1421 = trunc i64 %1420 to i8
  store i8 %1421, i8* %33, align 1
  %1422 = lshr i64 %1403, 63
  %1423 = xor i64 %1420, %1422
  %1424 = add nuw nsw i64 %1423, %1420
  %1425 = icmp eq i64 %1424, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %39, align 1
  %1427 = add i64 %1090, 5
  store i64 %1427, i64* %3, align 8
  %1428 = add i64 %1403, 88
  %1429 = inttoptr i64 %1404 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RBP.i, align 8
  store i64 %1428, i64* %6, align 8
  %1431 = add i64 %1090, 6
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1428 to i64*
  %1433 = load i64, i64* %1432, align 8
  store i64 %1433, i64* %3, align 8
  %1434 = add i64 %1403, 96
  store i64 %1434, i64* %6, align 8
  ret %struct.Memory* %716
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x64__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x64__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
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
define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_je_.L_4a7e56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_jge_.L_4a7e2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4a7e19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_0x4__rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_4a7e06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jne_.L_4a7e06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7e0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a7d7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7e1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4a7d6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7d59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 100
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
define %struct.Memory* @routine_jg_.L_4a7f11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4a7efe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x4__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 4
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7f03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7e77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4a7fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4a7f89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x14___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movslq_0x4__rcx__rdx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edi__0x4__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 4
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a7f2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4a7f18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
