; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400744_type = type <{ [8 x i8] }>
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

@G__0x400744 = external global %G__0x400744_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400540.update(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
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
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -120
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 112
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
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
  %RDI.i134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x400744_type* @G__0x400744 to i64), i64* %RDI.i134, align 8
  %40 = add i64 %7, -12
  %41 = add i64 %10, 24
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 10, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -12
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 10, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -8
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 10, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i124 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %PC.i, align 8
  store i64 24, i64* %RAX.i124, align 8
  %EAX.i121 = bitcast %union.anon* %58 to i32*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i122 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  store i64 24, i64* %RCX.i122, align 8
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -72
  %63 = load i64, i64* %RDI.i134, align 8
  %64 = add i64 %59, 11
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %RCX.i122, align 8
  %67 = load i64, i64* %PC.i, align 8
  store i64 %66, i64* %RDI.i134, align 8
  %68 = add i64 %67, -457
  %69 = add i64 %67, 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %72, align 8
  store i64 %71, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  %73 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -24
  %76 = load i64, i64* %RAX.i124, align 8
  %77 = load i64, i64* %PC.i, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -24
  %82 = load i64, i64* %PC.i, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC.i, align 8
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RAX.i124, align 8
  %86 = add i64 %82, 10
  store i64 %86, i64* %PC.i, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 5, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -24
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RAX.i124, align 8
  %94 = add i64 %93, 4
  %95 = add i64 %90, 11
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 5, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -24
  %99 = load i64, i64* %PC.i, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RAX.i124, align 8
  %103 = add i64 %102, 8
  %104 = add i64 %99, 11
  store i64 %104, i64* %PC.i, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 5, i32* %105, align 4
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -24
  %108 = load i64, i64* %PC.i, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %RSP.i11, align 8
  store i64 %112, i64* %RCX.i122, align 8
  %113 = add i64 %112, 8
  %114 = add i64 %108, 11
  store i64 %114, i64* %PC.i, align 8
  %115 = inttoptr i64 %113 to i64*
  store i64 %111, i64* %115, align 8
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -16
  %118 = load i64, i64* %PC.i, align 8
  store i64 %117, i64* %RAX.i124, align 8
  %119 = bitcast %union.anon* %60 to i64**
  %120 = load i64*, i64** %119, align 8
  %121 = add i64 %118, 7
  store i64 %121, i64* %PC.i, align 8
  store i64 %117, i64* %120, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i77 = getelementptr inbounds %union.anon, %union.anon* %122, i64 0, i32 0
  %123 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDX.i77, align 8
  %RSI.i75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 2, i64* %RSI.i75, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i73 = bitcast %union.anon* %124 to i32*
  %125 = getelementptr inbounds %union.anon, %union.anon* %124, i64 0, i32 0
  store i64 3, i64* %125, align 8
  %EDX.i70 = bitcast %union.anon* %122 to i32*
  store i64 1, i64* %RDI.i134, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -76
  %128 = add i64 %123, 21
  store i64 %128, i64* %PC.i, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 2, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -80
  %132 = load i32, i32* %EDX.i70, align 4
  %133 = load i64, i64* %PC.i, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %R8D.i73, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %PC.i, align 8
  store i64 %137, i64* %RDX.i77, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -80
  %141 = add i64 %138, 6
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RCX.i122, align 8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i57 = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %union.anon, %union.anon* %145, i64 0, i32 0
  %147 = add i64 %139, -76
  %148 = add i64 %138, 10
  store i64 %148, i64* %PC.i, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %146, align 8
  %152 = add i64 %139, -84
  %153 = add i64 %138, 14
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 %136, i32* %154, align 4
  %155 = load i32, i32* %R9D.i57, align 4
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i, align 8
  store i64 %156, i64* %125, align 8
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -84
  %160 = add i64 %157, 7
  store i64 %160, i64* %PC.i, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %146, align 8
  %164 = add i64 %157, -301
  %165 = add i64 %157, 12
  %166 = load i64, i64* %6, align 8
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %168, align 8
  store i64 %167, i64* %6, align 8
  store i64 %164, i64* %3, align 8
  %call2_400674 = call %struct.Memory* @sub_400540.update(%struct.State* %0, i64 %164, %struct.Memory* %73)
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -48
  %171 = load i32, i32* %EDX.i70, align 4
  %172 = load i64, i64* %PC.i, align 8
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC.i, align 8
  %174 = inttoptr i64 %170 to i32*
  store i32 %171, i32* %174, align 4
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -56
  %177 = load i64, i64* %RAX.i124, align 8
  %178 = load i64, i64* %PC.i, align 8
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC.i, align 8
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -56
  %183 = load i64, i64* %PC.i, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC.i, align 8
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i124, align 8
  %187 = add i64 %181, -40
  %188 = add i64 %183, 8
  store i64 %188, i64* %PC.i, align 8
  %189 = inttoptr i64 %187 to i64*
  store i64 %186, i64* %189, align 8
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -48
  %192 = load i64, i64* %PC.i, align 8
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RCX.i122, align 8
  %ECX.i32 = bitcast %union.anon* %60 to i32*
  %197 = add i64 %190, -32
  %198 = add i64 %192, 6
  store i64 %198, i64* %PC.i, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 %195, i32* %199, align 4
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -40
  %202 = load i64, i64* %PC.i, align 8
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC.i, align 8
  %204 = inttoptr i64 %201 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RCX.i122, align 8
  %207 = add i64 %200, -36
  %208 = add i64 %202, 6
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, %205
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RCX.i122, align 8
  %213 = icmp ult i32 %211, %205
  %214 = icmp ult i32 %211, %210
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %14, align 1
  %217 = and i32 %211, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  %222 = xor i32 %210, %205
  %223 = xor i32 %222, %211
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %27, align 1
  %227 = icmp eq i32 %211, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i32 %211, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %33, align 1
  %231 = lshr i32 %205, 31
  %232 = lshr i32 %210, 31
  %233 = xor i32 %229, %231
  %234 = xor i32 %229, %232
  %235 = add nuw nsw i32 %233, %234
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %39, align 1
  %238 = add i64 %200, -32
  %239 = add i64 %202, 9
  store i64 %239, i64* %PC.i, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, %211
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RCX.i122, align 8
  %244 = icmp ult i32 %242, %211
  %245 = icmp ult i32 %242, %241
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %14, align 1
  %248 = and i32 %242, 255
  %249 = call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %21, align 1
  %253 = xor i32 %241, %211
  %254 = xor i32 %253, %242
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %27, align 1
  %258 = icmp eq i32 %242, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %30, align 1
  %260 = lshr i32 %242, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %33, align 1
  %262 = lshr i32 %241, 31
  %263 = xor i32 %260, %229
  %264 = xor i32 %260, %262
  %265 = add nuw nsw i32 %263, %264
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %39, align 1
  %268 = add i64 %200, -60
  %269 = add i64 %202, 12
  store i64 %269, i64* %PC.i, align 8
  %270 = inttoptr i64 %268 to i32*
  store i32 %242, i32* %270, align 4
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -60
  %273 = load i64, i64* %PC.i, align 8
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC.i, align 8
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI.i75, align 8
  %278 = add i64 %271, -72
  %279 = add i64 %273, 7
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RDI.i134, align 8
  %AL.i = bitcast %union.anon* %58 to i8*
  store i8 0, i8* %AL.i, align 1
  %282 = add i64 %273, -618
  %283 = add i64 %273, 14
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  store i64 %285, i64* %6, align 8
  store i64 %282, i64* %3, align 8
  %287 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400674)
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -60
  %290 = load i64, i64* %PC.i, align 8
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC.i, align 8
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RCX.i122, align 8
  %295 = add i64 %288, -88
  %296 = load i32, i32* %EAX.i121, align 4
  %297 = add i64 %290, 6
  store i64 %297, i64* %PC.i, align 8
  %298 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %ECX.i32, align 4
  %300 = zext i32 %299 to i64
  %301 = load i64, i64* %PC.i, align 8
  store i64 %300, i64* %RAX.i124, align 8
  %302 = load i64, i64* %RSP.i11, align 8
  %303 = add i64 %302, 112
  store i64 %303, i64* %RSP.i11, align 8
  %304 = icmp ugt i64 %302, -113
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %14, align 1
  %306 = trunc i64 %303 to i32
  %307 = and i32 %306, 255
  %308 = call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %21, align 1
  %312 = xor i64 %302, 16
  %313 = xor i64 %312, %303
  %314 = lshr i64 %313, 4
  %315 = trunc i64 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %27, align 1
  %317 = icmp eq i64 %303, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %30, align 1
  %319 = lshr i64 %303, 63
  %320 = trunc i64 %319 to i8
  store i8 %320, i8* %33, align 1
  %321 = lshr i64 %302, 63
  %322 = xor i64 %319, %321
  %323 = add nuw nsw i64 %322, %319
  %324 = icmp eq i64 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %39, align 1
  %326 = add i64 %301, 7
  store i64 %326, i64* %PC.i, align 8
  %327 = add i64 %302, 120
  %328 = inttoptr i64 %303 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RBP.i, align 8
  store i64 %327, i64* %6, align 8
  %330 = add i64 %301, 8
  store i64 %330, i64* %PC.i, align 8
  %331 = inttoptr i64 %327 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %3, align 8
  %333 = add i64 %302, 128
  store i64 %333, i64* %6, align 8
  ret %struct.Memory* %287
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
