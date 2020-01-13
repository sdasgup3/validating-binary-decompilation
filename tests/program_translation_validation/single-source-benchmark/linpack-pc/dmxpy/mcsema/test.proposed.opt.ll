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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @dmxpy(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1124 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 2, i64* %RAX.i1124, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i, align 4
  %15 = add i64 %10, 11
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RSI.i1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI.i1502, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1608 = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -20
  %26 = load i32, i32* %EDX.i1608, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1628 = bitcast %union.anon* %30 to i32*
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i32, i32* %ECX.i1628, align 4
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -32
  %39 = load i64, i64* %R8.i, align 8
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %42, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -40
  %45 = load i64, i64* %R9.i, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %RCX.i1621 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RCX.i1621, align 8
  %EAX.i1618 = bitcast %union.anon* %11 to i32*
  %56 = add i64 %49, -56
  %57 = load i32, i32* %EAX.i1618, align 4
  %58 = add i64 %51, 6
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %ECX.i1628, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %3, align 8
  store i64 %61, i64* %RAX.i1124, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %64 = sext i32 %60 to i64
  %65 = lshr i64 %64, 32
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -56
  %68 = add i64 %62, 6
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RCX.i1621, align 8
  %72 = add i64 %62, 8
  store i64 %72, i64* %3, align 8
  %73 = sext i32 %70 to i64
  %74 = shl nuw i64 %65, 32
  %75 = or i64 %74, %61
  %76 = sdiv i64 %75, %73
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %82, label %80

; <label>:80:                                     ; preds = %entry
  %81 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %72, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EDX.i1608, align 4
  %.pre2 = load i64, i64* %3, align 8
  %.pre21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %routine_idivl__ecx.exit1606

; <label>:82:                                     ; preds = %entry
  %83 = srem i64 %75, %73
  %84 = and i64 %76, 4294967295
  store i64 %84, i64* %RAX.i1124, align 8
  %85 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %86 = and i64 %83, 4294967295
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %92, align 1
  %93 = trunc i64 %83 to i32
  br label %routine_idivl__ecx.exit1606

routine_idivl__ecx.exit1606:                      ; preds = %82, %80
  %.pre-phi31 = phi i8* [ %92, %82 ], [ %.pre30, %80 ]
  %.pre-phi29 = phi i8* [ %91, %82 ], [ %.pre28, %80 ]
  %.pre-phi27 = phi i8* [ %90, %82 ], [ %.pre26, %80 ]
  %.pre-phi25 = phi i8* [ %89, %82 ], [ %.pre24, %80 ]
  %.pre-phi23 = phi i8* [ %88, %82 ], [ %.pre22, %80 ]
  %.pre-phi = phi i8* [ %87, %82 ], [ %.pre21, %80 ]
  %94 = phi i64 [ %72, %82 ], [ %.pre2, %80 ]
  %95 = phi i32 [ %93, %82 ], [ %.pre1, %80 ]
  %96 = phi i64 [ %66, %82 ], [ %.pre, %80 ]
  %97 = phi %struct.Memory* [ %2, %82 ], [ %81, %80 ]
  %98 = add i64 %96, -44
  %99 = add i64 %94, 3
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  store i32 %95, i32* %100, align 4
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -44
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %102 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, -1
  %108 = icmp eq i32 %106, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %.pre-phi, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %.pre-phi23, align 1
  %115 = xor i32 %106, %107
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %.pre-phi25, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %.pre-phi27, align 1
  %121 = lshr i32 %107, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %.pre-phi29, align 1
  %123 = lshr i32 %106, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %.pre-phi31, align 1
  %128 = icmp ne i8 %122, 0
  %129 = xor i1 %128, %126
  %.v = select i1 %129, i64 122, i64 10
  %130 = add i64 %103, %.v
  store i64 %130, i64* %3, align 8
  br i1 %129, label %block_.L_4020b9, label %block_402049

block_402049:                                     ; preds = %routine_idivl__ecx.exit1606
  %131 = add i64 %130, 3
  store i64 %131, i64* %3, align 8
  %132 = load i32, i32* %105, align 4
  %133 = add i32 %132, -1
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX.i1124, align 8
  %135 = icmp eq i32 %132, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %.pre-phi, align 1
  %137 = and i32 %133, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %.pre-phi23, align 1
  %142 = xor i32 %132, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %.pre-phi25, align 1
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %.pre-phi27, align 1
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %.pre-phi29, align 1
  %150 = lshr i32 %132, 31
  %151 = xor i32 %148, %150
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %.pre-phi31, align 1
  %155 = add i64 %130, 9
  store i64 %155, i64* %3, align 8
  store i32 %133, i32* %105, align 4
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -48
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 7
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %157 to i32*
  store i32 0, i32* %160, align 4
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %162 = bitcast [32 x %union.VectorReg]* %161 to i8*
  %163 = bitcast [32 x %union.VectorReg]* %161 to float*
  %164 = getelementptr inbounds i8, i8* %162, i64 4
  %165 = bitcast i8* %164 to float*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %167 = bitcast i64* %166 to float*
  %168 = getelementptr inbounds i8, i8* %162, i64 12
  %169 = bitcast i8* %168 to float*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %171 = bitcast %union.VectorReg* %170 to i8*
  %172 = bitcast %union.VectorReg* %170 to float*
  %173 = getelementptr inbounds i8, i8* %171, i64 4
  %174 = bitcast i8* %173 to float*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %176 = bitcast i64* %175 to float*
  %177 = getelementptr inbounds i8, i8* %171, i64 12
  %178 = bitcast i8* %177 to float*
  %RDX.i1556 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %179 = bitcast %union.VectorReg* %170 to <2 x float>*
  %180 = bitcast i64* %175 to <2 x i32>*
  %181 = bitcast i8* %173 to i32*
  %182 = bitcast i64* %175 to i32*
  %183 = bitcast i8* %177 to i32*
  %184 = bitcast [32 x %union.VectorReg]* %161 to <2 x float>*
  %185 = bitcast i64* %166 to <2 x i32>*
  %186 = bitcast i8* %164 to i32*
  %187 = bitcast i64* %166 to i32*
  %188 = bitcast i8* %168 to i32*
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_402059

block_.L_402059:                                  ; preds = %block_402065, %block_402049
  %189 = phi i64 [ %381, %block_402065 ], [ %.pre3, %block_402049 ]
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -48
  %192 = add i64 %189, 3
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i1124, align 8
  %196 = add i64 %190, -4
  %197 = add i64 %189, 6
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %194, %199
  %201 = icmp ult i32 %194, %199
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %.pre-phi, align 1
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %.pre-phi23, align 1
  %208 = xor i32 %199, %194
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %.pre-phi25, align 1
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %.pre-phi27, align 1
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %.pre-phi29, align 1
  %217 = lshr i32 %194, 31
  %218 = lshr i32 %199, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %.pre-phi31, align 1
  %224 = icmp ne i8 %216, 0
  %225 = xor i1 %224, %222
  %.v33 = select i1 %225, i64 12, i64 91
  %226 = add i64 %189, %.v33
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_402065, label %block_.L_4020b4

block_402065:                                     ; preds = %block_.L_402059
  %227 = add i64 %190, -16
  %228 = add i64 %226, 4
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i1124, align 8
  %231 = add i64 %226, 8
  store i64 %231, i64* %3, align 8
  %232 = load i32, i32* %193, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX.i1621, align 8
  %234 = shl nsw i64 %233, 2
  %235 = add i64 %234, %230
  %236 = add i64 %226, 13
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = bitcast [32 x %union.VectorReg]* %161 to i32*
  store i32 %238, i32* %239, align 1
  store float 0.000000e+00, float* %165, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %169, align 1
  %240 = add i64 %190, -32
  %241 = add i64 %226, 17
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i1124, align 8
  %244 = add i64 %190, -44
  %245 = add i64 %226, 21
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %RCX.i1621, align 8
  %249 = shl nsw i64 %248, 2
  %250 = add i64 %249, %243
  %251 = add i64 %226, 26
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = bitcast %union.VectorReg* %170 to i32*
  store i32 %253, i32* %254, align 1
  store float 0.000000e+00, float* %174, align 1
  store float 0.000000e+00, float* %176, align 1
  store float 0.000000e+00, float* %178, align 1
  %255 = add i64 %190, -40
  %256 = add i64 %226, 30
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX.i1124, align 8
  %259 = add i64 %190, -24
  %260 = add i64 %226, 33
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX.i1556, align 8
  %264 = add i64 %226, 37
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %246, align 4
  %266 = sext i32 %262 to i64
  %267 = sext i32 %265 to i64
  %268 = mul nsw i64 %267, %266
  %269 = trunc i64 %268 to i32
  %270 = and i64 %268, 4294967295
  store i64 %270, i64* %RDX.i1556, align 8
  %271 = shl i64 %268, 32
  %272 = ashr exact i64 %271, 32
  %273 = icmp ne i64 %272, %268
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %.pre-phi, align 1
  %275 = and i32 %269, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %280 = lshr i32 %269, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %.pre-phi29, align 1
  store i8 %274, i8* %.pre-phi31, align 1
  %282 = add i64 %226, 40
  store i64 %282, i64* %3, align 8
  %283 = load i32, i32* %193, align 4
  %284 = add i32 %283, %269
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RDX.i1556, align 8
  %286 = icmp ult i32 %284, %269
  %287 = icmp ult i32 %284, %283
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %.pre-phi, align 1
  %290 = and i32 %284, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %.pre-phi23, align 1
  %295 = xor i32 %283, %269
  %296 = xor i32 %295, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %.pre-phi25, align 1
  %300 = icmp eq i32 %284, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %.pre-phi27, align 1
  %302 = lshr i32 %284, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %.pre-phi29, align 1
  %304 = lshr i32 %283, 31
  %305 = xor i32 %302, %280
  %306 = xor i32 %302, %304
  %307 = add nuw nsw i32 %305, %306
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %.pre-phi31, align 1
  %310 = sext i32 %284 to i64
  store i64 %310, i64* %RCX.i1621, align 8
  %311 = shl nsw i64 %310, 2
  %312 = add i64 %311, %258
  %313 = add i64 %226, 48
  store i64 %313, i64* %3, align 8
  %314 = load <2 x float>, <2 x float>* %179, align 1
  %315 = load <2 x i32>, <2 x i32>* %180, align 1
  %316 = inttoptr i64 %312 to float*
  %317 = load float, float* %316, align 4
  %318 = extractelement <2 x float> %314, i32 0
  %319 = fmul float %318, %317
  store float %319, float* %172, align 1
  %320 = bitcast <2 x float> %314 to <2 x i32>
  %321 = extractelement <2 x i32> %320, i32 1
  store i32 %321, i32* %181, align 1
  %322 = extractelement <2 x i32> %315, i32 0
  store i32 %322, i32* %182, align 1
  %323 = extractelement <2 x i32> %315, i32 1
  store i32 %323, i32* %183, align 1
  %324 = load <2 x float>, <2 x float>* %184, align 1
  %325 = load <2 x i32>, <2 x i32>* %185, align 1
  %326 = load <2 x float>, <2 x float>* %179, align 1
  %327 = extractelement <2 x float> %324, i32 0
  %328 = extractelement <2 x float> %326, i32 0
  %329 = fadd float %327, %328
  store float %329, float* %163, align 1
  %330 = bitcast <2 x float> %324 to <2 x i32>
  %331 = extractelement <2 x i32> %330, i32 1
  store i32 %331, i32* %186, align 1
  %332 = extractelement <2 x i32> %325, i32 0
  store i32 %332, i32* %187, align 1
  %333 = extractelement <2 x i32> %325, i32 1
  store i32 %333, i32* %188, align 1
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -16
  %336 = add i64 %226, 56
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RAX.i1124, align 8
  %339 = add i64 %334, -48
  %340 = add i64 %226, 60
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %RCX.i1621, align 8
  %344 = shl nsw i64 %343, 2
  %345 = add i64 %344, %338
  %346 = add i64 %226, 65
  store i64 %346, i64* %3, align 8
  %347 = load <2 x float>, <2 x float>* %184, align 1
  %348 = extractelement <2 x float> %347, i32 0
  %349 = inttoptr i64 %345 to float*
  store float %348, float* %349, align 4
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -48
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 3
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, 1
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i1124, align 8
  %358 = icmp eq i32 %355, -1
  %359 = icmp eq i32 %356, 0
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %.pre-phi, align 1
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %.pre-phi23, align 1
  %367 = xor i32 %355, %356
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %.pre-phi25, align 1
  %371 = zext i1 %359 to i8
  store i8 %371, i8* %.pre-phi27, align 1
  %372 = lshr i32 %356, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %.pre-phi29, align 1
  %374 = lshr i32 %355, 31
  %375 = xor i32 %372, %374
  %376 = add nuw nsw i32 %375, %372
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %.pre-phi31, align 1
  %379 = add i64 %352, 9
  store i64 %379, i64* %3, align 8
  store i32 %356, i32* %354, align 4
  %380 = load i64, i64* %3, align 8
  %381 = add i64 %380, -86
  store i64 %381, i64* %3, align 8
  br label %block_.L_402059

block_.L_4020b4:                                  ; preds = %block_.L_402059
  %382 = add i64 %226, 5
  store i64 %382, i64* %3, align 8
  br label %block_.L_4020b9

block_.L_4020b9:                                  ; preds = %block_.L_4020b4, %routine_idivl__ecx.exit1606
  %383 = phi i64 [ %190, %block_.L_4020b4 ], [ %101, %routine_idivl__ecx.exit1606 ]
  %384 = phi i64 [ %382, %block_.L_4020b4 ], [ %130, %routine_idivl__ecx.exit1606 ]
  store i64 4, i64* %RAX.i1124, align 8
  %385 = add i64 %383, -20
  %386 = add i64 %384, 8
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RCX.i1621, align 8
  %390 = add i64 %383, -60
  %391 = add i64 %384, 11
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  store i32 4, i32* %392, align 4
  %393 = load i32, i32* %ECX.i1628, align 4
  %394 = zext i32 %393 to i64
  %395 = load i64, i64* %3, align 8
  store i64 %394, i64* %RAX.i1124, align 8
  %396 = sext i32 %393 to i64
  %397 = lshr i64 %396, 32
  store i64 %397, i64* %63, align 8
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -60
  %400 = add i64 %395, 6
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i1621, align 8
  %404 = add i64 %395, 8
  store i64 %404, i64* %3, align 8
  %405 = sext i32 %402 to i64
  %406 = shl nuw i64 %397, 32
  %407 = or i64 %406, %394
  %408 = sdiv i64 %407, %405
  %409 = shl i64 %408, 32
  %410 = ashr exact i64 %409, 32
  %411 = icmp eq i64 %408, %410
  br i1 %411, label %414, label %412

; <label>:412:                                    ; preds = %block_.L_4020b9
  %413 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %404, %struct.Memory* %97)
  %.pre4 = load i64, i64* %RBP.i, align 8
  %.pre5 = load i32, i32* %EDX.i1608, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1500

; <label>:414:                                    ; preds = %block_.L_4020b9
  %415 = srem i64 %407, %405
  %416 = and i64 %408, 4294967295
  store i64 %416, i64* %RAX.i1124, align 8
  %417 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %418 = and i64 %415, 4294967295
  store i64 %418, i64* %417, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %419 = trunc i64 %415 to i32
  br label %routine_idivl__ecx.exit1500

routine_idivl__ecx.exit1500:                      ; preds = %414, %412
  %420 = phi i64 [ %.pre6, %412 ], [ %404, %414 ]
  %421 = phi i32 [ %.pre5, %412 ], [ %419, %414 ]
  %422 = phi i64 [ %.pre4, %412 ], [ %398, %414 ]
  %423 = phi %struct.Memory* [ %413, %412 ], [ %97, %414 ]
  %424 = add i64 %422, -44
  %425 = add i64 %420, 3
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  store i32 %421, i32* %426, align 4
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -44
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, 4
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %432, -2
  %434 = icmp ult i32 %432, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %.pre-phi, align 1
  %436 = and i32 %433, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %.pre-phi23, align 1
  %441 = xor i32 %432, %433
  %442 = lshr i32 %441, 4
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %.pre-phi25, align 1
  %445 = icmp eq i32 %433, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %.pre-phi27, align 1
  %447 = lshr i32 %433, 31
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %.pre-phi29, align 1
  %449 = lshr i32 %432, 31
  %450 = xor i32 %447, %449
  %451 = add nuw nsw i32 %450, %449
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %.pre-phi31, align 1
  %454 = icmp ne i8 %448, 0
  %455 = xor i1 %454, %452
  %.v34 = select i1 %455, i64 171, i64 10
  %456 = add i64 %429, %.v34
  store i64 %456, i64* %3, align 8
  br i1 %455, label %block_.L_40217a, label %block_4020d9

block_4020d9:                                     ; preds = %routine_idivl__ecx.exit1500
  %457 = add i64 %456, 3
  store i64 %457, i64* %3, align 8
  %458 = load i32, i32* %431, align 4
  %459 = add i32 %458, -1
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RAX.i1124, align 8
  %461 = icmp eq i32 %458, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %.pre-phi, align 1
  %463 = and i32 %459, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %.pre-phi23, align 1
  %468 = xor i32 %458, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %.pre-phi25, align 1
  %472 = icmp eq i32 %459, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %.pre-phi27, align 1
  %474 = lshr i32 %459, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %.pre-phi29, align 1
  %476 = lshr i32 %458, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %.pre-phi31, align 1
  %481 = add i64 %456, 9
  store i64 %481, i64* %3, align 8
  store i32 %459, i32* %431, align 4
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -48
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %483 to i32*
  store i32 0, i32* %486, align 4
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %488 = bitcast [32 x %union.VectorReg]* %487 to i8*
  %489 = bitcast [32 x %union.VectorReg]* %487 to float*
  %490 = getelementptr inbounds i8, i8* %488, i64 4
  %491 = bitcast i8* %490 to float*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %493 = bitcast i64* %492 to float*
  %494 = getelementptr inbounds i8, i8* %488, i64 12
  %495 = bitcast i8* %494 to float*
  %RDX.i1460 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %497 = bitcast %union.VectorReg* %496 to i8*
  %498 = bitcast %union.VectorReg* %496 to float*
  %499 = getelementptr inbounds i8, i8* %497, i64 4
  %500 = bitcast i8* %499 to float*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %502 = bitcast i64* %501 to float*
  %503 = getelementptr inbounds i8, i8* %497, i64 12
  %504 = bitcast i8* %503 to float*
  %505 = bitcast %union.VectorReg* %496 to <2 x float>*
  %506 = bitcast i64* %501 to <2 x i32>*
  %507 = bitcast i8* %499 to i32*
  %508 = bitcast i64* %501 to i32*
  %509 = bitcast i8* %503 to i32*
  %510 = bitcast [32 x %union.VectorReg]* %487 to <2 x float>*
  %511 = bitcast i64* %492 to <2 x i32>*
  %512 = bitcast i8* %490 to i32*
  %513 = bitcast i64* %492 to i32*
  %514 = bitcast i8* %494 to i32*
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_4020e9

block_.L_4020e9:                                  ; preds = %block_4020f5, %block_4020d9
  %515 = phi i64 [ %833, %block_4020f5 ], [ %.pre7, %block_4020d9 ]
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -48
  %518 = add i64 %515, 3
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX.i1124, align 8
  %522 = add i64 %516, -4
  %523 = add i64 %515, 6
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sub i32 %520, %525
  %527 = icmp ult i32 %520, %525
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %.pre-phi, align 1
  %529 = and i32 %526, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %.pre-phi23, align 1
  %534 = xor i32 %525, %520
  %535 = xor i32 %534, %526
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %.pre-phi25, align 1
  %539 = icmp eq i32 %526, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %.pre-phi27, align 1
  %541 = lshr i32 %526, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %.pre-phi29, align 1
  %543 = lshr i32 %520, 31
  %544 = lshr i32 %525, 31
  %545 = xor i32 %544, %543
  %546 = xor i32 %541, %543
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %.pre-phi31, align 1
  %550 = icmp ne i8 %542, 0
  %551 = xor i1 %550, %548
  %.v35 = select i1 %551, i64 12, i64 140
  %552 = add i64 %515, %.v35
  store i64 %552, i64* %3, align 8
  br i1 %551, label %block_4020f5, label %block_.L_402175

block_4020f5:                                     ; preds = %block_.L_4020e9
  %553 = add i64 %516, -16
  %554 = add i64 %552, 4
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RAX.i1124, align 8
  %557 = add i64 %552, 8
  store i64 %557, i64* %3, align 8
  %558 = load i32, i32* %519, align 4
  %559 = sext i32 %558 to i64
  store i64 %559, i64* %RCX.i1621, align 8
  %560 = shl nsw i64 %559, 2
  %561 = add i64 %560, %556
  %562 = add i64 %552, 13
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = bitcast [32 x %union.VectorReg]* %487 to i32*
  store i32 %564, i32* %565, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %493, align 1
  store float 0.000000e+00, float* %495, align 1
  %566 = add i64 %516, -32
  %567 = add i64 %552, 17
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i1124, align 8
  %570 = add i64 %516, -44
  %571 = add i64 %552, 20
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = add i32 %573, -1
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RDX.i1460, align 8
  %576 = icmp eq i32 %573, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %.pre-phi, align 1
  %578 = and i32 %574, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %.pre-phi23, align 1
  %583 = xor i32 %573, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %.pre-phi25, align 1
  %587 = icmp eq i32 %574, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %.pre-phi27, align 1
  %589 = lshr i32 %574, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %.pre-phi29, align 1
  %591 = lshr i32 %573, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %591
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %.pre-phi31, align 1
  %596 = sext i32 %574 to i64
  store i64 %596, i64* %RCX.i1621, align 8
  %597 = shl nsw i64 %596, 2
  %598 = add i64 %597, %569
  %599 = add i64 %552, 31
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = bitcast %union.VectorReg* %496 to i32*
  store i32 %601, i32* %602, align 1
  store float 0.000000e+00, float* %500, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  %603 = add i64 %516, -40
  %604 = add i64 %552, 35
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RAX.i1124, align 8
  %607 = add i64 %516, -24
  %608 = add i64 %552, 38
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RDX.i1460, align 8
  %612 = add i64 %552, 41
  store i64 %612, i64* %3, align 8
  %613 = load i32, i32* %572, align 4
  %614 = add i32 %613, -1
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RSI.i1502, align 8
  %616 = sext i32 %610 to i64
  %617 = sext i32 %614 to i64
  %618 = mul nsw i64 %617, %616
  %619 = trunc i64 %618 to i32
  %620 = and i64 %618, 4294967295
  store i64 %620, i64* %RDX.i1460, align 8
  %621 = shl i64 %618, 32
  %622 = ashr exact i64 %621, 32
  %623 = icmp ne i64 %622, %618
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %.pre-phi, align 1
  %625 = and i32 %619, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %630 = lshr i32 %619, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %.pre-phi29, align 1
  store i8 %624, i8* %.pre-phi31, align 1
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -48
  %634 = add i64 %552, 50
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = add i32 %636, %619
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RDX.i1460, align 8
  %639 = icmp ult i32 %637, %619
  %640 = icmp ult i32 %637, %636
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %.pre-phi, align 1
  %643 = and i32 %637, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %.pre-phi23, align 1
  %648 = xor i32 %636, %619
  %649 = xor i32 %648, %637
  %650 = lshr i32 %649, 4
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  store i8 %652, i8* %.pre-phi25, align 1
  %653 = icmp eq i32 %637, 0
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %.pre-phi27, align 1
  %655 = lshr i32 %637, 31
  %656 = trunc i32 %655 to i8
  store i8 %656, i8* %.pre-phi29, align 1
  %657 = lshr i32 %636, 31
  %658 = xor i32 %655, %630
  %659 = xor i32 %655, %657
  %660 = add nuw nsw i32 %658, %659
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %.pre-phi31, align 1
  %663 = sext i32 %637 to i64
  store i64 %663, i64* %RCX.i1621, align 8
  %664 = load i64, i64* %RAX.i1124, align 8
  %665 = shl nsw i64 %663, 2
  %666 = add i64 %665, %664
  %667 = add i64 %552, 58
  store i64 %667, i64* %3, align 8
  %668 = load <2 x float>, <2 x float>* %505, align 1
  %669 = load <2 x i32>, <2 x i32>* %506, align 1
  %670 = inttoptr i64 %666 to float*
  %671 = load float, float* %670, align 4
  %672 = extractelement <2 x float> %668, i32 0
  %673 = fmul float %672, %671
  store float %673, float* %498, align 1
  %674 = bitcast <2 x float> %668 to <2 x i32>
  %675 = extractelement <2 x i32> %674, i32 1
  store i32 %675, i32* %507, align 1
  %676 = extractelement <2 x i32> %669, i32 0
  store i32 %676, i32* %508, align 1
  %677 = extractelement <2 x i32> %669, i32 1
  store i32 %677, i32* %509, align 1
  %678 = load <2 x float>, <2 x float>* %510, align 1
  %679 = load <2 x i32>, <2 x i32>* %511, align 1
  %680 = load <2 x float>, <2 x float>* %505, align 1
  %681 = extractelement <2 x float> %678, i32 0
  %682 = extractelement <2 x float> %680, i32 0
  %683 = fadd float %681, %682
  store float %683, float* %489, align 1
  %684 = bitcast <2 x float> %678 to <2 x i32>
  %685 = extractelement <2 x i32> %684, i32 1
  store i32 %685, i32* %512, align 1
  %686 = extractelement <2 x i32> %679, i32 0
  store i32 %686, i32* %513, align 1
  %687 = extractelement <2 x i32> %679, i32 1
  store i32 %687, i32* %514, align 1
  %688 = add i64 %632, -32
  %689 = add i64 %552, 66
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX.i1124, align 8
  %692 = add i64 %632, -44
  %693 = add i64 %552, 70
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RCX.i1621, align 8
  %697 = shl nsw i64 %696, 2
  %698 = add i64 %697, %691
  %699 = add i64 %552, 75
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  store i32 %701, i32* %602, align 1
  store float 0.000000e+00, float* %500, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -40
  %704 = add i64 %552, 79
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RAX.i1124, align 8
  %707 = add i64 %702, -24
  %708 = add i64 %552, 82
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i1460, align 8
  %712 = add i64 %702, -44
  %713 = add i64 %552, 86
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = sext i32 %710 to i64
  %717 = sext i32 %715 to i64
  %718 = mul nsw i64 %717, %716
  %719 = trunc i64 %718 to i32
  %720 = and i64 %718, 4294967295
  store i64 %720, i64* %RDX.i1460, align 8
  %721 = shl i64 %718, 32
  %722 = ashr exact i64 %721, 32
  %723 = icmp ne i64 %722, %718
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %.pre-phi, align 1
  %725 = and i32 %719, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %730 = lshr i32 %719, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %.pre-phi29, align 1
  store i8 %724, i8* %.pre-phi31, align 1
  %732 = add i64 %702, -48
  %733 = add i64 %552, 89
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = add i32 %735, %719
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RDX.i1460, align 8
  %738 = icmp ult i32 %736, %719
  %739 = icmp ult i32 %736, %735
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %.pre-phi, align 1
  %742 = and i32 %736, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %.pre-phi23, align 1
  %747 = xor i32 %735, %719
  %748 = xor i32 %747, %736
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %.pre-phi25, align 1
  %752 = icmp eq i32 %736, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %.pre-phi27, align 1
  %754 = lshr i32 %736, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %.pre-phi29, align 1
  %756 = lshr i32 %735, 31
  %757 = xor i32 %754, %730
  %758 = xor i32 %754, %756
  %759 = add nuw nsw i32 %757, %758
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %.pre-phi31, align 1
  %762 = sext i32 %736 to i64
  store i64 %762, i64* %RCX.i1621, align 8
  %763 = shl nsw i64 %762, 2
  %764 = add i64 %763, %706
  %765 = add i64 %552, 97
  store i64 %765, i64* %3, align 8
  %766 = load <2 x float>, <2 x float>* %505, align 1
  %767 = load <2 x i32>, <2 x i32>* %506, align 1
  %768 = inttoptr i64 %764 to float*
  %769 = load float, float* %768, align 4
  %770 = extractelement <2 x float> %766, i32 0
  %771 = fmul float %770, %769
  store float %771, float* %498, align 1
  %772 = bitcast <2 x float> %766 to <2 x i32>
  %773 = extractelement <2 x i32> %772, i32 1
  store i32 %773, i32* %507, align 1
  %774 = extractelement <2 x i32> %767, i32 0
  store i32 %774, i32* %508, align 1
  %775 = extractelement <2 x i32> %767, i32 1
  store i32 %775, i32* %509, align 1
  %776 = load <2 x float>, <2 x float>* %510, align 1
  %777 = load <2 x i32>, <2 x i32>* %511, align 1
  %778 = load <2 x float>, <2 x float>* %505, align 1
  %779 = extractelement <2 x float> %776, i32 0
  %780 = extractelement <2 x float> %778, i32 0
  %781 = fadd float %779, %780
  store float %781, float* %489, align 1
  %782 = bitcast <2 x float> %776 to <2 x i32>
  %783 = extractelement <2 x i32> %782, i32 1
  store i32 %783, i32* %512, align 1
  %784 = extractelement <2 x i32> %777, i32 0
  store i32 %784, i32* %513, align 1
  %785 = extractelement <2 x i32> %777, i32 1
  store i32 %785, i32* %514, align 1
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -16
  %788 = add i64 %552, 105
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RAX.i1124, align 8
  %791 = add i64 %786, -48
  %792 = add i64 %552, 109
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RCX.i1621, align 8
  %796 = shl nsw i64 %795, 2
  %797 = add i64 %796, %790
  %798 = add i64 %552, 114
  store i64 %798, i64* %3, align 8
  %799 = load <2 x float>, <2 x float>* %510, align 1
  %800 = extractelement <2 x float> %799, i32 0
  %801 = inttoptr i64 %797 to float*
  store float %800, float* %801, align 4
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -48
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 3
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %803 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = add i32 %807, 1
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RAX.i1124, align 8
  %810 = icmp eq i32 %807, -1
  %811 = icmp eq i32 %808, 0
  %812 = or i1 %810, %811
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %.pre-phi, align 1
  %814 = and i32 %808, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %.pre-phi23, align 1
  %819 = xor i32 %807, %808
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %.pre-phi25, align 1
  %823 = zext i1 %811 to i8
  store i8 %823, i8* %.pre-phi27, align 1
  %824 = lshr i32 %808, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %.pre-phi29, align 1
  %826 = lshr i32 %807, 31
  %827 = xor i32 %824, %826
  %828 = add nuw nsw i32 %827, %824
  %829 = icmp eq i32 %828, 2
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %.pre-phi31, align 1
  %831 = add i64 %804, 9
  store i64 %831, i64* %3, align 8
  store i32 %808, i32* %806, align 4
  %832 = load i64, i64* %3, align 8
  %833 = add i64 %832, -135
  store i64 %833, i64* %3, align 8
  br label %block_.L_4020e9

block_.L_402175:                                  ; preds = %block_.L_4020e9
  %834 = add i64 %552, 5
  store i64 %834, i64* %3, align 8
  br label %block_.L_40217a

block_.L_40217a:                                  ; preds = %block_.L_402175, %routine_idivl__ecx.exit1500
  %835 = phi i64 [ %516, %block_.L_402175 ], [ %427, %routine_idivl__ecx.exit1500 ]
  %836 = phi i64 [ %834, %block_.L_402175 ], [ %456, %routine_idivl__ecx.exit1500 ]
  store i64 8, i64* %RAX.i1124, align 8
  %837 = add i64 %835, -20
  %838 = add i64 %836, 8
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RCX.i1621, align 8
  %842 = add i64 %835, -64
  %843 = add i64 %836, 11
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  store i32 8, i32* %844, align 4
  %845 = load i32, i32* %ECX.i1628, align 4
  %846 = zext i32 %845 to i64
  %847 = load i64, i64* %3, align 8
  store i64 %846, i64* %RAX.i1124, align 8
  %848 = sext i32 %845 to i64
  %849 = lshr i64 %848, 32
  store i64 %849, i64* %63, align 8
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -64
  %852 = add i64 %847, 6
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RCX.i1621, align 8
  %856 = add i64 %847, 8
  store i64 %856, i64* %3, align 8
  %857 = sext i32 %854 to i64
  %858 = shl nuw i64 %849, 32
  %859 = or i64 %858, %846
  %860 = sdiv i64 %859, %857
  %861 = shl i64 %860, 32
  %862 = ashr exact i64 %861, 32
  %863 = icmp eq i64 %860, %862
  br i1 %863, label %866, label %864

; <label>:864:                                    ; preds = %block_.L_40217a
  %865 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %856, %struct.Memory* %423)
  %.pre8 = load i64, i64* %RBP.i, align 8
  %.pre9 = load i32, i32* %EDX.i1608, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1353

; <label>:866:                                    ; preds = %block_.L_40217a
  %867 = srem i64 %859, %857
  %868 = and i64 %860, 4294967295
  store i64 %868, i64* %RAX.i1124, align 8
  %869 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %870 = and i64 %867, 4294967295
  store i64 %870, i64* %869, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %871 = trunc i64 %867 to i32
  br label %routine_idivl__ecx.exit1353

routine_idivl__ecx.exit1353:                      ; preds = %866, %864
  %872 = phi i64 [ %.pre10, %864 ], [ %856, %866 ]
  %873 = phi i32 [ %.pre9, %864 ], [ %871, %866 ]
  %874 = phi i64 [ %.pre8, %864 ], [ %850, %866 ]
  %875 = phi %struct.Memory* [ %865, %864 ], [ %423, %866 ]
  %876 = add i64 %874, -44
  %877 = add i64 %872, 3
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  store i32 %873, i32* %878, align 4
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -44
  %881 = load i64, i64* %3, align 8
  %882 = add i64 %881, 4
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = add i32 %884, -4
  %886 = icmp ult i32 %884, 4
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %.pre-phi, align 1
  %888 = and i32 %885, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %.pre-phi23, align 1
  %893 = xor i32 %884, %885
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %.pre-phi25, align 1
  %897 = icmp eq i32 %885, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %.pre-phi27, align 1
  %899 = lshr i32 %885, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %.pre-phi29, align 1
  %901 = lshr i32 %884, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %901
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %.pre-phi31, align 1
  %906 = icmp ne i8 %900, 0
  %907 = xor i1 %906, %904
  %.v36 = select i1 %907, i64 269, i64 10
  %908 = add i64 %881, %.v36
  store i64 %908, i64* %3, align 8
  br i1 %907, label %block_.L_40229d, label %block_40219a

block_40219a:                                     ; preds = %routine_idivl__ecx.exit1353
  %909 = add i64 %908, 3
  store i64 %909, i64* %3, align 8
  %910 = load i32, i32* %883, align 4
  %911 = add i32 %910, -1
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RAX.i1124, align 8
  %913 = icmp eq i32 %910, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %.pre-phi, align 1
  %915 = and i32 %911, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %.pre-phi23, align 1
  %920 = xor i32 %910, %911
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %.pre-phi25, align 1
  %924 = icmp eq i32 %911, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %.pre-phi27, align 1
  %926 = lshr i32 %911, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %.pre-phi29, align 1
  %928 = lshr i32 %910, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %.pre-phi31, align 1
  %933 = add i64 %908, 9
  store i64 %933, i64* %3, align 8
  store i32 %911, i32* %883, align 4
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -48
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 7
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %935 to i32*
  store i32 0, i32* %938, align 4
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %940 = bitcast [32 x %union.VectorReg]* %939 to i8*
  %941 = bitcast [32 x %union.VectorReg]* %939 to float*
  %942 = getelementptr inbounds i8, i8* %940, i64 4
  %943 = bitcast i8* %942 to float*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %945 = bitcast i64* %944 to float*
  %946 = getelementptr inbounds i8, i8* %940, i64 12
  %947 = bitcast i8* %946 to float*
  %RDX.i1313 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %949 = bitcast %union.VectorReg* %948 to i8*
  %950 = bitcast %union.VectorReg* %948 to float*
  %951 = getelementptr inbounds i8, i8* %949, i64 4
  %952 = bitcast i8* %951 to float*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %954 = bitcast i64* %953 to float*
  %955 = getelementptr inbounds i8, i8* %949, i64 12
  %956 = bitcast i8* %955 to float*
  %957 = bitcast %union.VectorReg* %948 to <2 x float>*
  %958 = bitcast i64* %953 to <2 x i32>*
  %959 = bitcast i8* %951 to i32*
  %960 = bitcast i64* %953 to i32*
  %961 = bitcast i8* %955 to i32*
  %962 = bitcast [32 x %union.VectorReg]* %939 to <2 x float>*
  %963 = bitcast i64* %944 to <2 x i32>*
  %964 = bitcast i8* %942 to i32*
  %965 = bitcast i64* %944 to i32*
  %966 = bitcast i8* %946 to i32*
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_4021aa

block_.L_4021aa:                                  ; preds = %block_4021b6, %block_40219a
  %967 = phi i64 [ %1530, %block_4021b6 ], [ %.pre11, %block_40219a ]
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -48
  %970 = add i64 %967, 3
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX.i1124, align 8
  %974 = add i64 %968, -4
  %975 = add i64 %967, 6
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sub i32 %972, %977
  %979 = icmp ult i32 %972, %977
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %.pre-phi, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %.pre-phi23, align 1
  %986 = xor i32 %977, %972
  %987 = xor i32 %986, %978
  %988 = lshr i32 %987, 4
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %.pre-phi25, align 1
  %991 = icmp eq i32 %978, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %.pre-phi27, align 1
  %993 = lshr i32 %978, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %.pre-phi29, align 1
  %995 = lshr i32 %972, 31
  %996 = lshr i32 %977, 31
  %997 = xor i32 %996, %995
  %998 = xor i32 %993, %995
  %999 = add nuw nsw i32 %998, %997
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %.pre-phi31, align 1
  %1002 = icmp ne i8 %994, 0
  %1003 = xor i1 %1002, %1000
  %.v37 = select i1 %1003, i64 12, i64 238
  %1004 = add i64 %967, %.v37
  store i64 %1004, i64* %3, align 8
  br i1 %1003, label %block_4021b6, label %block_.L_402298

block_4021b6:                                     ; preds = %block_.L_4021aa
  %1005 = add i64 %968, -16
  %1006 = add i64 %1004, 4
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  store i64 %1008, i64* %RAX.i1124, align 8
  %1009 = add i64 %1004, 8
  store i64 %1009, i64* %3, align 8
  %1010 = load i32, i32* %971, align 4
  %1011 = sext i32 %1010 to i64
  store i64 %1011, i64* %RCX.i1621, align 8
  %1012 = shl nsw i64 %1011, 2
  %1013 = add i64 %1012, %1008
  %1014 = add i64 %1004, 13
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = bitcast [32 x %union.VectorReg]* %939 to i32*
  store i32 %1016, i32* %1017, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %945, align 1
  store float 0.000000e+00, float* %947, align 1
  %1018 = add i64 %968, -32
  %1019 = add i64 %1004, 17
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RAX.i1124, align 8
  %1022 = add i64 %968, -44
  %1023 = add i64 %1004, 20
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, -3
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RDX.i1313, align 8
  %1028 = icmp ult i32 %1025, 3
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %.pre-phi, align 1
  %1030 = and i32 %1026, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %.pre-phi23, align 1
  %1035 = xor i32 %1025, %1026
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %.pre-phi25, align 1
  %1039 = icmp eq i32 %1026, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %.pre-phi27, align 1
  %1041 = lshr i32 %1026, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %.pre-phi29, align 1
  %1043 = lshr i32 %1025, 31
  %1044 = xor i32 %1041, %1043
  %1045 = add nuw nsw i32 %1044, %1043
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %.pre-phi31, align 1
  %1048 = sext i32 %1026 to i64
  store i64 %1048, i64* %RCX.i1621, align 8
  %1049 = shl nsw i64 %1048, 2
  %1050 = add i64 %1049, %1021
  %1051 = add i64 %1004, 31
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = bitcast %union.VectorReg* %948 to i32*
  store i32 %1053, i32* %1054, align 1
  store float 0.000000e+00, float* %952, align 1
  store float 0.000000e+00, float* %954, align 1
  store float 0.000000e+00, float* %956, align 1
  %1055 = add i64 %968, -40
  %1056 = add i64 %1004, 35
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i64*
  %1058 = load i64, i64* %1057, align 8
  store i64 %1058, i64* %RAX.i1124, align 8
  %1059 = add i64 %968, -24
  %1060 = add i64 %1004, 38
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RDX.i1313, align 8
  %1064 = add i64 %1004, 41
  store i64 %1064, i64* %3, align 8
  %1065 = load i32, i32* %1024, align 4
  %1066 = add i32 %1065, -3
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RSI.i1502, align 8
  %1068 = sext i32 %1062 to i64
  %1069 = sext i32 %1066 to i64
  %1070 = mul nsw i64 %1069, %1068
  %1071 = trunc i64 %1070 to i32
  %1072 = and i64 %1070, 4294967295
  store i64 %1072, i64* %RDX.i1313, align 8
  %1073 = shl i64 %1070, 32
  %1074 = ashr exact i64 %1073, 32
  %1075 = icmp ne i64 %1074, %1070
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %.pre-phi, align 1
  %1077 = and i32 %1071, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1082 = lshr i32 %1071, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %.pre-phi29, align 1
  store i8 %1076, i8* %.pre-phi31, align 1
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -48
  %1086 = add i64 %1004, 50
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = add i32 %1088, %1071
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RDX.i1313, align 8
  %1091 = icmp ult i32 %1089, %1071
  %1092 = icmp ult i32 %1089, %1088
  %1093 = or i1 %1091, %1092
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %.pre-phi, align 1
  %1095 = and i32 %1089, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %.pre-phi23, align 1
  %1100 = xor i32 %1088, %1071
  %1101 = xor i32 %1100, %1089
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %.pre-phi25, align 1
  %1105 = icmp eq i32 %1089, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %.pre-phi27, align 1
  %1107 = lshr i32 %1089, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %.pre-phi29, align 1
  %1109 = lshr i32 %1088, 31
  %1110 = xor i32 %1107, %1082
  %1111 = xor i32 %1107, %1109
  %1112 = add nuw nsw i32 %1110, %1111
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %.pre-phi31, align 1
  %1115 = sext i32 %1089 to i64
  store i64 %1115, i64* %RCX.i1621, align 8
  %1116 = load i64, i64* %RAX.i1124, align 8
  %1117 = shl nsw i64 %1115, 2
  %1118 = add i64 %1117, %1116
  %1119 = add i64 %1004, 58
  store i64 %1119, i64* %3, align 8
  %1120 = load <2 x float>, <2 x float>* %957, align 1
  %1121 = load <2 x i32>, <2 x i32>* %958, align 1
  %1122 = inttoptr i64 %1118 to float*
  %1123 = load float, float* %1122, align 4
  %1124 = extractelement <2 x float> %1120, i32 0
  %1125 = fmul float %1124, %1123
  store float %1125, float* %950, align 1
  %1126 = bitcast <2 x float> %1120 to <2 x i32>
  %1127 = extractelement <2 x i32> %1126, i32 1
  store i32 %1127, i32* %959, align 1
  %1128 = extractelement <2 x i32> %1121, i32 0
  store i32 %1128, i32* %960, align 1
  %1129 = extractelement <2 x i32> %1121, i32 1
  store i32 %1129, i32* %961, align 1
  %1130 = load <2 x float>, <2 x float>* %962, align 1
  %1131 = load <2 x i32>, <2 x i32>* %963, align 1
  %1132 = load <2 x float>, <2 x float>* %957, align 1
  %1133 = extractelement <2 x float> %1130, i32 0
  %1134 = extractelement <2 x float> %1132, i32 0
  %1135 = fadd float %1133, %1134
  store float %1135, float* %941, align 1
  %1136 = bitcast <2 x float> %1130 to <2 x i32>
  %1137 = extractelement <2 x i32> %1136, i32 1
  store i32 %1137, i32* %964, align 1
  %1138 = extractelement <2 x i32> %1131, i32 0
  store i32 %1138, i32* %965, align 1
  %1139 = extractelement <2 x i32> %1131, i32 1
  store i32 %1139, i32* %966, align 1
  %1140 = add i64 %1084, -32
  %1141 = add i64 %1004, 66
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RAX.i1124, align 8
  %1144 = add i64 %1084, -44
  %1145 = add i64 %1004, 69
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, -2
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RDX.i1313, align 8
  %1150 = icmp ult i32 %1147, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %.pre-phi, align 1
  %1152 = and i32 %1148, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %.pre-phi23, align 1
  %1157 = xor i32 %1147, %1148
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %.pre-phi25, align 1
  %1161 = icmp eq i32 %1148, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %.pre-phi27, align 1
  %1163 = lshr i32 %1148, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %.pre-phi29, align 1
  %1165 = lshr i32 %1147, 31
  %1166 = xor i32 %1163, %1165
  %1167 = add nuw nsw i32 %1166, %1165
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %.pre-phi31, align 1
  %1170 = sext i32 %1148 to i64
  store i64 %1170, i64* %RCX.i1621, align 8
  %1171 = shl nsw i64 %1170, 2
  %1172 = add i64 %1171, %1143
  %1173 = add i64 %1004, 80
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  store i32 %1175, i32* %1054, align 1
  store float 0.000000e+00, float* %952, align 1
  store float 0.000000e+00, float* %954, align 1
  store float 0.000000e+00, float* %956, align 1
  %1176 = load i64, i64* %RBP.i, align 8
  %1177 = add i64 %1176, -40
  %1178 = add i64 %1004, 84
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RAX.i1124, align 8
  %1181 = add i64 %1176, -24
  %1182 = add i64 %1004, 87
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RDX.i1313, align 8
  %1186 = add i64 %1176, -44
  %1187 = add i64 %1004, 90
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = add i32 %1189, -2
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RSI.i1502, align 8
  %1192 = sext i32 %1184 to i64
  %1193 = sext i32 %1190 to i64
  %1194 = mul nsw i64 %1193, %1192
  %1195 = trunc i64 %1194 to i32
  %1196 = and i64 %1194, 4294967295
  store i64 %1196, i64* %RDX.i1313, align 8
  %1197 = shl i64 %1194, 32
  %1198 = ashr exact i64 %1197, 32
  %1199 = icmp ne i64 %1198, %1194
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %.pre-phi, align 1
  %1201 = and i32 %1195, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1206 = lshr i32 %1195, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %.pre-phi29, align 1
  store i8 %1200, i8* %.pre-phi31, align 1
  %1208 = add i64 %1176, -48
  %1209 = add i64 %1004, 99
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = add i32 %1211, %1195
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RDX.i1313, align 8
  %1214 = icmp ult i32 %1212, %1195
  %1215 = icmp ult i32 %1212, %1211
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %.pre-phi, align 1
  %1218 = and i32 %1212, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %.pre-phi23, align 1
  %1223 = xor i32 %1211, %1195
  %1224 = xor i32 %1223, %1212
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %.pre-phi25, align 1
  %1228 = icmp eq i32 %1212, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %.pre-phi27, align 1
  %1230 = lshr i32 %1212, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %.pre-phi29, align 1
  %1232 = lshr i32 %1211, 31
  %1233 = xor i32 %1230, %1206
  %1234 = xor i32 %1230, %1232
  %1235 = add nuw nsw i32 %1233, %1234
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %.pre-phi31, align 1
  %1238 = sext i32 %1212 to i64
  store i64 %1238, i64* %RCX.i1621, align 8
  %1239 = load i64, i64* %RAX.i1124, align 8
  %1240 = shl nsw i64 %1238, 2
  %1241 = add i64 %1240, %1239
  %1242 = add i64 %1004, 107
  store i64 %1242, i64* %3, align 8
  %1243 = load <2 x float>, <2 x float>* %957, align 1
  %1244 = load <2 x i32>, <2 x i32>* %958, align 1
  %1245 = inttoptr i64 %1241 to float*
  %1246 = load float, float* %1245, align 4
  %1247 = extractelement <2 x float> %1243, i32 0
  %1248 = fmul float %1247, %1246
  store float %1248, float* %950, align 1
  %1249 = bitcast <2 x float> %1243 to <2 x i32>
  %1250 = extractelement <2 x i32> %1249, i32 1
  store i32 %1250, i32* %959, align 1
  %1251 = extractelement <2 x i32> %1244, i32 0
  store i32 %1251, i32* %960, align 1
  %1252 = extractelement <2 x i32> %1244, i32 1
  store i32 %1252, i32* %961, align 1
  %1253 = load <2 x float>, <2 x float>* %962, align 1
  %1254 = load <2 x i32>, <2 x i32>* %963, align 1
  %1255 = load <2 x float>, <2 x float>* %957, align 1
  %1256 = extractelement <2 x float> %1253, i32 0
  %1257 = extractelement <2 x float> %1255, i32 0
  %1258 = fadd float %1256, %1257
  store float %1258, float* %941, align 1
  %1259 = bitcast <2 x float> %1253 to <2 x i32>
  %1260 = extractelement <2 x i32> %1259, i32 1
  store i32 %1260, i32* %964, align 1
  %1261 = extractelement <2 x i32> %1254, i32 0
  store i32 %1261, i32* %965, align 1
  %1262 = extractelement <2 x i32> %1254, i32 1
  store i32 %1262, i32* %966, align 1
  %1263 = load i64, i64* %RBP.i, align 8
  %1264 = add i64 %1263, -32
  %1265 = add i64 %1004, 115
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i64*
  %1267 = load i64, i64* %1266, align 8
  store i64 %1267, i64* %RAX.i1124, align 8
  %1268 = add i64 %1263, -44
  %1269 = add i64 %1004, 118
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = add i32 %1271, -1
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RDX.i1313, align 8
  %1274 = icmp eq i32 %1271, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %.pre-phi, align 1
  %1276 = and i32 %1272, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %.pre-phi23, align 1
  %1281 = xor i32 %1271, %1272
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %.pre-phi25, align 1
  %1285 = icmp eq i32 %1272, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %.pre-phi27, align 1
  %1287 = lshr i32 %1272, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %.pre-phi29, align 1
  %1289 = lshr i32 %1271, 31
  %1290 = xor i32 %1287, %1289
  %1291 = add nuw nsw i32 %1290, %1289
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %.pre-phi31, align 1
  %1294 = sext i32 %1272 to i64
  store i64 %1294, i64* %RCX.i1621, align 8
  %1295 = shl nsw i64 %1294, 2
  %1296 = add i64 %1295, %1267
  %1297 = add i64 %1004, 129
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  store i32 %1299, i32* %1054, align 1
  store float 0.000000e+00, float* %952, align 1
  store float 0.000000e+00, float* %954, align 1
  store float 0.000000e+00, float* %956, align 1
  %1300 = add i64 %1263, -40
  %1301 = add i64 %1004, 133
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RAX.i1124, align 8
  %1304 = add i64 %1263, -24
  %1305 = add i64 %1004, 136
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RDX.i1313, align 8
  %1309 = add i64 %1004, 139
  store i64 %1309, i64* %3, align 8
  %1310 = load i32, i32* %1270, align 4
  %1311 = add i32 %1310, -1
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RSI.i1502, align 8
  %1313 = sext i32 %1307 to i64
  %1314 = sext i32 %1311 to i64
  %1315 = mul nsw i64 %1314, %1313
  %1316 = trunc i64 %1315 to i32
  %1317 = and i64 %1315, 4294967295
  store i64 %1317, i64* %RDX.i1313, align 8
  %1318 = shl i64 %1315, 32
  %1319 = ashr exact i64 %1318, 32
  %1320 = icmp ne i64 %1319, %1315
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %.pre-phi, align 1
  %1322 = and i32 %1316, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1327 = lshr i32 %1316, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %.pre-phi29, align 1
  store i8 %1321, i8* %.pre-phi31, align 1
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -48
  %1331 = add i64 %1004, 148
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = add i32 %1333, %1316
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RDX.i1313, align 8
  %1336 = icmp ult i32 %1334, %1316
  %1337 = icmp ult i32 %1334, %1333
  %1338 = or i1 %1336, %1337
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %.pre-phi, align 1
  %1340 = and i32 %1334, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %.pre-phi23, align 1
  %1345 = xor i32 %1333, %1316
  %1346 = xor i32 %1345, %1334
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %.pre-phi25, align 1
  %1350 = icmp eq i32 %1334, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %.pre-phi27, align 1
  %1352 = lshr i32 %1334, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %.pre-phi29, align 1
  %1354 = lshr i32 %1333, 31
  %1355 = xor i32 %1352, %1327
  %1356 = xor i32 %1352, %1354
  %1357 = add nuw nsw i32 %1355, %1356
  %1358 = icmp eq i32 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %.pre-phi31, align 1
  %1360 = sext i32 %1334 to i64
  store i64 %1360, i64* %RCX.i1621, align 8
  %1361 = load i64, i64* %RAX.i1124, align 8
  %1362 = shl nsw i64 %1360, 2
  %1363 = add i64 %1362, %1361
  %1364 = add i64 %1004, 156
  store i64 %1364, i64* %3, align 8
  %1365 = load <2 x float>, <2 x float>* %957, align 1
  %1366 = load <2 x i32>, <2 x i32>* %958, align 1
  %1367 = inttoptr i64 %1363 to float*
  %1368 = load float, float* %1367, align 4
  %1369 = extractelement <2 x float> %1365, i32 0
  %1370 = fmul float %1369, %1368
  store float %1370, float* %950, align 1
  %1371 = bitcast <2 x float> %1365 to <2 x i32>
  %1372 = extractelement <2 x i32> %1371, i32 1
  store i32 %1372, i32* %959, align 1
  %1373 = extractelement <2 x i32> %1366, i32 0
  store i32 %1373, i32* %960, align 1
  %1374 = extractelement <2 x i32> %1366, i32 1
  store i32 %1374, i32* %961, align 1
  %1375 = load <2 x float>, <2 x float>* %962, align 1
  %1376 = load <2 x i32>, <2 x i32>* %963, align 1
  %1377 = load <2 x float>, <2 x float>* %957, align 1
  %1378 = extractelement <2 x float> %1375, i32 0
  %1379 = extractelement <2 x float> %1377, i32 0
  %1380 = fadd float %1378, %1379
  store float %1380, float* %941, align 1
  %1381 = bitcast <2 x float> %1375 to <2 x i32>
  %1382 = extractelement <2 x i32> %1381, i32 1
  store i32 %1382, i32* %964, align 1
  %1383 = extractelement <2 x i32> %1376, i32 0
  store i32 %1383, i32* %965, align 1
  %1384 = extractelement <2 x i32> %1376, i32 1
  store i32 %1384, i32* %966, align 1
  %1385 = add i64 %1329, -32
  %1386 = add i64 %1004, 164
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RAX.i1124, align 8
  %1389 = add i64 %1329, -44
  %1390 = add i64 %1004, 168
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RCX.i1621, align 8
  %1394 = shl nsw i64 %1393, 2
  %1395 = add i64 %1394, %1388
  %1396 = add i64 %1004, 173
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  store i32 %1398, i32* %1054, align 1
  store float 0.000000e+00, float* %952, align 1
  store float 0.000000e+00, float* %954, align 1
  store float 0.000000e+00, float* %956, align 1
  %1399 = load i64, i64* %RBP.i, align 8
  %1400 = add i64 %1399, -40
  %1401 = add i64 %1004, 177
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RAX.i1124, align 8
  %1404 = add i64 %1399, -24
  %1405 = add i64 %1004, 180
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RDX.i1313, align 8
  %1409 = add i64 %1399, -44
  %1410 = add i64 %1004, 184
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = sext i32 %1407 to i64
  %1414 = sext i32 %1412 to i64
  %1415 = mul nsw i64 %1414, %1413
  %1416 = trunc i64 %1415 to i32
  %1417 = and i64 %1415, 4294967295
  store i64 %1417, i64* %RDX.i1313, align 8
  %1418 = shl i64 %1415, 32
  %1419 = ashr exact i64 %1418, 32
  %1420 = icmp ne i64 %1419, %1415
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %.pre-phi, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1427 = lshr i32 %1416, 31
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, i8* %.pre-phi29, align 1
  store i8 %1421, i8* %.pre-phi31, align 1
  %1429 = add i64 %1399, -48
  %1430 = add i64 %1004, 187
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = add i32 %1432, %1416
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RDX.i1313, align 8
  %1435 = icmp ult i32 %1433, %1416
  %1436 = icmp ult i32 %1433, %1432
  %1437 = or i1 %1435, %1436
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %.pre-phi, align 1
  %1439 = and i32 %1433, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %.pre-phi23, align 1
  %1444 = xor i32 %1432, %1416
  %1445 = xor i32 %1444, %1433
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %.pre-phi25, align 1
  %1449 = icmp eq i32 %1433, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %.pre-phi27, align 1
  %1451 = lshr i32 %1433, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %.pre-phi29, align 1
  %1453 = lshr i32 %1432, 31
  %1454 = xor i32 %1451, %1427
  %1455 = xor i32 %1451, %1453
  %1456 = add nuw nsw i32 %1454, %1455
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %.pre-phi31, align 1
  %1459 = sext i32 %1433 to i64
  store i64 %1459, i64* %RCX.i1621, align 8
  %1460 = shl nsw i64 %1459, 2
  %1461 = add i64 %1460, %1403
  %1462 = add i64 %1004, 195
  store i64 %1462, i64* %3, align 8
  %1463 = load <2 x float>, <2 x float>* %957, align 1
  %1464 = load <2 x i32>, <2 x i32>* %958, align 1
  %1465 = inttoptr i64 %1461 to float*
  %1466 = load float, float* %1465, align 4
  %1467 = extractelement <2 x float> %1463, i32 0
  %1468 = fmul float %1467, %1466
  store float %1468, float* %950, align 1
  %1469 = bitcast <2 x float> %1463 to <2 x i32>
  %1470 = extractelement <2 x i32> %1469, i32 1
  store i32 %1470, i32* %959, align 1
  %1471 = extractelement <2 x i32> %1464, i32 0
  store i32 %1471, i32* %960, align 1
  %1472 = extractelement <2 x i32> %1464, i32 1
  store i32 %1472, i32* %961, align 1
  %1473 = load <2 x float>, <2 x float>* %962, align 1
  %1474 = load <2 x i32>, <2 x i32>* %963, align 1
  %1475 = load <2 x float>, <2 x float>* %957, align 1
  %1476 = extractelement <2 x float> %1473, i32 0
  %1477 = extractelement <2 x float> %1475, i32 0
  %1478 = fadd float %1476, %1477
  store float %1478, float* %941, align 1
  %1479 = bitcast <2 x float> %1473 to <2 x i32>
  %1480 = extractelement <2 x i32> %1479, i32 1
  store i32 %1480, i32* %964, align 1
  %1481 = extractelement <2 x i32> %1474, i32 0
  store i32 %1481, i32* %965, align 1
  %1482 = extractelement <2 x i32> %1474, i32 1
  store i32 %1482, i32* %966, align 1
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -16
  %1485 = add i64 %1004, 203
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %RAX.i1124, align 8
  %1488 = add i64 %1483, -48
  %1489 = add i64 %1004, 207
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %RCX.i1621, align 8
  %1493 = shl nsw i64 %1492, 2
  %1494 = add i64 %1493, %1487
  %1495 = add i64 %1004, 212
  store i64 %1495, i64* %3, align 8
  %1496 = load <2 x float>, <2 x float>* %962, align 1
  %1497 = extractelement <2 x float> %1496, i32 0
  %1498 = inttoptr i64 %1494 to float*
  store float %1497, float* %1498, align 4
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -48
  %1501 = load i64, i64* %3, align 8
  %1502 = add i64 %1501, 3
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = add i32 %1504, 1
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RAX.i1124, align 8
  %1507 = icmp eq i32 %1504, -1
  %1508 = icmp eq i32 %1505, 0
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %.pre-phi, align 1
  %1511 = and i32 %1505, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %.pre-phi23, align 1
  %1516 = xor i32 %1504, %1505
  %1517 = lshr i32 %1516, 4
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %.pre-phi25, align 1
  %1520 = zext i1 %1508 to i8
  store i8 %1520, i8* %.pre-phi27, align 1
  %1521 = lshr i32 %1505, 31
  %1522 = trunc i32 %1521 to i8
  store i8 %1522, i8* %.pre-phi29, align 1
  %1523 = lshr i32 %1504, 31
  %1524 = xor i32 %1521, %1523
  %1525 = add nuw nsw i32 %1524, %1521
  %1526 = icmp eq i32 %1525, 2
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %.pre-phi31, align 1
  %1528 = add i64 %1501, 9
  store i64 %1528, i64* %3, align 8
  store i32 %1505, i32* %1503, align 4
  %1529 = load i64, i64* %3, align 8
  %1530 = add i64 %1529, -233
  store i64 %1530, i64* %3, align 8
  br label %block_.L_4021aa

block_.L_402298:                                  ; preds = %block_.L_4021aa
  %1531 = add i64 %1004, 5
  store i64 %1531, i64* %3, align 8
  br label %block_.L_40229d

block_.L_40229d:                                  ; preds = %block_.L_402298, %routine_idivl__ecx.exit1353
  %1532 = phi i64 [ %968, %block_.L_402298 ], [ %879, %routine_idivl__ecx.exit1353 ]
  %1533 = phi i64 [ %1531, %block_.L_402298 ], [ %908, %routine_idivl__ecx.exit1353 ]
  store i64 16, i64* %RAX.i1124, align 8
  %1534 = add i64 %1532, -20
  %1535 = add i64 %1533, 8
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RCX.i1621, align 8
  %1539 = add i64 %1532, -68
  %1540 = add i64 %1533, 11
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  store i32 16, i32* %1541, align 4
  %1542 = load i32, i32* %ECX.i1628, align 4
  %1543 = zext i32 %1542 to i64
  %1544 = load i64, i64* %3, align 8
  store i64 %1543, i64* %RAX.i1124, align 8
  %1545 = sext i32 %1542 to i64
  %1546 = lshr i64 %1545, 32
  store i64 %1546, i64* %63, align 8
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -68
  %1549 = add i64 %1544, 6
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RCX.i1621, align 8
  %1553 = add i64 %1544, 8
  store i64 %1553, i64* %3, align 8
  %1554 = sext i32 %1551 to i64
  %1555 = shl nuw i64 %1546, 32
  %1556 = or i64 %1555, %1543
  %1557 = sdiv i64 %1556, %1554
  %1558 = shl i64 %1557, 32
  %1559 = ashr exact i64 %1558, 32
  %1560 = icmp eq i64 %1557, %1559
  br i1 %1560, label %1563, label %1561

; <label>:1561:                                   ; preds = %block_.L_40229d
  %1562 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1553, %struct.Memory* %875)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i32, i32* %EDX.i1608, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1122

; <label>:1563:                                   ; preds = %block_.L_40229d
  %1564 = srem i64 %1556, %1554
  %1565 = and i64 %1557, 4294967295
  store i64 %1565, i64* %RAX.i1124, align 8
  %1566 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1567 = and i64 %1564, 4294967295
  store i64 %1567, i64* %1566, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %1568 = trunc i64 %1564 to i32
  br label %routine_idivl__ecx.exit1122

routine_idivl__ecx.exit1122:                      ; preds = %1563, %1561
  %1569 = phi i64 [ %.pre14, %1561 ], [ %1553, %1563 ]
  %1570 = phi i32 [ %.pre13, %1561 ], [ %1568, %1563 ]
  %1571 = phi i64 [ %.pre12, %1561 ], [ %1547, %1563 ]
  %1572 = phi %struct.Memory* [ %1562, %1561 ], [ %875, %1563 ]
  %1573 = add i64 %1571, -44
  %1574 = add i64 %1569, 3
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  store i32 %1570, i32* %1575, align 4
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -44
  %1578 = load i64, i64* %3, align 8
  %1579 = add i64 %1578, 4
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1577 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = add i32 %1581, -8
  %1583 = icmp ult i32 %1581, 8
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %.pre-phi, align 1
  %1585 = and i32 %1582, 255
  %1586 = tail call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %.pre-phi23, align 1
  %1590 = xor i32 %1581, %1582
  %1591 = lshr i32 %1590, 4
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  store i8 %1593, i8* %.pre-phi25, align 1
  %1594 = icmp eq i32 %1582, 0
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %.pre-phi27, align 1
  %1596 = lshr i32 %1582, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %.pre-phi29, align 1
  %1598 = lshr i32 %1581, 31
  %1599 = xor i32 %1596, %1598
  %1600 = add nuw nsw i32 %1599, %1598
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %.pre-phi31, align 1
  %1603 = icmp ne i8 %1597, 0
  %1604 = xor i1 %1603, %1601
  %.v38 = select i1 %1604, i64 465, i64 10
  %1605 = add i64 %1578, %.v38
  store i64 %1605, i64* %3, align 8
  br i1 %1604, label %block_.L_402484, label %block_4022bd

block_4022bd:                                     ; preds = %routine_idivl__ecx.exit1122
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %3, align 8
  %1607 = load i32, i32* %1580, align 4
  %1608 = add i32 %1607, -1
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RAX.i1124, align 8
  %1610 = icmp eq i32 %1607, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %.pre-phi, align 1
  %1612 = and i32 %1608, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %.pre-phi23, align 1
  %1617 = xor i32 %1607, %1608
  %1618 = lshr i32 %1617, 4
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %.pre-phi25, align 1
  %1621 = icmp eq i32 %1608, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %.pre-phi27, align 1
  %1623 = lshr i32 %1608, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %.pre-phi29, align 1
  %1625 = lshr i32 %1607, 31
  %1626 = xor i32 %1623, %1625
  %1627 = add nuw nsw i32 %1626, %1625
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %.pre-phi31, align 1
  %1630 = add i64 %1605, 9
  store i64 %1630, i64* %3, align 8
  store i32 %1608, i32* %1580, align 4
  %1631 = load i64, i64* %RBP.i, align 8
  %1632 = add i64 %1631, -48
  %1633 = load i64, i64* %3, align 8
  %1634 = add i64 %1633, 7
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1632 to i32*
  store i32 0, i32* %1635, align 4
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1637 = bitcast [32 x %union.VectorReg]* %1636 to i8*
  %1638 = bitcast [32 x %union.VectorReg]* %1636 to float*
  %1639 = getelementptr inbounds i8, i8* %1637, i64 4
  %1640 = bitcast i8* %1639 to float*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1642 = bitcast i64* %1641 to float*
  %1643 = getelementptr inbounds i8, i8* %1637, i64 12
  %1644 = bitcast i8* %1643 to float*
  %RDX.i1082 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1646 = bitcast %union.VectorReg* %1645 to i8*
  %1647 = bitcast %union.VectorReg* %1645 to float*
  %1648 = getelementptr inbounds i8, i8* %1646, i64 4
  %1649 = bitcast i8* %1648 to float*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1651 = bitcast i64* %1650 to float*
  %1652 = getelementptr inbounds i8, i8* %1646, i64 12
  %1653 = bitcast i8* %1652 to float*
  %1654 = bitcast %union.VectorReg* %1645 to <2 x float>*
  %1655 = bitcast i64* %1650 to <2 x i32>*
  %1656 = bitcast i8* %1648 to i32*
  %1657 = bitcast i64* %1650 to i32*
  %1658 = bitcast i8* %1652 to i32*
  %1659 = bitcast [32 x %union.VectorReg]* %1636 to <2 x float>*
  %1660 = bitcast i64* %1641 to <2 x i32>*
  %1661 = bitcast i8* %1639 to i32*
  %1662 = bitcast i64* %1641 to i32*
  %1663 = bitcast i8* %1643 to i32*
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_4022cd

block_.L_4022cd:                                  ; preds = %block_4022d9, %block_4022bd
  %1664 = phi i64 [ %2717, %block_4022d9 ], [ %.pre15, %block_4022bd ]
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -48
  %1667 = add i64 %1664, 3
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RAX.i1124, align 8
  %1671 = add i64 %1665, -4
  %1672 = add i64 %1664, 6
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sub i32 %1669, %1674
  %1676 = icmp ult i32 %1669, %1674
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %.pre-phi, align 1
  %1678 = and i32 %1675, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %.pre-phi23, align 1
  %1683 = xor i32 %1674, %1669
  %1684 = xor i32 %1683, %1675
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %.pre-phi25, align 1
  %1688 = icmp eq i32 %1675, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %.pre-phi27, align 1
  %1690 = lshr i32 %1675, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %.pre-phi29, align 1
  %1692 = lshr i32 %1669, 31
  %1693 = lshr i32 %1674, 31
  %1694 = xor i32 %1693, %1692
  %1695 = xor i32 %1690, %1692
  %1696 = add nuw nsw i32 %1695, %1694
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %.pre-phi31, align 1
  %1699 = icmp ne i8 %1691, 0
  %1700 = xor i1 %1699, %1697
  %.v39 = select i1 %1700, i64 12, i64 434
  %1701 = add i64 %1664, %.v39
  store i64 %1701, i64* %3, align 8
  br i1 %1700, label %block_4022d9, label %block_.L_40247f

block_4022d9:                                     ; preds = %block_.L_4022cd
  %1702 = add i64 %1665, -16
  %1703 = add i64 %1701, 4
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i64*
  %1705 = load i64, i64* %1704, align 8
  store i64 %1705, i64* %RAX.i1124, align 8
  %1706 = add i64 %1701, 8
  store i64 %1706, i64* %3, align 8
  %1707 = load i32, i32* %1668, align 4
  %1708 = sext i32 %1707 to i64
  store i64 %1708, i64* %RCX.i1621, align 8
  %1709 = shl nsw i64 %1708, 2
  %1710 = add i64 %1709, %1705
  %1711 = add i64 %1701, 13
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = bitcast [32 x %union.VectorReg]* %1636 to i32*
  store i32 %1713, i32* %1714, align 1
  store float 0.000000e+00, float* %1640, align 1
  store float 0.000000e+00, float* %1642, align 1
  store float 0.000000e+00, float* %1644, align 1
  %1715 = add i64 %1665, -32
  %1716 = add i64 %1701, 17
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i64*
  %1718 = load i64, i64* %1717, align 8
  store i64 %1718, i64* %RAX.i1124, align 8
  %1719 = add i64 %1665, -44
  %1720 = add i64 %1701, 20
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = add i32 %1722, -7
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RDX.i1082, align 8
  %1725 = icmp ult i32 %1722, 7
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %.pre-phi, align 1
  %1727 = and i32 %1723, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %.pre-phi23, align 1
  %1732 = xor i32 %1722, %1723
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %.pre-phi25, align 1
  %1736 = icmp eq i32 %1723, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %.pre-phi27, align 1
  %1738 = lshr i32 %1723, 31
  %1739 = trunc i32 %1738 to i8
  store i8 %1739, i8* %.pre-phi29, align 1
  %1740 = lshr i32 %1722, 31
  %1741 = xor i32 %1738, %1740
  %1742 = add nuw nsw i32 %1741, %1740
  %1743 = icmp eq i32 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %.pre-phi31, align 1
  %1745 = sext i32 %1723 to i64
  store i64 %1745, i64* %RCX.i1621, align 8
  %1746 = shl nsw i64 %1745, 2
  %1747 = add i64 %1746, %1718
  %1748 = add i64 %1701, 31
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = bitcast %union.VectorReg* %1645 to i32*
  store i32 %1750, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %1752 = add i64 %1665, -40
  %1753 = add i64 %1701, 35
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i64*
  %1755 = load i64, i64* %1754, align 8
  store i64 %1755, i64* %RAX.i1124, align 8
  %1756 = add i64 %1665, -24
  %1757 = add i64 %1701, 38
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RDX.i1082, align 8
  %1761 = add i64 %1701, 41
  store i64 %1761, i64* %3, align 8
  %1762 = load i32, i32* %1721, align 4
  %1763 = add i32 %1762, -7
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RSI.i1502, align 8
  %1765 = sext i32 %1759 to i64
  %1766 = sext i32 %1763 to i64
  %1767 = mul nsw i64 %1766, %1765
  %1768 = trunc i64 %1767 to i32
  %1769 = and i64 %1767, 4294967295
  store i64 %1769, i64* %RDX.i1082, align 8
  %1770 = shl i64 %1767, 32
  %1771 = ashr exact i64 %1770, 32
  %1772 = icmp ne i64 %1771, %1767
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %.pre-phi, align 1
  %1774 = and i32 %1768, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1779 = lshr i32 %1768, 31
  %1780 = trunc i32 %1779 to i8
  store i8 %1780, i8* %.pre-phi29, align 1
  store i8 %1773, i8* %.pre-phi31, align 1
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -48
  %1783 = add i64 %1701, 50
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = add i32 %1785, %1768
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RDX.i1082, align 8
  %1788 = icmp ult i32 %1786, %1768
  %1789 = icmp ult i32 %1786, %1785
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %.pre-phi, align 1
  %1792 = and i32 %1786, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %.pre-phi23, align 1
  %1797 = xor i32 %1785, %1768
  %1798 = xor i32 %1797, %1786
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %.pre-phi25, align 1
  %1802 = icmp eq i32 %1786, 0
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %.pre-phi27, align 1
  %1804 = lshr i32 %1786, 31
  %1805 = trunc i32 %1804 to i8
  store i8 %1805, i8* %.pre-phi29, align 1
  %1806 = lshr i32 %1785, 31
  %1807 = xor i32 %1804, %1779
  %1808 = xor i32 %1804, %1806
  %1809 = add nuw nsw i32 %1807, %1808
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %.pre-phi31, align 1
  %1812 = sext i32 %1786 to i64
  store i64 %1812, i64* %RCX.i1621, align 8
  %1813 = load i64, i64* %RAX.i1124, align 8
  %1814 = shl nsw i64 %1812, 2
  %1815 = add i64 %1814, %1813
  %1816 = add i64 %1701, 58
  store i64 %1816, i64* %3, align 8
  %1817 = load <2 x float>, <2 x float>* %1654, align 1
  %1818 = load <2 x i32>, <2 x i32>* %1655, align 1
  %1819 = inttoptr i64 %1815 to float*
  %1820 = load float, float* %1819, align 4
  %1821 = extractelement <2 x float> %1817, i32 0
  %1822 = fmul float %1821, %1820
  store float %1822, float* %1647, align 1
  %1823 = bitcast <2 x float> %1817 to <2 x i32>
  %1824 = extractelement <2 x i32> %1823, i32 1
  store i32 %1824, i32* %1656, align 1
  %1825 = extractelement <2 x i32> %1818, i32 0
  store i32 %1825, i32* %1657, align 1
  %1826 = extractelement <2 x i32> %1818, i32 1
  store i32 %1826, i32* %1658, align 1
  %1827 = load <2 x float>, <2 x float>* %1659, align 1
  %1828 = load <2 x i32>, <2 x i32>* %1660, align 1
  %1829 = load <2 x float>, <2 x float>* %1654, align 1
  %1830 = extractelement <2 x float> %1827, i32 0
  %1831 = extractelement <2 x float> %1829, i32 0
  %1832 = fadd float %1830, %1831
  store float %1832, float* %1638, align 1
  %1833 = bitcast <2 x float> %1827 to <2 x i32>
  %1834 = extractelement <2 x i32> %1833, i32 1
  store i32 %1834, i32* %1661, align 1
  %1835 = extractelement <2 x i32> %1828, i32 0
  store i32 %1835, i32* %1662, align 1
  %1836 = extractelement <2 x i32> %1828, i32 1
  store i32 %1836, i32* %1663, align 1
  %1837 = add i64 %1781, -32
  %1838 = add i64 %1701, 66
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RAX.i1124, align 8
  %1841 = add i64 %1781, -44
  %1842 = add i64 %1701, 69
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = add i32 %1844, -6
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RDX.i1082, align 8
  %1847 = icmp ult i32 %1844, 6
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %.pre-phi, align 1
  %1849 = and i32 %1845, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %.pre-phi23, align 1
  %1854 = xor i32 %1844, %1845
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %.pre-phi25, align 1
  %1858 = icmp eq i32 %1845, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %.pre-phi27, align 1
  %1860 = lshr i32 %1845, 31
  %1861 = trunc i32 %1860 to i8
  store i8 %1861, i8* %.pre-phi29, align 1
  %1862 = lshr i32 %1844, 31
  %1863 = xor i32 %1860, %1862
  %1864 = add nuw nsw i32 %1863, %1862
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %.pre-phi31, align 1
  %1867 = sext i32 %1845 to i64
  store i64 %1867, i64* %RCX.i1621, align 8
  %1868 = shl nsw i64 %1867, 2
  %1869 = add i64 %1868, %1840
  %1870 = add i64 %1701, 80
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  store i32 %1872, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %1873 = load i64, i64* %RBP.i, align 8
  %1874 = add i64 %1873, -40
  %1875 = add i64 %1701, 84
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i64*
  %1877 = load i64, i64* %1876, align 8
  store i64 %1877, i64* %RAX.i1124, align 8
  %1878 = add i64 %1873, -24
  %1879 = add i64 %1701, 87
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RDX.i1082, align 8
  %1883 = add i64 %1873, -44
  %1884 = add i64 %1701, 90
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = add i32 %1886, -6
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RSI.i1502, align 8
  %1889 = sext i32 %1881 to i64
  %1890 = sext i32 %1887 to i64
  %1891 = mul nsw i64 %1890, %1889
  %1892 = trunc i64 %1891 to i32
  %1893 = and i64 %1891, 4294967295
  store i64 %1893, i64* %RDX.i1082, align 8
  %1894 = shl i64 %1891, 32
  %1895 = ashr exact i64 %1894, 32
  %1896 = icmp ne i64 %1895, %1891
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %.pre-phi, align 1
  %1898 = and i32 %1892, 255
  %1899 = tail call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1903 = lshr i32 %1892, 31
  %1904 = trunc i32 %1903 to i8
  store i8 %1904, i8* %.pre-phi29, align 1
  store i8 %1897, i8* %.pre-phi31, align 1
  %1905 = add i64 %1873, -48
  %1906 = add i64 %1701, 99
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = add i32 %1908, %1892
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RDX.i1082, align 8
  %1911 = icmp ult i32 %1909, %1892
  %1912 = icmp ult i32 %1909, %1908
  %1913 = or i1 %1911, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %.pre-phi, align 1
  %1915 = and i32 %1909, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %.pre-phi23, align 1
  %1920 = xor i32 %1908, %1892
  %1921 = xor i32 %1920, %1909
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %.pre-phi25, align 1
  %1925 = icmp eq i32 %1909, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %.pre-phi27, align 1
  %1927 = lshr i32 %1909, 31
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, i8* %.pre-phi29, align 1
  %1929 = lshr i32 %1908, 31
  %1930 = xor i32 %1927, %1903
  %1931 = xor i32 %1927, %1929
  %1932 = add nuw nsw i32 %1930, %1931
  %1933 = icmp eq i32 %1932, 2
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %.pre-phi31, align 1
  %1935 = sext i32 %1909 to i64
  store i64 %1935, i64* %RCX.i1621, align 8
  %1936 = load i64, i64* %RAX.i1124, align 8
  %1937 = shl nsw i64 %1935, 2
  %1938 = add i64 %1937, %1936
  %1939 = add i64 %1701, 107
  store i64 %1939, i64* %3, align 8
  %1940 = load <2 x float>, <2 x float>* %1654, align 1
  %1941 = load <2 x i32>, <2 x i32>* %1655, align 1
  %1942 = inttoptr i64 %1938 to float*
  %1943 = load float, float* %1942, align 4
  %1944 = extractelement <2 x float> %1940, i32 0
  %1945 = fmul float %1944, %1943
  store float %1945, float* %1647, align 1
  %1946 = bitcast <2 x float> %1940 to <2 x i32>
  %1947 = extractelement <2 x i32> %1946, i32 1
  store i32 %1947, i32* %1656, align 1
  %1948 = extractelement <2 x i32> %1941, i32 0
  store i32 %1948, i32* %1657, align 1
  %1949 = extractelement <2 x i32> %1941, i32 1
  store i32 %1949, i32* %1658, align 1
  %1950 = load <2 x float>, <2 x float>* %1659, align 1
  %1951 = load <2 x i32>, <2 x i32>* %1660, align 1
  %1952 = load <2 x float>, <2 x float>* %1654, align 1
  %1953 = extractelement <2 x float> %1950, i32 0
  %1954 = extractelement <2 x float> %1952, i32 0
  %1955 = fadd float %1953, %1954
  store float %1955, float* %1638, align 1
  %1956 = bitcast <2 x float> %1950 to <2 x i32>
  %1957 = extractelement <2 x i32> %1956, i32 1
  store i32 %1957, i32* %1661, align 1
  %1958 = extractelement <2 x i32> %1951, i32 0
  store i32 %1958, i32* %1662, align 1
  %1959 = extractelement <2 x i32> %1951, i32 1
  store i32 %1959, i32* %1663, align 1
  %1960 = load i64, i64* %RBP.i, align 8
  %1961 = add i64 %1960, -32
  %1962 = add i64 %1701, 115
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i64*
  %1964 = load i64, i64* %1963, align 8
  store i64 %1964, i64* %RAX.i1124, align 8
  %1965 = add i64 %1960, -44
  %1966 = add i64 %1701, 118
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = add i32 %1968, -5
  %1970 = zext i32 %1969 to i64
  store i64 %1970, i64* %RDX.i1082, align 8
  %1971 = icmp ult i32 %1968, 5
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %.pre-phi, align 1
  %1973 = and i32 %1969, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %.pre-phi23, align 1
  %1978 = xor i32 %1968, %1969
  %1979 = lshr i32 %1978, 4
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  store i8 %1981, i8* %.pre-phi25, align 1
  %1982 = icmp eq i32 %1969, 0
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %.pre-phi27, align 1
  %1984 = lshr i32 %1969, 31
  %1985 = trunc i32 %1984 to i8
  store i8 %1985, i8* %.pre-phi29, align 1
  %1986 = lshr i32 %1968, 31
  %1987 = xor i32 %1984, %1986
  %1988 = add nuw nsw i32 %1987, %1986
  %1989 = icmp eq i32 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %.pre-phi31, align 1
  %1991 = sext i32 %1969 to i64
  store i64 %1991, i64* %RCX.i1621, align 8
  %1992 = shl nsw i64 %1991, 2
  %1993 = add i64 %1992, %1964
  %1994 = add i64 %1701, 129
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  store i32 %1996, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %1997 = add i64 %1960, -40
  %1998 = add i64 %1701, 133
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i64*
  %2000 = load i64, i64* %1999, align 8
  store i64 %2000, i64* %RAX.i1124, align 8
  %2001 = add i64 %1960, -24
  %2002 = add i64 %1701, 136
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %RDX.i1082, align 8
  %2006 = add i64 %1701, 139
  store i64 %2006, i64* %3, align 8
  %2007 = load i32, i32* %1967, align 4
  %2008 = add i32 %2007, -5
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RSI.i1502, align 8
  %2010 = sext i32 %2004 to i64
  %2011 = sext i32 %2008 to i64
  %2012 = mul nsw i64 %2011, %2010
  %2013 = trunc i64 %2012 to i32
  %2014 = and i64 %2012, 4294967295
  store i64 %2014, i64* %RDX.i1082, align 8
  %2015 = shl i64 %2012, 32
  %2016 = ashr exact i64 %2015, 32
  %2017 = icmp ne i64 %2016, %2012
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %.pre-phi, align 1
  %2019 = and i32 %2013, 255
  %2020 = tail call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  store i8 %2023, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2024 = lshr i32 %2013, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %.pre-phi29, align 1
  store i8 %2018, i8* %.pre-phi31, align 1
  %2026 = load i64, i64* %RBP.i, align 8
  %2027 = add i64 %2026, -48
  %2028 = add i64 %1701, 148
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = add i32 %2030, %2013
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDX.i1082, align 8
  %2033 = icmp ult i32 %2031, %2013
  %2034 = icmp ult i32 %2031, %2030
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %.pre-phi, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %.pre-phi23, align 1
  %2042 = xor i32 %2030, %2013
  %2043 = xor i32 %2042, %2031
  %2044 = lshr i32 %2043, 4
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %.pre-phi25, align 1
  %2047 = icmp eq i32 %2031, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %.pre-phi27, align 1
  %2049 = lshr i32 %2031, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %.pre-phi29, align 1
  %2051 = lshr i32 %2030, 31
  %2052 = xor i32 %2049, %2024
  %2053 = xor i32 %2049, %2051
  %2054 = add nuw nsw i32 %2052, %2053
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %.pre-phi31, align 1
  %2057 = sext i32 %2031 to i64
  store i64 %2057, i64* %RCX.i1621, align 8
  %2058 = load i64, i64* %RAX.i1124, align 8
  %2059 = shl nsw i64 %2057, 2
  %2060 = add i64 %2059, %2058
  %2061 = add i64 %1701, 156
  store i64 %2061, i64* %3, align 8
  %2062 = load <2 x float>, <2 x float>* %1654, align 1
  %2063 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2064 = inttoptr i64 %2060 to float*
  %2065 = load float, float* %2064, align 4
  %2066 = extractelement <2 x float> %2062, i32 0
  %2067 = fmul float %2066, %2065
  store float %2067, float* %1647, align 1
  %2068 = bitcast <2 x float> %2062 to <2 x i32>
  %2069 = extractelement <2 x i32> %2068, i32 1
  store i32 %2069, i32* %1656, align 1
  %2070 = extractelement <2 x i32> %2063, i32 0
  store i32 %2070, i32* %1657, align 1
  %2071 = extractelement <2 x i32> %2063, i32 1
  store i32 %2071, i32* %1658, align 1
  %2072 = load <2 x float>, <2 x float>* %1659, align 1
  %2073 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2074 = load <2 x float>, <2 x float>* %1654, align 1
  %2075 = extractelement <2 x float> %2072, i32 0
  %2076 = extractelement <2 x float> %2074, i32 0
  %2077 = fadd float %2075, %2076
  store float %2077, float* %1638, align 1
  %2078 = bitcast <2 x float> %2072 to <2 x i32>
  %2079 = extractelement <2 x i32> %2078, i32 1
  store i32 %2079, i32* %1661, align 1
  %2080 = extractelement <2 x i32> %2073, i32 0
  store i32 %2080, i32* %1662, align 1
  %2081 = extractelement <2 x i32> %2073, i32 1
  store i32 %2081, i32* %1663, align 1
  %2082 = add i64 %2026, -32
  %2083 = add i64 %1701, 164
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2082 to i64*
  %2085 = load i64, i64* %2084, align 8
  store i64 %2085, i64* %RAX.i1124, align 8
  %2086 = add i64 %2026, -44
  %2087 = add i64 %1701, 167
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i32*
  %2089 = load i32, i32* %2088, align 4
  %2090 = add i32 %2089, -4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RDX.i1082, align 8
  %2092 = icmp ult i32 %2089, 4
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %.pre-phi, align 1
  %2094 = and i32 %2090, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %.pre-phi23, align 1
  %2099 = xor i32 %2089, %2090
  %2100 = lshr i32 %2099, 4
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  store i8 %2102, i8* %.pre-phi25, align 1
  %2103 = icmp eq i32 %2090, 0
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %.pre-phi27, align 1
  %2105 = lshr i32 %2090, 31
  %2106 = trunc i32 %2105 to i8
  store i8 %2106, i8* %.pre-phi29, align 1
  %2107 = lshr i32 %2089, 31
  %2108 = xor i32 %2105, %2107
  %2109 = add nuw nsw i32 %2108, %2107
  %2110 = icmp eq i32 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %.pre-phi31, align 1
  %2112 = sext i32 %2090 to i64
  store i64 %2112, i64* %RCX.i1621, align 8
  %2113 = shl nsw i64 %2112, 2
  %2114 = add i64 %2113, %2085
  %2115 = add i64 %1701, 178
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  store i32 %2117, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %2118 = load i64, i64* %RBP.i, align 8
  %2119 = add i64 %2118, -40
  %2120 = add i64 %1701, 182
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  %2122 = load i64, i64* %2121, align 8
  store i64 %2122, i64* %RAX.i1124, align 8
  %2123 = add i64 %2118, -24
  %2124 = add i64 %1701, 185
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i1082, align 8
  %2128 = add i64 %2118, -44
  %2129 = add i64 %1701, 188
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = add i32 %2131, -4
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RSI.i1502, align 8
  %2134 = sext i32 %2126 to i64
  %2135 = sext i32 %2132 to i64
  %2136 = mul nsw i64 %2135, %2134
  %2137 = trunc i64 %2136 to i32
  %2138 = and i64 %2136, 4294967295
  store i64 %2138, i64* %RDX.i1082, align 8
  %2139 = shl i64 %2136, 32
  %2140 = ashr exact i64 %2139, 32
  %2141 = icmp ne i64 %2140, %2136
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %.pre-phi, align 1
  %2143 = and i32 %2137, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2148 = lshr i32 %2137, 31
  %2149 = trunc i32 %2148 to i8
  store i8 %2149, i8* %.pre-phi29, align 1
  store i8 %2142, i8* %.pre-phi31, align 1
  %2150 = add i64 %2118, -48
  %2151 = add i64 %1701, 197
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = add i32 %2153, %2137
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RDX.i1082, align 8
  %2156 = icmp ult i32 %2154, %2137
  %2157 = icmp ult i32 %2154, %2153
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %.pre-phi, align 1
  %2160 = and i32 %2154, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %.pre-phi23, align 1
  %2165 = xor i32 %2153, %2137
  %2166 = xor i32 %2165, %2154
  %2167 = lshr i32 %2166, 4
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %.pre-phi25, align 1
  %2170 = icmp eq i32 %2154, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %.pre-phi27, align 1
  %2172 = lshr i32 %2154, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %.pre-phi29, align 1
  %2174 = lshr i32 %2153, 31
  %2175 = xor i32 %2172, %2148
  %2176 = xor i32 %2172, %2174
  %2177 = add nuw nsw i32 %2175, %2176
  %2178 = icmp eq i32 %2177, 2
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %.pre-phi31, align 1
  %2180 = sext i32 %2154 to i64
  store i64 %2180, i64* %RCX.i1621, align 8
  %2181 = load i64, i64* %RAX.i1124, align 8
  %2182 = shl nsw i64 %2180, 2
  %2183 = add i64 %2182, %2181
  %2184 = add i64 %1701, 205
  store i64 %2184, i64* %3, align 8
  %2185 = load <2 x float>, <2 x float>* %1654, align 1
  %2186 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2187 = inttoptr i64 %2183 to float*
  %2188 = load float, float* %2187, align 4
  %2189 = extractelement <2 x float> %2185, i32 0
  %2190 = fmul float %2189, %2188
  store float %2190, float* %1647, align 1
  %2191 = bitcast <2 x float> %2185 to <2 x i32>
  %2192 = extractelement <2 x i32> %2191, i32 1
  store i32 %2192, i32* %1656, align 1
  %2193 = extractelement <2 x i32> %2186, i32 0
  store i32 %2193, i32* %1657, align 1
  %2194 = extractelement <2 x i32> %2186, i32 1
  store i32 %2194, i32* %1658, align 1
  %2195 = load <2 x float>, <2 x float>* %1659, align 1
  %2196 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2197 = load <2 x float>, <2 x float>* %1654, align 1
  %2198 = extractelement <2 x float> %2195, i32 0
  %2199 = extractelement <2 x float> %2197, i32 0
  %2200 = fadd float %2198, %2199
  store float %2200, float* %1638, align 1
  %2201 = bitcast <2 x float> %2195 to <2 x i32>
  %2202 = extractelement <2 x i32> %2201, i32 1
  store i32 %2202, i32* %1661, align 1
  %2203 = extractelement <2 x i32> %2196, i32 0
  store i32 %2203, i32* %1662, align 1
  %2204 = extractelement <2 x i32> %2196, i32 1
  store i32 %2204, i32* %1663, align 1
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -32
  %2207 = add i64 %1701, 213
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RAX.i1124, align 8
  %2210 = add i64 %2205, -44
  %2211 = add i64 %1701, 216
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = add i32 %2213, -3
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RDX.i1082, align 8
  %2216 = icmp ult i32 %2213, 3
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %.pre-phi, align 1
  %2218 = and i32 %2214, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %.pre-phi23, align 1
  %2223 = xor i32 %2213, %2214
  %2224 = lshr i32 %2223, 4
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  store i8 %2226, i8* %.pre-phi25, align 1
  %2227 = icmp eq i32 %2214, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %.pre-phi27, align 1
  %2229 = lshr i32 %2214, 31
  %2230 = trunc i32 %2229 to i8
  store i8 %2230, i8* %.pre-phi29, align 1
  %2231 = lshr i32 %2213, 31
  %2232 = xor i32 %2229, %2231
  %2233 = add nuw nsw i32 %2232, %2231
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %.pre-phi31, align 1
  %2236 = sext i32 %2214 to i64
  store i64 %2236, i64* %RCX.i1621, align 8
  %2237 = shl nsw i64 %2236, 2
  %2238 = add i64 %2237, %2209
  %2239 = add i64 %1701, 227
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  store i32 %2241, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %2242 = add i64 %2205, -40
  %2243 = add i64 %1701, 231
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i64*
  %2245 = load i64, i64* %2244, align 8
  store i64 %2245, i64* %RAX.i1124, align 8
  %2246 = add i64 %2205, -24
  %2247 = add i64 %1701, 234
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RDX.i1082, align 8
  %2251 = add i64 %1701, 237
  store i64 %2251, i64* %3, align 8
  %2252 = load i32, i32* %2212, align 4
  %2253 = add i32 %2252, -3
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RSI.i1502, align 8
  %2255 = sext i32 %2249 to i64
  %2256 = sext i32 %2253 to i64
  %2257 = mul nsw i64 %2256, %2255
  %2258 = trunc i64 %2257 to i32
  %2259 = and i64 %2257, 4294967295
  store i64 %2259, i64* %RDX.i1082, align 8
  %2260 = shl i64 %2257, 32
  %2261 = ashr exact i64 %2260, 32
  %2262 = icmp ne i64 %2261, %2257
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %.pre-phi, align 1
  %2264 = and i32 %2258, 255
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264)
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2269 = lshr i32 %2258, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %.pre-phi29, align 1
  store i8 %2263, i8* %.pre-phi31, align 1
  %2271 = load i64, i64* %RBP.i, align 8
  %2272 = add i64 %2271, -48
  %2273 = add i64 %1701, 246
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = add i32 %2275, %2258
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RDX.i1082, align 8
  %2278 = icmp ult i32 %2276, %2258
  %2279 = icmp ult i32 %2276, %2275
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %.pre-phi, align 1
  %2282 = and i32 %2276, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %.pre-phi23, align 1
  %2287 = xor i32 %2275, %2258
  %2288 = xor i32 %2287, %2276
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  store i8 %2291, i8* %.pre-phi25, align 1
  %2292 = icmp eq i32 %2276, 0
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %.pre-phi27, align 1
  %2294 = lshr i32 %2276, 31
  %2295 = trunc i32 %2294 to i8
  store i8 %2295, i8* %.pre-phi29, align 1
  %2296 = lshr i32 %2275, 31
  %2297 = xor i32 %2294, %2269
  %2298 = xor i32 %2294, %2296
  %2299 = add nuw nsw i32 %2297, %2298
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %.pre-phi31, align 1
  %2302 = sext i32 %2276 to i64
  store i64 %2302, i64* %RCX.i1621, align 8
  %2303 = load i64, i64* %RAX.i1124, align 8
  %2304 = shl nsw i64 %2302, 2
  %2305 = add i64 %2304, %2303
  %2306 = add i64 %1701, 254
  store i64 %2306, i64* %3, align 8
  %2307 = load <2 x float>, <2 x float>* %1654, align 1
  %2308 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2309 = inttoptr i64 %2305 to float*
  %2310 = load float, float* %2309, align 4
  %2311 = extractelement <2 x float> %2307, i32 0
  %2312 = fmul float %2311, %2310
  store float %2312, float* %1647, align 1
  %2313 = bitcast <2 x float> %2307 to <2 x i32>
  %2314 = extractelement <2 x i32> %2313, i32 1
  store i32 %2314, i32* %1656, align 1
  %2315 = extractelement <2 x i32> %2308, i32 0
  store i32 %2315, i32* %1657, align 1
  %2316 = extractelement <2 x i32> %2308, i32 1
  store i32 %2316, i32* %1658, align 1
  %2317 = load <2 x float>, <2 x float>* %1659, align 1
  %2318 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2319 = load <2 x float>, <2 x float>* %1654, align 1
  %2320 = extractelement <2 x float> %2317, i32 0
  %2321 = extractelement <2 x float> %2319, i32 0
  %2322 = fadd float %2320, %2321
  store float %2322, float* %1638, align 1
  %2323 = bitcast <2 x float> %2317 to <2 x i32>
  %2324 = extractelement <2 x i32> %2323, i32 1
  store i32 %2324, i32* %1661, align 1
  %2325 = extractelement <2 x i32> %2318, i32 0
  store i32 %2325, i32* %1662, align 1
  %2326 = extractelement <2 x i32> %2318, i32 1
  store i32 %2326, i32* %1663, align 1
  %2327 = add i64 %2271, -32
  %2328 = add i64 %1701, 262
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i64*
  %2330 = load i64, i64* %2329, align 8
  store i64 %2330, i64* %RAX.i1124, align 8
  %2331 = add i64 %2271, -44
  %2332 = add i64 %1701, 265
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = add i32 %2334, -2
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RDX.i1082, align 8
  %2337 = icmp ult i32 %2334, 2
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %.pre-phi, align 1
  %2339 = and i32 %2335, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %.pre-phi23, align 1
  %2344 = xor i32 %2334, %2335
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %.pre-phi25, align 1
  %2348 = icmp eq i32 %2335, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %.pre-phi27, align 1
  %2350 = lshr i32 %2335, 31
  %2351 = trunc i32 %2350 to i8
  store i8 %2351, i8* %.pre-phi29, align 1
  %2352 = lshr i32 %2334, 31
  %2353 = xor i32 %2350, %2352
  %2354 = add nuw nsw i32 %2353, %2352
  %2355 = icmp eq i32 %2354, 2
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %.pre-phi31, align 1
  %2357 = sext i32 %2335 to i64
  store i64 %2357, i64* %RCX.i1621, align 8
  %2358 = shl nsw i64 %2357, 2
  %2359 = add i64 %2358, %2330
  %2360 = add i64 %1701, 276
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  store i32 %2362, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -40
  %2365 = add i64 %1701, 280
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RAX.i1124, align 8
  %2368 = add i64 %2363, -24
  %2369 = add i64 %1701, 283
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RDX.i1082, align 8
  %2373 = add i64 %2363, -44
  %2374 = add i64 %1701, 286
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, -2
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RSI.i1502, align 8
  %2379 = sext i32 %2371 to i64
  %2380 = sext i32 %2377 to i64
  %2381 = mul nsw i64 %2380, %2379
  %2382 = trunc i64 %2381 to i32
  %2383 = and i64 %2381, 4294967295
  store i64 %2383, i64* %RDX.i1082, align 8
  %2384 = shl i64 %2381, 32
  %2385 = ashr exact i64 %2384, 32
  %2386 = icmp ne i64 %2385, %2381
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %.pre-phi, align 1
  %2388 = and i32 %2382, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2393 = lshr i32 %2382, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %.pre-phi29, align 1
  store i8 %2387, i8* %.pre-phi31, align 1
  %2395 = add i64 %2363, -48
  %2396 = add i64 %1701, 295
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = add i32 %2398, %2382
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RDX.i1082, align 8
  %2401 = icmp ult i32 %2399, %2382
  %2402 = icmp ult i32 %2399, %2398
  %2403 = or i1 %2401, %2402
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %.pre-phi, align 1
  %2405 = and i32 %2399, 255
  %2406 = tail call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  store i8 %2409, i8* %.pre-phi23, align 1
  %2410 = xor i32 %2398, %2382
  %2411 = xor i32 %2410, %2399
  %2412 = lshr i32 %2411, 4
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  store i8 %2414, i8* %.pre-phi25, align 1
  %2415 = icmp eq i32 %2399, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %.pre-phi27, align 1
  %2417 = lshr i32 %2399, 31
  %2418 = trunc i32 %2417 to i8
  store i8 %2418, i8* %.pre-phi29, align 1
  %2419 = lshr i32 %2398, 31
  %2420 = xor i32 %2417, %2393
  %2421 = xor i32 %2417, %2419
  %2422 = add nuw nsw i32 %2420, %2421
  %2423 = icmp eq i32 %2422, 2
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %.pre-phi31, align 1
  %2425 = sext i32 %2399 to i64
  store i64 %2425, i64* %RCX.i1621, align 8
  %2426 = load i64, i64* %RAX.i1124, align 8
  %2427 = shl nsw i64 %2425, 2
  %2428 = add i64 %2427, %2426
  %2429 = add i64 %1701, 303
  store i64 %2429, i64* %3, align 8
  %2430 = load <2 x float>, <2 x float>* %1654, align 1
  %2431 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2432 = inttoptr i64 %2428 to float*
  %2433 = load float, float* %2432, align 4
  %2434 = extractelement <2 x float> %2430, i32 0
  %2435 = fmul float %2434, %2433
  store float %2435, float* %1647, align 1
  %2436 = bitcast <2 x float> %2430 to <2 x i32>
  %2437 = extractelement <2 x i32> %2436, i32 1
  store i32 %2437, i32* %1656, align 1
  %2438 = extractelement <2 x i32> %2431, i32 0
  store i32 %2438, i32* %1657, align 1
  %2439 = extractelement <2 x i32> %2431, i32 1
  store i32 %2439, i32* %1658, align 1
  %2440 = load <2 x float>, <2 x float>* %1659, align 1
  %2441 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2442 = load <2 x float>, <2 x float>* %1654, align 1
  %2443 = extractelement <2 x float> %2440, i32 0
  %2444 = extractelement <2 x float> %2442, i32 0
  %2445 = fadd float %2443, %2444
  store float %2445, float* %1638, align 1
  %2446 = bitcast <2 x float> %2440 to <2 x i32>
  %2447 = extractelement <2 x i32> %2446, i32 1
  store i32 %2447, i32* %1661, align 1
  %2448 = extractelement <2 x i32> %2441, i32 0
  store i32 %2448, i32* %1662, align 1
  %2449 = extractelement <2 x i32> %2441, i32 1
  store i32 %2449, i32* %1663, align 1
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -32
  %2452 = add i64 %1701, 311
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i64*
  %2454 = load i64, i64* %2453, align 8
  store i64 %2454, i64* %RAX.i1124, align 8
  %2455 = add i64 %2450, -44
  %2456 = add i64 %1701, 314
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = add i32 %2458, -1
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RDX.i1082, align 8
  %2461 = icmp eq i32 %2458, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %.pre-phi, align 1
  %2463 = and i32 %2459, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %.pre-phi23, align 1
  %2468 = xor i32 %2458, %2459
  %2469 = lshr i32 %2468, 4
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  store i8 %2471, i8* %.pre-phi25, align 1
  %2472 = icmp eq i32 %2459, 0
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %.pre-phi27, align 1
  %2474 = lshr i32 %2459, 31
  %2475 = trunc i32 %2474 to i8
  store i8 %2475, i8* %.pre-phi29, align 1
  %2476 = lshr i32 %2458, 31
  %2477 = xor i32 %2474, %2476
  %2478 = add nuw nsw i32 %2477, %2476
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %.pre-phi31, align 1
  %2481 = sext i32 %2459 to i64
  store i64 %2481, i64* %RCX.i1621, align 8
  %2482 = shl nsw i64 %2481, 2
  %2483 = add i64 %2482, %2454
  %2484 = add i64 %1701, 325
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  store i32 %2486, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %2487 = add i64 %2450, -40
  %2488 = add i64 %1701, 329
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i64*
  %2490 = load i64, i64* %2489, align 8
  store i64 %2490, i64* %RAX.i1124, align 8
  %2491 = add i64 %2450, -24
  %2492 = add i64 %1701, 332
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RDX.i1082, align 8
  %2496 = add i64 %1701, 335
  store i64 %2496, i64* %3, align 8
  %2497 = load i32, i32* %2457, align 4
  %2498 = add i32 %2497, -1
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RSI.i1502, align 8
  %2500 = sext i32 %2494 to i64
  %2501 = sext i32 %2498 to i64
  %2502 = mul nsw i64 %2501, %2500
  %2503 = trunc i64 %2502 to i32
  %2504 = and i64 %2502, 4294967295
  store i64 %2504, i64* %RDX.i1082, align 8
  %2505 = shl i64 %2502, 32
  %2506 = ashr exact i64 %2505, 32
  %2507 = icmp ne i64 %2506, %2502
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %.pre-phi, align 1
  %2509 = and i32 %2503, 255
  %2510 = tail call i32 @llvm.ctpop.i32(i32 %2509)
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = xor i8 %2512, 1
  store i8 %2513, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2514 = lshr i32 %2503, 31
  %2515 = trunc i32 %2514 to i8
  store i8 %2515, i8* %.pre-phi29, align 1
  store i8 %2508, i8* %.pre-phi31, align 1
  %2516 = load i64, i64* %RBP.i, align 8
  %2517 = add i64 %2516, -48
  %2518 = add i64 %1701, 344
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i32*
  %2520 = load i32, i32* %2519, align 4
  %2521 = add i32 %2520, %2503
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RDX.i1082, align 8
  %2523 = icmp ult i32 %2521, %2503
  %2524 = icmp ult i32 %2521, %2520
  %2525 = or i1 %2523, %2524
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %.pre-phi, align 1
  %2527 = and i32 %2521, 255
  %2528 = tail call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  store i8 %2531, i8* %.pre-phi23, align 1
  %2532 = xor i32 %2520, %2503
  %2533 = xor i32 %2532, %2521
  %2534 = lshr i32 %2533, 4
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  store i8 %2536, i8* %.pre-phi25, align 1
  %2537 = icmp eq i32 %2521, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %.pre-phi27, align 1
  %2539 = lshr i32 %2521, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %.pre-phi29, align 1
  %2541 = lshr i32 %2520, 31
  %2542 = xor i32 %2539, %2514
  %2543 = xor i32 %2539, %2541
  %2544 = add nuw nsw i32 %2542, %2543
  %2545 = icmp eq i32 %2544, 2
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %.pre-phi31, align 1
  %2547 = sext i32 %2521 to i64
  store i64 %2547, i64* %RCX.i1621, align 8
  %2548 = load i64, i64* %RAX.i1124, align 8
  %2549 = shl nsw i64 %2547, 2
  %2550 = add i64 %2549, %2548
  %2551 = add i64 %1701, 352
  store i64 %2551, i64* %3, align 8
  %2552 = load <2 x float>, <2 x float>* %1654, align 1
  %2553 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2554 = inttoptr i64 %2550 to float*
  %2555 = load float, float* %2554, align 4
  %2556 = extractelement <2 x float> %2552, i32 0
  %2557 = fmul float %2556, %2555
  store float %2557, float* %1647, align 1
  %2558 = bitcast <2 x float> %2552 to <2 x i32>
  %2559 = extractelement <2 x i32> %2558, i32 1
  store i32 %2559, i32* %1656, align 1
  %2560 = extractelement <2 x i32> %2553, i32 0
  store i32 %2560, i32* %1657, align 1
  %2561 = extractelement <2 x i32> %2553, i32 1
  store i32 %2561, i32* %1658, align 1
  %2562 = load <2 x float>, <2 x float>* %1659, align 1
  %2563 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2564 = load <2 x float>, <2 x float>* %1654, align 1
  %2565 = extractelement <2 x float> %2562, i32 0
  %2566 = extractelement <2 x float> %2564, i32 0
  %2567 = fadd float %2565, %2566
  store float %2567, float* %1638, align 1
  %2568 = bitcast <2 x float> %2562 to <2 x i32>
  %2569 = extractelement <2 x i32> %2568, i32 1
  store i32 %2569, i32* %1661, align 1
  %2570 = extractelement <2 x i32> %2563, i32 0
  store i32 %2570, i32* %1662, align 1
  %2571 = extractelement <2 x i32> %2563, i32 1
  store i32 %2571, i32* %1663, align 1
  %2572 = add i64 %2516, -32
  %2573 = add i64 %1701, 360
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i64*
  %2575 = load i64, i64* %2574, align 8
  store i64 %2575, i64* %RAX.i1124, align 8
  %2576 = add i64 %2516, -44
  %2577 = add i64 %1701, 364
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2576 to i32*
  %2579 = load i32, i32* %2578, align 4
  %2580 = sext i32 %2579 to i64
  store i64 %2580, i64* %RCX.i1621, align 8
  %2581 = shl nsw i64 %2580, 2
  %2582 = add i64 %2581, %2575
  %2583 = add i64 %1701, 369
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  store i32 %2585, i32* %1751, align 1
  store float 0.000000e+00, float* %1649, align 1
  store float 0.000000e+00, float* %1651, align 1
  store float 0.000000e+00, float* %1653, align 1
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -40
  %2588 = add i64 %1701, 373
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i1124, align 8
  %2591 = add i64 %2586, -24
  %2592 = add i64 %1701, 376
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RDX.i1082, align 8
  %2596 = add i64 %2586, -44
  %2597 = add i64 %1701, 380
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = sext i32 %2594 to i64
  %2601 = sext i32 %2599 to i64
  %2602 = mul nsw i64 %2601, %2600
  %2603 = trunc i64 %2602 to i32
  %2604 = and i64 %2602, 4294967295
  store i64 %2604, i64* %RDX.i1082, align 8
  %2605 = shl i64 %2602, 32
  %2606 = ashr exact i64 %2605, 32
  %2607 = icmp ne i64 %2606, %2602
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %.pre-phi, align 1
  %2609 = and i32 %2603, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2614 = lshr i32 %2603, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %.pre-phi29, align 1
  store i8 %2608, i8* %.pre-phi31, align 1
  %2616 = add i64 %2586, -48
  %2617 = add i64 %1701, 383
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i32*
  %2619 = load i32, i32* %2618, align 4
  %2620 = add i32 %2619, %2603
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RDX.i1082, align 8
  %2622 = icmp ult i32 %2620, %2603
  %2623 = icmp ult i32 %2620, %2619
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %.pre-phi, align 1
  %2626 = and i32 %2620, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %.pre-phi23, align 1
  %2631 = xor i32 %2619, %2603
  %2632 = xor i32 %2631, %2620
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %.pre-phi25, align 1
  %2636 = icmp eq i32 %2620, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %.pre-phi27, align 1
  %2638 = lshr i32 %2620, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %.pre-phi29, align 1
  %2640 = lshr i32 %2619, 31
  %2641 = xor i32 %2638, %2614
  %2642 = xor i32 %2638, %2640
  %2643 = add nuw nsw i32 %2641, %2642
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %.pre-phi31, align 1
  %2646 = sext i32 %2620 to i64
  store i64 %2646, i64* %RCX.i1621, align 8
  %2647 = shl nsw i64 %2646, 2
  %2648 = add i64 %2647, %2590
  %2649 = add i64 %1701, 391
  store i64 %2649, i64* %3, align 8
  %2650 = load <2 x float>, <2 x float>* %1654, align 1
  %2651 = load <2 x i32>, <2 x i32>* %1655, align 1
  %2652 = inttoptr i64 %2648 to float*
  %2653 = load float, float* %2652, align 4
  %2654 = extractelement <2 x float> %2650, i32 0
  %2655 = fmul float %2654, %2653
  store float %2655, float* %1647, align 1
  %2656 = bitcast <2 x float> %2650 to <2 x i32>
  %2657 = extractelement <2 x i32> %2656, i32 1
  store i32 %2657, i32* %1656, align 1
  %2658 = extractelement <2 x i32> %2651, i32 0
  store i32 %2658, i32* %1657, align 1
  %2659 = extractelement <2 x i32> %2651, i32 1
  store i32 %2659, i32* %1658, align 1
  %2660 = load <2 x float>, <2 x float>* %1659, align 1
  %2661 = load <2 x i32>, <2 x i32>* %1660, align 1
  %2662 = load <2 x float>, <2 x float>* %1654, align 1
  %2663 = extractelement <2 x float> %2660, i32 0
  %2664 = extractelement <2 x float> %2662, i32 0
  %2665 = fadd float %2663, %2664
  store float %2665, float* %1638, align 1
  %2666 = bitcast <2 x float> %2660 to <2 x i32>
  %2667 = extractelement <2 x i32> %2666, i32 1
  store i32 %2667, i32* %1661, align 1
  %2668 = extractelement <2 x i32> %2661, i32 0
  store i32 %2668, i32* %1662, align 1
  %2669 = extractelement <2 x i32> %2661, i32 1
  store i32 %2669, i32* %1663, align 1
  %2670 = load i64, i64* %RBP.i, align 8
  %2671 = add i64 %2670, -16
  %2672 = add i64 %1701, 399
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i64*
  %2674 = load i64, i64* %2673, align 8
  store i64 %2674, i64* %RAX.i1124, align 8
  %2675 = add i64 %2670, -48
  %2676 = add i64 %1701, 403
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = sext i32 %2678 to i64
  store i64 %2679, i64* %RCX.i1621, align 8
  %2680 = shl nsw i64 %2679, 2
  %2681 = add i64 %2680, %2674
  %2682 = add i64 %1701, 408
  store i64 %2682, i64* %3, align 8
  %2683 = load <2 x float>, <2 x float>* %1659, align 1
  %2684 = extractelement <2 x float> %2683, i32 0
  %2685 = inttoptr i64 %2681 to float*
  store float %2684, float* %2685, align 4
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -48
  %2688 = load i64, i64* %3, align 8
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2687 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = add i32 %2691, 1
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i1124, align 8
  %2694 = icmp eq i32 %2691, -1
  %2695 = icmp eq i32 %2692, 0
  %2696 = or i1 %2694, %2695
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %.pre-phi, align 1
  %2698 = and i32 %2692, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %.pre-phi23, align 1
  %2703 = xor i32 %2691, %2692
  %2704 = lshr i32 %2703, 4
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  store i8 %2706, i8* %.pre-phi25, align 1
  %2707 = zext i1 %2695 to i8
  store i8 %2707, i8* %.pre-phi27, align 1
  %2708 = lshr i32 %2692, 31
  %2709 = trunc i32 %2708 to i8
  store i8 %2709, i8* %.pre-phi29, align 1
  %2710 = lshr i32 %2691, 31
  %2711 = xor i32 %2708, %2710
  %2712 = add nuw nsw i32 %2711, %2708
  %2713 = icmp eq i32 %2712, 2
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %.pre-phi31, align 1
  %2715 = add i64 %2688, 9
  store i64 %2715, i64* %3, align 8
  store i32 %2692, i32* %2690, align 4
  %2716 = load i64, i64* %3, align 8
  %2717 = add i64 %2716, -429
  store i64 %2717, i64* %3, align 8
  br label %block_.L_4022cd

block_.L_40247f:                                  ; preds = %block_.L_4022cd
  %2718 = add i64 %1701, 5
  store i64 %2718, i64* %3, align 8
  br label %block_.L_402484

block_.L_402484:                                  ; preds = %block_.L_40247f, %routine_idivl__ecx.exit1122
  %2719 = phi i64 [ %1665, %block_.L_40247f ], [ %1576, %routine_idivl__ecx.exit1122 ]
  %2720 = phi i64 [ %2718, %block_.L_40247f ], [ %1605, %routine_idivl__ecx.exit1122 ]
  store i64 16, i64* %RAX.i1124, align 8
  %2721 = add i64 %2719, -20
  %2722 = add i64 %2720, 8
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RCX.i1621, align 8
  %2726 = add i64 %2719, -72
  %2727 = add i64 %2720, 11
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  store i32 16, i32* %2728, align 4
  %2729 = load i32, i32* %ECX.i1628, align 4
  %2730 = zext i32 %2729 to i64
  %2731 = load i64, i64* %3, align 8
  store i64 %2730, i64* %RAX.i1124, align 8
  %2732 = sext i32 %2729 to i64
  %2733 = lshr i64 %2732, 32
  store i64 %2733, i64* %63, align 8
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, -72
  %2736 = add i64 %2731, 6
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RCX.i1621, align 8
  %2740 = add i64 %2731, 8
  store i64 %2740, i64* %3, align 8
  %2741 = sext i32 %2738 to i64
  %2742 = shl nuw i64 %2733, 32
  %2743 = or i64 %2742, %2730
  %2744 = sdiv i64 %2743, %2741
  %2745 = shl i64 %2744, 32
  %2746 = ashr exact i64 %2745, 32
  %2747 = icmp eq i64 %2744, %2746
  br i1 %2747, label %2750, label %2748

; <label>:2748:                                   ; preds = %block_.L_402484
  %2749 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2740, %struct.Memory* %1572)
  %RDX.i722.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre16 = load i64, i64* %RDX.i722.phi.trans.insert, align 8
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:2750:                                   ; preds = %block_.L_402484
  %2751 = srem i64 %2743, %2741
  %2752 = and i64 %2744, 4294967295
  store i64 %2752, i64* %RAX.i1124, align 8
  %2753 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %2754 = and i64 %2751, 4294967295
  store i64 %2754, i64* %2753, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2750, %2748
  %RDX.i722.pre-phi = phi i64* [ %2753, %2750 ], [ %RDX.i722.phi.trans.insert, %2748 ]
  %2755 = phi i64 [ %2734, %2750 ], [ %.pre18, %2748 ]
  %2756 = phi i64 [ %2740, %2750 ], [ %.pre17, %2748 ]
  %2757 = phi i64 [ %2754, %2750 ], [ %.pre16, %2748 ]
  %2758 = phi %struct.Memory* [ %1572, %2750 ], [ %2749, %2748 ]
  %2759 = trunc i64 %2757 to i32
  %2760 = add i32 %2759, 16
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RDX.i722.pre-phi, align 8
  %2762 = icmp ugt i32 %2759, -17
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %.pre-phi, align 1
  %2764 = and i32 %2760, 255
  %2765 = tail call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  store i8 %2768, i8* %.pre-phi23, align 1
  %2769 = xor i32 %2759, 16
  %2770 = xor i32 %2769, %2760
  %2771 = lshr i32 %2770, 4
  %2772 = trunc i32 %2771 to i8
  %2773 = and i8 %2772, 1
  store i8 %2773, i8* %.pre-phi25, align 1
  %2774 = icmp eq i32 %2760, 0
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %.pre-phi27, align 1
  %2776 = lshr i32 %2760, 31
  %2777 = trunc i32 %2776 to i8
  store i8 %2777, i8* %.pre-phi29, align 1
  %2778 = lshr i32 %2759, 31
  %2779 = xor i32 %2776, %2778
  %2780 = add nuw nsw i32 %2779, %2776
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %.pre-phi31, align 1
  %2783 = add i64 %2755, -52
  %2784 = add i64 %2756, 6
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i32*
  store i32 %2760, i32* %2785, align 4
  %2786 = load i64, i64* %RBP.i, align 8
  %2787 = add i64 %2786, -52
  %2788 = load i64, i64* %3, align 8
  %2789 = add i64 %2788, 3
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2787 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = add i32 %2791, -1
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RDX.i722.pre-phi, align 8
  %2794 = icmp eq i32 %2791, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %.pre-phi, align 1
  %2796 = and i32 %2792, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %.pre-phi23, align 1
  %2801 = xor i32 %2791, %2792
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %.pre-phi25, align 1
  %2805 = icmp eq i32 %2792, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %.pre-phi27, align 1
  %2807 = lshr i32 %2792, 31
  %2808 = trunc i32 %2807 to i8
  store i8 %2808, i8* %.pre-phi29, align 1
  %2809 = lshr i32 %2791, 31
  %2810 = xor i32 %2807, %2809
  %2811 = add nuw nsw i32 %2810, %2809
  %2812 = icmp eq i32 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %.pre-phi31, align 1
  %2814 = add i64 %2786, -44
  %2815 = add i64 %2788, 9
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  store i32 %2792, i32* %2816, align 4
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2818 = bitcast [32 x %union.VectorReg]* %2817 to i8*
  %2819 = bitcast [32 x %union.VectorReg]* %2817 to float*
  %2820 = getelementptr inbounds i8, i8* %2818, i64 4
  %2821 = bitcast i8* %2820 to float*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2823 = bitcast i64* %2822 to float*
  %2824 = getelementptr inbounds i8, i8* %2818, i64 12
  %2825 = bitcast i8* %2824 to float*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2827 = bitcast %union.VectorReg* %2826 to i8*
  %2828 = bitcast %union.VectorReg* %2826 to float*
  %2829 = getelementptr inbounds i8, i8* %2827, i64 4
  %2830 = bitcast i8* %2829 to float*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2832 = bitcast i64* %2831 to float*
  %2833 = getelementptr inbounds i8, i8* %2827, i64 12
  %2834 = bitcast i8* %2833 to float*
  %2835 = bitcast %union.VectorReg* %2826 to <2 x float>*
  %2836 = bitcast i64* %2831 to <2 x i32>*
  %2837 = bitcast i8* %2829 to i32*
  %2838 = bitcast i64* %2831 to i32*
  %2839 = bitcast i8* %2833 to i32*
  %2840 = bitcast [32 x %union.VectorReg]* %2817 to <2 x float>*
  %2841 = bitcast i64* %2822 to <2 x i32>*
  %2842 = bitcast i8* %2820 to i32*
  %2843 = bitcast i64* %2822 to i32*
  %2844 = bitcast i8* %2824 to i32*
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_4024a6

block_.L_4024a6:                                  ; preds = %block_.L_4027f3, %routine_idivl__ecx.exit
  %2845 = phi i64 [ %4949, %block_.L_4027f3 ], [ %.pre19, %routine_idivl__ecx.exit ]
  %2846 = load i64, i64* %RBP.i, align 8
  %2847 = add i64 %2846, -44
  %2848 = add i64 %2845, 3
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i1124, align 8
  %2852 = add i64 %2846, -20
  %2853 = add i64 %2845, 6
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = sub i32 %2850, %2855
  %2857 = icmp ult i32 %2850, %2855
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %.pre-phi, align 1
  %2859 = and i32 %2856, 255
  %2860 = tail call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  store i8 %2863, i8* %.pre-phi23, align 1
  %2864 = xor i32 %2855, %2850
  %2865 = xor i32 %2864, %2856
  %2866 = lshr i32 %2865, 4
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  store i8 %2868, i8* %.pre-phi25, align 1
  %2869 = icmp eq i32 %2856, 0
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %.pre-phi27, align 1
  %2871 = lshr i32 %2856, 31
  %2872 = trunc i32 %2871 to i8
  store i8 %2872, i8* %.pre-phi29, align 1
  %2873 = lshr i32 %2850, 31
  %2874 = lshr i32 %2855, 31
  %2875 = xor i32 %2874, %2873
  %2876 = xor i32 %2871, %2873
  %2877 = add nuw nsw i32 %2876, %2875
  %2878 = icmp eq i32 %2877, 2
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %.pre-phi31, align 1
  %2880 = icmp ne i8 %2872, 0
  %2881 = xor i1 %2880, %2878
  %.v40 = select i1 %2881, i64 12, i64 864
  %2882 = add i64 %2845, %.v40
  store i64 %2882, i64* %3, align 8
  br i1 %2881, label %block_4024b2, label %block_.L_402806

block_4024b2:                                     ; preds = %block_.L_4024a6
  %2883 = add i64 %2846, -48
  %2884 = add i64 %2882, 7
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  store i32 0, i32* %2885, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_4024b9

block_.L_4024b9:                                  ; preds = %block_4024c5, %block_4024b2
  %2886 = phi i64 [ %4919, %block_4024c5 ], [ %.pre20, %block_4024b2 ]
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -48
  %2889 = add i64 %2886, 3
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = zext i32 %2891 to i64
  store i64 %2892, i64* %RAX.i1124, align 8
  %2893 = add i64 %2887, -4
  %2894 = add i64 %2886, 6
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i32*
  %2896 = load i32, i32* %2895, align 4
  %2897 = sub i32 %2891, %2896
  %2898 = icmp ult i32 %2891, %2896
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %.pre-phi, align 1
  %2900 = and i32 %2897, 255
  %2901 = tail call i32 @llvm.ctpop.i32(i32 %2900)
  %2902 = trunc i32 %2901 to i8
  %2903 = and i8 %2902, 1
  %2904 = xor i8 %2903, 1
  store i8 %2904, i8* %.pre-phi23, align 1
  %2905 = xor i32 %2896, %2891
  %2906 = xor i32 %2905, %2897
  %2907 = lshr i32 %2906, 4
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  store i8 %2909, i8* %.pre-phi25, align 1
  %2910 = icmp eq i32 %2897, 0
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %.pre-phi27, align 1
  %2912 = lshr i32 %2897, 31
  %2913 = trunc i32 %2912 to i8
  store i8 %2913, i8* %.pre-phi29, align 1
  %2914 = lshr i32 %2891, 31
  %2915 = lshr i32 %2896, 31
  %2916 = xor i32 %2915, %2914
  %2917 = xor i32 %2912, %2914
  %2918 = add nuw nsw i32 %2917, %2916
  %2919 = icmp eq i32 %2918, 2
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %.pre-phi31, align 1
  %2921 = icmp ne i8 %2913, 0
  %2922 = xor i1 %2921, %2919
  %.v41 = select i1 %2922, i64 12, i64 826
  %2923 = add i64 %2886, %.v41
  store i64 %2923, i64* %3, align 8
  br i1 %2922, label %block_4024c5, label %block_.L_4027f3

block_4024c5:                                     ; preds = %block_.L_4024b9
  %2924 = add i64 %2887, -16
  %2925 = add i64 %2923, 4
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i64*
  %2927 = load i64, i64* %2926, align 8
  store i64 %2927, i64* %RAX.i1124, align 8
  %2928 = add i64 %2923, 8
  store i64 %2928, i64* %3, align 8
  %2929 = load i32, i32* %2890, align 4
  %2930 = sext i32 %2929 to i64
  store i64 %2930, i64* %RCX.i1621, align 8
  %2931 = shl nsw i64 %2930, 2
  %2932 = add i64 %2931, %2927
  %2933 = add i64 %2923, 13
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = bitcast [32 x %union.VectorReg]* %2817 to i32*
  store i32 %2935, i32* %2936, align 1
  store float 0.000000e+00, float* %2821, align 1
  store float 0.000000e+00, float* %2823, align 1
  store float 0.000000e+00, float* %2825, align 1
  %2937 = add i64 %2887, -32
  %2938 = add i64 %2923, 17
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RAX.i1124, align 8
  %2941 = add i64 %2887, -44
  %2942 = add i64 %2923, 20
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = add i32 %2944, -15
  %2946 = zext i32 %2945 to i64
  store i64 %2946, i64* %RDX.i722.pre-phi, align 8
  %2947 = icmp ult i32 %2944, 15
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %.pre-phi, align 1
  %2949 = and i32 %2945, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %.pre-phi23, align 1
  %2954 = xor i32 %2944, %2945
  %2955 = lshr i32 %2954, 4
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  store i8 %2957, i8* %.pre-phi25, align 1
  %2958 = icmp eq i32 %2945, 0
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %.pre-phi27, align 1
  %2960 = lshr i32 %2945, 31
  %2961 = trunc i32 %2960 to i8
  store i8 %2961, i8* %.pre-phi29, align 1
  %2962 = lshr i32 %2944, 31
  %2963 = xor i32 %2960, %2962
  %2964 = add nuw nsw i32 %2963, %2962
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %.pre-phi31, align 1
  %2967 = sext i32 %2945 to i64
  store i64 %2967, i64* %RCX.i1621, align 8
  %2968 = shl nsw i64 %2967, 2
  %2969 = add i64 %2968, %2940
  %2970 = add i64 %2923, 31
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = bitcast %union.VectorReg* %2826 to i32*
  store i32 %2972, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %2974 = add i64 %2887, -40
  %2975 = add i64 %2923, 35
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %RAX.i1124, align 8
  %2978 = add i64 %2887, -24
  %2979 = add i64 %2923, 38
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
  %2981 = load i32, i32* %2980, align 4
  %2982 = zext i32 %2981 to i64
  store i64 %2982, i64* %RDX.i722.pre-phi, align 8
  %2983 = add i64 %2923, 41
  store i64 %2983, i64* %3, align 8
  %2984 = load i32, i32* %2943, align 4
  %2985 = add i32 %2984, -15
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RSI.i1502, align 8
  %2987 = sext i32 %2981 to i64
  %2988 = sext i32 %2985 to i64
  %2989 = mul nsw i64 %2988, %2987
  %2990 = trunc i64 %2989 to i32
  %2991 = and i64 %2989, 4294967295
  store i64 %2991, i64* %RDX.i722.pre-phi, align 8
  %2992 = shl i64 %2989, 32
  %2993 = ashr exact i64 %2992, 32
  %2994 = icmp ne i64 %2993, %2989
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %.pre-phi, align 1
  %2996 = and i32 %2990, 255
  %2997 = tail call i32 @llvm.ctpop.i32(i32 %2996)
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  %3000 = xor i8 %2999, 1
  store i8 %3000, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3001 = lshr i32 %2990, 31
  %3002 = trunc i32 %3001 to i8
  store i8 %3002, i8* %.pre-phi29, align 1
  store i8 %2995, i8* %.pre-phi31, align 1
  %3003 = load i64, i64* %RBP.i, align 8
  %3004 = add i64 %3003, -48
  %3005 = add i64 %2923, 50
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = add i32 %3007, %2990
  %3009 = zext i32 %3008 to i64
  store i64 %3009, i64* %RDX.i722.pre-phi, align 8
  %3010 = icmp ult i32 %3008, %2990
  %3011 = icmp ult i32 %3008, %3007
  %3012 = or i1 %3010, %3011
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %.pre-phi, align 1
  %3014 = and i32 %3008, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %.pre-phi23, align 1
  %3019 = xor i32 %3007, %2990
  %3020 = xor i32 %3019, %3008
  %3021 = lshr i32 %3020, 4
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  store i8 %3023, i8* %.pre-phi25, align 1
  %3024 = icmp eq i32 %3008, 0
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %.pre-phi27, align 1
  %3026 = lshr i32 %3008, 31
  %3027 = trunc i32 %3026 to i8
  store i8 %3027, i8* %.pre-phi29, align 1
  %3028 = lshr i32 %3007, 31
  %3029 = xor i32 %3026, %3001
  %3030 = xor i32 %3026, %3028
  %3031 = add nuw nsw i32 %3029, %3030
  %3032 = icmp eq i32 %3031, 2
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %.pre-phi31, align 1
  %3034 = sext i32 %3008 to i64
  store i64 %3034, i64* %RCX.i1621, align 8
  %3035 = load i64, i64* %RAX.i1124, align 8
  %3036 = shl nsw i64 %3034, 2
  %3037 = add i64 %3036, %3035
  %3038 = add i64 %2923, 58
  store i64 %3038, i64* %3, align 8
  %3039 = load <2 x float>, <2 x float>* %2835, align 1
  %3040 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3041 = inttoptr i64 %3037 to float*
  %3042 = load float, float* %3041, align 4
  %3043 = extractelement <2 x float> %3039, i32 0
  %3044 = fmul float %3043, %3042
  store float %3044, float* %2828, align 1
  %3045 = bitcast <2 x float> %3039 to <2 x i32>
  %3046 = extractelement <2 x i32> %3045, i32 1
  store i32 %3046, i32* %2837, align 1
  %3047 = extractelement <2 x i32> %3040, i32 0
  store i32 %3047, i32* %2838, align 1
  %3048 = extractelement <2 x i32> %3040, i32 1
  store i32 %3048, i32* %2839, align 1
  %3049 = load <2 x float>, <2 x float>* %2840, align 1
  %3050 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3051 = load <2 x float>, <2 x float>* %2835, align 1
  %3052 = extractelement <2 x float> %3049, i32 0
  %3053 = extractelement <2 x float> %3051, i32 0
  %3054 = fadd float %3052, %3053
  store float %3054, float* %2819, align 1
  %3055 = bitcast <2 x float> %3049 to <2 x i32>
  %3056 = extractelement <2 x i32> %3055, i32 1
  store i32 %3056, i32* %2842, align 1
  %3057 = extractelement <2 x i32> %3050, i32 0
  store i32 %3057, i32* %2843, align 1
  %3058 = extractelement <2 x i32> %3050, i32 1
  store i32 %3058, i32* %2844, align 1
  %3059 = add i64 %3003, -32
  %3060 = add i64 %2923, 66
  store i64 %3060, i64* %3, align 8
  %3061 = inttoptr i64 %3059 to i64*
  %3062 = load i64, i64* %3061, align 8
  store i64 %3062, i64* %RAX.i1124, align 8
  %3063 = add i64 %3003, -44
  %3064 = add i64 %2923, 69
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = add i32 %3066, -14
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RDX.i722.pre-phi, align 8
  %3069 = icmp ult i32 %3066, 14
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %.pre-phi, align 1
  %3071 = and i32 %3067, 255
  %3072 = tail call i32 @llvm.ctpop.i32(i32 %3071)
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = xor i8 %3074, 1
  store i8 %3075, i8* %.pre-phi23, align 1
  %3076 = xor i32 %3066, %3067
  %3077 = lshr i32 %3076, 4
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %.pre-phi25, align 1
  %3080 = icmp eq i32 %3067, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %.pre-phi27, align 1
  %3082 = lshr i32 %3067, 31
  %3083 = trunc i32 %3082 to i8
  store i8 %3083, i8* %.pre-phi29, align 1
  %3084 = lshr i32 %3066, 31
  %3085 = xor i32 %3082, %3084
  %3086 = add nuw nsw i32 %3085, %3084
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %.pre-phi31, align 1
  %3089 = sext i32 %3067 to i64
  store i64 %3089, i64* %RCX.i1621, align 8
  %3090 = shl nsw i64 %3089, 2
  %3091 = add i64 %3090, %3062
  %3092 = add i64 %2923, 80
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i32*
  %3094 = load i32, i32* %3093, align 4
  store i32 %3094, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -40
  %3097 = add i64 %2923, 84
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i64*
  %3099 = load i64, i64* %3098, align 8
  store i64 %3099, i64* %RAX.i1124, align 8
  %3100 = add i64 %3095, -24
  %3101 = add i64 %2923, 87
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RDX.i722.pre-phi, align 8
  %3105 = add i64 %3095, -44
  %3106 = add i64 %2923, 90
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = add i32 %3108, -14
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RSI.i1502, align 8
  %3111 = sext i32 %3103 to i64
  %3112 = sext i32 %3109 to i64
  %3113 = mul nsw i64 %3112, %3111
  %3114 = trunc i64 %3113 to i32
  %3115 = and i64 %3113, 4294967295
  store i64 %3115, i64* %RDX.i722.pre-phi, align 8
  %3116 = shl i64 %3113, 32
  %3117 = ashr exact i64 %3116, 32
  %3118 = icmp ne i64 %3117, %3113
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %.pre-phi, align 1
  %3120 = and i32 %3114, 255
  %3121 = tail call i32 @llvm.ctpop.i32(i32 %3120)
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  %3124 = xor i8 %3123, 1
  store i8 %3124, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3125 = lshr i32 %3114, 31
  %3126 = trunc i32 %3125 to i8
  store i8 %3126, i8* %.pre-phi29, align 1
  store i8 %3119, i8* %.pre-phi31, align 1
  %3127 = add i64 %3095, -48
  %3128 = add i64 %2923, 99
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = add i32 %3130, %3114
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RDX.i722.pre-phi, align 8
  %3133 = icmp ult i32 %3131, %3114
  %3134 = icmp ult i32 %3131, %3130
  %3135 = or i1 %3133, %3134
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %.pre-phi, align 1
  %3137 = and i32 %3131, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %.pre-phi23, align 1
  %3142 = xor i32 %3130, %3114
  %3143 = xor i32 %3142, %3131
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %.pre-phi25, align 1
  %3147 = icmp eq i32 %3131, 0
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %.pre-phi27, align 1
  %3149 = lshr i32 %3131, 31
  %3150 = trunc i32 %3149 to i8
  store i8 %3150, i8* %.pre-phi29, align 1
  %3151 = lshr i32 %3130, 31
  %3152 = xor i32 %3149, %3125
  %3153 = xor i32 %3149, %3151
  %3154 = add nuw nsw i32 %3152, %3153
  %3155 = icmp eq i32 %3154, 2
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %.pre-phi31, align 1
  %3157 = sext i32 %3131 to i64
  store i64 %3157, i64* %RCX.i1621, align 8
  %3158 = load i64, i64* %RAX.i1124, align 8
  %3159 = shl nsw i64 %3157, 2
  %3160 = add i64 %3159, %3158
  %3161 = add i64 %2923, 107
  store i64 %3161, i64* %3, align 8
  %3162 = load <2 x float>, <2 x float>* %2835, align 1
  %3163 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3164 = inttoptr i64 %3160 to float*
  %3165 = load float, float* %3164, align 4
  %3166 = extractelement <2 x float> %3162, i32 0
  %3167 = fmul float %3166, %3165
  store float %3167, float* %2828, align 1
  %3168 = bitcast <2 x float> %3162 to <2 x i32>
  %3169 = extractelement <2 x i32> %3168, i32 1
  store i32 %3169, i32* %2837, align 1
  %3170 = extractelement <2 x i32> %3163, i32 0
  store i32 %3170, i32* %2838, align 1
  %3171 = extractelement <2 x i32> %3163, i32 1
  store i32 %3171, i32* %2839, align 1
  %3172 = load <2 x float>, <2 x float>* %2840, align 1
  %3173 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3174 = load <2 x float>, <2 x float>* %2835, align 1
  %3175 = extractelement <2 x float> %3172, i32 0
  %3176 = extractelement <2 x float> %3174, i32 0
  %3177 = fadd float %3175, %3176
  store float %3177, float* %2819, align 1
  %3178 = bitcast <2 x float> %3172 to <2 x i32>
  %3179 = extractelement <2 x i32> %3178, i32 1
  store i32 %3179, i32* %2842, align 1
  %3180 = extractelement <2 x i32> %3173, i32 0
  store i32 %3180, i32* %2843, align 1
  %3181 = extractelement <2 x i32> %3173, i32 1
  store i32 %3181, i32* %2844, align 1
  %3182 = load i64, i64* %RBP.i, align 8
  %3183 = add i64 %3182, -32
  %3184 = add i64 %2923, 115
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i64*
  %3186 = load i64, i64* %3185, align 8
  store i64 %3186, i64* %RAX.i1124, align 8
  %3187 = add i64 %3182, -44
  %3188 = add i64 %2923, 118
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i32*
  %3190 = load i32, i32* %3189, align 4
  %3191 = add i32 %3190, -13
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RDX.i722.pre-phi, align 8
  %3193 = icmp ult i32 %3190, 13
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %.pre-phi, align 1
  %3195 = and i32 %3191, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %.pre-phi23, align 1
  %3200 = xor i32 %3190, %3191
  %3201 = lshr i32 %3200, 4
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  store i8 %3203, i8* %.pre-phi25, align 1
  %3204 = icmp eq i32 %3191, 0
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %.pre-phi27, align 1
  %3206 = lshr i32 %3191, 31
  %3207 = trunc i32 %3206 to i8
  store i8 %3207, i8* %.pre-phi29, align 1
  %3208 = lshr i32 %3190, 31
  %3209 = xor i32 %3206, %3208
  %3210 = add nuw nsw i32 %3209, %3208
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %.pre-phi31, align 1
  %3213 = sext i32 %3191 to i64
  store i64 %3213, i64* %RCX.i1621, align 8
  %3214 = shl nsw i64 %3213, 2
  %3215 = add i64 %3214, %3186
  %3216 = add i64 %2923, 129
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i32*
  %3218 = load i32, i32* %3217, align 4
  store i32 %3218, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3219 = add i64 %3182, -40
  %3220 = add i64 %2923, 133
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i64*
  %3222 = load i64, i64* %3221, align 8
  store i64 %3222, i64* %RAX.i1124, align 8
  %3223 = add i64 %3182, -24
  %3224 = add i64 %2923, 136
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RDX.i722.pre-phi, align 8
  %3228 = add i64 %2923, 139
  store i64 %3228, i64* %3, align 8
  %3229 = load i32, i32* %3189, align 4
  %3230 = add i32 %3229, -13
  %3231 = zext i32 %3230 to i64
  store i64 %3231, i64* %RSI.i1502, align 8
  %3232 = sext i32 %3226 to i64
  %3233 = sext i32 %3230 to i64
  %3234 = mul nsw i64 %3233, %3232
  %3235 = trunc i64 %3234 to i32
  %3236 = and i64 %3234, 4294967295
  store i64 %3236, i64* %RDX.i722.pre-phi, align 8
  %3237 = shl i64 %3234, 32
  %3238 = ashr exact i64 %3237, 32
  %3239 = icmp ne i64 %3238, %3234
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %.pre-phi, align 1
  %3241 = and i32 %3235, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3246 = lshr i32 %3235, 31
  %3247 = trunc i32 %3246 to i8
  store i8 %3247, i8* %.pre-phi29, align 1
  store i8 %3240, i8* %.pre-phi31, align 1
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -48
  %3250 = add i64 %2923, 148
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  %3253 = add i32 %3252, %3235
  %3254 = zext i32 %3253 to i64
  store i64 %3254, i64* %RDX.i722.pre-phi, align 8
  %3255 = icmp ult i32 %3253, %3235
  %3256 = icmp ult i32 %3253, %3252
  %3257 = or i1 %3255, %3256
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %.pre-phi, align 1
  %3259 = and i32 %3253, 255
  %3260 = tail call i32 @llvm.ctpop.i32(i32 %3259)
  %3261 = trunc i32 %3260 to i8
  %3262 = and i8 %3261, 1
  %3263 = xor i8 %3262, 1
  store i8 %3263, i8* %.pre-phi23, align 1
  %3264 = xor i32 %3252, %3235
  %3265 = xor i32 %3264, %3253
  %3266 = lshr i32 %3265, 4
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  store i8 %3268, i8* %.pre-phi25, align 1
  %3269 = icmp eq i32 %3253, 0
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %.pre-phi27, align 1
  %3271 = lshr i32 %3253, 31
  %3272 = trunc i32 %3271 to i8
  store i8 %3272, i8* %.pre-phi29, align 1
  %3273 = lshr i32 %3252, 31
  %3274 = xor i32 %3271, %3246
  %3275 = xor i32 %3271, %3273
  %3276 = add nuw nsw i32 %3274, %3275
  %3277 = icmp eq i32 %3276, 2
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %.pre-phi31, align 1
  %3279 = sext i32 %3253 to i64
  store i64 %3279, i64* %RCX.i1621, align 8
  %3280 = load i64, i64* %RAX.i1124, align 8
  %3281 = shl nsw i64 %3279, 2
  %3282 = add i64 %3281, %3280
  %3283 = add i64 %2923, 156
  store i64 %3283, i64* %3, align 8
  %3284 = load <2 x float>, <2 x float>* %2835, align 1
  %3285 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3286 = inttoptr i64 %3282 to float*
  %3287 = load float, float* %3286, align 4
  %3288 = extractelement <2 x float> %3284, i32 0
  %3289 = fmul float %3288, %3287
  store float %3289, float* %2828, align 1
  %3290 = bitcast <2 x float> %3284 to <2 x i32>
  %3291 = extractelement <2 x i32> %3290, i32 1
  store i32 %3291, i32* %2837, align 1
  %3292 = extractelement <2 x i32> %3285, i32 0
  store i32 %3292, i32* %2838, align 1
  %3293 = extractelement <2 x i32> %3285, i32 1
  store i32 %3293, i32* %2839, align 1
  %3294 = load <2 x float>, <2 x float>* %2840, align 1
  %3295 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3296 = load <2 x float>, <2 x float>* %2835, align 1
  %3297 = extractelement <2 x float> %3294, i32 0
  %3298 = extractelement <2 x float> %3296, i32 0
  %3299 = fadd float %3297, %3298
  store float %3299, float* %2819, align 1
  %3300 = bitcast <2 x float> %3294 to <2 x i32>
  %3301 = extractelement <2 x i32> %3300, i32 1
  store i32 %3301, i32* %2842, align 1
  %3302 = extractelement <2 x i32> %3295, i32 0
  store i32 %3302, i32* %2843, align 1
  %3303 = extractelement <2 x i32> %3295, i32 1
  store i32 %3303, i32* %2844, align 1
  %3304 = add i64 %3248, -32
  %3305 = add i64 %2923, 164
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i64*
  %3307 = load i64, i64* %3306, align 8
  store i64 %3307, i64* %RAX.i1124, align 8
  %3308 = add i64 %3248, -44
  %3309 = add i64 %2923, 167
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = add i32 %3311, -12
  %3313 = zext i32 %3312 to i64
  store i64 %3313, i64* %RDX.i722.pre-phi, align 8
  %3314 = icmp ult i32 %3311, 12
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %.pre-phi, align 1
  %3316 = and i32 %3312, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %.pre-phi23, align 1
  %3321 = xor i32 %3311, %3312
  %3322 = lshr i32 %3321, 4
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %.pre-phi25, align 1
  %3325 = icmp eq i32 %3312, 0
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %.pre-phi27, align 1
  %3327 = lshr i32 %3312, 31
  %3328 = trunc i32 %3327 to i8
  store i8 %3328, i8* %.pre-phi29, align 1
  %3329 = lshr i32 %3311, 31
  %3330 = xor i32 %3327, %3329
  %3331 = add nuw nsw i32 %3330, %3329
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %.pre-phi31, align 1
  %3334 = sext i32 %3312 to i64
  store i64 %3334, i64* %RCX.i1621, align 8
  %3335 = shl nsw i64 %3334, 2
  %3336 = add i64 %3335, %3307
  %3337 = add i64 %2923, 178
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3336 to i32*
  %3339 = load i32, i32* %3338, align 4
  store i32 %3339, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -40
  %3342 = add i64 %2923, 182
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i64*
  %3344 = load i64, i64* %3343, align 8
  store i64 %3344, i64* %RAX.i1124, align 8
  %3345 = add i64 %3340, -24
  %3346 = add i64 %2923, 185
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i32*
  %3348 = load i32, i32* %3347, align 4
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RDX.i722.pre-phi, align 8
  %3350 = add i64 %3340, -44
  %3351 = add i64 %2923, 188
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3350 to i32*
  %3353 = load i32, i32* %3352, align 4
  %3354 = add i32 %3353, -12
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RSI.i1502, align 8
  %3356 = sext i32 %3348 to i64
  %3357 = sext i32 %3354 to i64
  %3358 = mul nsw i64 %3357, %3356
  %3359 = trunc i64 %3358 to i32
  %3360 = and i64 %3358, 4294967295
  store i64 %3360, i64* %RDX.i722.pre-phi, align 8
  %3361 = shl i64 %3358, 32
  %3362 = ashr exact i64 %3361, 32
  %3363 = icmp ne i64 %3362, %3358
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %.pre-phi, align 1
  %3365 = and i32 %3359, 255
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3370 = lshr i32 %3359, 31
  %3371 = trunc i32 %3370 to i8
  store i8 %3371, i8* %.pre-phi29, align 1
  store i8 %3364, i8* %.pre-phi31, align 1
  %3372 = add i64 %3340, -48
  %3373 = add i64 %2923, 197
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = add i32 %3375, %3359
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RDX.i722.pre-phi, align 8
  %3378 = icmp ult i32 %3376, %3359
  %3379 = icmp ult i32 %3376, %3375
  %3380 = or i1 %3378, %3379
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %.pre-phi, align 1
  %3382 = and i32 %3376, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %.pre-phi23, align 1
  %3387 = xor i32 %3375, %3359
  %3388 = xor i32 %3387, %3376
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  store i8 %3391, i8* %.pre-phi25, align 1
  %3392 = icmp eq i32 %3376, 0
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %.pre-phi27, align 1
  %3394 = lshr i32 %3376, 31
  %3395 = trunc i32 %3394 to i8
  store i8 %3395, i8* %.pre-phi29, align 1
  %3396 = lshr i32 %3375, 31
  %3397 = xor i32 %3394, %3370
  %3398 = xor i32 %3394, %3396
  %3399 = add nuw nsw i32 %3397, %3398
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %.pre-phi31, align 1
  %3402 = sext i32 %3376 to i64
  store i64 %3402, i64* %RCX.i1621, align 8
  %3403 = load i64, i64* %RAX.i1124, align 8
  %3404 = shl nsw i64 %3402, 2
  %3405 = add i64 %3404, %3403
  %3406 = add i64 %2923, 205
  store i64 %3406, i64* %3, align 8
  %3407 = load <2 x float>, <2 x float>* %2835, align 1
  %3408 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3409 = inttoptr i64 %3405 to float*
  %3410 = load float, float* %3409, align 4
  %3411 = extractelement <2 x float> %3407, i32 0
  %3412 = fmul float %3411, %3410
  store float %3412, float* %2828, align 1
  %3413 = bitcast <2 x float> %3407 to <2 x i32>
  %3414 = extractelement <2 x i32> %3413, i32 1
  store i32 %3414, i32* %2837, align 1
  %3415 = extractelement <2 x i32> %3408, i32 0
  store i32 %3415, i32* %2838, align 1
  %3416 = extractelement <2 x i32> %3408, i32 1
  store i32 %3416, i32* %2839, align 1
  %3417 = load <2 x float>, <2 x float>* %2840, align 1
  %3418 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3419 = load <2 x float>, <2 x float>* %2835, align 1
  %3420 = extractelement <2 x float> %3417, i32 0
  %3421 = extractelement <2 x float> %3419, i32 0
  %3422 = fadd float %3420, %3421
  store float %3422, float* %2819, align 1
  %3423 = bitcast <2 x float> %3417 to <2 x i32>
  %3424 = extractelement <2 x i32> %3423, i32 1
  store i32 %3424, i32* %2842, align 1
  %3425 = extractelement <2 x i32> %3418, i32 0
  store i32 %3425, i32* %2843, align 1
  %3426 = extractelement <2 x i32> %3418, i32 1
  store i32 %3426, i32* %2844, align 1
  %3427 = load i64, i64* %RBP.i, align 8
  %3428 = add i64 %3427, -32
  %3429 = add i64 %2923, 213
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3428 to i64*
  %3431 = load i64, i64* %3430, align 8
  store i64 %3431, i64* %RAX.i1124, align 8
  %3432 = add i64 %3427, -44
  %3433 = add i64 %2923, 216
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = add i32 %3435, -11
  %3437 = zext i32 %3436 to i64
  store i64 %3437, i64* %RDX.i722.pre-phi, align 8
  %3438 = icmp ult i32 %3435, 11
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %.pre-phi, align 1
  %3440 = and i32 %3436, 255
  %3441 = tail call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  store i8 %3444, i8* %.pre-phi23, align 1
  %3445 = xor i32 %3435, %3436
  %3446 = lshr i32 %3445, 4
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  store i8 %3448, i8* %.pre-phi25, align 1
  %3449 = icmp eq i32 %3436, 0
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %.pre-phi27, align 1
  %3451 = lshr i32 %3436, 31
  %3452 = trunc i32 %3451 to i8
  store i8 %3452, i8* %.pre-phi29, align 1
  %3453 = lshr i32 %3435, 31
  %3454 = xor i32 %3451, %3453
  %3455 = add nuw nsw i32 %3454, %3453
  %3456 = icmp eq i32 %3455, 2
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %.pre-phi31, align 1
  %3458 = sext i32 %3436 to i64
  store i64 %3458, i64* %RCX.i1621, align 8
  %3459 = shl nsw i64 %3458, 2
  %3460 = add i64 %3459, %3431
  %3461 = add i64 %2923, 227
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i32*
  %3463 = load i32, i32* %3462, align 4
  store i32 %3463, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3464 = add i64 %3427, -40
  %3465 = add i64 %2923, 231
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i64*
  %3467 = load i64, i64* %3466, align 8
  store i64 %3467, i64* %RAX.i1124, align 8
  %3468 = add i64 %3427, -24
  %3469 = add i64 %2923, 234
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3468 to i32*
  %3471 = load i32, i32* %3470, align 4
  %3472 = zext i32 %3471 to i64
  store i64 %3472, i64* %RDX.i722.pre-phi, align 8
  %3473 = add i64 %2923, 237
  store i64 %3473, i64* %3, align 8
  %3474 = load i32, i32* %3434, align 4
  %3475 = add i32 %3474, -11
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RSI.i1502, align 8
  %3477 = sext i32 %3471 to i64
  %3478 = sext i32 %3475 to i64
  %3479 = mul nsw i64 %3478, %3477
  %3480 = trunc i64 %3479 to i32
  %3481 = and i64 %3479, 4294967295
  store i64 %3481, i64* %RDX.i722.pre-phi, align 8
  %3482 = shl i64 %3479, 32
  %3483 = ashr exact i64 %3482, 32
  %3484 = icmp ne i64 %3483, %3479
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %.pre-phi, align 1
  %3486 = and i32 %3480, 255
  %3487 = tail call i32 @llvm.ctpop.i32(i32 %3486)
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = xor i8 %3489, 1
  store i8 %3490, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3491 = lshr i32 %3480, 31
  %3492 = trunc i32 %3491 to i8
  store i8 %3492, i8* %.pre-phi29, align 1
  store i8 %3485, i8* %.pre-phi31, align 1
  %3493 = load i64, i64* %RBP.i, align 8
  %3494 = add i64 %3493, -48
  %3495 = add i64 %2923, 246
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3494 to i32*
  %3497 = load i32, i32* %3496, align 4
  %3498 = add i32 %3497, %3480
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RDX.i722.pre-phi, align 8
  %3500 = icmp ult i32 %3498, %3480
  %3501 = icmp ult i32 %3498, %3497
  %3502 = or i1 %3500, %3501
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %.pre-phi, align 1
  %3504 = and i32 %3498, 255
  %3505 = tail call i32 @llvm.ctpop.i32(i32 %3504)
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  %3508 = xor i8 %3507, 1
  store i8 %3508, i8* %.pre-phi23, align 1
  %3509 = xor i32 %3497, %3480
  %3510 = xor i32 %3509, %3498
  %3511 = lshr i32 %3510, 4
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  store i8 %3513, i8* %.pre-phi25, align 1
  %3514 = icmp eq i32 %3498, 0
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %.pre-phi27, align 1
  %3516 = lshr i32 %3498, 31
  %3517 = trunc i32 %3516 to i8
  store i8 %3517, i8* %.pre-phi29, align 1
  %3518 = lshr i32 %3497, 31
  %3519 = xor i32 %3516, %3491
  %3520 = xor i32 %3516, %3518
  %3521 = add nuw nsw i32 %3519, %3520
  %3522 = icmp eq i32 %3521, 2
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %.pre-phi31, align 1
  %3524 = sext i32 %3498 to i64
  store i64 %3524, i64* %RCX.i1621, align 8
  %3525 = load i64, i64* %RAX.i1124, align 8
  %3526 = shl nsw i64 %3524, 2
  %3527 = add i64 %3526, %3525
  %3528 = add i64 %2923, 254
  store i64 %3528, i64* %3, align 8
  %3529 = load <2 x float>, <2 x float>* %2835, align 1
  %3530 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3531 = inttoptr i64 %3527 to float*
  %3532 = load float, float* %3531, align 4
  %3533 = extractelement <2 x float> %3529, i32 0
  %3534 = fmul float %3533, %3532
  store float %3534, float* %2828, align 1
  %3535 = bitcast <2 x float> %3529 to <2 x i32>
  %3536 = extractelement <2 x i32> %3535, i32 1
  store i32 %3536, i32* %2837, align 1
  %3537 = extractelement <2 x i32> %3530, i32 0
  store i32 %3537, i32* %2838, align 1
  %3538 = extractelement <2 x i32> %3530, i32 1
  store i32 %3538, i32* %2839, align 1
  %3539 = load <2 x float>, <2 x float>* %2840, align 1
  %3540 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3541 = load <2 x float>, <2 x float>* %2835, align 1
  %3542 = extractelement <2 x float> %3539, i32 0
  %3543 = extractelement <2 x float> %3541, i32 0
  %3544 = fadd float %3542, %3543
  store float %3544, float* %2819, align 1
  %3545 = bitcast <2 x float> %3539 to <2 x i32>
  %3546 = extractelement <2 x i32> %3545, i32 1
  store i32 %3546, i32* %2842, align 1
  %3547 = extractelement <2 x i32> %3540, i32 0
  store i32 %3547, i32* %2843, align 1
  %3548 = extractelement <2 x i32> %3540, i32 1
  store i32 %3548, i32* %2844, align 1
  %3549 = add i64 %3493, -32
  %3550 = add i64 %2923, 262
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i64*
  %3552 = load i64, i64* %3551, align 8
  store i64 %3552, i64* %RAX.i1124, align 8
  %3553 = add i64 %3493, -44
  %3554 = add i64 %2923, 265
  store i64 %3554, i64* %3, align 8
  %3555 = inttoptr i64 %3553 to i32*
  %3556 = load i32, i32* %3555, align 4
  %3557 = add i32 %3556, -10
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RDX.i722.pre-phi, align 8
  %3559 = icmp ult i32 %3556, 10
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %.pre-phi, align 1
  %3561 = and i32 %3557, 255
  %3562 = tail call i32 @llvm.ctpop.i32(i32 %3561)
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = xor i8 %3564, 1
  store i8 %3565, i8* %.pre-phi23, align 1
  %3566 = xor i32 %3556, %3557
  %3567 = lshr i32 %3566, 4
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  store i8 %3569, i8* %.pre-phi25, align 1
  %3570 = icmp eq i32 %3557, 0
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %.pre-phi27, align 1
  %3572 = lshr i32 %3557, 31
  %3573 = trunc i32 %3572 to i8
  store i8 %3573, i8* %.pre-phi29, align 1
  %3574 = lshr i32 %3556, 31
  %3575 = xor i32 %3572, %3574
  %3576 = add nuw nsw i32 %3575, %3574
  %3577 = icmp eq i32 %3576, 2
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %.pre-phi31, align 1
  %3579 = sext i32 %3557 to i64
  store i64 %3579, i64* %RCX.i1621, align 8
  %3580 = shl nsw i64 %3579, 2
  %3581 = add i64 %3580, %3552
  %3582 = add i64 %2923, 276
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i32*
  %3584 = load i32, i32* %3583, align 4
  store i32 %3584, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3585 = load i64, i64* %RBP.i, align 8
  %3586 = add i64 %3585, -40
  %3587 = add i64 %2923, 280
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i64*
  %3589 = load i64, i64* %3588, align 8
  store i64 %3589, i64* %RAX.i1124, align 8
  %3590 = add i64 %3585, -24
  %3591 = add i64 %2923, 283
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RDX.i722.pre-phi, align 8
  %3595 = add i64 %3585, -44
  %3596 = add i64 %2923, 286
  store i64 %3596, i64* %3, align 8
  %3597 = inttoptr i64 %3595 to i32*
  %3598 = load i32, i32* %3597, align 4
  %3599 = add i32 %3598, -10
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RSI.i1502, align 8
  %3601 = sext i32 %3593 to i64
  %3602 = sext i32 %3599 to i64
  %3603 = mul nsw i64 %3602, %3601
  %3604 = trunc i64 %3603 to i32
  %3605 = and i64 %3603, 4294967295
  store i64 %3605, i64* %RDX.i722.pre-phi, align 8
  %3606 = shl i64 %3603, 32
  %3607 = ashr exact i64 %3606, 32
  %3608 = icmp ne i64 %3607, %3603
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %.pre-phi, align 1
  %3610 = and i32 %3604, 255
  %3611 = tail call i32 @llvm.ctpop.i32(i32 %3610)
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  store i8 %3614, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3615 = lshr i32 %3604, 31
  %3616 = trunc i32 %3615 to i8
  store i8 %3616, i8* %.pre-phi29, align 1
  store i8 %3609, i8* %.pre-phi31, align 1
  %3617 = add i64 %3585, -48
  %3618 = add i64 %2923, 295
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = add i32 %3620, %3604
  %3622 = zext i32 %3621 to i64
  store i64 %3622, i64* %RDX.i722.pre-phi, align 8
  %3623 = icmp ult i32 %3621, %3604
  %3624 = icmp ult i32 %3621, %3620
  %3625 = or i1 %3623, %3624
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %.pre-phi, align 1
  %3627 = and i32 %3621, 255
  %3628 = tail call i32 @llvm.ctpop.i32(i32 %3627)
  %3629 = trunc i32 %3628 to i8
  %3630 = and i8 %3629, 1
  %3631 = xor i8 %3630, 1
  store i8 %3631, i8* %.pre-phi23, align 1
  %3632 = xor i32 %3620, %3604
  %3633 = xor i32 %3632, %3621
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  store i8 %3636, i8* %.pre-phi25, align 1
  %3637 = icmp eq i32 %3621, 0
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %.pre-phi27, align 1
  %3639 = lshr i32 %3621, 31
  %3640 = trunc i32 %3639 to i8
  store i8 %3640, i8* %.pre-phi29, align 1
  %3641 = lshr i32 %3620, 31
  %3642 = xor i32 %3639, %3615
  %3643 = xor i32 %3639, %3641
  %3644 = add nuw nsw i32 %3642, %3643
  %3645 = icmp eq i32 %3644, 2
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %.pre-phi31, align 1
  %3647 = sext i32 %3621 to i64
  store i64 %3647, i64* %RCX.i1621, align 8
  %3648 = load i64, i64* %RAX.i1124, align 8
  %3649 = shl nsw i64 %3647, 2
  %3650 = add i64 %3649, %3648
  %3651 = add i64 %2923, 303
  store i64 %3651, i64* %3, align 8
  %3652 = load <2 x float>, <2 x float>* %2835, align 1
  %3653 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3654 = inttoptr i64 %3650 to float*
  %3655 = load float, float* %3654, align 4
  %3656 = extractelement <2 x float> %3652, i32 0
  %3657 = fmul float %3656, %3655
  store float %3657, float* %2828, align 1
  %3658 = bitcast <2 x float> %3652 to <2 x i32>
  %3659 = extractelement <2 x i32> %3658, i32 1
  store i32 %3659, i32* %2837, align 1
  %3660 = extractelement <2 x i32> %3653, i32 0
  store i32 %3660, i32* %2838, align 1
  %3661 = extractelement <2 x i32> %3653, i32 1
  store i32 %3661, i32* %2839, align 1
  %3662 = load <2 x float>, <2 x float>* %2840, align 1
  %3663 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3664 = load <2 x float>, <2 x float>* %2835, align 1
  %3665 = extractelement <2 x float> %3662, i32 0
  %3666 = extractelement <2 x float> %3664, i32 0
  %3667 = fadd float %3665, %3666
  store float %3667, float* %2819, align 1
  %3668 = bitcast <2 x float> %3662 to <2 x i32>
  %3669 = extractelement <2 x i32> %3668, i32 1
  store i32 %3669, i32* %2842, align 1
  %3670 = extractelement <2 x i32> %3663, i32 0
  store i32 %3670, i32* %2843, align 1
  %3671 = extractelement <2 x i32> %3663, i32 1
  store i32 %3671, i32* %2844, align 1
  %3672 = load i64, i64* %RBP.i, align 8
  %3673 = add i64 %3672, -32
  %3674 = add i64 %2923, 311
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i64*
  %3676 = load i64, i64* %3675, align 8
  store i64 %3676, i64* %RAX.i1124, align 8
  %3677 = add i64 %3672, -44
  %3678 = add i64 %2923, 314
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = add i32 %3680, -9
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RDX.i722.pre-phi, align 8
  %3683 = icmp ult i32 %3680, 9
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %.pre-phi, align 1
  %3685 = and i32 %3681, 255
  %3686 = tail call i32 @llvm.ctpop.i32(i32 %3685)
  %3687 = trunc i32 %3686 to i8
  %3688 = and i8 %3687, 1
  %3689 = xor i8 %3688, 1
  store i8 %3689, i8* %.pre-phi23, align 1
  %3690 = xor i32 %3680, %3681
  %3691 = lshr i32 %3690, 4
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  store i8 %3693, i8* %.pre-phi25, align 1
  %3694 = icmp eq i32 %3681, 0
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %.pre-phi27, align 1
  %3696 = lshr i32 %3681, 31
  %3697 = trunc i32 %3696 to i8
  store i8 %3697, i8* %.pre-phi29, align 1
  %3698 = lshr i32 %3680, 31
  %3699 = xor i32 %3696, %3698
  %3700 = add nuw nsw i32 %3699, %3698
  %3701 = icmp eq i32 %3700, 2
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %.pre-phi31, align 1
  %3703 = sext i32 %3681 to i64
  store i64 %3703, i64* %RCX.i1621, align 8
  %3704 = shl nsw i64 %3703, 2
  %3705 = add i64 %3704, %3676
  %3706 = add i64 %2923, 325
  store i64 %3706, i64* %3, align 8
  %3707 = inttoptr i64 %3705 to i32*
  %3708 = load i32, i32* %3707, align 4
  store i32 %3708, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3709 = add i64 %3672, -40
  %3710 = add i64 %2923, 329
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3709 to i64*
  %3712 = load i64, i64* %3711, align 8
  store i64 %3712, i64* %RAX.i1124, align 8
  %3713 = add i64 %3672, -24
  %3714 = add i64 %2923, 332
  store i64 %3714, i64* %3, align 8
  %3715 = inttoptr i64 %3713 to i32*
  %3716 = load i32, i32* %3715, align 4
  %3717 = zext i32 %3716 to i64
  store i64 %3717, i64* %RDX.i722.pre-phi, align 8
  %3718 = add i64 %2923, 335
  store i64 %3718, i64* %3, align 8
  %3719 = load i32, i32* %3679, align 4
  %3720 = add i32 %3719, -9
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RSI.i1502, align 8
  %3722 = sext i32 %3716 to i64
  %3723 = sext i32 %3720 to i64
  %3724 = mul nsw i64 %3723, %3722
  %3725 = trunc i64 %3724 to i32
  %3726 = and i64 %3724, 4294967295
  store i64 %3726, i64* %RDX.i722.pre-phi, align 8
  %3727 = shl i64 %3724, 32
  %3728 = ashr exact i64 %3727, 32
  %3729 = icmp ne i64 %3728, %3724
  %3730 = zext i1 %3729 to i8
  store i8 %3730, i8* %.pre-phi, align 1
  %3731 = and i32 %3725, 255
  %3732 = tail call i32 @llvm.ctpop.i32(i32 %3731)
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  %3735 = xor i8 %3734, 1
  store i8 %3735, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3736 = lshr i32 %3725, 31
  %3737 = trunc i32 %3736 to i8
  store i8 %3737, i8* %.pre-phi29, align 1
  store i8 %3730, i8* %.pre-phi31, align 1
  %3738 = load i64, i64* %RBP.i, align 8
  %3739 = add i64 %3738, -48
  %3740 = add i64 %2923, 344
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = add i32 %3742, %3725
  %3744 = zext i32 %3743 to i64
  store i64 %3744, i64* %RDX.i722.pre-phi, align 8
  %3745 = icmp ult i32 %3743, %3725
  %3746 = icmp ult i32 %3743, %3742
  %3747 = or i1 %3745, %3746
  %3748 = zext i1 %3747 to i8
  store i8 %3748, i8* %.pre-phi, align 1
  %3749 = and i32 %3743, 255
  %3750 = tail call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  store i8 %3753, i8* %.pre-phi23, align 1
  %3754 = xor i32 %3742, %3725
  %3755 = xor i32 %3754, %3743
  %3756 = lshr i32 %3755, 4
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  store i8 %3758, i8* %.pre-phi25, align 1
  %3759 = icmp eq i32 %3743, 0
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %.pre-phi27, align 1
  %3761 = lshr i32 %3743, 31
  %3762 = trunc i32 %3761 to i8
  store i8 %3762, i8* %.pre-phi29, align 1
  %3763 = lshr i32 %3742, 31
  %3764 = xor i32 %3761, %3736
  %3765 = xor i32 %3761, %3763
  %3766 = add nuw nsw i32 %3764, %3765
  %3767 = icmp eq i32 %3766, 2
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %.pre-phi31, align 1
  %3769 = sext i32 %3743 to i64
  store i64 %3769, i64* %RCX.i1621, align 8
  %3770 = load i64, i64* %RAX.i1124, align 8
  %3771 = shl nsw i64 %3769, 2
  %3772 = add i64 %3771, %3770
  %3773 = add i64 %2923, 352
  store i64 %3773, i64* %3, align 8
  %3774 = load <2 x float>, <2 x float>* %2835, align 1
  %3775 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3776 = inttoptr i64 %3772 to float*
  %3777 = load float, float* %3776, align 4
  %3778 = extractelement <2 x float> %3774, i32 0
  %3779 = fmul float %3778, %3777
  store float %3779, float* %2828, align 1
  %3780 = bitcast <2 x float> %3774 to <2 x i32>
  %3781 = extractelement <2 x i32> %3780, i32 1
  store i32 %3781, i32* %2837, align 1
  %3782 = extractelement <2 x i32> %3775, i32 0
  store i32 %3782, i32* %2838, align 1
  %3783 = extractelement <2 x i32> %3775, i32 1
  store i32 %3783, i32* %2839, align 1
  %3784 = load <2 x float>, <2 x float>* %2840, align 1
  %3785 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3786 = load <2 x float>, <2 x float>* %2835, align 1
  %3787 = extractelement <2 x float> %3784, i32 0
  %3788 = extractelement <2 x float> %3786, i32 0
  %3789 = fadd float %3787, %3788
  store float %3789, float* %2819, align 1
  %3790 = bitcast <2 x float> %3784 to <2 x i32>
  %3791 = extractelement <2 x i32> %3790, i32 1
  store i32 %3791, i32* %2842, align 1
  %3792 = extractelement <2 x i32> %3785, i32 0
  store i32 %3792, i32* %2843, align 1
  %3793 = extractelement <2 x i32> %3785, i32 1
  store i32 %3793, i32* %2844, align 1
  %3794 = add i64 %3738, -32
  %3795 = add i64 %2923, 360
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i64*
  %3797 = load i64, i64* %3796, align 8
  store i64 %3797, i64* %RAX.i1124, align 8
  %3798 = add i64 %3738, -44
  %3799 = add i64 %2923, 363
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = add i32 %3801, -8
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RDX.i722.pre-phi, align 8
  %3804 = icmp ult i32 %3801, 8
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %.pre-phi, align 1
  %3806 = and i32 %3802, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %.pre-phi23, align 1
  %3811 = xor i32 %3801, %3802
  %3812 = lshr i32 %3811, 4
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  store i8 %3814, i8* %.pre-phi25, align 1
  %3815 = icmp eq i32 %3802, 0
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %.pre-phi27, align 1
  %3817 = lshr i32 %3802, 31
  %3818 = trunc i32 %3817 to i8
  store i8 %3818, i8* %.pre-phi29, align 1
  %3819 = lshr i32 %3801, 31
  %3820 = xor i32 %3817, %3819
  %3821 = add nuw nsw i32 %3820, %3819
  %3822 = icmp eq i32 %3821, 2
  %3823 = zext i1 %3822 to i8
  store i8 %3823, i8* %.pre-phi31, align 1
  %3824 = sext i32 %3802 to i64
  store i64 %3824, i64* %RCX.i1621, align 8
  %3825 = shl nsw i64 %3824, 2
  %3826 = add i64 %3825, %3797
  %3827 = add i64 %2923, 374
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i32*
  %3829 = load i32, i32* %3828, align 4
  store i32 %3829, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3830 = load i64, i64* %RBP.i, align 8
  %3831 = add i64 %3830, -40
  %3832 = add i64 %2923, 378
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i64*
  %3834 = load i64, i64* %3833, align 8
  store i64 %3834, i64* %RAX.i1124, align 8
  %3835 = add i64 %3830, -24
  %3836 = add i64 %2923, 381
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3835 to i32*
  %3838 = load i32, i32* %3837, align 4
  %3839 = zext i32 %3838 to i64
  store i64 %3839, i64* %RDX.i722.pre-phi, align 8
  %3840 = add i64 %3830, -44
  %3841 = add i64 %2923, 384
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = add i32 %3843, -8
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %RSI.i1502, align 8
  %3846 = sext i32 %3838 to i64
  %3847 = sext i32 %3844 to i64
  %3848 = mul nsw i64 %3847, %3846
  %3849 = trunc i64 %3848 to i32
  %3850 = and i64 %3848, 4294967295
  store i64 %3850, i64* %RDX.i722.pre-phi, align 8
  %3851 = shl i64 %3848, 32
  %3852 = ashr exact i64 %3851, 32
  %3853 = icmp ne i64 %3852, %3848
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %.pre-phi, align 1
  %3855 = and i32 %3849, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855)
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3860 = lshr i32 %3849, 31
  %3861 = trunc i32 %3860 to i8
  store i8 %3861, i8* %.pre-phi29, align 1
  store i8 %3854, i8* %.pre-phi31, align 1
  %3862 = add i64 %3830, -48
  %3863 = add i64 %2923, 393
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = add i32 %3865, %3849
  %3867 = zext i32 %3866 to i64
  store i64 %3867, i64* %RDX.i722.pre-phi, align 8
  %3868 = icmp ult i32 %3866, %3849
  %3869 = icmp ult i32 %3866, %3865
  %3870 = or i1 %3868, %3869
  %3871 = zext i1 %3870 to i8
  store i8 %3871, i8* %.pre-phi, align 1
  %3872 = and i32 %3866, 255
  %3873 = tail call i32 @llvm.ctpop.i32(i32 %3872)
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = xor i8 %3875, 1
  store i8 %3876, i8* %.pre-phi23, align 1
  %3877 = xor i32 %3865, %3849
  %3878 = xor i32 %3877, %3866
  %3879 = lshr i32 %3878, 4
  %3880 = trunc i32 %3879 to i8
  %3881 = and i8 %3880, 1
  store i8 %3881, i8* %.pre-phi25, align 1
  %3882 = icmp eq i32 %3866, 0
  %3883 = zext i1 %3882 to i8
  store i8 %3883, i8* %.pre-phi27, align 1
  %3884 = lshr i32 %3866, 31
  %3885 = trunc i32 %3884 to i8
  store i8 %3885, i8* %.pre-phi29, align 1
  %3886 = lshr i32 %3865, 31
  %3887 = xor i32 %3884, %3860
  %3888 = xor i32 %3884, %3886
  %3889 = add nuw nsw i32 %3887, %3888
  %3890 = icmp eq i32 %3889, 2
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %.pre-phi31, align 1
  %3892 = sext i32 %3866 to i64
  store i64 %3892, i64* %RCX.i1621, align 8
  %3893 = load i64, i64* %RAX.i1124, align 8
  %3894 = shl nsw i64 %3892, 2
  %3895 = add i64 %3894, %3893
  %3896 = add i64 %2923, 401
  store i64 %3896, i64* %3, align 8
  %3897 = load <2 x float>, <2 x float>* %2835, align 1
  %3898 = load <2 x i32>, <2 x i32>* %2836, align 1
  %3899 = inttoptr i64 %3895 to float*
  %3900 = load float, float* %3899, align 4
  %3901 = extractelement <2 x float> %3897, i32 0
  %3902 = fmul float %3901, %3900
  store float %3902, float* %2828, align 1
  %3903 = bitcast <2 x float> %3897 to <2 x i32>
  %3904 = extractelement <2 x i32> %3903, i32 1
  store i32 %3904, i32* %2837, align 1
  %3905 = extractelement <2 x i32> %3898, i32 0
  store i32 %3905, i32* %2838, align 1
  %3906 = extractelement <2 x i32> %3898, i32 1
  store i32 %3906, i32* %2839, align 1
  %3907 = load <2 x float>, <2 x float>* %2840, align 1
  %3908 = load <2 x i32>, <2 x i32>* %2841, align 1
  %3909 = load <2 x float>, <2 x float>* %2835, align 1
  %3910 = extractelement <2 x float> %3907, i32 0
  %3911 = extractelement <2 x float> %3909, i32 0
  %3912 = fadd float %3910, %3911
  store float %3912, float* %2819, align 1
  %3913 = bitcast <2 x float> %3907 to <2 x i32>
  %3914 = extractelement <2 x i32> %3913, i32 1
  store i32 %3914, i32* %2842, align 1
  %3915 = extractelement <2 x i32> %3908, i32 0
  store i32 %3915, i32* %2843, align 1
  %3916 = extractelement <2 x i32> %3908, i32 1
  store i32 %3916, i32* %2844, align 1
  %3917 = load i64, i64* %RBP.i, align 8
  %3918 = add i64 %3917, -32
  %3919 = add i64 %2923, 409
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3918 to i64*
  %3921 = load i64, i64* %3920, align 8
  store i64 %3921, i64* %RAX.i1124, align 8
  %3922 = add i64 %3917, -44
  %3923 = add i64 %2923, 412
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = add i32 %3925, -7
  %3927 = zext i32 %3926 to i64
  store i64 %3927, i64* %RDX.i722.pre-phi, align 8
  %3928 = icmp ult i32 %3925, 7
  %3929 = zext i1 %3928 to i8
  store i8 %3929, i8* %.pre-phi, align 1
  %3930 = and i32 %3926, 255
  %3931 = tail call i32 @llvm.ctpop.i32(i32 %3930)
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = xor i8 %3933, 1
  store i8 %3934, i8* %.pre-phi23, align 1
  %3935 = xor i32 %3925, %3926
  %3936 = lshr i32 %3935, 4
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  store i8 %3938, i8* %.pre-phi25, align 1
  %3939 = icmp eq i32 %3926, 0
  %3940 = zext i1 %3939 to i8
  store i8 %3940, i8* %.pre-phi27, align 1
  %3941 = lshr i32 %3926, 31
  %3942 = trunc i32 %3941 to i8
  store i8 %3942, i8* %.pre-phi29, align 1
  %3943 = lshr i32 %3925, 31
  %3944 = xor i32 %3941, %3943
  %3945 = add nuw nsw i32 %3944, %3943
  %3946 = icmp eq i32 %3945, 2
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %.pre-phi31, align 1
  %3948 = sext i32 %3926 to i64
  store i64 %3948, i64* %RCX.i1621, align 8
  %3949 = shl nsw i64 %3948, 2
  %3950 = add i64 %3949, %3921
  %3951 = add i64 %2923, 423
  store i64 %3951, i64* %3, align 8
  %3952 = inttoptr i64 %3950 to i32*
  %3953 = load i32, i32* %3952, align 4
  store i32 %3953, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %3954 = add i64 %3917, -40
  %3955 = add i64 %2923, 427
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3954 to i64*
  %3957 = load i64, i64* %3956, align 8
  store i64 %3957, i64* %RAX.i1124, align 8
  %3958 = add i64 %3917, -24
  %3959 = add i64 %2923, 430
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i32*
  %3961 = load i32, i32* %3960, align 4
  %3962 = zext i32 %3961 to i64
  store i64 %3962, i64* %RDX.i722.pre-phi, align 8
  %3963 = add i64 %2923, 433
  store i64 %3963, i64* %3, align 8
  %3964 = load i32, i32* %3924, align 4
  %3965 = add i32 %3964, -7
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RSI.i1502, align 8
  %3967 = sext i32 %3961 to i64
  %3968 = sext i32 %3965 to i64
  %3969 = mul nsw i64 %3968, %3967
  %3970 = trunc i64 %3969 to i32
  %3971 = and i64 %3969, 4294967295
  store i64 %3971, i64* %RDX.i722.pre-phi, align 8
  %3972 = shl i64 %3969, 32
  %3973 = ashr exact i64 %3972, 32
  %3974 = icmp ne i64 %3973, %3969
  %3975 = zext i1 %3974 to i8
  store i8 %3975, i8* %.pre-phi, align 1
  %3976 = and i32 %3970, 255
  %3977 = tail call i32 @llvm.ctpop.i32(i32 %3976)
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  %3980 = xor i8 %3979, 1
  store i8 %3980, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3981 = lshr i32 %3970, 31
  %3982 = trunc i32 %3981 to i8
  store i8 %3982, i8* %.pre-phi29, align 1
  store i8 %3975, i8* %.pre-phi31, align 1
  %3983 = load i64, i64* %RBP.i, align 8
  %3984 = add i64 %3983, -48
  %3985 = add i64 %2923, 442
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = add i32 %3987, %3970
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RDX.i722.pre-phi, align 8
  %3990 = icmp ult i32 %3988, %3970
  %3991 = icmp ult i32 %3988, %3987
  %3992 = or i1 %3990, %3991
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %.pre-phi, align 1
  %3994 = and i32 %3988, 255
  %3995 = tail call i32 @llvm.ctpop.i32(i32 %3994)
  %3996 = trunc i32 %3995 to i8
  %3997 = and i8 %3996, 1
  %3998 = xor i8 %3997, 1
  store i8 %3998, i8* %.pre-phi23, align 1
  %3999 = xor i32 %3987, %3970
  %4000 = xor i32 %3999, %3988
  %4001 = lshr i32 %4000, 4
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  store i8 %4003, i8* %.pre-phi25, align 1
  %4004 = icmp eq i32 %3988, 0
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %.pre-phi27, align 1
  %4006 = lshr i32 %3988, 31
  %4007 = trunc i32 %4006 to i8
  store i8 %4007, i8* %.pre-phi29, align 1
  %4008 = lshr i32 %3987, 31
  %4009 = xor i32 %4006, %3981
  %4010 = xor i32 %4006, %4008
  %4011 = add nuw nsw i32 %4009, %4010
  %4012 = icmp eq i32 %4011, 2
  %4013 = zext i1 %4012 to i8
  store i8 %4013, i8* %.pre-phi31, align 1
  %4014 = sext i32 %3988 to i64
  store i64 %4014, i64* %RCX.i1621, align 8
  %4015 = load i64, i64* %RAX.i1124, align 8
  %4016 = shl nsw i64 %4014, 2
  %4017 = add i64 %4016, %4015
  %4018 = add i64 %2923, 450
  store i64 %4018, i64* %3, align 8
  %4019 = load <2 x float>, <2 x float>* %2835, align 1
  %4020 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4021 = inttoptr i64 %4017 to float*
  %4022 = load float, float* %4021, align 4
  %4023 = extractelement <2 x float> %4019, i32 0
  %4024 = fmul float %4023, %4022
  store float %4024, float* %2828, align 1
  %4025 = bitcast <2 x float> %4019 to <2 x i32>
  %4026 = extractelement <2 x i32> %4025, i32 1
  store i32 %4026, i32* %2837, align 1
  %4027 = extractelement <2 x i32> %4020, i32 0
  store i32 %4027, i32* %2838, align 1
  %4028 = extractelement <2 x i32> %4020, i32 1
  store i32 %4028, i32* %2839, align 1
  %4029 = load <2 x float>, <2 x float>* %2840, align 1
  %4030 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4031 = load <2 x float>, <2 x float>* %2835, align 1
  %4032 = extractelement <2 x float> %4029, i32 0
  %4033 = extractelement <2 x float> %4031, i32 0
  %4034 = fadd float %4032, %4033
  store float %4034, float* %2819, align 1
  %4035 = bitcast <2 x float> %4029 to <2 x i32>
  %4036 = extractelement <2 x i32> %4035, i32 1
  store i32 %4036, i32* %2842, align 1
  %4037 = extractelement <2 x i32> %4030, i32 0
  store i32 %4037, i32* %2843, align 1
  %4038 = extractelement <2 x i32> %4030, i32 1
  store i32 %4038, i32* %2844, align 1
  %4039 = add i64 %3983, -32
  %4040 = add i64 %2923, 458
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i64*
  %4042 = load i64, i64* %4041, align 8
  store i64 %4042, i64* %RAX.i1124, align 8
  %4043 = add i64 %3983, -44
  %4044 = add i64 %2923, 461
  store i64 %4044, i64* %3, align 8
  %4045 = inttoptr i64 %4043 to i32*
  %4046 = load i32, i32* %4045, align 4
  %4047 = add i32 %4046, -6
  %4048 = zext i32 %4047 to i64
  store i64 %4048, i64* %RDX.i722.pre-phi, align 8
  %4049 = icmp ult i32 %4046, 6
  %4050 = zext i1 %4049 to i8
  store i8 %4050, i8* %.pre-phi, align 1
  %4051 = and i32 %4047, 255
  %4052 = tail call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %.pre-phi23, align 1
  %4056 = xor i32 %4046, %4047
  %4057 = lshr i32 %4056, 4
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  store i8 %4059, i8* %.pre-phi25, align 1
  %4060 = icmp eq i32 %4047, 0
  %4061 = zext i1 %4060 to i8
  store i8 %4061, i8* %.pre-phi27, align 1
  %4062 = lshr i32 %4047, 31
  %4063 = trunc i32 %4062 to i8
  store i8 %4063, i8* %.pre-phi29, align 1
  %4064 = lshr i32 %4046, 31
  %4065 = xor i32 %4062, %4064
  %4066 = add nuw nsw i32 %4065, %4064
  %4067 = icmp eq i32 %4066, 2
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %.pre-phi31, align 1
  %4069 = sext i32 %4047 to i64
  store i64 %4069, i64* %RCX.i1621, align 8
  %4070 = shl nsw i64 %4069, 2
  %4071 = add i64 %4070, %4042
  %4072 = add i64 %2923, 472
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4071 to i32*
  %4074 = load i32, i32* %4073, align 4
  store i32 %4074, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4075 = load i64, i64* %RBP.i, align 8
  %4076 = add i64 %4075, -40
  %4077 = add i64 %2923, 476
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i64*
  %4079 = load i64, i64* %4078, align 8
  store i64 %4079, i64* %RAX.i1124, align 8
  %4080 = add i64 %4075, -24
  %4081 = add i64 %2923, 479
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RDX.i722.pre-phi, align 8
  %4085 = add i64 %4075, -44
  %4086 = add i64 %2923, 482
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = add i32 %4088, -6
  %4090 = zext i32 %4089 to i64
  store i64 %4090, i64* %RSI.i1502, align 8
  %4091 = sext i32 %4083 to i64
  %4092 = sext i32 %4089 to i64
  %4093 = mul nsw i64 %4092, %4091
  %4094 = trunc i64 %4093 to i32
  %4095 = and i64 %4093, 4294967295
  store i64 %4095, i64* %RDX.i722.pre-phi, align 8
  %4096 = shl i64 %4093, 32
  %4097 = ashr exact i64 %4096, 32
  %4098 = icmp ne i64 %4097, %4093
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %.pre-phi, align 1
  %4100 = and i32 %4094, 255
  %4101 = tail call i32 @llvm.ctpop.i32(i32 %4100)
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = xor i8 %4103, 1
  store i8 %4104, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4105 = lshr i32 %4094, 31
  %4106 = trunc i32 %4105 to i8
  store i8 %4106, i8* %.pre-phi29, align 1
  store i8 %4099, i8* %.pre-phi31, align 1
  %4107 = add i64 %4075, -48
  %4108 = add i64 %2923, 491
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4107 to i32*
  %4110 = load i32, i32* %4109, align 4
  %4111 = add i32 %4110, %4094
  %4112 = zext i32 %4111 to i64
  store i64 %4112, i64* %RDX.i722.pre-phi, align 8
  %4113 = icmp ult i32 %4111, %4094
  %4114 = icmp ult i32 %4111, %4110
  %4115 = or i1 %4113, %4114
  %4116 = zext i1 %4115 to i8
  store i8 %4116, i8* %.pre-phi, align 1
  %4117 = and i32 %4111, 255
  %4118 = tail call i32 @llvm.ctpop.i32(i32 %4117)
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = xor i8 %4120, 1
  store i8 %4121, i8* %.pre-phi23, align 1
  %4122 = xor i32 %4110, %4094
  %4123 = xor i32 %4122, %4111
  %4124 = lshr i32 %4123, 4
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  store i8 %4126, i8* %.pre-phi25, align 1
  %4127 = icmp eq i32 %4111, 0
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %.pre-phi27, align 1
  %4129 = lshr i32 %4111, 31
  %4130 = trunc i32 %4129 to i8
  store i8 %4130, i8* %.pre-phi29, align 1
  %4131 = lshr i32 %4110, 31
  %4132 = xor i32 %4129, %4105
  %4133 = xor i32 %4129, %4131
  %4134 = add nuw nsw i32 %4132, %4133
  %4135 = icmp eq i32 %4134, 2
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %.pre-phi31, align 1
  %4137 = sext i32 %4111 to i64
  store i64 %4137, i64* %RCX.i1621, align 8
  %4138 = load i64, i64* %RAX.i1124, align 8
  %4139 = shl nsw i64 %4137, 2
  %4140 = add i64 %4139, %4138
  %4141 = add i64 %2923, 499
  store i64 %4141, i64* %3, align 8
  %4142 = load <2 x float>, <2 x float>* %2835, align 1
  %4143 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4144 = inttoptr i64 %4140 to float*
  %4145 = load float, float* %4144, align 4
  %4146 = extractelement <2 x float> %4142, i32 0
  %4147 = fmul float %4146, %4145
  store float %4147, float* %2828, align 1
  %4148 = bitcast <2 x float> %4142 to <2 x i32>
  %4149 = extractelement <2 x i32> %4148, i32 1
  store i32 %4149, i32* %2837, align 1
  %4150 = extractelement <2 x i32> %4143, i32 0
  store i32 %4150, i32* %2838, align 1
  %4151 = extractelement <2 x i32> %4143, i32 1
  store i32 %4151, i32* %2839, align 1
  %4152 = load <2 x float>, <2 x float>* %2840, align 1
  %4153 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4154 = load <2 x float>, <2 x float>* %2835, align 1
  %4155 = extractelement <2 x float> %4152, i32 0
  %4156 = extractelement <2 x float> %4154, i32 0
  %4157 = fadd float %4155, %4156
  store float %4157, float* %2819, align 1
  %4158 = bitcast <2 x float> %4152 to <2 x i32>
  %4159 = extractelement <2 x i32> %4158, i32 1
  store i32 %4159, i32* %2842, align 1
  %4160 = extractelement <2 x i32> %4153, i32 0
  store i32 %4160, i32* %2843, align 1
  %4161 = extractelement <2 x i32> %4153, i32 1
  store i32 %4161, i32* %2844, align 1
  %4162 = load i64, i64* %RBP.i, align 8
  %4163 = add i64 %4162, -32
  %4164 = add i64 %2923, 507
  store i64 %4164, i64* %3, align 8
  %4165 = inttoptr i64 %4163 to i64*
  %4166 = load i64, i64* %4165, align 8
  store i64 %4166, i64* %RAX.i1124, align 8
  %4167 = add i64 %4162, -44
  %4168 = add i64 %2923, 510
  store i64 %4168, i64* %3, align 8
  %4169 = inttoptr i64 %4167 to i32*
  %4170 = load i32, i32* %4169, align 4
  %4171 = add i32 %4170, -5
  %4172 = zext i32 %4171 to i64
  store i64 %4172, i64* %RDX.i722.pre-phi, align 8
  %4173 = icmp ult i32 %4170, 5
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %.pre-phi, align 1
  %4175 = and i32 %4171, 255
  %4176 = tail call i32 @llvm.ctpop.i32(i32 %4175)
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  %4179 = xor i8 %4178, 1
  store i8 %4179, i8* %.pre-phi23, align 1
  %4180 = xor i32 %4170, %4171
  %4181 = lshr i32 %4180, 4
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  store i8 %4183, i8* %.pre-phi25, align 1
  %4184 = icmp eq i32 %4171, 0
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %.pre-phi27, align 1
  %4186 = lshr i32 %4171, 31
  %4187 = trunc i32 %4186 to i8
  store i8 %4187, i8* %.pre-phi29, align 1
  %4188 = lshr i32 %4170, 31
  %4189 = xor i32 %4186, %4188
  %4190 = add nuw nsw i32 %4189, %4188
  %4191 = icmp eq i32 %4190, 2
  %4192 = zext i1 %4191 to i8
  store i8 %4192, i8* %.pre-phi31, align 1
  %4193 = sext i32 %4171 to i64
  store i64 %4193, i64* %RCX.i1621, align 8
  %4194 = shl nsw i64 %4193, 2
  %4195 = add i64 %4194, %4166
  %4196 = add i64 %2923, 521
  store i64 %4196, i64* %3, align 8
  %4197 = inttoptr i64 %4195 to i32*
  %4198 = load i32, i32* %4197, align 4
  store i32 %4198, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4199 = add i64 %4162, -40
  %4200 = add i64 %2923, 525
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to i64*
  %4202 = load i64, i64* %4201, align 8
  store i64 %4202, i64* %RAX.i1124, align 8
  %4203 = add i64 %4162, -24
  %4204 = add i64 %2923, 528
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4203 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = zext i32 %4206 to i64
  store i64 %4207, i64* %RDX.i722.pre-phi, align 8
  %4208 = add i64 %2923, 531
  store i64 %4208, i64* %3, align 8
  %4209 = load i32, i32* %4169, align 4
  %4210 = add i32 %4209, -5
  %4211 = zext i32 %4210 to i64
  store i64 %4211, i64* %RSI.i1502, align 8
  %4212 = sext i32 %4206 to i64
  %4213 = sext i32 %4210 to i64
  %4214 = mul nsw i64 %4213, %4212
  %4215 = trunc i64 %4214 to i32
  %4216 = and i64 %4214, 4294967295
  store i64 %4216, i64* %RDX.i722.pre-phi, align 8
  %4217 = shl i64 %4214, 32
  %4218 = ashr exact i64 %4217, 32
  %4219 = icmp ne i64 %4218, %4214
  %4220 = zext i1 %4219 to i8
  store i8 %4220, i8* %.pre-phi, align 1
  %4221 = and i32 %4215, 255
  %4222 = tail call i32 @llvm.ctpop.i32(i32 %4221)
  %4223 = trunc i32 %4222 to i8
  %4224 = and i8 %4223, 1
  %4225 = xor i8 %4224, 1
  store i8 %4225, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4226 = lshr i32 %4215, 31
  %4227 = trunc i32 %4226 to i8
  store i8 %4227, i8* %.pre-phi29, align 1
  store i8 %4220, i8* %.pre-phi31, align 1
  %4228 = load i64, i64* %RBP.i, align 8
  %4229 = add i64 %4228, -48
  %4230 = add i64 %2923, 540
  store i64 %4230, i64* %3, align 8
  %4231 = inttoptr i64 %4229 to i32*
  %4232 = load i32, i32* %4231, align 4
  %4233 = add i32 %4232, %4215
  %4234 = zext i32 %4233 to i64
  store i64 %4234, i64* %RDX.i722.pre-phi, align 8
  %4235 = icmp ult i32 %4233, %4215
  %4236 = icmp ult i32 %4233, %4232
  %4237 = or i1 %4235, %4236
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %.pre-phi, align 1
  %4239 = and i32 %4233, 255
  %4240 = tail call i32 @llvm.ctpop.i32(i32 %4239)
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  %4243 = xor i8 %4242, 1
  store i8 %4243, i8* %.pre-phi23, align 1
  %4244 = xor i32 %4232, %4215
  %4245 = xor i32 %4244, %4233
  %4246 = lshr i32 %4245, 4
  %4247 = trunc i32 %4246 to i8
  %4248 = and i8 %4247, 1
  store i8 %4248, i8* %.pre-phi25, align 1
  %4249 = icmp eq i32 %4233, 0
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %.pre-phi27, align 1
  %4251 = lshr i32 %4233, 31
  %4252 = trunc i32 %4251 to i8
  store i8 %4252, i8* %.pre-phi29, align 1
  %4253 = lshr i32 %4232, 31
  %4254 = xor i32 %4251, %4226
  %4255 = xor i32 %4251, %4253
  %4256 = add nuw nsw i32 %4254, %4255
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %.pre-phi31, align 1
  %4259 = sext i32 %4233 to i64
  store i64 %4259, i64* %RCX.i1621, align 8
  %4260 = load i64, i64* %RAX.i1124, align 8
  %4261 = shl nsw i64 %4259, 2
  %4262 = add i64 %4261, %4260
  %4263 = add i64 %2923, 548
  store i64 %4263, i64* %3, align 8
  %4264 = load <2 x float>, <2 x float>* %2835, align 1
  %4265 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4266 = inttoptr i64 %4262 to float*
  %4267 = load float, float* %4266, align 4
  %4268 = extractelement <2 x float> %4264, i32 0
  %4269 = fmul float %4268, %4267
  store float %4269, float* %2828, align 1
  %4270 = bitcast <2 x float> %4264 to <2 x i32>
  %4271 = extractelement <2 x i32> %4270, i32 1
  store i32 %4271, i32* %2837, align 1
  %4272 = extractelement <2 x i32> %4265, i32 0
  store i32 %4272, i32* %2838, align 1
  %4273 = extractelement <2 x i32> %4265, i32 1
  store i32 %4273, i32* %2839, align 1
  %4274 = load <2 x float>, <2 x float>* %2840, align 1
  %4275 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4276 = load <2 x float>, <2 x float>* %2835, align 1
  %4277 = extractelement <2 x float> %4274, i32 0
  %4278 = extractelement <2 x float> %4276, i32 0
  %4279 = fadd float %4277, %4278
  store float %4279, float* %2819, align 1
  %4280 = bitcast <2 x float> %4274 to <2 x i32>
  %4281 = extractelement <2 x i32> %4280, i32 1
  store i32 %4281, i32* %2842, align 1
  %4282 = extractelement <2 x i32> %4275, i32 0
  store i32 %4282, i32* %2843, align 1
  %4283 = extractelement <2 x i32> %4275, i32 1
  store i32 %4283, i32* %2844, align 1
  %4284 = add i64 %4228, -32
  %4285 = add i64 %2923, 556
  store i64 %4285, i64* %3, align 8
  %4286 = inttoptr i64 %4284 to i64*
  %4287 = load i64, i64* %4286, align 8
  store i64 %4287, i64* %RAX.i1124, align 8
  %4288 = add i64 %4228, -44
  %4289 = add i64 %2923, 559
  store i64 %4289, i64* %3, align 8
  %4290 = inttoptr i64 %4288 to i32*
  %4291 = load i32, i32* %4290, align 4
  %4292 = add i32 %4291, -4
  %4293 = zext i32 %4292 to i64
  store i64 %4293, i64* %RDX.i722.pre-phi, align 8
  %4294 = icmp ult i32 %4291, 4
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %.pre-phi, align 1
  %4296 = and i32 %4292, 255
  %4297 = tail call i32 @llvm.ctpop.i32(i32 %4296)
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  %4300 = xor i8 %4299, 1
  store i8 %4300, i8* %.pre-phi23, align 1
  %4301 = xor i32 %4291, %4292
  %4302 = lshr i32 %4301, 4
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  store i8 %4304, i8* %.pre-phi25, align 1
  %4305 = icmp eq i32 %4292, 0
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %.pre-phi27, align 1
  %4307 = lshr i32 %4292, 31
  %4308 = trunc i32 %4307 to i8
  store i8 %4308, i8* %.pre-phi29, align 1
  %4309 = lshr i32 %4291, 31
  %4310 = xor i32 %4307, %4309
  %4311 = add nuw nsw i32 %4310, %4309
  %4312 = icmp eq i32 %4311, 2
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %.pre-phi31, align 1
  %4314 = sext i32 %4292 to i64
  store i64 %4314, i64* %RCX.i1621, align 8
  %4315 = shl nsw i64 %4314, 2
  %4316 = add i64 %4315, %4287
  %4317 = add i64 %2923, 570
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i32*
  %4319 = load i32, i32* %4318, align 4
  store i32 %4319, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4320 = load i64, i64* %RBP.i, align 8
  %4321 = add i64 %4320, -40
  %4322 = add i64 %2923, 574
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to i64*
  %4324 = load i64, i64* %4323, align 8
  store i64 %4324, i64* %RAX.i1124, align 8
  %4325 = add i64 %4320, -24
  %4326 = add i64 %2923, 577
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4325 to i32*
  %4328 = load i32, i32* %4327, align 4
  %4329 = zext i32 %4328 to i64
  store i64 %4329, i64* %RDX.i722.pre-phi, align 8
  %4330 = add i64 %4320, -44
  %4331 = add i64 %2923, 580
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4330 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = add i32 %4333, -4
  %4335 = zext i32 %4334 to i64
  store i64 %4335, i64* %RSI.i1502, align 8
  %4336 = sext i32 %4328 to i64
  %4337 = sext i32 %4334 to i64
  %4338 = mul nsw i64 %4337, %4336
  %4339 = trunc i64 %4338 to i32
  %4340 = and i64 %4338, 4294967295
  store i64 %4340, i64* %RDX.i722.pre-phi, align 8
  %4341 = shl i64 %4338, 32
  %4342 = ashr exact i64 %4341, 32
  %4343 = icmp ne i64 %4342, %4338
  %4344 = zext i1 %4343 to i8
  store i8 %4344, i8* %.pre-phi, align 1
  %4345 = and i32 %4339, 255
  %4346 = tail call i32 @llvm.ctpop.i32(i32 %4345)
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = xor i8 %4348, 1
  store i8 %4349, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4350 = lshr i32 %4339, 31
  %4351 = trunc i32 %4350 to i8
  store i8 %4351, i8* %.pre-phi29, align 1
  store i8 %4344, i8* %.pre-phi31, align 1
  %4352 = add i64 %4320, -48
  %4353 = add i64 %2923, 589
  store i64 %4353, i64* %3, align 8
  %4354 = inttoptr i64 %4352 to i32*
  %4355 = load i32, i32* %4354, align 4
  %4356 = add i32 %4355, %4339
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %RDX.i722.pre-phi, align 8
  %4358 = icmp ult i32 %4356, %4339
  %4359 = icmp ult i32 %4356, %4355
  %4360 = or i1 %4358, %4359
  %4361 = zext i1 %4360 to i8
  store i8 %4361, i8* %.pre-phi, align 1
  %4362 = and i32 %4356, 255
  %4363 = tail call i32 @llvm.ctpop.i32(i32 %4362)
  %4364 = trunc i32 %4363 to i8
  %4365 = and i8 %4364, 1
  %4366 = xor i8 %4365, 1
  store i8 %4366, i8* %.pre-phi23, align 1
  %4367 = xor i32 %4355, %4339
  %4368 = xor i32 %4367, %4356
  %4369 = lshr i32 %4368, 4
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  store i8 %4371, i8* %.pre-phi25, align 1
  %4372 = icmp eq i32 %4356, 0
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %.pre-phi27, align 1
  %4374 = lshr i32 %4356, 31
  %4375 = trunc i32 %4374 to i8
  store i8 %4375, i8* %.pre-phi29, align 1
  %4376 = lshr i32 %4355, 31
  %4377 = xor i32 %4374, %4350
  %4378 = xor i32 %4374, %4376
  %4379 = add nuw nsw i32 %4377, %4378
  %4380 = icmp eq i32 %4379, 2
  %4381 = zext i1 %4380 to i8
  store i8 %4381, i8* %.pre-phi31, align 1
  %4382 = sext i32 %4356 to i64
  store i64 %4382, i64* %RCX.i1621, align 8
  %4383 = load i64, i64* %RAX.i1124, align 8
  %4384 = shl nsw i64 %4382, 2
  %4385 = add i64 %4384, %4383
  %4386 = add i64 %2923, 597
  store i64 %4386, i64* %3, align 8
  %4387 = load <2 x float>, <2 x float>* %2835, align 1
  %4388 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4389 = inttoptr i64 %4385 to float*
  %4390 = load float, float* %4389, align 4
  %4391 = extractelement <2 x float> %4387, i32 0
  %4392 = fmul float %4391, %4390
  store float %4392, float* %2828, align 1
  %4393 = bitcast <2 x float> %4387 to <2 x i32>
  %4394 = extractelement <2 x i32> %4393, i32 1
  store i32 %4394, i32* %2837, align 1
  %4395 = extractelement <2 x i32> %4388, i32 0
  store i32 %4395, i32* %2838, align 1
  %4396 = extractelement <2 x i32> %4388, i32 1
  store i32 %4396, i32* %2839, align 1
  %4397 = load <2 x float>, <2 x float>* %2840, align 1
  %4398 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4399 = load <2 x float>, <2 x float>* %2835, align 1
  %4400 = extractelement <2 x float> %4397, i32 0
  %4401 = extractelement <2 x float> %4399, i32 0
  %4402 = fadd float %4400, %4401
  store float %4402, float* %2819, align 1
  %4403 = bitcast <2 x float> %4397 to <2 x i32>
  %4404 = extractelement <2 x i32> %4403, i32 1
  store i32 %4404, i32* %2842, align 1
  %4405 = extractelement <2 x i32> %4398, i32 0
  store i32 %4405, i32* %2843, align 1
  %4406 = extractelement <2 x i32> %4398, i32 1
  store i32 %4406, i32* %2844, align 1
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -32
  %4409 = add i64 %2923, 605
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RAX.i1124, align 8
  %4412 = add i64 %4407, -44
  %4413 = add i64 %2923, 608
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = add i32 %4415, -3
  %4417 = zext i32 %4416 to i64
  store i64 %4417, i64* %RDX.i722.pre-phi, align 8
  %4418 = icmp ult i32 %4415, 3
  %4419 = zext i1 %4418 to i8
  store i8 %4419, i8* %.pre-phi, align 1
  %4420 = and i32 %4416, 255
  %4421 = tail call i32 @llvm.ctpop.i32(i32 %4420)
  %4422 = trunc i32 %4421 to i8
  %4423 = and i8 %4422, 1
  %4424 = xor i8 %4423, 1
  store i8 %4424, i8* %.pre-phi23, align 1
  %4425 = xor i32 %4415, %4416
  %4426 = lshr i32 %4425, 4
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  store i8 %4428, i8* %.pre-phi25, align 1
  %4429 = icmp eq i32 %4416, 0
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %.pre-phi27, align 1
  %4431 = lshr i32 %4416, 31
  %4432 = trunc i32 %4431 to i8
  store i8 %4432, i8* %.pre-phi29, align 1
  %4433 = lshr i32 %4415, 31
  %4434 = xor i32 %4431, %4433
  %4435 = add nuw nsw i32 %4434, %4433
  %4436 = icmp eq i32 %4435, 2
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %.pre-phi31, align 1
  %4438 = sext i32 %4416 to i64
  store i64 %4438, i64* %RCX.i1621, align 8
  %4439 = shl nsw i64 %4438, 2
  %4440 = add i64 %4439, %4411
  %4441 = add i64 %2923, 619
  store i64 %4441, i64* %3, align 8
  %4442 = inttoptr i64 %4440 to i32*
  %4443 = load i32, i32* %4442, align 4
  store i32 %4443, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4444 = add i64 %4407, -40
  %4445 = add i64 %2923, 623
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4444 to i64*
  %4447 = load i64, i64* %4446, align 8
  store i64 %4447, i64* %RAX.i1124, align 8
  %4448 = add i64 %4407, -24
  %4449 = add i64 %2923, 626
  store i64 %4449, i64* %3, align 8
  %4450 = inttoptr i64 %4448 to i32*
  %4451 = load i32, i32* %4450, align 4
  %4452 = zext i32 %4451 to i64
  store i64 %4452, i64* %RDX.i722.pre-phi, align 8
  %4453 = add i64 %2923, 629
  store i64 %4453, i64* %3, align 8
  %4454 = load i32, i32* %4414, align 4
  %4455 = add i32 %4454, -3
  %4456 = zext i32 %4455 to i64
  store i64 %4456, i64* %RSI.i1502, align 8
  %4457 = sext i32 %4451 to i64
  %4458 = sext i32 %4455 to i64
  %4459 = mul nsw i64 %4458, %4457
  %4460 = trunc i64 %4459 to i32
  %4461 = and i64 %4459, 4294967295
  store i64 %4461, i64* %RDX.i722.pre-phi, align 8
  %4462 = shl i64 %4459, 32
  %4463 = ashr exact i64 %4462, 32
  %4464 = icmp ne i64 %4463, %4459
  %4465 = zext i1 %4464 to i8
  store i8 %4465, i8* %.pre-phi, align 1
  %4466 = and i32 %4460, 255
  %4467 = tail call i32 @llvm.ctpop.i32(i32 %4466)
  %4468 = trunc i32 %4467 to i8
  %4469 = and i8 %4468, 1
  %4470 = xor i8 %4469, 1
  store i8 %4470, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4471 = lshr i32 %4460, 31
  %4472 = trunc i32 %4471 to i8
  store i8 %4472, i8* %.pre-phi29, align 1
  store i8 %4465, i8* %.pre-phi31, align 1
  %4473 = load i64, i64* %RBP.i, align 8
  %4474 = add i64 %4473, -48
  %4475 = add i64 %2923, 638
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = add i32 %4477, %4460
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RDX.i722.pre-phi, align 8
  %4480 = icmp ult i32 %4478, %4460
  %4481 = icmp ult i32 %4478, %4477
  %4482 = or i1 %4480, %4481
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %.pre-phi, align 1
  %4484 = and i32 %4478, 255
  %4485 = tail call i32 @llvm.ctpop.i32(i32 %4484)
  %4486 = trunc i32 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = xor i8 %4487, 1
  store i8 %4488, i8* %.pre-phi23, align 1
  %4489 = xor i32 %4477, %4460
  %4490 = xor i32 %4489, %4478
  %4491 = lshr i32 %4490, 4
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  store i8 %4493, i8* %.pre-phi25, align 1
  %4494 = icmp eq i32 %4478, 0
  %4495 = zext i1 %4494 to i8
  store i8 %4495, i8* %.pre-phi27, align 1
  %4496 = lshr i32 %4478, 31
  %4497 = trunc i32 %4496 to i8
  store i8 %4497, i8* %.pre-phi29, align 1
  %4498 = lshr i32 %4477, 31
  %4499 = xor i32 %4496, %4471
  %4500 = xor i32 %4496, %4498
  %4501 = add nuw nsw i32 %4499, %4500
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %.pre-phi31, align 1
  %4504 = sext i32 %4478 to i64
  store i64 %4504, i64* %RCX.i1621, align 8
  %4505 = load i64, i64* %RAX.i1124, align 8
  %4506 = shl nsw i64 %4504, 2
  %4507 = add i64 %4506, %4505
  %4508 = add i64 %2923, 646
  store i64 %4508, i64* %3, align 8
  %4509 = load <2 x float>, <2 x float>* %2835, align 1
  %4510 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4511 = inttoptr i64 %4507 to float*
  %4512 = load float, float* %4511, align 4
  %4513 = extractelement <2 x float> %4509, i32 0
  %4514 = fmul float %4513, %4512
  store float %4514, float* %2828, align 1
  %4515 = bitcast <2 x float> %4509 to <2 x i32>
  %4516 = extractelement <2 x i32> %4515, i32 1
  store i32 %4516, i32* %2837, align 1
  %4517 = extractelement <2 x i32> %4510, i32 0
  store i32 %4517, i32* %2838, align 1
  %4518 = extractelement <2 x i32> %4510, i32 1
  store i32 %4518, i32* %2839, align 1
  %4519 = load <2 x float>, <2 x float>* %2840, align 1
  %4520 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4521 = load <2 x float>, <2 x float>* %2835, align 1
  %4522 = extractelement <2 x float> %4519, i32 0
  %4523 = extractelement <2 x float> %4521, i32 0
  %4524 = fadd float %4522, %4523
  store float %4524, float* %2819, align 1
  %4525 = bitcast <2 x float> %4519 to <2 x i32>
  %4526 = extractelement <2 x i32> %4525, i32 1
  store i32 %4526, i32* %2842, align 1
  %4527 = extractelement <2 x i32> %4520, i32 0
  store i32 %4527, i32* %2843, align 1
  %4528 = extractelement <2 x i32> %4520, i32 1
  store i32 %4528, i32* %2844, align 1
  %4529 = add i64 %4473, -32
  %4530 = add i64 %2923, 654
  store i64 %4530, i64* %3, align 8
  %4531 = inttoptr i64 %4529 to i64*
  %4532 = load i64, i64* %4531, align 8
  store i64 %4532, i64* %RAX.i1124, align 8
  %4533 = add i64 %4473, -44
  %4534 = add i64 %2923, 657
  store i64 %4534, i64* %3, align 8
  %4535 = inttoptr i64 %4533 to i32*
  %4536 = load i32, i32* %4535, align 4
  %4537 = add i32 %4536, -2
  %4538 = zext i32 %4537 to i64
  store i64 %4538, i64* %RDX.i722.pre-phi, align 8
  %4539 = icmp ult i32 %4536, 2
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %.pre-phi, align 1
  %4541 = and i32 %4537, 255
  %4542 = tail call i32 @llvm.ctpop.i32(i32 %4541)
  %4543 = trunc i32 %4542 to i8
  %4544 = and i8 %4543, 1
  %4545 = xor i8 %4544, 1
  store i8 %4545, i8* %.pre-phi23, align 1
  %4546 = xor i32 %4536, %4537
  %4547 = lshr i32 %4546, 4
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  store i8 %4549, i8* %.pre-phi25, align 1
  %4550 = icmp eq i32 %4537, 0
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %.pre-phi27, align 1
  %4552 = lshr i32 %4537, 31
  %4553 = trunc i32 %4552 to i8
  store i8 %4553, i8* %.pre-phi29, align 1
  %4554 = lshr i32 %4536, 31
  %4555 = xor i32 %4552, %4554
  %4556 = add nuw nsw i32 %4555, %4554
  %4557 = icmp eq i32 %4556, 2
  %4558 = zext i1 %4557 to i8
  store i8 %4558, i8* %.pre-phi31, align 1
  %4559 = sext i32 %4537 to i64
  store i64 %4559, i64* %RCX.i1621, align 8
  %4560 = shl nsw i64 %4559, 2
  %4561 = add i64 %4560, %4532
  %4562 = add i64 %2923, 668
  store i64 %4562, i64* %3, align 8
  %4563 = inttoptr i64 %4561 to i32*
  %4564 = load i32, i32* %4563, align 4
  store i32 %4564, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4565 = load i64, i64* %RBP.i, align 8
  %4566 = add i64 %4565, -40
  %4567 = add i64 %2923, 672
  store i64 %4567, i64* %3, align 8
  %4568 = inttoptr i64 %4566 to i64*
  %4569 = load i64, i64* %4568, align 8
  store i64 %4569, i64* %RAX.i1124, align 8
  %4570 = add i64 %4565, -24
  %4571 = add i64 %2923, 675
  store i64 %4571, i64* %3, align 8
  %4572 = inttoptr i64 %4570 to i32*
  %4573 = load i32, i32* %4572, align 4
  %4574 = zext i32 %4573 to i64
  store i64 %4574, i64* %RDX.i722.pre-phi, align 8
  %4575 = add i64 %4565, -44
  %4576 = add i64 %2923, 678
  store i64 %4576, i64* %3, align 8
  %4577 = inttoptr i64 %4575 to i32*
  %4578 = load i32, i32* %4577, align 4
  %4579 = add i32 %4578, -2
  %4580 = zext i32 %4579 to i64
  store i64 %4580, i64* %RSI.i1502, align 8
  %4581 = sext i32 %4573 to i64
  %4582 = sext i32 %4579 to i64
  %4583 = mul nsw i64 %4582, %4581
  %4584 = trunc i64 %4583 to i32
  %4585 = and i64 %4583, 4294967295
  store i64 %4585, i64* %RDX.i722.pre-phi, align 8
  %4586 = shl i64 %4583, 32
  %4587 = ashr exact i64 %4586, 32
  %4588 = icmp ne i64 %4587, %4583
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %.pre-phi, align 1
  %4590 = and i32 %4584, 255
  %4591 = tail call i32 @llvm.ctpop.i32(i32 %4590)
  %4592 = trunc i32 %4591 to i8
  %4593 = and i8 %4592, 1
  %4594 = xor i8 %4593, 1
  store i8 %4594, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4595 = lshr i32 %4584, 31
  %4596 = trunc i32 %4595 to i8
  store i8 %4596, i8* %.pre-phi29, align 1
  store i8 %4589, i8* %.pre-phi31, align 1
  %4597 = add i64 %4565, -48
  %4598 = add i64 %2923, 687
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i32*
  %4600 = load i32, i32* %4599, align 4
  %4601 = add i32 %4600, %4584
  %4602 = zext i32 %4601 to i64
  store i64 %4602, i64* %RDX.i722.pre-phi, align 8
  %4603 = icmp ult i32 %4601, %4584
  %4604 = icmp ult i32 %4601, %4600
  %4605 = or i1 %4603, %4604
  %4606 = zext i1 %4605 to i8
  store i8 %4606, i8* %.pre-phi, align 1
  %4607 = and i32 %4601, 255
  %4608 = tail call i32 @llvm.ctpop.i32(i32 %4607)
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  %4611 = xor i8 %4610, 1
  store i8 %4611, i8* %.pre-phi23, align 1
  %4612 = xor i32 %4600, %4584
  %4613 = xor i32 %4612, %4601
  %4614 = lshr i32 %4613, 4
  %4615 = trunc i32 %4614 to i8
  %4616 = and i8 %4615, 1
  store i8 %4616, i8* %.pre-phi25, align 1
  %4617 = icmp eq i32 %4601, 0
  %4618 = zext i1 %4617 to i8
  store i8 %4618, i8* %.pre-phi27, align 1
  %4619 = lshr i32 %4601, 31
  %4620 = trunc i32 %4619 to i8
  store i8 %4620, i8* %.pre-phi29, align 1
  %4621 = lshr i32 %4600, 31
  %4622 = xor i32 %4619, %4595
  %4623 = xor i32 %4619, %4621
  %4624 = add nuw nsw i32 %4622, %4623
  %4625 = icmp eq i32 %4624, 2
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %.pre-phi31, align 1
  %4627 = sext i32 %4601 to i64
  store i64 %4627, i64* %RCX.i1621, align 8
  %4628 = load i64, i64* %RAX.i1124, align 8
  %4629 = shl nsw i64 %4627, 2
  %4630 = add i64 %4629, %4628
  %4631 = add i64 %2923, 695
  store i64 %4631, i64* %3, align 8
  %4632 = load <2 x float>, <2 x float>* %2835, align 1
  %4633 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4634 = inttoptr i64 %4630 to float*
  %4635 = load float, float* %4634, align 4
  %4636 = extractelement <2 x float> %4632, i32 0
  %4637 = fmul float %4636, %4635
  store float %4637, float* %2828, align 1
  %4638 = bitcast <2 x float> %4632 to <2 x i32>
  %4639 = extractelement <2 x i32> %4638, i32 1
  store i32 %4639, i32* %2837, align 1
  %4640 = extractelement <2 x i32> %4633, i32 0
  store i32 %4640, i32* %2838, align 1
  %4641 = extractelement <2 x i32> %4633, i32 1
  store i32 %4641, i32* %2839, align 1
  %4642 = load <2 x float>, <2 x float>* %2840, align 1
  %4643 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4644 = load <2 x float>, <2 x float>* %2835, align 1
  %4645 = extractelement <2 x float> %4642, i32 0
  %4646 = extractelement <2 x float> %4644, i32 0
  %4647 = fadd float %4645, %4646
  store float %4647, float* %2819, align 1
  %4648 = bitcast <2 x float> %4642 to <2 x i32>
  %4649 = extractelement <2 x i32> %4648, i32 1
  store i32 %4649, i32* %2842, align 1
  %4650 = extractelement <2 x i32> %4643, i32 0
  store i32 %4650, i32* %2843, align 1
  %4651 = extractelement <2 x i32> %4643, i32 1
  store i32 %4651, i32* %2844, align 1
  %4652 = load i64, i64* %RBP.i, align 8
  %4653 = add i64 %4652, -32
  %4654 = add i64 %2923, 703
  store i64 %4654, i64* %3, align 8
  %4655 = inttoptr i64 %4653 to i64*
  %4656 = load i64, i64* %4655, align 8
  store i64 %4656, i64* %RAX.i1124, align 8
  %4657 = add i64 %4652, -44
  %4658 = add i64 %2923, 706
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = add i32 %4660, -1
  %4662 = zext i32 %4661 to i64
  store i64 %4662, i64* %RDX.i722.pre-phi, align 8
  %4663 = icmp eq i32 %4660, 0
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %.pre-phi, align 1
  %4665 = and i32 %4661, 255
  %4666 = tail call i32 @llvm.ctpop.i32(i32 %4665)
  %4667 = trunc i32 %4666 to i8
  %4668 = and i8 %4667, 1
  %4669 = xor i8 %4668, 1
  store i8 %4669, i8* %.pre-phi23, align 1
  %4670 = xor i32 %4660, %4661
  %4671 = lshr i32 %4670, 4
  %4672 = trunc i32 %4671 to i8
  %4673 = and i8 %4672, 1
  store i8 %4673, i8* %.pre-phi25, align 1
  %4674 = icmp eq i32 %4661, 0
  %4675 = zext i1 %4674 to i8
  store i8 %4675, i8* %.pre-phi27, align 1
  %4676 = lshr i32 %4661, 31
  %4677 = trunc i32 %4676 to i8
  store i8 %4677, i8* %.pre-phi29, align 1
  %4678 = lshr i32 %4660, 31
  %4679 = xor i32 %4676, %4678
  %4680 = add nuw nsw i32 %4679, %4678
  %4681 = icmp eq i32 %4680, 2
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %.pre-phi31, align 1
  %4683 = sext i32 %4661 to i64
  store i64 %4683, i64* %RCX.i1621, align 8
  %4684 = shl nsw i64 %4683, 2
  %4685 = add i64 %4684, %4656
  %4686 = add i64 %2923, 717
  store i64 %4686, i64* %3, align 8
  %4687 = inttoptr i64 %4685 to i32*
  %4688 = load i32, i32* %4687, align 4
  store i32 %4688, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4689 = add i64 %4652, -40
  %4690 = add i64 %2923, 721
  store i64 %4690, i64* %3, align 8
  %4691 = inttoptr i64 %4689 to i64*
  %4692 = load i64, i64* %4691, align 8
  store i64 %4692, i64* %RAX.i1124, align 8
  %4693 = add i64 %4652, -24
  %4694 = add i64 %2923, 724
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4693 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %RDX.i722.pre-phi, align 8
  %4698 = add i64 %2923, 727
  store i64 %4698, i64* %3, align 8
  %4699 = load i32, i32* %4659, align 4
  %4700 = add i32 %4699, -1
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RSI.i1502, align 8
  %4702 = sext i32 %4696 to i64
  %4703 = sext i32 %4700 to i64
  %4704 = mul nsw i64 %4703, %4702
  %4705 = trunc i64 %4704 to i32
  %4706 = and i64 %4704, 4294967295
  store i64 %4706, i64* %RDX.i722.pre-phi, align 8
  %4707 = shl i64 %4704, 32
  %4708 = ashr exact i64 %4707, 32
  %4709 = icmp ne i64 %4708, %4704
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %.pre-phi, align 1
  %4711 = and i32 %4705, 255
  %4712 = tail call i32 @llvm.ctpop.i32(i32 %4711)
  %4713 = trunc i32 %4712 to i8
  %4714 = and i8 %4713, 1
  %4715 = xor i8 %4714, 1
  store i8 %4715, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4716 = lshr i32 %4705, 31
  %4717 = trunc i32 %4716 to i8
  store i8 %4717, i8* %.pre-phi29, align 1
  store i8 %4710, i8* %.pre-phi31, align 1
  %4718 = load i64, i64* %RBP.i, align 8
  %4719 = add i64 %4718, -48
  %4720 = add i64 %2923, 736
  store i64 %4720, i64* %3, align 8
  %4721 = inttoptr i64 %4719 to i32*
  %4722 = load i32, i32* %4721, align 4
  %4723 = add i32 %4722, %4705
  %4724 = zext i32 %4723 to i64
  store i64 %4724, i64* %RDX.i722.pre-phi, align 8
  %4725 = icmp ult i32 %4723, %4705
  %4726 = icmp ult i32 %4723, %4722
  %4727 = or i1 %4725, %4726
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %.pre-phi, align 1
  %4729 = and i32 %4723, 255
  %4730 = tail call i32 @llvm.ctpop.i32(i32 %4729)
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  %4733 = xor i8 %4732, 1
  store i8 %4733, i8* %.pre-phi23, align 1
  %4734 = xor i32 %4722, %4705
  %4735 = xor i32 %4734, %4723
  %4736 = lshr i32 %4735, 4
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  store i8 %4738, i8* %.pre-phi25, align 1
  %4739 = icmp eq i32 %4723, 0
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %.pre-phi27, align 1
  %4741 = lshr i32 %4723, 31
  %4742 = trunc i32 %4741 to i8
  store i8 %4742, i8* %.pre-phi29, align 1
  %4743 = lshr i32 %4722, 31
  %4744 = xor i32 %4741, %4716
  %4745 = xor i32 %4741, %4743
  %4746 = add nuw nsw i32 %4744, %4745
  %4747 = icmp eq i32 %4746, 2
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %.pre-phi31, align 1
  %4749 = sext i32 %4723 to i64
  store i64 %4749, i64* %RCX.i1621, align 8
  %4750 = load i64, i64* %RAX.i1124, align 8
  %4751 = shl nsw i64 %4749, 2
  %4752 = add i64 %4751, %4750
  %4753 = add i64 %2923, 744
  store i64 %4753, i64* %3, align 8
  %4754 = load <2 x float>, <2 x float>* %2835, align 1
  %4755 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4756 = inttoptr i64 %4752 to float*
  %4757 = load float, float* %4756, align 4
  %4758 = extractelement <2 x float> %4754, i32 0
  %4759 = fmul float %4758, %4757
  store float %4759, float* %2828, align 1
  %4760 = bitcast <2 x float> %4754 to <2 x i32>
  %4761 = extractelement <2 x i32> %4760, i32 1
  store i32 %4761, i32* %2837, align 1
  %4762 = extractelement <2 x i32> %4755, i32 0
  store i32 %4762, i32* %2838, align 1
  %4763 = extractelement <2 x i32> %4755, i32 1
  store i32 %4763, i32* %2839, align 1
  %4764 = load <2 x float>, <2 x float>* %2840, align 1
  %4765 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4766 = load <2 x float>, <2 x float>* %2835, align 1
  %4767 = extractelement <2 x float> %4764, i32 0
  %4768 = extractelement <2 x float> %4766, i32 0
  %4769 = fadd float %4767, %4768
  store float %4769, float* %2819, align 1
  %4770 = bitcast <2 x float> %4764 to <2 x i32>
  %4771 = extractelement <2 x i32> %4770, i32 1
  store i32 %4771, i32* %2842, align 1
  %4772 = extractelement <2 x i32> %4765, i32 0
  store i32 %4772, i32* %2843, align 1
  %4773 = extractelement <2 x i32> %4765, i32 1
  store i32 %4773, i32* %2844, align 1
  %4774 = add i64 %4718, -32
  %4775 = add i64 %2923, 752
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i64*
  %4777 = load i64, i64* %4776, align 8
  store i64 %4777, i64* %RAX.i1124, align 8
  %4778 = add i64 %4718, -44
  %4779 = add i64 %2923, 756
  store i64 %4779, i64* %3, align 8
  %4780 = inttoptr i64 %4778 to i32*
  %4781 = load i32, i32* %4780, align 4
  %4782 = sext i32 %4781 to i64
  store i64 %4782, i64* %RCX.i1621, align 8
  %4783 = shl nsw i64 %4782, 2
  %4784 = add i64 %4783, %4777
  %4785 = add i64 %2923, 761
  store i64 %4785, i64* %3, align 8
  %4786 = inttoptr i64 %4784 to i32*
  %4787 = load i32, i32* %4786, align 4
  store i32 %4787, i32* %2973, align 1
  store float 0.000000e+00, float* %2830, align 1
  store float 0.000000e+00, float* %2832, align 1
  store float 0.000000e+00, float* %2834, align 1
  %4788 = load i64, i64* %RBP.i, align 8
  %4789 = add i64 %4788, -40
  %4790 = add i64 %2923, 765
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i64*
  %4792 = load i64, i64* %4791, align 8
  store i64 %4792, i64* %RAX.i1124, align 8
  %4793 = add i64 %4788, -24
  %4794 = add i64 %2923, 768
  store i64 %4794, i64* %3, align 8
  %4795 = inttoptr i64 %4793 to i32*
  %4796 = load i32, i32* %4795, align 4
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RDX.i722.pre-phi, align 8
  %4798 = add i64 %4788, -44
  %4799 = add i64 %2923, 772
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = sext i32 %4796 to i64
  %4803 = sext i32 %4801 to i64
  %4804 = mul nsw i64 %4803, %4802
  %4805 = trunc i64 %4804 to i32
  %4806 = and i64 %4804, 4294967295
  store i64 %4806, i64* %RDX.i722.pre-phi, align 8
  %4807 = shl i64 %4804, 32
  %4808 = ashr exact i64 %4807, 32
  %4809 = icmp ne i64 %4808, %4804
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %.pre-phi, align 1
  %4811 = and i32 %4805, 255
  %4812 = tail call i32 @llvm.ctpop.i32(i32 %4811)
  %4813 = trunc i32 %4812 to i8
  %4814 = and i8 %4813, 1
  %4815 = xor i8 %4814, 1
  store i8 %4815, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4816 = lshr i32 %4805, 31
  %4817 = trunc i32 %4816 to i8
  store i8 %4817, i8* %.pre-phi29, align 1
  store i8 %4810, i8* %.pre-phi31, align 1
  %4818 = add i64 %4788, -48
  %4819 = add i64 %2923, 775
  store i64 %4819, i64* %3, align 8
  %4820 = inttoptr i64 %4818 to i32*
  %4821 = load i32, i32* %4820, align 4
  %4822 = add i32 %4821, %4805
  %4823 = zext i32 %4822 to i64
  store i64 %4823, i64* %RDX.i722.pre-phi, align 8
  %4824 = icmp ult i32 %4822, %4805
  %4825 = icmp ult i32 %4822, %4821
  %4826 = or i1 %4824, %4825
  %4827 = zext i1 %4826 to i8
  store i8 %4827, i8* %.pre-phi, align 1
  %4828 = and i32 %4822, 255
  %4829 = tail call i32 @llvm.ctpop.i32(i32 %4828)
  %4830 = trunc i32 %4829 to i8
  %4831 = and i8 %4830, 1
  %4832 = xor i8 %4831, 1
  store i8 %4832, i8* %.pre-phi23, align 1
  %4833 = xor i32 %4821, %4805
  %4834 = xor i32 %4833, %4822
  %4835 = lshr i32 %4834, 4
  %4836 = trunc i32 %4835 to i8
  %4837 = and i8 %4836, 1
  store i8 %4837, i8* %.pre-phi25, align 1
  %4838 = icmp eq i32 %4822, 0
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %.pre-phi27, align 1
  %4840 = lshr i32 %4822, 31
  %4841 = trunc i32 %4840 to i8
  store i8 %4841, i8* %.pre-phi29, align 1
  %4842 = lshr i32 %4821, 31
  %4843 = xor i32 %4840, %4816
  %4844 = xor i32 %4840, %4842
  %4845 = add nuw nsw i32 %4843, %4844
  %4846 = icmp eq i32 %4845, 2
  %4847 = zext i1 %4846 to i8
  store i8 %4847, i8* %.pre-phi31, align 1
  %4848 = sext i32 %4822 to i64
  store i64 %4848, i64* %RCX.i1621, align 8
  %4849 = shl nsw i64 %4848, 2
  %4850 = add i64 %4849, %4792
  %4851 = add i64 %2923, 783
  store i64 %4851, i64* %3, align 8
  %4852 = load <2 x float>, <2 x float>* %2835, align 1
  %4853 = load <2 x i32>, <2 x i32>* %2836, align 1
  %4854 = inttoptr i64 %4850 to float*
  %4855 = load float, float* %4854, align 4
  %4856 = extractelement <2 x float> %4852, i32 0
  %4857 = fmul float %4856, %4855
  store float %4857, float* %2828, align 1
  %4858 = bitcast <2 x float> %4852 to <2 x i32>
  %4859 = extractelement <2 x i32> %4858, i32 1
  store i32 %4859, i32* %2837, align 1
  %4860 = extractelement <2 x i32> %4853, i32 0
  store i32 %4860, i32* %2838, align 1
  %4861 = extractelement <2 x i32> %4853, i32 1
  store i32 %4861, i32* %2839, align 1
  %4862 = load <2 x float>, <2 x float>* %2840, align 1
  %4863 = load <2 x i32>, <2 x i32>* %2841, align 1
  %4864 = load <2 x float>, <2 x float>* %2835, align 1
  %4865 = extractelement <2 x float> %4862, i32 0
  %4866 = extractelement <2 x float> %4864, i32 0
  %4867 = fadd float %4865, %4866
  store float %4867, float* %2819, align 1
  %4868 = bitcast <2 x float> %4862 to <2 x i32>
  %4869 = extractelement <2 x i32> %4868, i32 1
  store i32 %4869, i32* %2842, align 1
  %4870 = extractelement <2 x i32> %4863, i32 0
  store i32 %4870, i32* %2843, align 1
  %4871 = extractelement <2 x i32> %4863, i32 1
  store i32 %4871, i32* %2844, align 1
  %4872 = load i64, i64* %RBP.i, align 8
  %4873 = add i64 %4872, -16
  %4874 = add i64 %2923, 791
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i64*
  %4876 = load i64, i64* %4875, align 8
  store i64 %4876, i64* %RAX.i1124, align 8
  %4877 = add i64 %4872, -48
  %4878 = add i64 %2923, 795
  store i64 %4878, i64* %3, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = sext i32 %4880 to i64
  store i64 %4881, i64* %RCX.i1621, align 8
  %4882 = shl nsw i64 %4881, 2
  %4883 = add i64 %4882, %4876
  %4884 = add i64 %2923, 800
  store i64 %4884, i64* %3, align 8
  %4885 = load <2 x float>, <2 x float>* %2840, align 1
  %4886 = extractelement <2 x float> %4885, i32 0
  %4887 = inttoptr i64 %4883 to float*
  store float %4886, float* %4887, align 4
  %4888 = load i64, i64* %RBP.i, align 8
  %4889 = add i64 %4888, -48
  %4890 = load i64, i64* %3, align 8
  %4891 = add i64 %4890, 3
  store i64 %4891, i64* %3, align 8
  %4892 = inttoptr i64 %4889 to i32*
  %4893 = load i32, i32* %4892, align 4
  %4894 = add i32 %4893, 1
  %4895 = zext i32 %4894 to i64
  store i64 %4895, i64* %RAX.i1124, align 8
  %4896 = icmp eq i32 %4893, -1
  %4897 = icmp eq i32 %4894, 0
  %4898 = or i1 %4896, %4897
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %.pre-phi, align 1
  %4900 = and i32 %4894, 255
  %4901 = tail call i32 @llvm.ctpop.i32(i32 %4900)
  %4902 = trunc i32 %4901 to i8
  %4903 = and i8 %4902, 1
  %4904 = xor i8 %4903, 1
  store i8 %4904, i8* %.pre-phi23, align 1
  %4905 = xor i32 %4893, %4894
  %4906 = lshr i32 %4905, 4
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  store i8 %4908, i8* %.pre-phi25, align 1
  %4909 = zext i1 %4897 to i8
  store i8 %4909, i8* %.pre-phi27, align 1
  %4910 = lshr i32 %4894, 31
  %4911 = trunc i32 %4910 to i8
  store i8 %4911, i8* %.pre-phi29, align 1
  %4912 = lshr i32 %4893, 31
  %4913 = xor i32 %4910, %4912
  %4914 = add nuw nsw i32 %4913, %4910
  %4915 = icmp eq i32 %4914, 2
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %.pre-phi31, align 1
  %4917 = add i64 %4890, 9
  store i64 %4917, i64* %3, align 8
  store i32 %4894, i32* %4892, align 4
  %4918 = load i64, i64* %3, align 8
  %4919 = add i64 %4918, -821
  store i64 %4919, i64* %3, align 8
  br label %block_.L_4024b9

block_.L_4027f3:                                  ; preds = %block_.L_4024b9
  %4920 = add i64 %2887, -44
  %4921 = add i64 %2923, 8
  store i64 %4921, i64* %3, align 8
  %4922 = inttoptr i64 %4920 to i32*
  %4923 = load i32, i32* %4922, align 4
  %4924 = add i32 %4923, 16
  %4925 = zext i32 %4924 to i64
  store i64 %4925, i64* %RAX.i1124, align 8
  %4926 = icmp ugt i32 %4923, -17
  %4927 = zext i1 %4926 to i8
  store i8 %4927, i8* %.pre-phi, align 1
  %4928 = and i32 %4924, 255
  %4929 = tail call i32 @llvm.ctpop.i32(i32 %4928)
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = xor i8 %4931, 1
  store i8 %4932, i8* %.pre-phi23, align 1
  %4933 = xor i32 %4923, 16
  %4934 = xor i32 %4933, %4924
  %4935 = lshr i32 %4934, 4
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  store i8 %4937, i8* %.pre-phi25, align 1
  %4938 = icmp eq i32 %4924, 0
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %.pre-phi27, align 1
  %4940 = lshr i32 %4924, 31
  %4941 = trunc i32 %4940 to i8
  store i8 %4941, i8* %.pre-phi29, align 1
  %4942 = lshr i32 %4923, 31
  %4943 = xor i32 %4940, %4942
  %4944 = add nuw nsw i32 %4943, %4940
  %4945 = icmp eq i32 %4944, 2
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %.pre-phi31, align 1
  %4947 = add i64 %2923, 14
  store i64 %4947, i64* %3, align 8
  store i32 %4924, i32* %4922, align 4
  %4948 = load i64, i64* %3, align 8
  %4949 = add i64 %4948, -859
  store i64 %4949, i64* %3, align 8
  br label %block_.L_4024a6

block_.L_402806:                                  ; preds = %block_.L_4024a6
  %4950 = add i64 %2882, 1
  store i64 %4950, i64* %3, align 8
  %4951 = load i64, i64* %6, align 8
  %4952 = add i64 %4951, 8
  %4953 = inttoptr i64 %4951 to i64*
  %4954 = load i64, i64* %4953, align 8
  store i64 %4954, i64* %RBP.i, align 8
  store i64 %4952, i64* %6, align 8
  %4955 = add i64 %2882, 2
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4952 to i64*
  %4957 = load i64, i64* %4956, align 8
  store i64 %4957, i64* %3, align 8
  %4958 = add i64 %4951, 16
  store i64 %4958, i64* %6, align 8
  ret %struct.Memory* %2758
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
block_400478:
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

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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

define %struct.Memory* @routine_jl_.L_4020b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

define %struct.Memory* @routine_jge_.L_4020b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_jmpq_.L_402059(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4020b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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

define %struct.Memory* @routine_jl_.L_40217a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_402175(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_imull__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4020e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40217a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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

define %struct.Memory* @routine_jl_.L_40229d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_402298(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 3
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 3
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 2
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 2
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_jmpq_.L_4021aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40229d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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

define %struct.Memory* @routine_jl_.L_402484(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40247f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x7___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 7
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x7___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 7
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 6
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 6
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x5___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 5
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x5___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 5
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 4
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 4
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_jmpq_.L_4022cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402484(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x10___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -17
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

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_402806(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4027f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 15
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xf___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 15
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xe___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -14
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 14
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xe___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -14
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 14
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xd___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 13
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xd___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 13
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xc___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 12
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xc___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 12
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xb___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 11
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xb___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 11
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xa___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 10
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0xa___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 10
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x9___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 9
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 9
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 8
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_subl__0x8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 8
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_jmpq_.L_4024b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4027f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -17
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

define %struct.Memory* @routine_jmpq_.L_4024a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
