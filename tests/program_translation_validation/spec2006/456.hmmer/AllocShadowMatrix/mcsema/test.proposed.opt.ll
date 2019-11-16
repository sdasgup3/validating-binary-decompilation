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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @AllocShadowMatrix(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RBX.i464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i464, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -72
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 56
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
  %RAX.i460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX.i460, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i458 = bitcast %union.anon* %45 to i32*
  %46 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 244, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 40, i64* %47, align 8
  store i64 40, i64* %RBX.i464, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i450 = bitcast %union.anon* %48 to i32*
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -12
  %51 = load i32, i32* %EDI.i450, align 4
  %52 = add i64 %15, 32
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %54 to i32*
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -16
  %57 = load i32, i32* %ESI.i, align 4
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %60, align 4
  %RDX.i445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %RDX.i445, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %RCX.i442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %RCX.i442, align 8
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -40
  %75 = load i64, i64* %R8.i, align 8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -48
  %81 = load i64, i64* %R9.i, align 8
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %RDI.i436 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %85 = load i64, i64* %RAX.i460, align 8
  %86 = load i64, i64* %3, align 8
  store i64 %85, i64* %RDI.i436, align 8
  %RSI.i433 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %87 = load i32, i32* %R10D.i458, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RSI.i433, align 8
  %89 = load i64, i64* %RBX.i464, align 8
  store i64 %89, i64* %RDX.i445, align 8
  %90 = add i64 %86, 255576
  %91 = add i64 %86, 14
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 8
  store i64 %93, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  %call2_407a11 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %90, %struct.Memory* %2)
  %95 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 245, i64* %RSI.i433, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -56
  %98 = load i64, i64* %RAX.i460, align 8
  %99 = add i64 %95, 19
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -12
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %102 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 3
  store i64 %108, i64* %RAX.i460, align 8
  %.lobit = lshr i32 %106, 31
  %109 = trunc i32 %.lobit to i8
  store i8 %109, i8* %19, align 1
  %110 = trunc i64 %108 to i32
  %111 = and i32 %110, 248
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %116 = icmp eq i32 %106, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %35, align 1
  %118 = lshr i64 %107, 60
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %108, i64* %RDX.i445, align 8
  %121 = add i64 %103, 255543
  %122 = add i64 %103, 16
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %call2_407a34 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %121, %struct.Memory* %call2_407a11)
  %126 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 246, i64* %RSI.i433, align 8
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -56
  %129 = add i64 %126, 19
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RCX.i442, align 8
  %132 = load i64, i64* %RAX.i460, align 8
  %133 = add i64 %126, 22
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -12
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 4
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = shl nsw i64 %141, 3
  store i64 %142, i64* %RAX.i460, align 8
  %.lobit5 = lshr i32 %140, 31
  %143 = trunc i32 %.lobit5 to i8
  store i8 %143, i8* %19, align 1
  %144 = trunc i64 %142 to i32
  %145 = and i32 %144, 248
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %150 = icmp eq i32 %140, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %35, align 1
  %152 = lshr i64 %141, 60
  %153 = trunc i64 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %142, i64* %RDX.i445, align 8
  %155 = add i64 %137, 255505
  %156 = add i64 %137, 16
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, -8
  %159 = inttoptr i64 %158 to i64*
  store i64 %156, i64* %159, align 8
  store i64 %158, i64* %6, align 8
  store i64 %155, i64* %3, align 8
  %call2_407a5a = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %155, %struct.Memory* %call2_407a34)
  %160 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 247, i64* %RSI.i433, align 8
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -56
  %163 = add i64 %160, 19
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RCX.i442, align 8
  %166 = add i64 %165, 8
  %167 = load i64, i64* %RAX.i460, align 8
  %168 = add i64 %160, 23
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -12
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 4
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = shl nsw i64 %176, 3
  store i64 %177, i64* %RAX.i460, align 8
  %.lobit6 = lshr i32 %175, 31
  %178 = trunc i32 %.lobit6 to i8
  store i8 %178, i8* %19, align 1
  %179 = trunc i64 %177 to i32
  %180 = and i32 %179, 248
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %185 = icmp eq i32 %175, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %35, align 1
  %187 = lshr i64 %176, 60
  %188 = trunc i64 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %177, i64* %RDX.i445, align 8
  %190 = add i64 %172, 255466
  %191 = add i64 %172, 16
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %6, align 8
  store i64 %190, i64* %3, align 8
  %call2_407a81 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %190, %struct.Memory* %call2_407a5a)
  %195 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 248, i64* %RSI.i433, align 8
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -56
  %198 = add i64 %195, 19
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RCX.i442, align 8
  %201 = add i64 %200, 16
  %202 = load i64, i64* %RAX.i460, align 8
  %203 = add i64 %195, 23
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -12
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, 4
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 3
  store i64 %212, i64* %RAX.i460, align 8
  %.lobit7 = lshr i32 %210, 31
  %213 = trunc i32 %.lobit7 to i8
  store i8 %213, i8* %19, align 1
  %214 = trunc i64 %212 to i32
  %215 = and i32 %214, 248
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %220 = icmp eq i32 %210, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %35, align 1
  %222 = lshr i64 %211, 60
  %223 = trunc i64 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %212, i64* %RDX.i445, align 8
  %225 = add i64 %207, 255427
  %226 = add i64 %207, 16
  %227 = load i64, i64* %6, align 8
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %226, i64* %229, align 8
  store i64 %228, i64* %6, align 8
  store i64 %225, i64* %3, align 8
  %call2_407aa8 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %225, %struct.Memory* %call2_407a81)
  %230 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 249, i64* %RSI.i433, align 8
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -56
  %233 = add i64 %230, 19
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RCX.i442, align 8
  %236 = add i64 %235, 24
  %237 = load i64, i64* %RAX.i460, align 8
  %238 = add i64 %230, 23
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %236 to i64*
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -12
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 4
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = shl nsw i64 %246, 2
  store i64 %247, i64* %RAX.i460, align 8
  %.lobit8 = lshr i32 %245, 31
  %248 = trunc i32 %.lobit8 to i8
  store i8 %248, i8* %19, align 1
  %249 = trunc i64 %247 to i32
  %250 = and i32 %249, 252
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %255 = icmp eq i32 %245, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %35, align 1
  %257 = lshr i64 %246, 61
  %258 = trunc i64 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i64 %247, i64* %RDX.i445, align 8
  %260 = add i64 %242, 255388
  %261 = add i64 %242, 16
  %262 = load i64, i64* %6, align 8
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %6, align 8
  store i64 %260, i64* %3, align 8
  %call2_407acf = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %260, %struct.Memory* %call2_407aa8)
  %265 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 250, i64* %RSI.i433, align 8
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -56
  %268 = add i64 %265, 19
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RCX.i442, align 8
  %271 = add i64 %270, 32
  %272 = load i64, i64* %RAX.i460, align 8
  %273 = add i64 %265, 23
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %271 to i64*
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -12
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 5
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = mul nsw i64 %281, 5
  %283 = trunc i64 %282 to i32
  %284 = and i64 %282, 4294967295
  store i64 %284, i64* %46, align 8
  %285 = mul i64 %281, 21474836480
  %286 = ashr exact i64 %285, 32
  %287 = icmp ne i64 %286, %282
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %19, align 1
  %289 = and i32 %283, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %294 = lshr i32 %283, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %38, align 1
  store i8 %288, i8* %44, align 1
  %sext = mul i64 %281, 21474836480
  %296 = ashr exact i64 %sext, 32
  store i64 %296, i64* %RAX.i460, align 8
  store i64 %296, i64* %RDX.i445, align 8
  %297 = add i64 %277, 255349
  %298 = add i64 %277, 20
  %299 = load i64, i64* %6, align 8
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %6, align 8
  store i64 %297, i64* %3, align 8
  %call2_407afa = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %297, %struct.Memory* %call2_407acf)
  %302 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 251, i64* %RSI.i433, align 8
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -56
  %305 = add i64 %302, 19
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RCX.i442, align 8
  %308 = add i64 %302, 22
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RCX.i442, align 8
  %311 = load i64, i64* %RAX.i460, align 8
  %312 = add i64 %302, 25
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %310 to i64*
  store i64 %311, i64* %313, align 8
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -12
  %316 = load i64, i64* %3, align 8
  %317 = add i64 %316, 4
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %46, align 8
  %321 = add i64 %314, -16
  %322 = add i64 %316, 8
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, 2
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %47, align 8
  %327 = sext i32 %319 to i64
  %328 = sext i32 %325 to i64
  %329 = mul nsw i64 %328, %327
  %330 = trunc i64 %329 to i32
  %331 = and i64 %329, 4294967295
  store i64 %331, i64* %46, align 8
  %332 = shl i64 %329, 32
  %333 = ashr exact i64 %332, 32
  %334 = icmp ne i64 %333, %329
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %19, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %341 = lshr i32 %330, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %38, align 1
  store i8 %335, i8* %44, align 1
  %sext19 = shl i64 %329, 32
  %343 = ashr exact i64 %sext19, 32
  store i64 %343, i64* %RAX.i460, align 8
  store i64 %343, i64* %RDX.i445, align 8
  %344 = add i64 %316, 255304
  %345 = add i64 %316, 31
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %345, i64* %348, align 8
  store i64 %347, i64* %6, align 8
  store i64 %344, i64* %3, align 8
  %call2_407b32 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %344, %struct.Memory* %call2_407afa)
  %349 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 252, i64* %RSI.i433, align 8
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -56
  %352 = add i64 %349, 19
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RCX.i442, align 8
  %355 = add i64 %354, 8
  %356 = add i64 %349, 23
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RCX.i442, align 8
  %359 = load i64, i64* %RAX.i460, align 8
  %360 = add i64 %349, 26
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %358 to i64*
  store i64 %359, i64* %361, align 8
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -12
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %46, align 8
  %369 = add i64 %362, -16
  %370 = add i64 %364, 8
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, 2
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %47, align 8
  %375 = sext i32 %367 to i64
  %376 = sext i32 %373 to i64
  %377 = mul nsw i64 %376, %375
  %378 = trunc i64 %377 to i32
  %379 = and i64 %377, 4294967295
  store i64 %379, i64* %46, align 8
  %380 = shl i64 %377, 32
  %381 = ashr exact i64 %380, 32
  %382 = icmp ne i64 %381, %377
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %19, align 1
  %384 = and i32 %378, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %389 = lshr i32 %378, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %38, align 1
  store i8 %383, i8* %44, align 1
  %sext20 = shl i64 %377, 32
  %391 = ashr exact i64 %sext20, 32
  store i64 %391, i64* %RAX.i460, align 8
  store i64 %391, i64* %RDX.i445, align 8
  %392 = add i64 %364, 255247
  %393 = add i64 %364, 31
  %394 = load i64, i64* %6, align 8
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %393, i64* %396, align 8
  store i64 %395, i64* %6, align 8
  store i64 %392, i64* %3, align 8
  %call2_407b6b = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %392, %struct.Memory* %call2_407b32)
  %397 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i436, align 8
  store i64 253, i64* %RSI.i433, align 8
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -56
  %400 = add i64 %397, 19
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RCX.i442, align 8
  %403 = add i64 %402, 16
  %404 = add i64 %397, 23
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RCX.i442, align 8
  %407 = load i64, i64* %RAX.i460, align 8
  %408 = add i64 %397, 26
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %406 to i64*
  store i64 %407, i64* %409, align 8
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -12
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 4
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %46, align 8
  %417 = add i64 %410, -16
  %418 = add i64 %412, 8
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = add i32 %420, 2
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %47, align 8
  %423 = sext i32 %415 to i64
  %424 = sext i32 %421 to i64
  %425 = mul nsw i64 %424, %423
  %426 = trunc i64 %425 to i32
  %427 = and i64 %425, 4294967295
  store i64 %427, i64* %46, align 8
  %428 = shl i64 %425, 32
  %429 = ashr exact i64 %428, 32
  %430 = icmp ne i64 %429, %425
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %19, align 1
  %432 = and i32 %426, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %437 = lshr i32 %426, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %38, align 1
  store i8 %431, i8* %44, align 1
  %sext21 = shl i64 %425, 32
  %439 = ashr exact i64 %sext21, 32
  store i64 %439, i64* %RAX.i460, align 8
  store i64 %439, i64* %RDX.i445, align 8
  %440 = add i64 %412, 255190
  %441 = add i64 %412, 31
  %442 = load i64, i64* %6, align 8
  %443 = add i64 %442, -8
  %444 = inttoptr i64 %443 to i64*
  store i64 %441, i64* %444, align 8
  store i64 %443, i64* %6, align 8
  store i64 %440, i64* %3, align 8
  %call2_407ba4 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %440, %struct.Memory* %call2_407b6b)
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -56
  %447 = load i64, i64* %3, align 8
  %448 = add i64 %447, 4
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RCX.i442, align 8
  %451 = add i64 %450, 24
  %452 = add i64 %447, 8
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RCX.i442, align 8
  %455 = load i64, i64* %RAX.i460, align 8
  %456 = add i64 %447, 11
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %454 to i64*
  store i64 %455, i64* %457, align 8
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -60
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 7
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i32*
  store i32 1, i32* %462, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_407bbb

block_.L_407bbb:                                  ; preds = %block_407bc7, %entry
  %463 = phi i64 [ %809, %block_407bc7 ], [ %.pre, %entry ]
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -60
  %466 = add i64 %463, 3
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i460, align 8
  %470 = add i64 %464, -12
  %471 = add i64 %463, 6
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sub i32 %468, %473
  %475 = icmp ult i32 %468, %473
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %19, align 1
  %477 = and i32 %474, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %26, align 1
  %482 = xor i32 %473, %468
  %483 = xor i32 %482, %474
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %32, align 1
  %487 = icmp eq i32 %474, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %35, align 1
  %489 = lshr i32 %474, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %38, align 1
  %491 = lshr i32 %468, 31
  %492 = lshr i32 %473, 31
  %493 = xor i32 %492, %491
  %494 = xor i32 %489, %491
  %495 = add nuw nsw i32 %494, %493
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %44, align 1
  %498 = icmp ne i8 %490, 0
  %499 = xor i1 %498, %496
  %.v = select i1 %499, i64 12, i64 196
  %500 = add i64 %463, %.v
  store i64 %500, i64* %3, align 8
  br i1 %499, label %block_407bc7, label %block_.L_407c7f

block_407bc7:                                     ; preds = %block_.L_407bbb
  %501 = add i64 %464, -56
  %502 = add i64 %500, 4
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i460, align 8
  %505 = add i64 %500, 7
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RAX.i460, align 8
  %508 = add i64 %500, 10
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RAX.i460, align 8
  %511 = add i64 %500, 14
  store i64 %511, i64* %3, align 8
  %512 = load i32, i32* %467, align 4
  %513 = sext i32 %512 to i64
  %514 = mul nsw i64 %513, 5
  %515 = and i64 %514, 4294967295
  store i64 %515, i64* %RCX.i442, align 8
  %sext22 = mul i64 %513, 21474836480
  %516 = ashr exact i64 %sext22, 32
  store i64 %516, i64* %RDX.i445, align 8
  %517 = add i64 %510, %516
  store i64 %517, i64* %RAX.i460, align 8
  %518 = icmp ult i64 %517, %510
  %519 = icmp ult i64 %517, %516
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %19, align 1
  %522 = trunc i64 %517 to i32
  %523 = and i32 %522, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %26, align 1
  %528 = xor i64 %510, %516
  %529 = xor i64 %528, %517
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %32, align 1
  %533 = icmp eq i64 %517, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %35, align 1
  %535 = lshr i64 %517, 63
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %38, align 1
  %537 = lshr i64 %510, 63
  %538 = lshr i64 %516, 63
  %539 = xor i64 %535, %537
  %540 = xor i64 %535, %538
  %541 = add nuw nsw i64 %539, %540
  %542 = icmp eq i64 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %44, align 1
  %544 = add i64 %500, 24
  store i64 %544, i64* %3, align 8
  %545 = load i64, i64* %503, align 8
  store i64 %545, i64* %RDX.i445, align 8
  %546 = add i64 %500, 27
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RDX.i445, align 8
  %549 = add i64 %500, 31
  store i64 %549, i64* %3, align 8
  %550 = load i32, i32* %467, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RSI.i433, align 8
  %552 = shl nsw i64 %551, 3
  %553 = add i64 %552, %548
  %554 = add i64 %500, 35
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  store i64 %517, i64* %555, align 8
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -56
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 4
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RAX.i460, align 8
  %562 = add i64 %561, 8
  %563 = add i64 %558, 8
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RAX.i460, align 8
  %566 = add i64 %558, 11
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RAX.i460, align 8
  %569 = add i64 %556, -60
  %570 = add i64 %558, 14
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RCX.i442, align 8
  %574 = add i64 %556, -16
  %575 = add i64 %558, 17
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = add i32 %577, 2
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RDI.i436, align 8
  %580 = sext i32 %572 to i64
  %581 = sext i32 %578 to i64
  %582 = mul nsw i64 %581, %580
  %583 = and i64 %582, 4294967295
  store i64 %583, i64* %RCX.i442, align 8
  %sext23 = shl i64 %582, 32
  %584 = ashr exact i64 %sext23, 32
  store i64 %584, i64* %RDX.i445, align 8
  %585 = add i64 %568, %584
  store i64 %585, i64* %RAX.i460, align 8
  %586 = icmp ult i64 %585, %568
  %587 = icmp ult i64 %585, %584
  %588 = or i1 %586, %587
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %19, align 1
  %590 = trunc i64 %585 to i32
  %591 = and i32 %590, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %26, align 1
  %596 = xor i64 %568, %584
  %597 = xor i64 %596, %585
  %598 = lshr i64 %597, 4
  %599 = trunc i64 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %32, align 1
  %601 = icmp eq i64 %585, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %35, align 1
  %603 = lshr i64 %585, 63
  %604 = trunc i64 %603 to i8
  store i8 %604, i8* %38, align 1
  %605 = lshr i64 %568, 63
  %606 = lshr i64 %584, 63
  %607 = xor i64 %603, %605
  %608 = xor i64 %603, %606
  %609 = add nuw nsw i64 %607, %608
  %610 = icmp eq i64 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %44, align 1
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -56
  %614 = add i64 %558, 33
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RDX.i445, align 8
  %617 = add i64 %616, 8
  %618 = add i64 %558, 37
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RDX.i445, align 8
  %621 = add i64 %612, -60
  %622 = add i64 %558, 41
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RSI.i433, align 8
  %626 = shl nsw i64 %625, 3
  %627 = add i64 %626, %620
  %628 = add i64 %558, 45
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  store i64 %585, i64* %629, align 8
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -56
  %632 = load i64, i64* %3, align 8
  %633 = add i64 %632, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %631 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RAX.i460, align 8
  %636 = add i64 %635, 16
  %637 = add i64 %632, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i460, align 8
  %640 = add i64 %632, 11
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RAX.i460, align 8
  %643 = add i64 %630, -60
  %644 = add i64 %632, 14
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RCX.i442, align 8
  %648 = add i64 %630, -16
  %649 = add i64 %632, 17
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = add i32 %651, 2
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RDI.i436, align 8
  %654 = sext i32 %646 to i64
  %655 = sext i32 %652 to i64
  %656 = mul nsw i64 %655, %654
  %657 = and i64 %656, 4294967295
  store i64 %657, i64* %RCX.i442, align 8
  %sext24 = shl i64 %656, 32
  %658 = ashr exact i64 %sext24, 32
  store i64 %658, i64* %RDX.i445, align 8
  %659 = add i64 %642, %658
  store i64 %659, i64* %RAX.i460, align 8
  %660 = icmp ult i64 %659, %642
  %661 = icmp ult i64 %659, %658
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %19, align 1
  %664 = trunc i64 %659 to i32
  %665 = and i32 %664, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %26, align 1
  %670 = xor i64 %642, %658
  %671 = xor i64 %670, %659
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %32, align 1
  %675 = icmp eq i64 %659, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %35, align 1
  %677 = lshr i64 %659, 63
  %678 = trunc i64 %677 to i8
  store i8 %678, i8* %38, align 1
  %679 = lshr i64 %642, 63
  %680 = lshr i64 %658, 63
  %681 = xor i64 %677, %679
  %682 = xor i64 %677, %680
  %683 = add nuw nsw i64 %681, %682
  %684 = icmp eq i64 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %44, align 1
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -56
  %688 = add i64 %632, 33
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RDX.i445, align 8
  %691 = add i64 %690, 16
  %692 = add i64 %632, 37
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RDX.i445, align 8
  %695 = add i64 %686, -60
  %696 = add i64 %632, 41
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sext i32 %698 to i64
  store i64 %699, i64* %RSI.i433, align 8
  %700 = shl nsw i64 %699, 3
  %701 = add i64 %700, %694
  %702 = add i64 %632, 45
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  store i64 %659, i64* %703, align 8
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -56
  %706 = load i64, i64* %3, align 8
  %707 = add i64 %706, 4
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RAX.i460, align 8
  %710 = add i64 %709, 24
  %711 = add i64 %706, 8
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i460, align 8
  %714 = add i64 %706, 11
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RAX.i460, align 8
  %717 = add i64 %704, -60
  %718 = add i64 %706, 14
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RCX.i442, align 8
  %722 = add i64 %704, -16
  %723 = add i64 %706, 17
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = add i32 %725, 2
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDI.i436, align 8
  %728 = sext i32 %720 to i64
  %729 = sext i32 %726 to i64
  %730 = mul nsw i64 %729, %728
  %731 = and i64 %730, 4294967295
  store i64 %731, i64* %RCX.i442, align 8
  %sext25 = shl i64 %730, 32
  %732 = ashr exact i64 %sext25, 32
  store i64 %732, i64* %RDX.i445, align 8
  %733 = add i64 %716, %732
  store i64 %733, i64* %RAX.i460, align 8
  %734 = icmp ult i64 %733, %716
  %735 = icmp ult i64 %733, %732
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %19, align 1
  %738 = trunc i64 %733 to i32
  %739 = and i32 %738, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %26, align 1
  %744 = xor i64 %716, %732
  %745 = xor i64 %744, %733
  %746 = lshr i64 %745, 4
  %747 = trunc i64 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %32, align 1
  %749 = icmp eq i64 %733, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %35, align 1
  %751 = lshr i64 %733, 63
  %752 = trunc i64 %751 to i8
  store i8 %752, i8* %38, align 1
  %753 = lshr i64 %716, 63
  %754 = lshr i64 %732, 63
  %755 = xor i64 %751, %753
  %756 = xor i64 %751, %754
  %757 = add nuw nsw i64 %755, %756
  %758 = icmp eq i64 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %44, align 1
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -56
  %762 = add i64 %706, 33
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RDX.i445, align 8
  %765 = add i64 %764, 24
  %766 = add i64 %706, 37
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RDX.i445, align 8
  %769 = add i64 %760, -60
  %770 = add i64 %706, 41
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sext i32 %772 to i64
  store i64 %773, i64* %RSI.i433, align 8
  %774 = shl nsw i64 %773, 3
  %775 = add i64 %774, %768
  %776 = add i64 %706, 45
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i64*
  store i64 %733, i64* %777, align 8
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -60
  %780 = load i64, i64* %3, align 8
  %781 = add i64 %780, 3
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %779 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = add i32 %783, 1
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RAX.i460, align 8
  %786 = icmp eq i32 %783, -1
  %787 = icmp eq i32 %784, 0
  %788 = or i1 %786, %787
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %19, align 1
  %790 = and i32 %784, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %26, align 1
  %795 = xor i32 %784, %783
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %32, align 1
  %799 = zext i1 %787 to i8
  store i8 %799, i8* %35, align 1
  %800 = lshr i32 %784, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %38, align 1
  %802 = lshr i32 %783, 31
  %803 = xor i32 %800, %802
  %804 = add nuw nsw i32 %803, %800
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %44, align 1
  %807 = add i64 %780, 9
  store i64 %807, i64* %3, align 8
  store i32 %784, i32* %782, align 4
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, -191
  store i64 %809, i64* %3, align 8
  br label %block_.L_407bbb

block_.L_407c7f:                                  ; preds = %block_.L_407bbb
  %810 = add i64 %464, -24
  %811 = add i64 %500, 5
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i8 0, i8* %19, align 1
  %814 = trunc i64 %813 to i32
  %815 = and i32 %814, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %820 = icmp eq i64 %813, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %35, align 1
  %822 = lshr i64 %813, 63
  %823 = trunc i64 %822 to i8
  store i8 %823, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v26 = select i1 %820, i64 25, i64 11
  %824 = add i64 %500, %.v26
  store i64 %824, i64* %3, align 8
  br i1 %820, label %block_.L_407c98, label %block_407c8a

block_407c8a:                                     ; preds = %block_.L_407c7f
  %825 = add i64 %464, -56
  %826 = add i64 %824, 4
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RAX.i460, align 8
  %829 = add i64 %824, 7
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i460, align 8
  %832 = add i64 %824, 11
  store i64 %832, i64* %3, align 8
  %833 = load i64, i64* %812, align 8
  store i64 %833, i64* %RCX.i442, align 8
  %834 = add i64 %824, 14
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i64*
  store i64 %831, i64* %835, align 8
  %.pre11 = load i64, i64* %RBP.i, align 8
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_407c98

block_.L_407c98:                                  ; preds = %block_407c8a, %block_.L_407c7f
  %836 = phi i64 [ %.pre12, %block_407c8a ], [ %824, %block_.L_407c7f ]
  %837 = phi i64 [ %.pre11, %block_407c8a ], [ %464, %block_.L_407c7f ]
  %838 = add i64 %837, -32
  %839 = add i64 %836, 5
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i8 0, i8* %19, align 1
  %842 = trunc i64 %841 to i32
  %843 = and i32 %842, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %848 = icmp eq i64 %841, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %35, align 1
  %850 = lshr i64 %841, 63
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v27 = select i1 %848, i64 26, i64 11
  %852 = add i64 %836, %.v27
  store i64 %852, i64* %3, align 8
  br i1 %848, label %block_.L_407cb2, label %block_407ca3

block_407ca3:                                     ; preds = %block_.L_407c98
  %853 = add i64 %837, -56
  %854 = add i64 %852, 4
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RAX.i460, align 8
  %857 = add i64 %856, 8
  %858 = add i64 %852, 8
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i460, align 8
  %861 = add i64 %852, 12
  store i64 %861, i64* %3, align 8
  %862 = load i64, i64* %840, align 8
  store i64 %862, i64* %RCX.i442, align 8
  %863 = add i64 %852, 15
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  store i64 %860, i64* %864, align 8
  %.pre13 = load i64, i64* %RBP.i, align 8
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_407cb2

block_.L_407cb2:                                  ; preds = %block_407ca3, %block_.L_407c98
  %865 = phi i64 [ %.pre14, %block_407ca3 ], [ %852, %block_.L_407c98 ]
  %866 = phi i64 [ %.pre13, %block_407ca3 ], [ %837, %block_.L_407c98 ]
  %867 = add i64 %866, -40
  %868 = add i64 %865, 5
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i8 0, i8* %19, align 1
  %871 = trunc i64 %870 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %877 = icmp eq i64 %870, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %35, align 1
  %879 = lshr i64 %870, 63
  %880 = trunc i64 %879 to i8
  store i8 %880, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v28 = select i1 %877, i64 26, i64 11
  %881 = add i64 %865, %.v28
  store i64 %881, i64* %3, align 8
  br i1 %877, label %block_.L_407ccc, label %block_407cbd

block_407cbd:                                     ; preds = %block_.L_407cb2
  %882 = add i64 %866, -56
  %883 = add i64 %881, 4
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RAX.i460, align 8
  %886 = add i64 %885, 16
  %887 = add i64 %881, 8
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %RAX.i460, align 8
  %890 = add i64 %881, 12
  store i64 %890, i64* %3, align 8
  %891 = load i64, i64* %869, align 8
  store i64 %891, i64* %RCX.i442, align 8
  %892 = add i64 %881, 15
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  store i64 %889, i64* %893, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_407ccc

block_.L_407ccc:                                  ; preds = %block_407cbd, %block_.L_407cb2
  %894 = phi i64 [ %.pre16, %block_407cbd ], [ %881, %block_.L_407cb2 ]
  %895 = phi i64 [ %.pre15, %block_407cbd ], [ %866, %block_.L_407cb2 ]
  %896 = add i64 %895, -48
  %897 = add i64 %894, 5
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i64*
  %899 = load i64, i64* %898, align 8
  store i8 0, i8* %19, align 1
  %900 = trunc i64 %899 to i32
  %901 = and i32 %900, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %906 = icmp eq i64 %899, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %35, align 1
  %908 = lshr i64 %899, 63
  %909 = trunc i64 %908 to i8
  store i8 %909, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v29 = select i1 %906, i64 26, i64 11
  %910 = add i64 %894, %.v29
  store i64 %910, i64* %3, align 8
  br i1 %906, label %block_.L_407ce6, label %block_407cd7

block_407cd7:                                     ; preds = %block_.L_407ccc
  %911 = add i64 %895, -56
  %912 = add i64 %910, 4
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RAX.i460, align 8
  %915 = add i64 %914, 24
  %916 = add i64 %910, 8
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RAX.i460, align 8
  %919 = add i64 %910, 12
  store i64 %919, i64* %3, align 8
  %920 = load i64, i64* %898, align 8
  store i64 %920, i64* %RCX.i442, align 8
  %921 = add i64 %910, 15
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i64*
  store i64 %918, i64* %922, align 8
  %.pre17 = load i64, i64* %RBP.i, align 8
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_407ce6

block_.L_407ce6:                                  ; preds = %block_407cd7, %block_.L_407ccc
  %923 = phi i64 [ %.pre18, %block_407cd7 ], [ %910, %block_.L_407ccc ]
  %924 = phi i64 [ %.pre17, %block_407cd7 ], [ %895, %block_.L_407ccc ]
  %925 = add i64 %924, -56
  %926 = add i64 %923, 4
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i460, align 8
  %929 = load i64, i64* %6, align 8
  %930 = add i64 %929, 56
  store i64 %930, i64* %6, align 8
  %931 = icmp ugt i64 %929, -57
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %19, align 1
  %933 = trunc i64 %930 to i32
  %934 = and i32 %933, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %26, align 1
  %939 = xor i64 %929, 16
  %940 = xor i64 %939, %930
  %941 = lshr i64 %940, 4
  %942 = trunc i64 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %32, align 1
  %944 = icmp eq i64 %930, 0
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %35, align 1
  %946 = lshr i64 %930, 63
  %947 = trunc i64 %946 to i8
  store i8 %947, i8* %38, align 1
  %948 = lshr i64 %929, 63
  %949 = xor i64 %946, %948
  %950 = add nuw nsw i64 %949, %946
  %951 = icmp eq i64 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %44, align 1
  %953 = add i64 %923, 9
  store i64 %953, i64* %3, align 8
  %954 = add i64 %929, 64
  %955 = inttoptr i64 %930 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RBX.i464, align 8
  store i64 %954, i64* %6, align 8
  %957 = add i64 %923, 10
  store i64 %957, i64* %3, align 8
  %958 = add i64 %929, 72
  %959 = inttoptr i64 %954 to i64*
  %960 = load i64, i64* %959, align 8
  store i64 %960, i64* %RBP.i, align 8
  store i64 %958, i64* %6, align 8
  %961 = add i64 %923, 11
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %958 to i64*
  %963 = load i64, i64* %962, align 8
  store i64 %963, i64* %3, align 8
  %964 = add i64 %929, 80
  store i64 %964, i64* %6, align 8
  ret %struct.Memory* %call2_407ba4
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
define %struct.Memory* @routine_subq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 56
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
define %struct.Memory* @routine_movq__0x455f2a___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 244, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x28___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 40, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rbx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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
define %struct.Memory* @routine_movl__0xf5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 245, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
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
define %struct.Memory* @routine_movl__0xf6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 246, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 247, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 248, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 249, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0xfa___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 250, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x5__MINUS0xc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 5
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %3, align 8
  %14 = mul i64 %10, 21474836480
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r10d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfb___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 251, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_addl__0x2___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R11D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 2
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__r11d___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %6 = load i32, i32* %R10D, align 4
  %7 = load i32, i32* %R11D, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = sext i32 %6 to i64
  %11 = sext i32 %7 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %5, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 252, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0xfd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 253, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_407c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x5__MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 5
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 21474836480
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_addl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RCX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_407bbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_407c98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_407cb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_407ccc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_407ce6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -57
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
