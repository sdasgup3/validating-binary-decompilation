; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x89b__rip__type = type <{ [16 x i8] }>
%G_0x8d0__rip__type = type <{ [16 x i8] }>
%G_0x930__rip__type = type <{ [16 x i8] }>
%G_0x96e__rip__type = type <{ [16 x i8] }>
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
@G_0x89b__rip_ = global %G_0x89b__rip__type zeroinitializer
@G_0x8d0__rip_ = global %G_0x8d0__rip__type zeroinitializer
@G_0x930__rip_ = global %G_0x930__rip__type zeroinitializer
@G_0x96e__rip_ = global %G_0x96e__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i205 = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX.i205, align 4
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i202 = bitcast %union.anon* %29 to i32*
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i32, i32* %ECX.i202, align 4
  %33 = load i64, i64* %PC.i, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -52
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 7
  store i64 %39, i64* %PC.i, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -4
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -1
  %48 = icmp eq i32 %46, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %49, i8* %50, align 1
  %51 = and i32 %47, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51)
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1
  %57 = xor i32 %46, %47
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %60, i8* %61, align 1
  %62 = icmp eq i32 %47, 0
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %63, i8* %64, align 1
  %65 = lshr i32 %47, 31
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %66, i8* %67, align 1
  %68 = lshr i32 %46, 31
  %69 = xor i32 %65, %68
  %70 = add nuw nsw i32 %69, %68
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %72, i8* %73, align 1
  %74 = icmp ne i8 %66, 0
  %75 = xor i1 %74, %71
  %.v = select i1 %75, i64 10, i64 22
  %76 = add i64 %43, %.v
  store i64 %76, i64* %3, align 8
  br i1 %75, label %block_400852, label %block_.L_40085e

block_400852:                                     ; preds = %entry
  %77 = add i64 %41, -52
  %78 = add i64 %76, 7
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %77 to i32*
  store i32 -1, i32* %79, align 4
  %80 = load i64, i64* %PC.i, align 8
  %81 = add i64 %80, 343
  br label %block_.L_4009b0

block_.L_40085e:                                  ; preds = %entry
  %82 = add i64 %76, 4
  store i64 %82, i64* %PC.i, align 8
  %83 = load i32, i32* %45, align 4
  %84 = add i32 %83, -1
  %85 = icmp eq i32 %83, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %50, align 1
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %56, align 1
  %92 = xor i32 %83, %84
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %61, align 1
  %96 = icmp eq i32 %84, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %64, align 1
  %98 = lshr i32 %84, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %67, align 1
  %100 = lshr i32 %83, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %73, align 1
  %.v11 = select i1 %96, i64 10, i64 22
  %105 = add i64 %76, %.v11
  store i64 %105, i64* %3, align 8
  br i1 %96, label %block_400868, label %block_.L_400874

block_400868:                                     ; preds = %block_.L_40085e
  %106 = add i64 %41, -52
  %107 = add i64 %105, 7
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 0, i32* %108, align 4
  %109 = load i64, i64* %PC.i, align 8
  %110 = add i64 %109, 316
  br label %block_.L_4009ab

block_.L_400874:                                  ; preds = %block_.L_40085e
  %111 = add i64 %41, -24
  %112 = add i64 %105, 4
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, -1
  %116 = icmp eq i32 %114, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %50, align 1
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %56, align 1
  %123 = xor i32 %114, %115
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %61, align 1
  %127 = icmp eq i32 %115, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %64, align 1
  %129 = lshr i32 %115, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %67, align 1
  %131 = lshr i32 %114, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %73, align 1
  %.v12 = select i1 %127, i64 161, i64 10
  %136 = add i64 %105, %.v12
  store i64 %136, i64* %3, align 8
  br i1 %127, label %block_.L_400915, label %block_40087e

block_40087e:                                     ; preds = %block_.L_400874
  %RAX.i182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %137 = add i64 %41, -16
  %138 = add i64 %136, 4
  store i64 %138, i64* %PC.i, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX.i182, align 8
  %RCX.i179 = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  %141 = add i64 %41, -20
  %142 = add i64 %136, 8
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RCX.i179, align 8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %147 = bitcast [32 x %union.VectorReg]* %146 to i8*
  %148 = shl nsw i64 %145, 3
  %149 = add i64 %148, %140
  %150 = add i64 %136, 13
  store i64 %150, i64* %PC.i, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = bitcast [32 x %union.VectorReg]* %146 to double*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %155 = bitcast i64* %154 to double*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %157 = bitcast %union.VectorReg* %156 to i8*
  %158 = load i32, i32* bitcast (%G_0x96e__rip__type* @G_0x96e__rip_ to i32*), align 8
  %159 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 4) to i32*), align 4
  %160 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 8) to i32*), align 8
  %161 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 12) to i32*), align 4
  %162 = bitcast %union.VectorReg* %156 to i32*
  store i32 %158, i32* %162, align 1
  %163 = getelementptr inbounds i8, i8* %157, i64 4
  %164 = bitcast i8* %163 to i32*
  store i32 %159, i32* %164, align 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %166 = bitcast i64* %165 to i32*
  store i32 %160, i32* %166, align 1
  %167 = getelementptr inbounds i8, i8* %157, i64 12
  %168 = bitcast i8* %167 to i32*
  store i32 %161, i32* %168, align 1
  %169 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %156, i64 0, i32 0, i32 0, i32 0, i64 0
  %170 = load i64, i64* %169, align 1
  %171 = and i64 %170, %152
  %172 = trunc i64 %171 to i32
  %173 = lshr i64 %171, 32
  %174 = trunc i64 %173 to i32
  %175 = bitcast [32 x %union.VectorReg]* %146 to i32*
  store i32 %172, i32* %175, align 1
  %176 = getelementptr inbounds i8, i8* %147, i64 4
  %177 = bitcast i8* %176 to i32*
  store i32 %174, i32* %177, align 1
  %178 = bitcast i64* %154 to i32*
  store i32 0, i32* %178, align 1
  %179 = getelementptr inbounds i8, i8* %147, i64 12
  %180 = bitcast i8* %179 to i32*
  store i32 0, i32* %180, align 1
  %181 = add i64 %41, -32
  %182 = add i64 %136, 29
  store i64 %182, i64* %PC.i, align 8
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %146, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %184 = load i64, i64* %183, align 1
  %185 = inttoptr i64 %181 to i64*
  store i64 %184, i64* %185, align 8
  %RDX.i164 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -24
  %188 = load i64, i64* %PC.i, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC.i, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, 1
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RDX.i164, align 8
  %194 = icmp eq i32 %191, -1
  %195 = icmp eq i32 %192, 0
  %196 = or i1 %194, %195
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %50, align 1
  %198 = and i32 %192, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %56, align 1
  %203 = xor i32 %191, %192
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %61, align 1
  %207 = icmp eq i32 %192, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %64, align 1
  %209 = lshr i32 %192, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %67, align 1
  %211 = lshr i32 %191, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %209
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %73, align 1
  %216 = add i64 %186, -48
  %217 = add i64 %188, 9
  store i64 %217, i64* %PC.i, align 8
  %218 = inttoptr i64 %216 to i32*
  store i32 %192, i32* %218, align 4
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -44
  %221 = load i64, i64* %PC.i, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %PC.i, align 8
  %223 = inttoptr i64 %220 to i32*
  store i32 1, i32* %223, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4008ab

block_.L_4008ab:                                  ; preds = %block_.L_4008f9, %block_40087e
  %224 = phi i64 [ %.pre, %block_40087e ], [ %455, %block_.L_4008f9 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_40087e ], [ %359, %block_.L_4008f9 ]
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -44
  %227 = add i64 %224, 3
  store i64 %227, i64* %PC.i, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX.i182, align 8
  %231 = add i64 %225, -4
  %232 = add i64 %224, 6
  store i64 %232, i64* %PC.i, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %229, %234
  %236 = icmp ult i32 %229, %234
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %50, align 1
  %238 = and i32 %235, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %56, align 1
  %243 = xor i32 %234, %229
  %244 = xor i32 %243, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %61, align 1
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %64, align 1
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %67, align 1
  %252 = lshr i32 %229, 31
  %253 = lshr i32 %234, 31
  %254 = xor i32 %253, %252
  %255 = xor i32 %250, %252
  %256 = add nuw nsw i32 %255, %254
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %73, align 1
  %259 = icmp ne i8 %251, 0
  %260 = xor i1 %259, %257
  %.v13 = select i1 %260, i64 12, i64 101
  %261 = add i64 %224, %.v13
  store i64 %261, i64* %3, align 8
  br i1 %260, label %block_4008b7, label %block_.L_400910

block_4008b7:                                     ; preds = %block_.L_4008ab
  %262 = add i64 %225, -16
  %263 = add i64 %261, 4
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX.i182, align 8
  %266 = add i64 %225, -48
  %267 = add i64 %261, 7
  store i64 %267, i64* %PC.i, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX.i179, align 8
  %271 = add i64 %225, -20
  %272 = add i64 %261, 10
  store i64 %272, i64* %PC.i, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, %269
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RCX.i179, align 8
  %277 = icmp ult i32 %275, %269
  %278 = icmp ult i32 %275, %274
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %50, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %56, align 1
  %286 = xor i32 %274, %269
  %287 = xor i32 %286, %275
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %61, align 1
  %291 = icmp eq i32 %275, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %64, align 1
  %293 = lshr i32 %275, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %67, align 1
  %295 = lshr i32 %269, 31
  %296 = lshr i32 %274, 31
  %297 = xor i32 %293, %295
  %298 = xor i32 %293, %296
  %299 = add nuw nsw i32 %297, %298
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %73, align 1
  %302 = sext i32 %275 to i64
  store i64 %302, i64* %RDX.i164, align 8
  %303 = shl nsw i64 %302, 3
  %304 = add i64 %303, %265
  %305 = add i64 %261, 18
  store i64 %305, i64* %PC.i, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* bitcast (%G_0x930__rip__type* @G_0x930__rip_ to i32*), align 8
  %309 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 4) to i32*), align 4
  %310 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 8) to i32*), align 8
  %311 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 12) to i32*), align 4
  %312 = bitcast %union.VectorReg* %156 to i32*
  store i32 %308, i32* %312, align 1
  %313 = bitcast i8* %163 to i32*
  store i32 %309, i32* %313, align 1
  %314 = bitcast i64* %165 to i32*
  store i32 %310, i32* %314, align 1
  %315 = bitcast i8* %167 to i32*
  store i32 %311, i32* %315, align 1
  %316 = load i64, i64* %169, align 1
  %317 = and i64 %316, %307
  %318 = trunc i64 %317 to i32
  %319 = lshr i64 %317, 32
  %320 = trunc i64 %319 to i32
  store i32 %318, i32* %175, align 1
  store i32 %320, i32* %177, align 1
  store i32 0, i32* %178, align 1
  store i32 0, i32* %180, align 1
  %321 = add i64 %225, -40
  %322 = add i64 %261, 34
  store i64 %322, i64* %PC.i, align 8
  %323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %146, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %324 = load i64, i64* %323, align 1
  %325 = inttoptr i64 %321 to i64*
  store i64 %324, i64* %325, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -40
  %328 = load i64, i64* %PC.i, align 8
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %327 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %153, align 1
  store double 0.000000e+00, double* %155, align 1
  %332 = add i64 %326, -32
  %333 = add i64 %328, 10
  store i64 %333, i64* %PC.i, align 8
  %334 = inttoptr i64 %332 to double*
  %335 = load double, double* %334, align 8
  %336 = fcmp uno double %331, %335
  br i1 %336, label %337, label %347

; <label>:337:                                    ; preds = %block_4008b7
  %338 = fadd double %331, %335
  %339 = bitcast double %338 to i64
  %340 = and i64 %339, 9221120237041090560
  %341 = icmp eq i64 %340, 9218868437227405312
  %342 = and i64 %339, 2251799813685247
  %343 = icmp ne i64 %342, 0
  %344 = and i1 %341, %343
  br i1 %344, label %345, label %353

; <label>:345:                                    ; preds = %337
  %346 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %333, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd_MINUS0x20__rbp____xmm0.exit120

; <label>:347:                                    ; preds = %block_4008b7
  %348 = fcmp ogt double %331, %335
  br i1 %348, label %353, label %349

; <label>:349:                                    ; preds = %347
  %350 = fcmp olt double %331, %335
  br i1 %350, label %353, label %351

; <label>:351:                                    ; preds = %349
  %352 = fcmp oeq double %331, %335
  br i1 %352, label %353, label %357

; <label>:353:                                    ; preds = %351, %349, %347, %337
  %354 = phi i8 [ 0, %347 ], [ 0, %349 ], [ 1, %351 ], [ 1, %337 ]
  %355 = phi i8 [ 0, %347 ], [ 0, %349 ], [ 0, %351 ], [ 1, %337 ]
  %356 = phi i8 [ 0, %347 ], [ 1, %349 ], [ 0, %351 ], [ 1, %337 ]
  store i8 %354, i8* %64, align 1
  store i8 %355, i8* %56, align 1
  store i8 %356, i8* %50, align 1
  br label %357

; <label>:357:                                    ; preds = %353, %351
  store i8 0, i8* %73, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %61, align 1
  br label %routine_ucomisd_MINUS0x20__rbp____xmm0.exit120

routine_ucomisd_MINUS0x20__rbp____xmm0.exit120:   ; preds = %357, %345
  %358 = phi i64 [ %.pre1, %345 ], [ %333, %357 ]
  %359 = phi %struct.Memory* [ %346, %345 ], [ %MEMORY.0, %357 ]
  %360 = load i8, i8* %50, align 1
  %361 = load i8, i8* %64, align 1
  %362 = or i8 %361, %360
  %363 = icmp ne i8 %362, 0
  %.v14 = select i1 %363, i64 22, i64 6
  %364 = add i64 %358, %.v14
  store i64 %364, i64* %3, align 8
  br i1 %363, label %block_.L_4008f9, label %block_4008e9

block_4008e9:                                     ; preds = %routine_ucomisd_MINUS0x20__rbp____xmm0.exit120
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -44
  %367 = add i64 %364, 3
  store i64 %367, i64* %PC.i, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i182, align 8
  %371 = add i64 %365, -52
  %372 = add i64 %364, 6
  store i64 %372, i64* %PC.i, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 %369, i32* %373, align 4
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -40
  %376 = load i64, i64* %PC.i, align 8
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC.i, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %146, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %379, i64* %380, align 1
  store double 0.000000e+00, double* %155, align 1
  %381 = add i64 %374, -32
  %382 = add i64 %376, 10
  store i64 %382, i64* %PC.i, align 8
  %383 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %383, align 8
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_4008f9

block_.L_4008f9:                                  ; preds = %block_4008e9, %routine_ucomisd_MINUS0x20__rbp____xmm0.exit120
  %384 = phi i64 [ %.pre2, %block_4008e9 ], [ %364, %routine_ucomisd_MINUS0x20__rbp____xmm0.exit120 ]
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -24
  %387 = add i64 %384, 3
  store i64 %387, i64* %PC.i, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i182, align 8
  %391 = add i64 %385, -48
  %392 = add i64 %384, 6
  store i64 %392, i64* %PC.i, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i32 %394, %389
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i182, align 8
  %397 = icmp ult i32 %395, %389
  %398 = icmp ult i32 %395, %394
  %399 = or i1 %397, %398
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %50, align 1
  %401 = and i32 %395, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %56, align 1
  %406 = xor i32 %394, %389
  %407 = xor i32 %406, %395
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %61, align 1
  %411 = icmp eq i32 %395, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %64, align 1
  %413 = lshr i32 %395, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %67, align 1
  %415 = lshr i32 %389, 31
  %416 = lshr i32 %394, 31
  %417 = xor i32 %413, %415
  %418 = xor i32 %413, %416
  %419 = add nuw nsw i32 %417, %418
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %73, align 1
  %422 = add i64 %384, 9
  store i64 %422, i64* %PC.i, align 8
  store i32 %395, i32* %393, align 4
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -44
  %425 = load i64, i64* %PC.i, align 8
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC.i, align 8
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %428, 1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX.i182, align 8
  %431 = icmp eq i32 %428, -1
  %432 = icmp eq i32 %429, 0
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %50, align 1
  %435 = and i32 %429, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %56, align 1
  %440 = xor i32 %428, %429
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %61, align 1
  %444 = icmp eq i32 %429, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %64, align 1
  %446 = lshr i32 %429, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %67, align 1
  %448 = lshr i32 %428, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %446
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %73, align 1
  %453 = add i64 %425, 9
  store i64 %453, i64* %PC.i, align 8
  store i32 %429, i32* %427, align 4
  %454 = load i64, i64* %PC.i, align 8
  %455 = add i64 %454, -96
  store i64 %455, i64* %3, align 8
  br label %block_.L_4008ab

block_.L_400910:                                  ; preds = %block_.L_4008ab
  %456 = add i64 %261, 150
  br label %block_.L_4009a6

block_.L_400915:                                  ; preds = %block_.L_400874
  %457 = add i64 %41, -52
  %458 = add i64 %136, 7
  store i64 %458, i64* %PC.i, align 8
  %459 = inttoptr i64 %457 to i32*
  store i32 0, i32* %459, align 4
  %RAX.i81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -16
  %462 = load i64, i64* %PC.i, align 8
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC.i, align 8
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RAX.i81, align 8
  %RCX.i78 = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  %466 = add i64 %460, -20
  %467 = add i64 %462, 8
  store i64 %467, i64* %PC.i, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RCX.i78, align 8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %472 = bitcast [32 x %union.VectorReg]* %471 to i8*
  %473 = shl nsw i64 %470, 3
  %474 = add i64 %473, %465
  %475 = add i64 %462, 13
  store i64 %475, i64* %PC.i, align 8
  %476 = inttoptr i64 %474 to i64*
  %477 = load i64, i64* %476, align 8
  %478 = bitcast [32 x %union.VectorReg]* %471 to double*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %480 = bitcast i64* %479 to double*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %482 = bitcast %union.VectorReg* %481 to i8*
  %483 = load i32, i32* bitcast (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i32*), align 8
  %484 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 4) to i32*), align 4
  %485 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 8) to i32*), align 8
  %486 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 12) to i32*), align 4
  %487 = bitcast %union.VectorReg* %481 to i32*
  store i32 %483, i32* %487, align 1
  %488 = getelementptr inbounds i8, i8* %482, i64 4
  %489 = bitcast i8* %488 to i32*
  store i32 %484, i32* %489, align 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %491 = bitcast i64* %490 to i32*
  store i32 %485, i32* %491, align 1
  %492 = getelementptr inbounds i8, i8* %482, i64 12
  %493 = bitcast i8* %492 to i32*
  store i32 %486, i32* %493, align 1
  %494 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %481, i64 0, i32 0, i32 0, i32 0, i64 0
  %495 = load i64, i64* %494, align 1
  %496 = and i64 %495, %477
  %497 = trunc i64 %496 to i32
  %498 = lshr i64 %496, 32
  %499 = trunc i64 %498 to i32
  %500 = bitcast [32 x %union.VectorReg]* %471 to i32*
  store i32 %497, i32* %500, align 1
  %501 = getelementptr inbounds i8, i8* %472, i64 4
  %502 = bitcast i8* %501 to i32*
  store i32 %499, i32* %502, align 1
  %503 = bitcast i64* %479 to i32*
  store i32 0, i32* %503, align 1
  %504 = getelementptr inbounds i8, i8* %472, i64 12
  %505 = bitcast i8* %504 to i32*
  store i32 0, i32* %505, align 1
  %506 = add i64 %460, -32
  %507 = add i64 %462, 29
  store i64 %507, i64* %PC.i, align 8
  %508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %509 = load i64, i64* %508, align 1
  %510 = inttoptr i64 %506 to i64*
  store i64 %509, i64* %510, align 8
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -44
  %513 = load i64, i64* %PC.i, align 8
  %514 = add i64 %513, 7
  store i64 %514, i64* %PC.i, align 8
  %515 = inttoptr i64 %512 to i32*
  store i32 1, i32* %515, align 4
  %RDX.i47 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400940

block_.L_400940:                                  ; preds = %block_.L_40098e, %block_.L_400915
  %516 = phi i64 [ %.pre3, %block_.L_400915 ], [ %706, %block_.L_40098e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_400915 ], [ %649, %block_.L_40098e ]
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -44
  %519 = add i64 %516, 3
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX.i81, align 8
  %523 = add i64 %517, -4
  %524 = add i64 %516, 6
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = sub i32 %521, %526
  %528 = icmp ult i32 %521, %526
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %50, align 1
  %530 = and i32 %527, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %56, align 1
  %535 = xor i32 %526, %521
  %536 = xor i32 %535, %527
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %61, align 1
  %540 = icmp eq i32 %527, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %64, align 1
  %542 = lshr i32 %527, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %67, align 1
  %544 = lshr i32 %521, 31
  %545 = lshr i32 %526, 31
  %546 = xor i32 %545, %544
  %547 = xor i32 %542, %544
  %548 = add nuw nsw i32 %547, %546
  %549 = icmp eq i32 %548, 2
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %73, align 1
  %551 = icmp ne i8 %543, 0
  %552 = xor i1 %551, %549
  %.v15 = select i1 %552, i64 12, i64 97
  %553 = add i64 %516, %.v15
  store i64 %553, i64* %3, align 8
  br i1 %552, label %block_40094c, label %block_.L_4009a1

block_40094c:                                     ; preds = %block_.L_400940
  %554 = add i64 %517, -16
  %555 = add i64 %553, 4
  store i64 %555, i64* %PC.i, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RAX.i81, align 8
  %558 = add i64 %553, 7
  store i64 %558, i64* %PC.i, align 8
  %559 = load i32, i32* %520, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RCX.i78, align 8
  %561 = add i64 %517, -20
  %562 = add i64 %553, 10
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = add i32 %564, %559
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RCX.i78, align 8
  %567 = icmp ult i32 %565, %559
  %568 = icmp ult i32 %565, %564
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %50, align 1
  %571 = and i32 %565, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %56, align 1
  %576 = xor i32 %564, %559
  %577 = xor i32 %576, %565
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %61, align 1
  %581 = icmp eq i32 %565, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %64, align 1
  %583 = lshr i32 %565, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %67, align 1
  %585 = lshr i32 %559, 31
  %586 = lshr i32 %564, 31
  %587 = xor i32 %583, %585
  %588 = xor i32 %583, %586
  %589 = add nuw nsw i32 %587, %588
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %73, align 1
  %592 = sext i32 %565 to i64
  store i64 %592, i64* %RDX.i47, align 8
  %593 = shl nsw i64 %592, 3
  %594 = add i64 %593, %557
  %595 = add i64 %553, 18
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  %598 = load i32, i32* bitcast (%G_0x89b__rip__type* @G_0x89b__rip_ to i32*), align 8
  %599 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 4) to i32*), align 4
  %600 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 8) to i32*), align 8
  %601 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 12) to i32*), align 4
  %602 = bitcast %union.VectorReg* %481 to i32*
  store i32 %598, i32* %602, align 1
  %603 = bitcast i8* %488 to i32*
  store i32 %599, i32* %603, align 1
  %604 = bitcast i64* %490 to i32*
  store i32 %600, i32* %604, align 1
  %605 = bitcast i8* %492 to i32*
  store i32 %601, i32* %605, align 1
  %606 = load i64, i64* %494, align 1
  %607 = and i64 %606, %597
  %608 = trunc i64 %607 to i32
  %609 = lshr i64 %607, 32
  %610 = trunc i64 %609 to i32
  store i32 %608, i32* %500, align 1
  store i32 %610, i32* %502, align 1
  store i32 0, i32* %503, align 1
  store i32 0, i32* %505, align 1
  %611 = add i64 %517, -40
  %612 = add i64 %553, 34
  store i64 %612, i64* %PC.i, align 8
  %613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %614 = load i64, i64* %613, align 1
  %615 = inttoptr i64 %611 to i64*
  store i64 %614, i64* %615, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -40
  %618 = load i64, i64* %PC.i, align 8
  %619 = add i64 %618, 5
  store i64 %619, i64* %PC.i, align 8
  %620 = inttoptr i64 %617 to double*
  %621 = load double, double* %620, align 8
  store double %621, double* %478, align 1
  store double 0.000000e+00, double* %480, align 1
  %622 = add i64 %616, -32
  %623 = add i64 %618, 10
  store i64 %623, i64* %PC.i, align 8
  %624 = inttoptr i64 %622 to double*
  %625 = load double, double* %624, align 8
  %626 = fcmp uno double %621, %625
  br i1 %626, label %627, label %637

; <label>:627:                                    ; preds = %block_40094c
  %628 = fadd double %621, %625
  %629 = bitcast double %628 to i64
  %630 = and i64 %629, 9221120237041090560
  %631 = icmp eq i64 %630, 9218868437227405312
  %632 = and i64 %629, 2251799813685247
  %633 = icmp ne i64 %632, 0
  %634 = and i1 %631, %633
  br i1 %634, label %635, label %643

; <label>:635:                                    ; preds = %627
  %636 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %623, %struct.Memory* %MEMORY.2)
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd_MINUS0x20__rbp____xmm0.exit

; <label>:637:                                    ; preds = %block_40094c
  %638 = fcmp ogt double %621, %625
  br i1 %638, label %643, label %639

; <label>:639:                                    ; preds = %637
  %640 = fcmp olt double %621, %625
  br i1 %640, label %643, label %641

; <label>:641:                                    ; preds = %639
  %642 = fcmp oeq double %621, %625
  br i1 %642, label %643, label %647

; <label>:643:                                    ; preds = %641, %639, %637, %627
  %644 = phi i8 [ 0, %637 ], [ 0, %639 ], [ 1, %641 ], [ 1, %627 ]
  %645 = phi i8 [ 0, %637 ], [ 0, %639 ], [ 0, %641 ], [ 1, %627 ]
  %646 = phi i8 [ 0, %637 ], [ 1, %639 ], [ 0, %641 ], [ 1, %627 ]
  store i8 %644, i8* %64, align 1
  store i8 %645, i8* %56, align 1
  store i8 %646, i8* %50, align 1
  br label %647

; <label>:647:                                    ; preds = %643, %641
  store i8 0, i8* %73, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %61, align 1
  br label %routine_ucomisd_MINUS0x20__rbp____xmm0.exit

routine_ucomisd_MINUS0x20__rbp____xmm0.exit:      ; preds = %647, %635
  %648 = phi i64 [ %.pre4, %635 ], [ %623, %647 ]
  %649 = phi %struct.Memory* [ %636, %635 ], [ %MEMORY.2, %647 ]
  %650 = load i8, i8* %50, align 1
  %651 = load i8, i8* %64, align 1
  %652 = or i8 %651, %650
  %653 = icmp ne i8 %652, 0
  %.v16 = select i1 %653, i64 22, i64 6
  %654 = add i64 %648, %.v16
  store i64 %654, i64* %3, align 8
  br i1 %653, label %block_.L_40098e, label %block_40097e

block_40097e:                                     ; preds = %routine_ucomisd_MINUS0x20__rbp____xmm0.exit
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -44
  %657 = add i64 %654, 3
  store i64 %657, i64* %PC.i, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX.i81, align 8
  %661 = add i64 %655, -52
  %662 = add i64 %654, 6
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %661 to i32*
  store i32 %659, i32* %663, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -40
  %666 = load i64, i64* %PC.i, align 8
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC.i, align 8
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668, align 8
  %670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %669, i64* %670, align 1
  store double 0.000000e+00, double* %480, align 1
  %671 = add i64 %664, -32
  %672 = add i64 %666, 10
  store i64 %672, i64* %PC.i, align 8
  %673 = inttoptr i64 %671 to i64*
  store i64 %669, i64* %673, align 8
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_40098e

block_.L_40098e:                                  ; preds = %block_40097e, %routine_ucomisd_MINUS0x20__rbp____xmm0.exit
  %674 = phi i64 [ %.pre5, %block_40097e ], [ %654, %routine_ucomisd_MINUS0x20__rbp____xmm0.exit ]
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -44
  %677 = add i64 %674, 8
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = add i32 %679, 1
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX.i81, align 8
  %682 = icmp eq i32 %679, -1
  %683 = icmp eq i32 %680, 0
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %50, align 1
  %686 = and i32 %680, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %56, align 1
  %691 = xor i32 %679, %680
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %61, align 1
  %695 = icmp eq i32 %680, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %64, align 1
  %697 = lshr i32 %680, 31
  %698 = trunc i32 %697 to i8
  store i8 %698, i8* %67, align 1
  %699 = lshr i32 %679, 31
  %700 = xor i32 %697, %699
  %701 = add nuw nsw i32 %700, %697
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %73, align 1
  %704 = add i64 %674, 14
  store i64 %704, i64* %PC.i, align 8
  store i32 %680, i32* %678, align 4
  %705 = load i64, i64* %PC.i, align 8
  %706 = add i64 %705, -92
  store i64 %706, i64* %3, align 8
  br label %block_.L_400940

block_.L_4009a1:                                  ; preds = %block_.L_400940
  %707 = add i64 %553, 5
  br label %block_.L_4009a6

block_.L_4009a6:                                  ; preds = %block_.L_4009a1, %block_.L_400910
  %.sink9 = phi i64 [ %707, %block_.L_4009a1 ], [ %456, %block_.L_400910 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4009a1 ], [ %MEMORY.0, %block_.L_400910 ]
  store i64 %.sink9, i64* %3, align 8
  %708 = add i64 %.sink9, 5
  br label %block_.L_4009ab

block_.L_4009ab:                                  ; preds = %block_.L_4009a6, %block_400868
  %.sink7 = phi i64 [ %708, %block_.L_4009a6 ], [ %110, %block_400868 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_4009a6 ], [ %2, %block_400868 ]
  store i64 %.sink7, i64* %3, align 8
  %709 = add i64 %.sink7, 5
  br label %block_.L_4009b0

block_.L_4009b0:                                  ; preds = %block_.L_4009ab, %block_400852
  %.sink = phi i64 [ %709, %block_.L_4009ab ], [ %81, %block_400852 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_4009ab ], [ %2, %block_400852 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -52
  %712 = add i64 %.sink, 3
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX.i, align 8
  %716 = add i64 %.sink, 4
  store i64 %716, i64* %PC.i, align 8
  %717 = load i64, i64* %6, align 8
  %718 = add i64 %717, 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RBP.i, align 8
  store i64 %718, i64* %6, align 8
  %721 = add i64 %.sink, 5
  store i64 %721, i64* %PC.i, align 8
  %722 = inttoptr i64 %718 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %3, align 8
  %724 = add i64 %717, 16
  store i64 %724, i64* %6, align 8
  ret %struct.Memory* %MEMORY.6
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jge_.L_40085e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400874(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_je_.L_400915(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x96e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x96e__rip__type* @G_0x96e__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x96e__rip__type* @G_0x96e__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

define %struct.Memory* @routine_jge_.L_400910(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x930__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x930__rip__type* @G_0x930__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x930__rip__type* @G_0x930__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400478
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400478
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_jbe_.L_4008f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4008ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x8d0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x8d0__rip__type* @G_0x8d0__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4009a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x89b__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x89b__rip__type* @G_0x89b__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x89b__rip__type* @G_0x89b__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_40098e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400993(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400940(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
