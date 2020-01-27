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
  %515 = phi i64 [ %827, %block_4020f5 ], [ %.pre7, %block_4020d9 ]
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
  %664 = shl nsw i64 %663, 2
  %665 = add i64 %664, %606
  %666 = add i64 %552, 58
  store i64 %666, i64* %3, align 8
  %667 = load <2 x float>, <2 x float>* %505, align 1
  %668 = load <2 x i32>, <2 x i32>* %506, align 1
  %669 = inttoptr i64 %665 to float*
  %670 = load float, float* %669, align 4
  %671 = extractelement <2 x float> %667, i32 0
  %672 = fmul float %671, %670
  store float %672, float* %498, align 1
  %673 = bitcast <2 x float> %667 to <2 x i32>
  %674 = extractelement <2 x i32> %673, i32 1
  store i32 %674, i32* %507, align 1
  %675 = extractelement <2 x i32> %668, i32 0
  store i32 %675, i32* %508, align 1
  %676 = extractelement <2 x i32> %668, i32 1
  store i32 %676, i32* %509, align 1
  %677 = load <2 x float>, <2 x float>* %510, align 1
  %678 = load <2 x i32>, <2 x i32>* %511, align 1
  %679 = load <2 x float>, <2 x float>* %505, align 1
  %680 = extractelement <2 x float> %677, i32 0
  %681 = extractelement <2 x float> %679, i32 0
  %682 = fadd float %680, %681
  store float %682, float* %489, align 1
  %683 = bitcast <2 x float> %677 to <2 x i32>
  %684 = extractelement <2 x i32> %683, i32 1
  store i32 %684, i32* %512, align 1
  %685 = extractelement <2 x i32> %678, i32 0
  store i32 %685, i32* %513, align 1
  %686 = extractelement <2 x i32> %678, i32 1
  store i32 %686, i32* %514, align 1
  %687 = add i64 %632, -32
  %688 = add i64 %552, 66
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i1124, align 8
  %691 = add i64 %632, -44
  %692 = add i64 %552, 70
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RCX.i1621, align 8
  %696 = shl nsw i64 %695, 2
  %697 = add i64 %696, %690
  %698 = add i64 %552, 75
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  store i32 %700, i32* %602, align 1
  store float 0.000000e+00, float* %500, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  %701 = add i64 %632, -40
  %702 = add i64 %552, 79
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RAX.i1124, align 8
  %705 = add i64 %632, -24
  %706 = add i64 %552, 82
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RDX.i1460, align 8
  %710 = add i64 %552, 86
  store i64 %710, i64* %3, align 8
  %711 = load i32, i32* %693, align 4
  %712 = sext i32 %708 to i64
  %713 = sext i32 %711 to i64
  %714 = mul nsw i64 %713, %712
  %715 = trunc i64 %714 to i32
  %716 = and i64 %714, 4294967295
  store i64 %716, i64* %RDX.i1460, align 8
  %717 = shl i64 %714, 32
  %718 = ashr exact i64 %717, 32
  %719 = icmp ne i64 %718, %714
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %.pre-phi, align 1
  %721 = and i32 %715, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %726 = lshr i32 %715, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %.pre-phi29, align 1
  store i8 %720, i8* %.pre-phi31, align 1
  %728 = add i64 %552, 89
  store i64 %728, i64* %3, align 8
  %729 = load i32, i32* %635, align 4
  %730 = add i32 %729, %715
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RDX.i1460, align 8
  %732 = icmp ult i32 %730, %715
  %733 = icmp ult i32 %730, %729
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %.pre-phi, align 1
  %736 = and i32 %730, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %.pre-phi23, align 1
  %741 = xor i32 %729, %715
  %742 = xor i32 %741, %730
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %.pre-phi25, align 1
  %746 = icmp eq i32 %730, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %.pre-phi27, align 1
  %748 = lshr i32 %730, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %.pre-phi29, align 1
  %750 = lshr i32 %729, 31
  %751 = xor i32 %748, %726
  %752 = xor i32 %748, %750
  %753 = add nuw nsw i32 %751, %752
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %.pre-phi31, align 1
  %756 = sext i32 %730 to i64
  store i64 %756, i64* %RCX.i1621, align 8
  %757 = shl nsw i64 %756, 2
  %758 = add i64 %757, %704
  %759 = add i64 %552, 97
  store i64 %759, i64* %3, align 8
  %760 = load <2 x float>, <2 x float>* %505, align 1
  %761 = load <2 x i32>, <2 x i32>* %506, align 1
  %762 = inttoptr i64 %758 to float*
  %763 = load float, float* %762, align 4
  %764 = extractelement <2 x float> %760, i32 0
  %765 = fmul float %764, %763
  store float %765, float* %498, align 1
  %766 = bitcast <2 x float> %760 to <2 x i32>
  %767 = extractelement <2 x i32> %766, i32 1
  store i32 %767, i32* %507, align 1
  %768 = extractelement <2 x i32> %761, i32 0
  store i32 %768, i32* %508, align 1
  %769 = extractelement <2 x i32> %761, i32 1
  store i32 %769, i32* %509, align 1
  %770 = load <2 x float>, <2 x float>* %510, align 1
  %771 = load <2 x i32>, <2 x i32>* %511, align 1
  %772 = load <2 x float>, <2 x float>* %505, align 1
  %773 = extractelement <2 x float> %770, i32 0
  %774 = extractelement <2 x float> %772, i32 0
  %775 = fadd float %773, %774
  store float %775, float* %489, align 1
  %776 = bitcast <2 x float> %770 to <2 x i32>
  %777 = extractelement <2 x i32> %776, i32 1
  store i32 %777, i32* %512, align 1
  %778 = extractelement <2 x i32> %771, i32 0
  store i32 %778, i32* %513, align 1
  %779 = extractelement <2 x i32> %771, i32 1
  store i32 %779, i32* %514, align 1
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -16
  %782 = add i64 %552, 105
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %RAX.i1124, align 8
  %785 = add i64 %780, -48
  %786 = add i64 %552, 109
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = sext i32 %788 to i64
  store i64 %789, i64* %RCX.i1621, align 8
  %790 = shl nsw i64 %789, 2
  %791 = add i64 %790, %784
  %792 = add i64 %552, 114
  store i64 %792, i64* %3, align 8
  %793 = load <2 x float>, <2 x float>* %510, align 1
  %794 = extractelement <2 x float> %793, i32 0
  %795 = inttoptr i64 %791 to float*
  store float %794, float* %795, align 4
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -48
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, 3
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = add i32 %801, 1
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i1124, align 8
  %804 = icmp eq i32 %801, -1
  %805 = icmp eq i32 %802, 0
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %.pre-phi, align 1
  %808 = and i32 %802, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808)
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %.pre-phi23, align 1
  %813 = xor i32 %801, %802
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %.pre-phi25, align 1
  %817 = zext i1 %805 to i8
  store i8 %817, i8* %.pre-phi27, align 1
  %818 = lshr i32 %802, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %.pre-phi29, align 1
  %820 = lshr i32 %801, 31
  %821 = xor i32 %818, %820
  %822 = add nuw nsw i32 %821, %818
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %.pre-phi31, align 1
  %825 = add i64 %798, 9
  store i64 %825, i64* %3, align 8
  store i32 %802, i32* %800, align 4
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, -135
  store i64 %827, i64* %3, align 8
  br label %block_.L_4020e9

block_.L_402175:                                  ; preds = %block_.L_4020e9
  %828 = add i64 %552, 5
  store i64 %828, i64* %3, align 8
  br label %block_.L_40217a

block_.L_40217a:                                  ; preds = %block_.L_402175, %routine_idivl__ecx.exit1500
  %829 = phi i64 [ %516, %block_.L_402175 ], [ %427, %routine_idivl__ecx.exit1500 ]
  %830 = phi i64 [ %828, %block_.L_402175 ], [ %456, %routine_idivl__ecx.exit1500 ]
  store i64 8, i64* %RAX.i1124, align 8
  %831 = add i64 %829, -20
  %832 = add i64 %830, 8
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RCX.i1621, align 8
  %836 = add i64 %829, -64
  %837 = add i64 %830, 11
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  store i32 8, i32* %838, align 4
  %839 = load i32, i32* %ECX.i1628, align 4
  %840 = zext i32 %839 to i64
  %841 = load i64, i64* %3, align 8
  store i64 %840, i64* %RAX.i1124, align 8
  %842 = sext i32 %839 to i64
  %843 = lshr i64 %842, 32
  store i64 %843, i64* %63, align 8
  %844 = load i64, i64* %RBP.i, align 8
  %845 = add i64 %844, -64
  %846 = add i64 %841, 6
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RCX.i1621, align 8
  %850 = add i64 %841, 8
  store i64 %850, i64* %3, align 8
  %851 = sext i32 %848 to i64
  %852 = shl nuw i64 %843, 32
  %853 = or i64 %852, %840
  %854 = sdiv i64 %853, %851
  %855 = shl i64 %854, 32
  %856 = ashr exact i64 %855, 32
  %857 = icmp eq i64 %854, %856
  br i1 %857, label %860, label %858

; <label>:858:                                    ; preds = %block_.L_40217a
  %859 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %850, %struct.Memory* %423)
  %.pre8 = load i64, i64* %RBP.i, align 8
  %.pre9 = load i32, i32* %EDX.i1608, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1353

; <label>:860:                                    ; preds = %block_.L_40217a
  %861 = srem i64 %853, %851
  %862 = and i64 %854, 4294967295
  store i64 %862, i64* %RAX.i1124, align 8
  %863 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %864 = and i64 %861, 4294967295
  store i64 %864, i64* %863, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %865 = trunc i64 %861 to i32
  br label %routine_idivl__ecx.exit1353

routine_idivl__ecx.exit1353:                      ; preds = %860, %858
  %866 = phi i64 [ %.pre10, %858 ], [ %850, %860 ]
  %867 = phi i32 [ %.pre9, %858 ], [ %865, %860 ]
  %868 = phi i64 [ %.pre8, %858 ], [ %844, %860 ]
  %869 = phi %struct.Memory* [ %859, %858 ], [ %423, %860 ]
  %870 = add i64 %868, -44
  %871 = add i64 %866, 3
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  store i32 %867, i32* %872, align 4
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -44
  %875 = load i64, i64* %3, align 8
  %876 = add i64 %875, 4
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, -4
  %880 = icmp ult i32 %878, 4
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %.pre-phi, align 1
  %882 = and i32 %879, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %.pre-phi23, align 1
  %887 = xor i32 %878, %879
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %.pre-phi25, align 1
  %891 = icmp eq i32 %879, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %.pre-phi27, align 1
  %893 = lshr i32 %879, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %.pre-phi29, align 1
  %895 = lshr i32 %878, 31
  %896 = xor i32 %893, %895
  %897 = add nuw nsw i32 %896, %895
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %.pre-phi31, align 1
  %900 = icmp ne i8 %894, 0
  %901 = xor i1 %900, %898
  %.v36 = select i1 %901, i64 269, i64 10
  %902 = add i64 %875, %.v36
  store i64 %902, i64* %3, align 8
  br i1 %901, label %block_.L_40229d, label %block_40219a

block_40219a:                                     ; preds = %routine_idivl__ecx.exit1353
  %903 = add i64 %902, 3
  store i64 %903, i64* %3, align 8
  %904 = load i32, i32* %877, align 4
  %905 = add i32 %904, -1
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RAX.i1124, align 8
  %907 = icmp eq i32 %904, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %.pre-phi, align 1
  %909 = and i32 %905, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %.pre-phi23, align 1
  %914 = xor i32 %904, %905
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %.pre-phi25, align 1
  %918 = icmp eq i32 %905, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %.pre-phi27, align 1
  %920 = lshr i32 %905, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %.pre-phi29, align 1
  %922 = lshr i32 %904, 31
  %923 = xor i32 %920, %922
  %924 = add nuw nsw i32 %923, %922
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %.pre-phi31, align 1
  %927 = add i64 %902, 9
  store i64 %927, i64* %3, align 8
  store i32 %905, i32* %877, align 4
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -48
  %930 = load i64, i64* %3, align 8
  %931 = add i64 %930, 7
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %929 to i32*
  store i32 0, i32* %932, align 4
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %934 = bitcast [32 x %union.VectorReg]* %933 to i8*
  %935 = bitcast [32 x %union.VectorReg]* %933 to float*
  %936 = getelementptr inbounds i8, i8* %934, i64 4
  %937 = bitcast i8* %936 to float*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %939 = bitcast i64* %938 to float*
  %940 = getelementptr inbounds i8, i8* %934, i64 12
  %941 = bitcast i8* %940 to float*
  %RDX.i1313 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %943 = bitcast %union.VectorReg* %942 to i8*
  %944 = bitcast %union.VectorReg* %942 to float*
  %945 = getelementptr inbounds i8, i8* %943, i64 4
  %946 = bitcast i8* %945 to float*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %948 = bitcast i64* %947 to float*
  %949 = getelementptr inbounds i8, i8* %943, i64 12
  %950 = bitcast i8* %949 to float*
  %951 = bitcast %union.VectorReg* %942 to <2 x float>*
  %952 = bitcast i64* %947 to <2 x i32>*
  %953 = bitcast i8* %945 to i32*
  %954 = bitcast i64* %947 to i32*
  %955 = bitcast i8* %949 to i32*
  %956 = bitcast [32 x %union.VectorReg]* %933 to <2 x float>*
  %957 = bitcast i64* %938 to <2 x i32>*
  %958 = bitcast i8* %936 to i32*
  %959 = bitcast i64* %938 to i32*
  %960 = bitcast i8* %940 to i32*
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_4021aa

block_.L_4021aa:                                  ; preds = %block_4021b6, %block_40219a
  %961 = phi i64 [ %1516, %block_4021b6 ], [ %.pre11, %block_40219a ]
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -48
  %964 = add i64 %961, 3
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX.i1124, align 8
  %968 = add i64 %962, -4
  %969 = add i64 %961, 6
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sub i32 %966, %971
  %973 = icmp ult i32 %966, %971
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %.pre-phi, align 1
  %975 = and i32 %972, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %.pre-phi23, align 1
  %980 = xor i32 %971, %966
  %981 = xor i32 %980, %972
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %.pre-phi25, align 1
  %985 = icmp eq i32 %972, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %.pre-phi27, align 1
  %987 = lshr i32 %972, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %.pre-phi29, align 1
  %989 = lshr i32 %966, 31
  %990 = lshr i32 %971, 31
  %991 = xor i32 %990, %989
  %992 = xor i32 %987, %989
  %993 = add nuw nsw i32 %992, %991
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %.pre-phi31, align 1
  %996 = icmp ne i8 %988, 0
  %997 = xor i1 %996, %994
  %.v37 = select i1 %997, i64 12, i64 238
  %998 = add i64 %961, %.v37
  store i64 %998, i64* %3, align 8
  br i1 %997, label %block_4021b6, label %block_.L_402298

block_4021b6:                                     ; preds = %block_.L_4021aa
  %999 = add i64 %962, -16
  %1000 = add i64 %998, 4
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RAX.i1124, align 8
  %1003 = add i64 %998, 8
  store i64 %1003, i64* %3, align 8
  %1004 = load i32, i32* %965, align 4
  %1005 = sext i32 %1004 to i64
  store i64 %1005, i64* %RCX.i1621, align 8
  %1006 = shl nsw i64 %1005, 2
  %1007 = add i64 %1006, %1002
  %1008 = add i64 %998, 13
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = bitcast [32 x %union.VectorReg]* %933 to i32*
  store i32 %1010, i32* %1011, align 1
  store float 0.000000e+00, float* %937, align 1
  store float 0.000000e+00, float* %939, align 1
  store float 0.000000e+00, float* %941, align 1
  %1012 = add i64 %962, -32
  %1013 = add i64 %998, 17
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RAX.i1124, align 8
  %1016 = add i64 %962, -44
  %1017 = add i64 %998, 20
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = add i32 %1019, -3
  %1021 = zext i32 %1020 to i64
  store i64 %1021, i64* %RDX.i1313, align 8
  %1022 = icmp ult i32 %1019, 3
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %.pre-phi, align 1
  %1024 = and i32 %1020, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024)
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %.pre-phi23, align 1
  %1029 = xor i32 %1019, %1020
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %.pre-phi25, align 1
  %1033 = icmp eq i32 %1020, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %.pre-phi27, align 1
  %1035 = lshr i32 %1020, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %.pre-phi29, align 1
  %1037 = lshr i32 %1019, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %.pre-phi31, align 1
  %1042 = sext i32 %1020 to i64
  store i64 %1042, i64* %RCX.i1621, align 8
  %1043 = shl nsw i64 %1042, 2
  %1044 = add i64 %1043, %1015
  %1045 = add i64 %998, 31
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = bitcast %union.VectorReg* %942 to i32*
  store i32 %1047, i32* %1048, align 1
  store float 0.000000e+00, float* %946, align 1
  store float 0.000000e+00, float* %948, align 1
  store float 0.000000e+00, float* %950, align 1
  %1049 = add i64 %962, -40
  %1050 = add i64 %998, 35
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i64*
  %1052 = load i64, i64* %1051, align 8
  store i64 %1052, i64* %RAX.i1124, align 8
  %1053 = add i64 %962, -24
  %1054 = add i64 %998, 38
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RDX.i1313, align 8
  %1058 = add i64 %998, 41
  store i64 %1058, i64* %3, align 8
  %1059 = load i32, i32* %1018, align 4
  %1060 = add i32 %1059, -3
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RSI.i1502, align 8
  %1062 = sext i32 %1056 to i64
  %1063 = sext i32 %1060 to i64
  %1064 = mul nsw i64 %1063, %1062
  %1065 = trunc i64 %1064 to i32
  %1066 = and i64 %1064, 4294967295
  store i64 %1066, i64* %RDX.i1313, align 8
  %1067 = shl i64 %1064, 32
  %1068 = ashr exact i64 %1067, 32
  %1069 = icmp ne i64 %1068, %1064
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %.pre-phi, align 1
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1076 = lshr i32 %1065, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %.pre-phi29, align 1
  store i8 %1070, i8* %.pre-phi31, align 1
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -48
  %1080 = add i64 %998, 50
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, %1065
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RDX.i1313, align 8
  %1085 = icmp ult i32 %1083, %1065
  %1086 = icmp ult i32 %1083, %1082
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %.pre-phi, align 1
  %1089 = and i32 %1083, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %.pre-phi23, align 1
  %1094 = xor i32 %1082, %1065
  %1095 = xor i32 %1094, %1083
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %.pre-phi25, align 1
  %1099 = icmp eq i32 %1083, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %.pre-phi27, align 1
  %1101 = lshr i32 %1083, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %.pre-phi29, align 1
  %1103 = lshr i32 %1082, 31
  %1104 = xor i32 %1101, %1076
  %1105 = xor i32 %1101, %1103
  %1106 = add nuw nsw i32 %1104, %1105
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %.pre-phi31, align 1
  %1109 = sext i32 %1083 to i64
  store i64 %1109, i64* %RCX.i1621, align 8
  %1110 = shl nsw i64 %1109, 2
  %1111 = add i64 %1110, %1052
  %1112 = add i64 %998, 58
  store i64 %1112, i64* %3, align 8
  %1113 = load <2 x float>, <2 x float>* %951, align 1
  %1114 = load <2 x i32>, <2 x i32>* %952, align 1
  %1115 = inttoptr i64 %1111 to float*
  %1116 = load float, float* %1115, align 4
  %1117 = extractelement <2 x float> %1113, i32 0
  %1118 = fmul float %1117, %1116
  store float %1118, float* %944, align 1
  %1119 = bitcast <2 x float> %1113 to <2 x i32>
  %1120 = extractelement <2 x i32> %1119, i32 1
  store i32 %1120, i32* %953, align 1
  %1121 = extractelement <2 x i32> %1114, i32 0
  store i32 %1121, i32* %954, align 1
  %1122 = extractelement <2 x i32> %1114, i32 1
  store i32 %1122, i32* %955, align 1
  %1123 = load <2 x float>, <2 x float>* %956, align 1
  %1124 = load <2 x i32>, <2 x i32>* %957, align 1
  %1125 = load <2 x float>, <2 x float>* %951, align 1
  %1126 = extractelement <2 x float> %1123, i32 0
  %1127 = extractelement <2 x float> %1125, i32 0
  %1128 = fadd float %1126, %1127
  store float %1128, float* %935, align 1
  %1129 = bitcast <2 x float> %1123 to <2 x i32>
  %1130 = extractelement <2 x i32> %1129, i32 1
  store i32 %1130, i32* %958, align 1
  %1131 = extractelement <2 x i32> %1124, i32 0
  store i32 %1131, i32* %959, align 1
  %1132 = extractelement <2 x i32> %1124, i32 1
  store i32 %1132, i32* %960, align 1
  %1133 = add i64 %1078, -32
  %1134 = add i64 %998, 66
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  store i64 %1136, i64* %RAX.i1124, align 8
  %1137 = add i64 %1078, -44
  %1138 = add i64 %998, 69
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = add i32 %1140, -2
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RDX.i1313, align 8
  %1143 = icmp ult i32 %1140, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %.pre-phi, align 1
  %1145 = and i32 %1141, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %.pre-phi23, align 1
  %1150 = xor i32 %1140, %1141
  %1151 = lshr i32 %1150, 4
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %.pre-phi25, align 1
  %1154 = icmp eq i32 %1141, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %.pre-phi27, align 1
  %1156 = lshr i32 %1141, 31
  %1157 = trunc i32 %1156 to i8
  store i8 %1157, i8* %.pre-phi29, align 1
  %1158 = lshr i32 %1140, 31
  %1159 = xor i32 %1156, %1158
  %1160 = add nuw nsw i32 %1159, %1158
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %.pre-phi31, align 1
  %1163 = sext i32 %1141 to i64
  store i64 %1163, i64* %RCX.i1621, align 8
  %1164 = shl nsw i64 %1163, 2
  %1165 = add i64 %1164, %1136
  %1166 = add i64 %998, 80
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  store i32 %1168, i32* %1048, align 1
  store float 0.000000e+00, float* %946, align 1
  store float 0.000000e+00, float* %948, align 1
  store float 0.000000e+00, float* %950, align 1
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -40
  %1171 = add i64 %998, 84
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i64*
  %1173 = load i64, i64* %1172, align 8
  store i64 %1173, i64* %RAX.i1124, align 8
  %1174 = add i64 %1169, -24
  %1175 = add i64 %998, 87
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RDX.i1313, align 8
  %1179 = add i64 %1169, -44
  %1180 = add i64 %998, 90
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = add i32 %1182, -2
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RSI.i1502, align 8
  %1185 = sext i32 %1177 to i64
  %1186 = sext i32 %1183 to i64
  %1187 = mul nsw i64 %1186, %1185
  %1188 = trunc i64 %1187 to i32
  %1189 = and i64 %1187, 4294967295
  store i64 %1189, i64* %RDX.i1313, align 8
  %1190 = shl i64 %1187, 32
  %1191 = ashr exact i64 %1190, 32
  %1192 = icmp ne i64 %1191, %1187
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %.pre-phi, align 1
  %1194 = and i32 %1188, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1199 = lshr i32 %1188, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %.pre-phi29, align 1
  store i8 %1193, i8* %.pre-phi31, align 1
  %1201 = add i64 %1169, -48
  %1202 = add i64 %998, 99
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = add i32 %1204, %1188
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RDX.i1313, align 8
  %1207 = icmp ult i32 %1205, %1188
  %1208 = icmp ult i32 %1205, %1204
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %.pre-phi, align 1
  %1211 = and i32 %1205, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %.pre-phi23, align 1
  %1216 = xor i32 %1204, %1188
  %1217 = xor i32 %1216, %1205
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %.pre-phi25, align 1
  %1221 = icmp eq i32 %1205, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %.pre-phi27, align 1
  %1223 = lshr i32 %1205, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %.pre-phi29, align 1
  %1225 = lshr i32 %1204, 31
  %1226 = xor i32 %1223, %1199
  %1227 = xor i32 %1223, %1225
  %1228 = add nuw nsw i32 %1226, %1227
  %1229 = icmp eq i32 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %.pre-phi31, align 1
  %1231 = sext i32 %1205 to i64
  store i64 %1231, i64* %RCX.i1621, align 8
  %1232 = shl nsw i64 %1231, 2
  %1233 = add i64 %1232, %1173
  %1234 = add i64 %998, 107
  store i64 %1234, i64* %3, align 8
  %1235 = load <2 x float>, <2 x float>* %951, align 1
  %1236 = load <2 x i32>, <2 x i32>* %952, align 1
  %1237 = inttoptr i64 %1233 to float*
  %1238 = load float, float* %1237, align 4
  %1239 = extractelement <2 x float> %1235, i32 0
  %1240 = fmul float %1239, %1238
  store float %1240, float* %944, align 1
  %1241 = bitcast <2 x float> %1235 to <2 x i32>
  %1242 = extractelement <2 x i32> %1241, i32 1
  store i32 %1242, i32* %953, align 1
  %1243 = extractelement <2 x i32> %1236, i32 0
  store i32 %1243, i32* %954, align 1
  %1244 = extractelement <2 x i32> %1236, i32 1
  store i32 %1244, i32* %955, align 1
  %1245 = load <2 x float>, <2 x float>* %956, align 1
  %1246 = load <2 x i32>, <2 x i32>* %957, align 1
  %1247 = load <2 x float>, <2 x float>* %951, align 1
  %1248 = extractelement <2 x float> %1245, i32 0
  %1249 = extractelement <2 x float> %1247, i32 0
  %1250 = fadd float %1248, %1249
  store float %1250, float* %935, align 1
  %1251 = bitcast <2 x float> %1245 to <2 x i32>
  %1252 = extractelement <2 x i32> %1251, i32 1
  store i32 %1252, i32* %958, align 1
  %1253 = extractelement <2 x i32> %1246, i32 0
  store i32 %1253, i32* %959, align 1
  %1254 = extractelement <2 x i32> %1246, i32 1
  store i32 %1254, i32* %960, align 1
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -32
  %1257 = add i64 %998, 115
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i64*
  %1259 = load i64, i64* %1258, align 8
  store i64 %1259, i64* %RAX.i1124, align 8
  %1260 = add i64 %1255, -44
  %1261 = add i64 %998, 118
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i32*
  %1263 = load i32, i32* %1262, align 4
  %1264 = add i32 %1263, -1
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RDX.i1313, align 8
  %1266 = icmp eq i32 %1263, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %.pre-phi, align 1
  %1268 = and i32 %1264, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %.pre-phi23, align 1
  %1273 = xor i32 %1263, %1264
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %.pre-phi25, align 1
  %1277 = icmp eq i32 %1264, 0
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %.pre-phi27, align 1
  %1279 = lshr i32 %1264, 31
  %1280 = trunc i32 %1279 to i8
  store i8 %1280, i8* %.pre-phi29, align 1
  %1281 = lshr i32 %1263, 31
  %1282 = xor i32 %1279, %1281
  %1283 = add nuw nsw i32 %1282, %1281
  %1284 = icmp eq i32 %1283, 2
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %.pre-phi31, align 1
  %1286 = sext i32 %1264 to i64
  store i64 %1286, i64* %RCX.i1621, align 8
  %1287 = shl nsw i64 %1286, 2
  %1288 = add i64 %1287, %1259
  %1289 = add i64 %998, 129
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  store i32 %1291, i32* %1048, align 1
  store float 0.000000e+00, float* %946, align 1
  store float 0.000000e+00, float* %948, align 1
  store float 0.000000e+00, float* %950, align 1
  %1292 = add i64 %1255, -40
  %1293 = add i64 %998, 133
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i1124, align 8
  %1296 = add i64 %1255, -24
  %1297 = add i64 %998, 136
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RDX.i1313, align 8
  %1301 = add i64 %998, 139
  store i64 %1301, i64* %3, align 8
  %1302 = load i32, i32* %1262, align 4
  %1303 = add i32 %1302, -1
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RSI.i1502, align 8
  %1305 = sext i32 %1299 to i64
  %1306 = sext i32 %1303 to i64
  %1307 = mul nsw i64 %1306, %1305
  %1308 = trunc i64 %1307 to i32
  %1309 = and i64 %1307, 4294967295
  store i64 %1309, i64* %RDX.i1313, align 8
  %1310 = shl i64 %1307, 32
  %1311 = ashr exact i64 %1310, 32
  %1312 = icmp ne i64 %1311, %1307
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %.pre-phi, align 1
  %1314 = and i32 %1308, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1319 = lshr i32 %1308, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %.pre-phi29, align 1
  store i8 %1313, i8* %.pre-phi31, align 1
  %1321 = add i64 %1255, -48
  %1322 = add i64 %998, 148
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = add i32 %1324, %1308
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RDX.i1313, align 8
  %1327 = icmp ult i32 %1325, %1308
  %1328 = icmp ult i32 %1325, %1324
  %1329 = or i1 %1327, %1328
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %.pre-phi, align 1
  %1331 = and i32 %1325, 255
  %1332 = tail call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %.pre-phi23, align 1
  %1336 = xor i32 %1324, %1308
  %1337 = xor i32 %1336, %1325
  %1338 = lshr i32 %1337, 4
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  store i8 %1340, i8* %.pre-phi25, align 1
  %1341 = icmp eq i32 %1325, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %.pre-phi27, align 1
  %1343 = lshr i32 %1325, 31
  %1344 = trunc i32 %1343 to i8
  store i8 %1344, i8* %.pre-phi29, align 1
  %1345 = lshr i32 %1324, 31
  %1346 = xor i32 %1343, %1319
  %1347 = xor i32 %1343, %1345
  %1348 = add nuw nsw i32 %1346, %1347
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %.pre-phi31, align 1
  %1351 = sext i32 %1325 to i64
  store i64 %1351, i64* %RCX.i1621, align 8
  %1352 = shl nsw i64 %1351, 2
  %1353 = add i64 %1352, %1295
  %1354 = add i64 %998, 156
  store i64 %1354, i64* %3, align 8
  %1355 = load <2 x float>, <2 x float>* %951, align 1
  %1356 = load <2 x i32>, <2 x i32>* %952, align 1
  %1357 = inttoptr i64 %1353 to float*
  %1358 = load float, float* %1357, align 4
  %1359 = extractelement <2 x float> %1355, i32 0
  %1360 = fmul float %1359, %1358
  store float %1360, float* %944, align 1
  %1361 = bitcast <2 x float> %1355 to <2 x i32>
  %1362 = extractelement <2 x i32> %1361, i32 1
  store i32 %1362, i32* %953, align 1
  %1363 = extractelement <2 x i32> %1356, i32 0
  store i32 %1363, i32* %954, align 1
  %1364 = extractelement <2 x i32> %1356, i32 1
  store i32 %1364, i32* %955, align 1
  %1365 = load <2 x float>, <2 x float>* %956, align 1
  %1366 = load <2 x i32>, <2 x i32>* %957, align 1
  %1367 = load <2 x float>, <2 x float>* %951, align 1
  %1368 = extractelement <2 x float> %1365, i32 0
  %1369 = extractelement <2 x float> %1367, i32 0
  %1370 = fadd float %1368, %1369
  store float %1370, float* %935, align 1
  %1371 = bitcast <2 x float> %1365 to <2 x i32>
  %1372 = extractelement <2 x i32> %1371, i32 1
  store i32 %1372, i32* %958, align 1
  %1373 = extractelement <2 x i32> %1366, i32 0
  store i32 %1373, i32* %959, align 1
  %1374 = extractelement <2 x i32> %1366, i32 1
  store i32 %1374, i32* %960, align 1
  %1375 = add i64 %998, 164
  store i64 %1375, i64* %3, align 8
  %1376 = load i64, i64* %1258, align 8
  store i64 %1376, i64* %RAX.i1124, align 8
  %1377 = add i64 %998, 168
  store i64 %1377, i64* %3, align 8
  %1378 = load i32, i32* %1262, align 4
  %1379 = sext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i1621, align 8
  %1380 = shl nsw i64 %1379, 2
  %1381 = add i64 %1380, %1376
  %1382 = add i64 %998, 173
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  store i32 %1384, i32* %1048, align 1
  store float 0.000000e+00, float* %946, align 1
  store float 0.000000e+00, float* %948, align 1
  store float 0.000000e+00, float* %950, align 1
  %1385 = load i64, i64* %RBP.i, align 8
  %1386 = add i64 %1385, -40
  %1387 = add i64 %998, 177
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RAX.i1124, align 8
  %1390 = add i64 %1385, -24
  %1391 = add i64 %998, 180
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RDX.i1313, align 8
  %1395 = add i64 %1385, -44
  %1396 = add i64 %998, 184
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = sext i32 %1393 to i64
  %1400 = sext i32 %1398 to i64
  %1401 = mul nsw i64 %1400, %1399
  %1402 = trunc i64 %1401 to i32
  %1403 = and i64 %1401, 4294967295
  store i64 %1403, i64* %RDX.i1313, align 8
  %1404 = shl i64 %1401, 32
  %1405 = ashr exact i64 %1404, 32
  %1406 = icmp ne i64 %1405, %1401
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %.pre-phi, align 1
  %1408 = and i32 %1402, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1413 = lshr i32 %1402, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %.pre-phi29, align 1
  store i8 %1407, i8* %.pre-phi31, align 1
  %1415 = add i64 %1385, -48
  %1416 = add i64 %998, 187
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = add i32 %1418, %1402
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RDX.i1313, align 8
  %1421 = icmp ult i32 %1419, %1402
  %1422 = icmp ult i32 %1419, %1418
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %.pre-phi, align 1
  %1425 = and i32 %1419, 255
  %1426 = tail call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  store i8 %1429, i8* %.pre-phi23, align 1
  %1430 = xor i32 %1418, %1402
  %1431 = xor i32 %1430, %1419
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %.pre-phi25, align 1
  %1435 = icmp eq i32 %1419, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %.pre-phi27, align 1
  %1437 = lshr i32 %1419, 31
  %1438 = trunc i32 %1437 to i8
  store i8 %1438, i8* %.pre-phi29, align 1
  %1439 = lshr i32 %1418, 31
  %1440 = xor i32 %1437, %1413
  %1441 = xor i32 %1437, %1439
  %1442 = add nuw nsw i32 %1440, %1441
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %.pre-phi31, align 1
  %1445 = sext i32 %1419 to i64
  store i64 %1445, i64* %RCX.i1621, align 8
  %1446 = shl nsw i64 %1445, 2
  %1447 = add i64 %1446, %1389
  %1448 = add i64 %998, 195
  store i64 %1448, i64* %3, align 8
  %1449 = load <2 x float>, <2 x float>* %951, align 1
  %1450 = load <2 x i32>, <2 x i32>* %952, align 1
  %1451 = inttoptr i64 %1447 to float*
  %1452 = load float, float* %1451, align 4
  %1453 = extractelement <2 x float> %1449, i32 0
  %1454 = fmul float %1453, %1452
  store float %1454, float* %944, align 1
  %1455 = bitcast <2 x float> %1449 to <2 x i32>
  %1456 = extractelement <2 x i32> %1455, i32 1
  store i32 %1456, i32* %953, align 1
  %1457 = extractelement <2 x i32> %1450, i32 0
  store i32 %1457, i32* %954, align 1
  %1458 = extractelement <2 x i32> %1450, i32 1
  store i32 %1458, i32* %955, align 1
  %1459 = load <2 x float>, <2 x float>* %956, align 1
  %1460 = load <2 x i32>, <2 x i32>* %957, align 1
  %1461 = load <2 x float>, <2 x float>* %951, align 1
  %1462 = extractelement <2 x float> %1459, i32 0
  %1463 = extractelement <2 x float> %1461, i32 0
  %1464 = fadd float %1462, %1463
  store float %1464, float* %935, align 1
  %1465 = bitcast <2 x float> %1459 to <2 x i32>
  %1466 = extractelement <2 x i32> %1465, i32 1
  store i32 %1466, i32* %958, align 1
  %1467 = extractelement <2 x i32> %1460, i32 0
  store i32 %1467, i32* %959, align 1
  %1468 = extractelement <2 x i32> %1460, i32 1
  store i32 %1468, i32* %960, align 1
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -16
  %1471 = add i64 %998, 203
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i64*
  %1473 = load i64, i64* %1472, align 8
  store i64 %1473, i64* %RAX.i1124, align 8
  %1474 = add i64 %1469, -48
  %1475 = add i64 %998, 207
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = sext i32 %1477 to i64
  store i64 %1478, i64* %RCX.i1621, align 8
  %1479 = shl nsw i64 %1478, 2
  %1480 = add i64 %1479, %1473
  %1481 = add i64 %998, 212
  store i64 %1481, i64* %3, align 8
  %1482 = load <2 x float>, <2 x float>* %956, align 1
  %1483 = extractelement <2 x float> %1482, i32 0
  %1484 = inttoptr i64 %1480 to float*
  store float %1483, float* %1484, align 4
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -48
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1486 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = add i32 %1490, 1
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RAX.i1124, align 8
  %1493 = icmp eq i32 %1490, -1
  %1494 = icmp eq i32 %1491, 0
  %1495 = or i1 %1493, %1494
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %.pre-phi, align 1
  %1497 = and i32 %1491, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %.pre-phi23, align 1
  %1502 = xor i32 %1490, %1491
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %.pre-phi25, align 1
  %1506 = zext i1 %1494 to i8
  store i8 %1506, i8* %.pre-phi27, align 1
  %1507 = lshr i32 %1491, 31
  %1508 = trunc i32 %1507 to i8
  store i8 %1508, i8* %.pre-phi29, align 1
  %1509 = lshr i32 %1490, 31
  %1510 = xor i32 %1507, %1509
  %1511 = add nuw nsw i32 %1510, %1507
  %1512 = icmp eq i32 %1511, 2
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %.pre-phi31, align 1
  %1514 = add i64 %1487, 9
  store i64 %1514, i64* %3, align 8
  store i32 %1491, i32* %1489, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, -233
  store i64 %1516, i64* %3, align 8
  br label %block_.L_4021aa

block_.L_402298:                                  ; preds = %block_.L_4021aa
  %1517 = add i64 %998, 5
  store i64 %1517, i64* %3, align 8
  br label %block_.L_40229d

block_.L_40229d:                                  ; preds = %block_.L_402298, %routine_idivl__ecx.exit1353
  %1518 = phi i64 [ %962, %block_.L_402298 ], [ %873, %routine_idivl__ecx.exit1353 ]
  %1519 = phi i64 [ %1517, %block_.L_402298 ], [ %902, %routine_idivl__ecx.exit1353 ]
  store i64 16, i64* %RAX.i1124, align 8
  %1520 = add i64 %1518, -20
  %1521 = add i64 %1519, 8
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i32*
  %1523 = load i32, i32* %1522, align 4
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RCX.i1621, align 8
  %1525 = add i64 %1518, -68
  %1526 = add i64 %1519, 11
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  store i32 16, i32* %1527, align 4
  %1528 = load i32, i32* %ECX.i1628, align 4
  %1529 = zext i32 %1528 to i64
  %1530 = load i64, i64* %3, align 8
  store i64 %1529, i64* %RAX.i1124, align 8
  %1531 = sext i32 %1528 to i64
  %1532 = lshr i64 %1531, 32
  store i64 %1532, i64* %63, align 8
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -68
  %1535 = add i64 %1530, 6
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RCX.i1621, align 8
  %1539 = add i64 %1530, 8
  store i64 %1539, i64* %3, align 8
  %1540 = sext i32 %1537 to i64
  %1541 = shl nuw i64 %1532, 32
  %1542 = or i64 %1541, %1529
  %1543 = sdiv i64 %1542, %1540
  %1544 = shl i64 %1543, 32
  %1545 = ashr exact i64 %1544, 32
  %1546 = icmp eq i64 %1543, %1545
  br i1 %1546, label %1549, label %1547

; <label>:1547:                                   ; preds = %block_.L_40229d
  %1548 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1539, %struct.Memory* %869)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i32, i32* %EDX.i1608, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1122

; <label>:1549:                                   ; preds = %block_.L_40229d
  %1550 = srem i64 %1542, %1540
  %1551 = and i64 %1543, 4294967295
  store i64 %1551, i64* %RAX.i1124, align 8
  %1552 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1553 = and i64 %1550, 4294967295
  store i64 %1553, i64* %1552, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %1554 = trunc i64 %1550 to i32
  br label %routine_idivl__ecx.exit1122

routine_idivl__ecx.exit1122:                      ; preds = %1549, %1547
  %1555 = phi i64 [ %.pre14, %1547 ], [ %1539, %1549 ]
  %1556 = phi i32 [ %.pre13, %1547 ], [ %1554, %1549 ]
  %1557 = phi i64 [ %.pre12, %1547 ], [ %1533, %1549 ]
  %1558 = phi %struct.Memory* [ %1548, %1547 ], [ %869, %1549 ]
  %1559 = add i64 %1557, -44
  %1560 = add i64 %1555, 3
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  store i32 %1556, i32* %1561, align 4
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -44
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1563 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = add i32 %1567, -8
  %1569 = icmp ult i32 %1567, 8
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %.pre-phi, align 1
  %1571 = and i32 %1568, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %.pre-phi23, align 1
  %1576 = xor i32 %1567, %1568
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %.pre-phi25, align 1
  %1580 = icmp eq i32 %1568, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %.pre-phi27, align 1
  %1582 = lshr i32 %1568, 31
  %1583 = trunc i32 %1582 to i8
  store i8 %1583, i8* %.pre-phi29, align 1
  %1584 = lshr i32 %1567, 31
  %1585 = xor i32 %1582, %1584
  %1586 = add nuw nsw i32 %1585, %1584
  %1587 = icmp eq i32 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %.pre-phi31, align 1
  %1589 = icmp ne i8 %1583, 0
  %1590 = xor i1 %1589, %1587
  %.v38 = select i1 %1590, i64 465, i64 10
  %1591 = add i64 %1564, %.v38
  store i64 %1591, i64* %3, align 8
  br i1 %1590, label %block_.L_402484, label %block_4022bd

block_4022bd:                                     ; preds = %routine_idivl__ecx.exit1122
  %1592 = add i64 %1591, 3
  store i64 %1592, i64* %3, align 8
  %1593 = load i32, i32* %1566, align 4
  %1594 = add i32 %1593, -1
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i1124, align 8
  %1596 = icmp eq i32 %1593, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %.pre-phi, align 1
  %1598 = and i32 %1594, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %.pre-phi23, align 1
  %1603 = xor i32 %1593, %1594
  %1604 = lshr i32 %1603, 4
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  store i8 %1606, i8* %.pre-phi25, align 1
  %1607 = icmp eq i32 %1594, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %.pre-phi27, align 1
  %1609 = lshr i32 %1594, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %.pre-phi29, align 1
  %1611 = lshr i32 %1593, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1611
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %.pre-phi31, align 1
  %1616 = add i64 %1591, 9
  store i64 %1616, i64* %3, align 8
  store i32 %1594, i32* %1566, align 4
  %1617 = load i64, i64* %RBP.i, align 8
  %1618 = add i64 %1617, -48
  %1619 = load i64, i64* %3, align 8
  %1620 = add i64 %1619, 7
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1618 to i32*
  store i32 0, i32* %1621, align 4
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1623 = bitcast [32 x %union.VectorReg]* %1622 to i8*
  %1624 = bitcast [32 x %union.VectorReg]* %1622 to float*
  %1625 = getelementptr inbounds i8, i8* %1623, i64 4
  %1626 = bitcast i8* %1625 to float*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1628 = bitcast i64* %1627 to float*
  %1629 = getelementptr inbounds i8, i8* %1623, i64 12
  %1630 = bitcast i8* %1629 to float*
  %RDX.i1082 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1632 = bitcast %union.VectorReg* %1631 to i8*
  %1633 = bitcast %union.VectorReg* %1631 to float*
  %1634 = getelementptr inbounds i8, i8* %1632, i64 4
  %1635 = bitcast i8* %1634 to float*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1637 = bitcast i64* %1636 to float*
  %1638 = getelementptr inbounds i8, i8* %1632, i64 12
  %1639 = bitcast i8* %1638 to float*
  %1640 = bitcast %union.VectorReg* %1631 to <2 x float>*
  %1641 = bitcast i64* %1636 to <2 x i32>*
  %1642 = bitcast i8* %1634 to i32*
  %1643 = bitcast i64* %1636 to i32*
  %1644 = bitcast i8* %1638 to i32*
  %1645 = bitcast [32 x %union.VectorReg]* %1622 to <2 x float>*
  %1646 = bitcast i64* %1627 to <2 x i32>*
  %1647 = bitcast i8* %1625 to i32*
  %1648 = bitcast i64* %1627 to i32*
  %1649 = bitcast i8* %1629 to i32*
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_4022cd

block_.L_4022cd:                                  ; preds = %block_4022d9, %block_4022bd
  %1650 = phi i64 [ %2681, %block_4022d9 ], [ %.pre15, %block_4022bd ]
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -48
  %1653 = add i64 %1650, 3
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i1124, align 8
  %1657 = add i64 %1651, -4
  %1658 = add i64 %1650, 6
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = sub i32 %1655, %1660
  %1662 = icmp ult i32 %1655, %1660
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %.pre-phi, align 1
  %1664 = and i32 %1661, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %.pre-phi23, align 1
  %1669 = xor i32 %1660, %1655
  %1670 = xor i32 %1669, %1661
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %.pre-phi25, align 1
  %1674 = icmp eq i32 %1661, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %.pre-phi27, align 1
  %1676 = lshr i32 %1661, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %.pre-phi29, align 1
  %1678 = lshr i32 %1655, 31
  %1679 = lshr i32 %1660, 31
  %1680 = xor i32 %1679, %1678
  %1681 = xor i32 %1676, %1678
  %1682 = add nuw nsw i32 %1681, %1680
  %1683 = icmp eq i32 %1682, 2
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %.pre-phi31, align 1
  %1685 = icmp ne i8 %1677, 0
  %1686 = xor i1 %1685, %1683
  %.v39 = select i1 %1686, i64 12, i64 434
  %1687 = add i64 %1650, %.v39
  store i64 %1687, i64* %3, align 8
  br i1 %1686, label %block_4022d9, label %block_.L_40247f

block_4022d9:                                     ; preds = %block_.L_4022cd
  %1688 = add i64 %1651, -16
  %1689 = add i64 %1687, 4
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i64*
  %1691 = load i64, i64* %1690, align 8
  store i64 %1691, i64* %RAX.i1124, align 8
  %1692 = add i64 %1687, 8
  store i64 %1692, i64* %3, align 8
  %1693 = load i32, i32* %1654, align 4
  %1694 = sext i32 %1693 to i64
  store i64 %1694, i64* %RCX.i1621, align 8
  %1695 = shl nsw i64 %1694, 2
  %1696 = add i64 %1695, %1691
  %1697 = add i64 %1687, 13
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = bitcast [32 x %union.VectorReg]* %1622 to i32*
  store i32 %1699, i32* %1700, align 1
  store float 0.000000e+00, float* %1626, align 1
  store float 0.000000e+00, float* %1628, align 1
  store float 0.000000e+00, float* %1630, align 1
  %1701 = add i64 %1651, -32
  %1702 = add i64 %1687, 17
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i64*
  %1704 = load i64, i64* %1703, align 8
  store i64 %1704, i64* %RAX.i1124, align 8
  %1705 = add i64 %1651, -44
  %1706 = add i64 %1687, 20
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = add i32 %1708, -7
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX.i1082, align 8
  %1711 = icmp ult i32 %1708, 7
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %.pre-phi, align 1
  %1713 = and i32 %1709, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %.pre-phi23, align 1
  %1718 = xor i32 %1708, %1709
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %.pre-phi25, align 1
  %1722 = icmp eq i32 %1709, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %.pre-phi27, align 1
  %1724 = lshr i32 %1709, 31
  %1725 = trunc i32 %1724 to i8
  store i8 %1725, i8* %.pre-phi29, align 1
  %1726 = lshr i32 %1708, 31
  %1727 = xor i32 %1724, %1726
  %1728 = add nuw nsw i32 %1727, %1726
  %1729 = icmp eq i32 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %.pre-phi31, align 1
  %1731 = sext i32 %1709 to i64
  store i64 %1731, i64* %RCX.i1621, align 8
  %1732 = shl nsw i64 %1731, 2
  %1733 = add i64 %1732, %1704
  %1734 = add i64 %1687, 31
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  %1736 = load i32, i32* %1735, align 4
  %1737 = bitcast %union.VectorReg* %1631 to i32*
  store i32 %1736, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %1738 = add i64 %1651, -40
  %1739 = add i64 %1687, 35
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i64*
  %1741 = load i64, i64* %1740, align 8
  store i64 %1741, i64* %RAX.i1124, align 8
  %1742 = add i64 %1651, -24
  %1743 = add i64 %1687, 38
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i32*
  %1745 = load i32, i32* %1744, align 4
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RDX.i1082, align 8
  %1747 = add i64 %1687, 41
  store i64 %1747, i64* %3, align 8
  %1748 = load i32, i32* %1707, align 4
  %1749 = add i32 %1748, -7
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RSI.i1502, align 8
  %1751 = sext i32 %1745 to i64
  %1752 = sext i32 %1749 to i64
  %1753 = mul nsw i64 %1752, %1751
  %1754 = trunc i64 %1753 to i32
  %1755 = and i64 %1753, 4294967295
  store i64 %1755, i64* %RDX.i1082, align 8
  %1756 = shl i64 %1753, 32
  %1757 = ashr exact i64 %1756, 32
  %1758 = icmp ne i64 %1757, %1753
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %.pre-phi, align 1
  %1760 = and i32 %1754, 255
  %1761 = tail call i32 @llvm.ctpop.i32(i32 %1760)
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1765 = lshr i32 %1754, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %.pre-phi29, align 1
  store i8 %1759, i8* %.pre-phi31, align 1
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -48
  %1769 = add i64 %1687, 50
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = add i32 %1771, %1754
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RDX.i1082, align 8
  %1774 = icmp ult i32 %1772, %1754
  %1775 = icmp ult i32 %1772, %1771
  %1776 = or i1 %1774, %1775
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %.pre-phi, align 1
  %1778 = and i32 %1772, 255
  %1779 = tail call i32 @llvm.ctpop.i32(i32 %1778)
  %1780 = trunc i32 %1779 to i8
  %1781 = and i8 %1780, 1
  %1782 = xor i8 %1781, 1
  store i8 %1782, i8* %.pre-phi23, align 1
  %1783 = xor i32 %1771, %1754
  %1784 = xor i32 %1783, %1772
  %1785 = lshr i32 %1784, 4
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  store i8 %1787, i8* %.pre-phi25, align 1
  %1788 = icmp eq i32 %1772, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %.pre-phi27, align 1
  %1790 = lshr i32 %1772, 31
  %1791 = trunc i32 %1790 to i8
  store i8 %1791, i8* %.pre-phi29, align 1
  %1792 = lshr i32 %1771, 31
  %1793 = xor i32 %1790, %1765
  %1794 = xor i32 %1790, %1792
  %1795 = add nuw nsw i32 %1793, %1794
  %1796 = icmp eq i32 %1795, 2
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %.pre-phi31, align 1
  %1798 = sext i32 %1772 to i64
  store i64 %1798, i64* %RCX.i1621, align 8
  %1799 = shl nsw i64 %1798, 2
  %1800 = add i64 %1799, %1741
  %1801 = add i64 %1687, 58
  store i64 %1801, i64* %3, align 8
  %1802 = load <2 x float>, <2 x float>* %1640, align 1
  %1803 = load <2 x i32>, <2 x i32>* %1641, align 1
  %1804 = inttoptr i64 %1800 to float*
  %1805 = load float, float* %1804, align 4
  %1806 = extractelement <2 x float> %1802, i32 0
  %1807 = fmul float %1806, %1805
  store float %1807, float* %1633, align 1
  %1808 = bitcast <2 x float> %1802 to <2 x i32>
  %1809 = extractelement <2 x i32> %1808, i32 1
  store i32 %1809, i32* %1642, align 1
  %1810 = extractelement <2 x i32> %1803, i32 0
  store i32 %1810, i32* %1643, align 1
  %1811 = extractelement <2 x i32> %1803, i32 1
  store i32 %1811, i32* %1644, align 1
  %1812 = load <2 x float>, <2 x float>* %1645, align 1
  %1813 = load <2 x i32>, <2 x i32>* %1646, align 1
  %1814 = load <2 x float>, <2 x float>* %1640, align 1
  %1815 = extractelement <2 x float> %1812, i32 0
  %1816 = extractelement <2 x float> %1814, i32 0
  %1817 = fadd float %1815, %1816
  store float %1817, float* %1624, align 1
  %1818 = bitcast <2 x float> %1812 to <2 x i32>
  %1819 = extractelement <2 x i32> %1818, i32 1
  store i32 %1819, i32* %1647, align 1
  %1820 = extractelement <2 x i32> %1813, i32 0
  store i32 %1820, i32* %1648, align 1
  %1821 = extractelement <2 x i32> %1813, i32 1
  store i32 %1821, i32* %1649, align 1
  %1822 = add i64 %1767, -32
  %1823 = add i64 %1687, 66
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i64*
  %1825 = load i64, i64* %1824, align 8
  store i64 %1825, i64* %RAX.i1124, align 8
  %1826 = add i64 %1767, -44
  %1827 = add i64 %1687, 69
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i32*
  %1829 = load i32, i32* %1828, align 4
  %1830 = add i32 %1829, -6
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RDX.i1082, align 8
  %1832 = icmp ult i32 %1829, 6
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %.pre-phi, align 1
  %1834 = and i32 %1830, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %.pre-phi23, align 1
  %1839 = xor i32 %1829, %1830
  %1840 = lshr i32 %1839, 4
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %.pre-phi25, align 1
  %1843 = icmp eq i32 %1830, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %.pre-phi27, align 1
  %1845 = lshr i32 %1830, 31
  %1846 = trunc i32 %1845 to i8
  store i8 %1846, i8* %.pre-phi29, align 1
  %1847 = lshr i32 %1829, 31
  %1848 = xor i32 %1845, %1847
  %1849 = add nuw nsw i32 %1848, %1847
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %.pre-phi31, align 1
  %1852 = sext i32 %1830 to i64
  store i64 %1852, i64* %RCX.i1621, align 8
  %1853 = shl nsw i64 %1852, 2
  %1854 = add i64 %1853, %1825
  %1855 = add i64 %1687, 80
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  store i32 %1857, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %1858 = load i64, i64* %RBP.i, align 8
  %1859 = add i64 %1858, -40
  %1860 = add i64 %1687, 84
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i64*
  %1862 = load i64, i64* %1861, align 8
  store i64 %1862, i64* %RAX.i1124, align 8
  %1863 = add i64 %1858, -24
  %1864 = add i64 %1687, 87
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  %1866 = load i32, i32* %1865, align 4
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDX.i1082, align 8
  %1868 = add i64 %1858, -44
  %1869 = add i64 %1687, 90
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = add i32 %1871, -6
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RSI.i1502, align 8
  %1874 = sext i32 %1866 to i64
  %1875 = sext i32 %1872 to i64
  %1876 = mul nsw i64 %1875, %1874
  %1877 = trunc i64 %1876 to i32
  %1878 = and i64 %1876, 4294967295
  store i64 %1878, i64* %RDX.i1082, align 8
  %1879 = shl i64 %1876, 32
  %1880 = ashr exact i64 %1879, 32
  %1881 = icmp ne i64 %1880, %1876
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %.pre-phi, align 1
  %1883 = and i32 %1877, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1888 = lshr i32 %1877, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %.pre-phi29, align 1
  store i8 %1882, i8* %.pre-phi31, align 1
  %1890 = add i64 %1858, -48
  %1891 = add i64 %1687, 99
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = add i32 %1893, %1877
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RDX.i1082, align 8
  %1896 = icmp ult i32 %1894, %1877
  %1897 = icmp ult i32 %1894, %1893
  %1898 = or i1 %1896, %1897
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %.pre-phi, align 1
  %1900 = and i32 %1894, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %.pre-phi23, align 1
  %1905 = xor i32 %1893, %1877
  %1906 = xor i32 %1905, %1894
  %1907 = lshr i32 %1906, 4
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  store i8 %1909, i8* %.pre-phi25, align 1
  %1910 = icmp eq i32 %1894, 0
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %.pre-phi27, align 1
  %1912 = lshr i32 %1894, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %.pre-phi29, align 1
  %1914 = lshr i32 %1893, 31
  %1915 = xor i32 %1912, %1888
  %1916 = xor i32 %1912, %1914
  %1917 = add nuw nsw i32 %1915, %1916
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %.pre-phi31, align 1
  %1920 = sext i32 %1894 to i64
  store i64 %1920, i64* %RCX.i1621, align 8
  %1921 = shl nsw i64 %1920, 2
  %1922 = add i64 %1921, %1862
  %1923 = add i64 %1687, 107
  store i64 %1923, i64* %3, align 8
  %1924 = load <2 x float>, <2 x float>* %1640, align 1
  %1925 = load <2 x i32>, <2 x i32>* %1641, align 1
  %1926 = inttoptr i64 %1922 to float*
  %1927 = load float, float* %1926, align 4
  %1928 = extractelement <2 x float> %1924, i32 0
  %1929 = fmul float %1928, %1927
  store float %1929, float* %1633, align 1
  %1930 = bitcast <2 x float> %1924 to <2 x i32>
  %1931 = extractelement <2 x i32> %1930, i32 1
  store i32 %1931, i32* %1642, align 1
  %1932 = extractelement <2 x i32> %1925, i32 0
  store i32 %1932, i32* %1643, align 1
  %1933 = extractelement <2 x i32> %1925, i32 1
  store i32 %1933, i32* %1644, align 1
  %1934 = load <2 x float>, <2 x float>* %1645, align 1
  %1935 = load <2 x i32>, <2 x i32>* %1646, align 1
  %1936 = load <2 x float>, <2 x float>* %1640, align 1
  %1937 = extractelement <2 x float> %1934, i32 0
  %1938 = extractelement <2 x float> %1936, i32 0
  %1939 = fadd float %1937, %1938
  store float %1939, float* %1624, align 1
  %1940 = bitcast <2 x float> %1934 to <2 x i32>
  %1941 = extractelement <2 x i32> %1940, i32 1
  store i32 %1941, i32* %1647, align 1
  %1942 = extractelement <2 x i32> %1935, i32 0
  store i32 %1942, i32* %1648, align 1
  %1943 = extractelement <2 x i32> %1935, i32 1
  store i32 %1943, i32* %1649, align 1
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -32
  %1946 = add i64 %1687, 115
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i64*
  %1948 = load i64, i64* %1947, align 8
  store i64 %1948, i64* %RAX.i1124, align 8
  %1949 = add i64 %1944, -44
  %1950 = add i64 %1687, 118
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = add i32 %1952, -5
  %1954 = zext i32 %1953 to i64
  store i64 %1954, i64* %RDX.i1082, align 8
  %1955 = icmp ult i32 %1952, 5
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %.pre-phi, align 1
  %1957 = and i32 %1953, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %.pre-phi23, align 1
  %1962 = xor i32 %1952, %1953
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %.pre-phi25, align 1
  %1966 = icmp eq i32 %1953, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %.pre-phi27, align 1
  %1968 = lshr i32 %1953, 31
  %1969 = trunc i32 %1968 to i8
  store i8 %1969, i8* %.pre-phi29, align 1
  %1970 = lshr i32 %1952, 31
  %1971 = xor i32 %1968, %1970
  %1972 = add nuw nsw i32 %1971, %1970
  %1973 = icmp eq i32 %1972, 2
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %.pre-phi31, align 1
  %1975 = sext i32 %1953 to i64
  store i64 %1975, i64* %RCX.i1621, align 8
  %1976 = shl nsw i64 %1975, 2
  %1977 = add i64 %1976, %1948
  %1978 = add i64 %1687, 129
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  store i32 %1980, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %1981 = add i64 %1944, -40
  %1982 = add i64 %1687, 133
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %RAX.i1124, align 8
  %1985 = add i64 %1944, -24
  %1986 = add i64 %1687, 136
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RDX.i1082, align 8
  %1990 = add i64 %1687, 139
  store i64 %1990, i64* %3, align 8
  %1991 = load i32, i32* %1951, align 4
  %1992 = add i32 %1991, -5
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RSI.i1502, align 8
  %1994 = sext i32 %1988 to i64
  %1995 = sext i32 %1992 to i64
  %1996 = mul nsw i64 %1995, %1994
  %1997 = trunc i64 %1996 to i32
  %1998 = and i64 %1996, 4294967295
  store i64 %1998, i64* %RDX.i1082, align 8
  %1999 = shl i64 %1996, 32
  %2000 = ashr exact i64 %1999, 32
  %2001 = icmp ne i64 %2000, %1996
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %.pre-phi, align 1
  %2003 = and i32 %1997, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2008 = lshr i32 %1997, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %.pre-phi29, align 1
  store i8 %2002, i8* %.pre-phi31, align 1
  %2010 = add i64 %1944, -48
  %2011 = add i64 %1687, 148
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = add i32 %2013, %1997
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RDX.i1082, align 8
  %2016 = icmp ult i32 %2014, %1997
  %2017 = icmp ult i32 %2014, %2013
  %2018 = or i1 %2016, %2017
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %.pre-phi, align 1
  %2020 = and i32 %2014, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %.pre-phi23, align 1
  %2025 = xor i32 %2013, %1997
  %2026 = xor i32 %2025, %2014
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %.pre-phi25, align 1
  %2030 = icmp eq i32 %2014, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %.pre-phi27, align 1
  %2032 = lshr i32 %2014, 31
  %2033 = trunc i32 %2032 to i8
  store i8 %2033, i8* %.pre-phi29, align 1
  %2034 = lshr i32 %2013, 31
  %2035 = xor i32 %2032, %2008
  %2036 = xor i32 %2032, %2034
  %2037 = add nuw nsw i32 %2035, %2036
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %.pre-phi31, align 1
  %2040 = sext i32 %2014 to i64
  store i64 %2040, i64* %RCX.i1621, align 8
  %2041 = shl nsw i64 %2040, 2
  %2042 = add i64 %2041, %1984
  %2043 = add i64 %1687, 156
  store i64 %2043, i64* %3, align 8
  %2044 = load <2 x float>, <2 x float>* %1640, align 1
  %2045 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2046 = inttoptr i64 %2042 to float*
  %2047 = load float, float* %2046, align 4
  %2048 = extractelement <2 x float> %2044, i32 0
  %2049 = fmul float %2048, %2047
  store float %2049, float* %1633, align 1
  %2050 = bitcast <2 x float> %2044 to <2 x i32>
  %2051 = extractelement <2 x i32> %2050, i32 1
  store i32 %2051, i32* %1642, align 1
  %2052 = extractelement <2 x i32> %2045, i32 0
  store i32 %2052, i32* %1643, align 1
  %2053 = extractelement <2 x i32> %2045, i32 1
  store i32 %2053, i32* %1644, align 1
  %2054 = load <2 x float>, <2 x float>* %1645, align 1
  %2055 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2056 = load <2 x float>, <2 x float>* %1640, align 1
  %2057 = extractelement <2 x float> %2054, i32 0
  %2058 = extractelement <2 x float> %2056, i32 0
  %2059 = fadd float %2057, %2058
  store float %2059, float* %1624, align 1
  %2060 = bitcast <2 x float> %2054 to <2 x i32>
  %2061 = extractelement <2 x i32> %2060, i32 1
  store i32 %2061, i32* %1647, align 1
  %2062 = extractelement <2 x i32> %2055, i32 0
  store i32 %2062, i32* %1648, align 1
  %2063 = extractelement <2 x i32> %2055, i32 1
  store i32 %2063, i32* %1649, align 1
  %2064 = add i64 %1687, 164
  store i64 %2064, i64* %3, align 8
  %2065 = load i64, i64* %1947, align 8
  store i64 %2065, i64* %RAX.i1124, align 8
  %2066 = add i64 %1687, 167
  store i64 %2066, i64* %3, align 8
  %2067 = load i32, i32* %1951, align 4
  %2068 = add i32 %2067, -4
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RDX.i1082, align 8
  %2070 = icmp ult i32 %2067, 4
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %.pre-phi, align 1
  %2072 = and i32 %2068, 255
  %2073 = tail call i32 @llvm.ctpop.i32(i32 %2072)
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  %2076 = xor i8 %2075, 1
  store i8 %2076, i8* %.pre-phi23, align 1
  %2077 = xor i32 %2067, %2068
  %2078 = lshr i32 %2077, 4
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  store i8 %2080, i8* %.pre-phi25, align 1
  %2081 = icmp eq i32 %2068, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %.pre-phi27, align 1
  %2083 = lshr i32 %2068, 31
  %2084 = trunc i32 %2083 to i8
  store i8 %2084, i8* %.pre-phi29, align 1
  %2085 = lshr i32 %2067, 31
  %2086 = xor i32 %2083, %2085
  %2087 = add nuw nsw i32 %2086, %2085
  %2088 = icmp eq i32 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %.pre-phi31, align 1
  %2090 = sext i32 %2068 to i64
  store i64 %2090, i64* %RCX.i1621, align 8
  %2091 = shl nsw i64 %2090, 2
  %2092 = add i64 %2091, %2065
  %2093 = add i64 %1687, 178
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  store i32 %2095, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %2096 = load i64, i64* %RBP.i, align 8
  %2097 = add i64 %2096, -40
  %2098 = add i64 %1687, 182
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i64*
  %2100 = load i64, i64* %2099, align 8
  store i64 %2100, i64* %RAX.i1124, align 8
  %2101 = add i64 %2096, -24
  %2102 = add i64 %1687, 185
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RDX.i1082, align 8
  %2106 = add i64 %2096, -44
  %2107 = add i64 %1687, 188
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  %2110 = add i32 %2109, -4
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RSI.i1502, align 8
  %2112 = sext i32 %2104 to i64
  %2113 = sext i32 %2110 to i64
  %2114 = mul nsw i64 %2113, %2112
  %2115 = trunc i64 %2114 to i32
  %2116 = and i64 %2114, 4294967295
  store i64 %2116, i64* %RDX.i1082, align 8
  %2117 = shl i64 %2114, 32
  %2118 = ashr exact i64 %2117, 32
  %2119 = icmp ne i64 %2118, %2114
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %.pre-phi, align 1
  %2121 = and i32 %2115, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2126 = lshr i32 %2115, 31
  %2127 = trunc i32 %2126 to i8
  store i8 %2127, i8* %.pre-phi29, align 1
  store i8 %2120, i8* %.pre-phi31, align 1
  %2128 = add i64 %2096, -48
  %2129 = add i64 %1687, 197
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = add i32 %2131, %2115
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RDX.i1082, align 8
  %2134 = icmp ult i32 %2132, %2115
  %2135 = icmp ult i32 %2132, %2131
  %2136 = or i1 %2134, %2135
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %.pre-phi, align 1
  %2138 = and i32 %2132, 255
  %2139 = tail call i32 @llvm.ctpop.i32(i32 %2138)
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = xor i8 %2141, 1
  store i8 %2142, i8* %.pre-phi23, align 1
  %2143 = xor i32 %2131, %2115
  %2144 = xor i32 %2143, %2132
  %2145 = lshr i32 %2144, 4
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  store i8 %2147, i8* %.pre-phi25, align 1
  %2148 = icmp eq i32 %2132, 0
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %.pre-phi27, align 1
  %2150 = lshr i32 %2132, 31
  %2151 = trunc i32 %2150 to i8
  store i8 %2151, i8* %.pre-phi29, align 1
  %2152 = lshr i32 %2131, 31
  %2153 = xor i32 %2150, %2126
  %2154 = xor i32 %2150, %2152
  %2155 = add nuw nsw i32 %2153, %2154
  %2156 = icmp eq i32 %2155, 2
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %.pre-phi31, align 1
  %2158 = sext i32 %2132 to i64
  store i64 %2158, i64* %RCX.i1621, align 8
  %2159 = shl nsw i64 %2158, 2
  %2160 = add i64 %2159, %2100
  %2161 = add i64 %1687, 205
  store i64 %2161, i64* %3, align 8
  %2162 = load <2 x float>, <2 x float>* %1640, align 1
  %2163 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2164 = inttoptr i64 %2160 to float*
  %2165 = load float, float* %2164, align 4
  %2166 = extractelement <2 x float> %2162, i32 0
  %2167 = fmul float %2166, %2165
  store float %2167, float* %1633, align 1
  %2168 = bitcast <2 x float> %2162 to <2 x i32>
  %2169 = extractelement <2 x i32> %2168, i32 1
  store i32 %2169, i32* %1642, align 1
  %2170 = extractelement <2 x i32> %2163, i32 0
  store i32 %2170, i32* %1643, align 1
  %2171 = extractelement <2 x i32> %2163, i32 1
  store i32 %2171, i32* %1644, align 1
  %2172 = load <2 x float>, <2 x float>* %1645, align 1
  %2173 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2174 = load <2 x float>, <2 x float>* %1640, align 1
  %2175 = extractelement <2 x float> %2172, i32 0
  %2176 = extractelement <2 x float> %2174, i32 0
  %2177 = fadd float %2175, %2176
  store float %2177, float* %1624, align 1
  %2178 = bitcast <2 x float> %2172 to <2 x i32>
  %2179 = extractelement <2 x i32> %2178, i32 1
  store i32 %2179, i32* %1647, align 1
  %2180 = extractelement <2 x i32> %2173, i32 0
  store i32 %2180, i32* %1648, align 1
  %2181 = extractelement <2 x i32> %2173, i32 1
  store i32 %2181, i32* %1649, align 1
  %2182 = load i64, i64* %RBP.i, align 8
  %2183 = add i64 %2182, -32
  %2184 = add i64 %1687, 213
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i64*
  %2186 = load i64, i64* %2185, align 8
  store i64 %2186, i64* %RAX.i1124, align 8
  %2187 = add i64 %2182, -44
  %2188 = add i64 %1687, 216
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = add i32 %2190, -3
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDX.i1082, align 8
  %2193 = icmp ult i32 %2190, 3
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %.pre-phi, align 1
  %2195 = and i32 %2191, 255
  %2196 = tail call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  store i8 %2199, i8* %.pre-phi23, align 1
  %2200 = xor i32 %2190, %2191
  %2201 = lshr i32 %2200, 4
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  store i8 %2203, i8* %.pre-phi25, align 1
  %2204 = icmp eq i32 %2191, 0
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %.pre-phi27, align 1
  %2206 = lshr i32 %2191, 31
  %2207 = trunc i32 %2206 to i8
  store i8 %2207, i8* %.pre-phi29, align 1
  %2208 = lshr i32 %2190, 31
  %2209 = xor i32 %2206, %2208
  %2210 = add nuw nsw i32 %2209, %2208
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %.pre-phi31, align 1
  %2213 = sext i32 %2191 to i64
  store i64 %2213, i64* %RCX.i1621, align 8
  %2214 = shl nsw i64 %2213, 2
  %2215 = add i64 %2214, %2186
  %2216 = add i64 %1687, 227
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i32*
  %2218 = load i32, i32* %2217, align 4
  store i32 %2218, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %2219 = add i64 %2182, -40
  %2220 = add i64 %1687, 231
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i64*
  %2222 = load i64, i64* %2221, align 8
  store i64 %2222, i64* %RAX.i1124, align 8
  %2223 = add i64 %2182, -24
  %2224 = add i64 %1687, 234
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RDX.i1082, align 8
  %2228 = add i64 %1687, 237
  store i64 %2228, i64* %3, align 8
  %2229 = load i32, i32* %2189, align 4
  %2230 = add i32 %2229, -3
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RSI.i1502, align 8
  %2232 = sext i32 %2226 to i64
  %2233 = sext i32 %2230 to i64
  %2234 = mul nsw i64 %2233, %2232
  %2235 = trunc i64 %2234 to i32
  %2236 = and i64 %2234, 4294967295
  store i64 %2236, i64* %RDX.i1082, align 8
  %2237 = shl i64 %2234, 32
  %2238 = ashr exact i64 %2237, 32
  %2239 = icmp ne i64 %2238, %2234
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %.pre-phi, align 1
  %2241 = and i32 %2235, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2246 = lshr i32 %2235, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %.pre-phi29, align 1
  store i8 %2240, i8* %.pre-phi31, align 1
  %2248 = add i64 %2182, -48
  %2249 = add i64 %1687, 246
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = add i32 %2251, %2235
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RDX.i1082, align 8
  %2254 = icmp ult i32 %2252, %2235
  %2255 = icmp ult i32 %2252, %2251
  %2256 = or i1 %2254, %2255
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %.pre-phi, align 1
  %2258 = and i32 %2252, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %.pre-phi23, align 1
  %2263 = xor i32 %2251, %2235
  %2264 = xor i32 %2263, %2252
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  store i8 %2267, i8* %.pre-phi25, align 1
  %2268 = icmp eq i32 %2252, 0
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %.pre-phi27, align 1
  %2270 = lshr i32 %2252, 31
  %2271 = trunc i32 %2270 to i8
  store i8 %2271, i8* %.pre-phi29, align 1
  %2272 = lshr i32 %2251, 31
  %2273 = xor i32 %2270, %2246
  %2274 = xor i32 %2270, %2272
  %2275 = add nuw nsw i32 %2273, %2274
  %2276 = icmp eq i32 %2275, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %.pre-phi31, align 1
  %2278 = sext i32 %2252 to i64
  store i64 %2278, i64* %RCX.i1621, align 8
  %2279 = shl nsw i64 %2278, 2
  %2280 = add i64 %2279, %2222
  %2281 = add i64 %1687, 254
  store i64 %2281, i64* %3, align 8
  %2282 = load <2 x float>, <2 x float>* %1640, align 1
  %2283 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2284 = inttoptr i64 %2280 to float*
  %2285 = load float, float* %2284, align 4
  %2286 = extractelement <2 x float> %2282, i32 0
  %2287 = fmul float %2286, %2285
  store float %2287, float* %1633, align 1
  %2288 = bitcast <2 x float> %2282 to <2 x i32>
  %2289 = extractelement <2 x i32> %2288, i32 1
  store i32 %2289, i32* %1642, align 1
  %2290 = extractelement <2 x i32> %2283, i32 0
  store i32 %2290, i32* %1643, align 1
  %2291 = extractelement <2 x i32> %2283, i32 1
  store i32 %2291, i32* %1644, align 1
  %2292 = load <2 x float>, <2 x float>* %1645, align 1
  %2293 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2294 = load <2 x float>, <2 x float>* %1640, align 1
  %2295 = extractelement <2 x float> %2292, i32 0
  %2296 = extractelement <2 x float> %2294, i32 0
  %2297 = fadd float %2295, %2296
  store float %2297, float* %1624, align 1
  %2298 = bitcast <2 x float> %2292 to <2 x i32>
  %2299 = extractelement <2 x i32> %2298, i32 1
  store i32 %2299, i32* %1647, align 1
  %2300 = extractelement <2 x i32> %2293, i32 0
  store i32 %2300, i32* %1648, align 1
  %2301 = extractelement <2 x i32> %2293, i32 1
  store i32 %2301, i32* %1649, align 1
  %2302 = add i64 %1687, 262
  store i64 %2302, i64* %3, align 8
  %2303 = load i64, i64* %2185, align 8
  store i64 %2303, i64* %RAX.i1124, align 8
  %2304 = add i64 %1687, 265
  store i64 %2304, i64* %3, align 8
  %2305 = load i32, i32* %2189, align 4
  %2306 = add i32 %2305, -2
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %RDX.i1082, align 8
  %2308 = icmp ult i32 %2305, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %.pre-phi, align 1
  %2310 = and i32 %2306, 255
  %2311 = tail call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  store i8 %2314, i8* %.pre-phi23, align 1
  %2315 = xor i32 %2305, %2306
  %2316 = lshr i32 %2315, 4
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  store i8 %2318, i8* %.pre-phi25, align 1
  %2319 = icmp eq i32 %2306, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %.pre-phi27, align 1
  %2321 = lshr i32 %2306, 31
  %2322 = trunc i32 %2321 to i8
  store i8 %2322, i8* %.pre-phi29, align 1
  %2323 = lshr i32 %2305, 31
  %2324 = xor i32 %2321, %2323
  %2325 = add nuw nsw i32 %2324, %2323
  %2326 = icmp eq i32 %2325, 2
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %.pre-phi31, align 1
  %2328 = sext i32 %2306 to i64
  store i64 %2328, i64* %RCX.i1621, align 8
  %2329 = shl nsw i64 %2328, 2
  %2330 = add i64 %2329, %2303
  %2331 = add i64 %1687, 276
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  %2333 = load i32, i32* %2332, align 4
  store i32 %2333, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %2334 = load i64, i64* %RBP.i, align 8
  %2335 = add i64 %2334, -40
  %2336 = add i64 %1687, 280
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RAX.i1124, align 8
  %2339 = add i64 %2334, -24
  %2340 = add i64 %1687, 283
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RDX.i1082, align 8
  %2344 = add i64 %2334, -44
  %2345 = add i64 %1687, 286
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i32*
  %2347 = load i32, i32* %2346, align 4
  %2348 = add i32 %2347, -2
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RSI.i1502, align 8
  %2350 = sext i32 %2342 to i64
  %2351 = sext i32 %2348 to i64
  %2352 = mul nsw i64 %2351, %2350
  %2353 = trunc i64 %2352 to i32
  %2354 = and i64 %2352, 4294967295
  store i64 %2354, i64* %RDX.i1082, align 8
  %2355 = shl i64 %2352, 32
  %2356 = ashr exact i64 %2355, 32
  %2357 = icmp ne i64 %2356, %2352
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %.pre-phi, align 1
  %2359 = and i32 %2353, 255
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2364 = lshr i32 %2353, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %.pre-phi29, align 1
  store i8 %2358, i8* %.pre-phi31, align 1
  %2366 = add i64 %2334, -48
  %2367 = add i64 %1687, 295
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = add i32 %2369, %2353
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RDX.i1082, align 8
  %2372 = icmp ult i32 %2370, %2353
  %2373 = icmp ult i32 %2370, %2369
  %2374 = or i1 %2372, %2373
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %.pre-phi, align 1
  %2376 = and i32 %2370, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %.pre-phi23, align 1
  %2381 = xor i32 %2369, %2353
  %2382 = xor i32 %2381, %2370
  %2383 = lshr i32 %2382, 4
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  store i8 %2385, i8* %.pre-phi25, align 1
  %2386 = icmp eq i32 %2370, 0
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %.pre-phi27, align 1
  %2388 = lshr i32 %2370, 31
  %2389 = trunc i32 %2388 to i8
  store i8 %2389, i8* %.pre-phi29, align 1
  %2390 = lshr i32 %2369, 31
  %2391 = xor i32 %2388, %2364
  %2392 = xor i32 %2388, %2390
  %2393 = add nuw nsw i32 %2391, %2392
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %.pre-phi31, align 1
  %2396 = sext i32 %2370 to i64
  store i64 %2396, i64* %RCX.i1621, align 8
  %2397 = shl nsw i64 %2396, 2
  %2398 = add i64 %2397, %2338
  %2399 = add i64 %1687, 303
  store i64 %2399, i64* %3, align 8
  %2400 = load <2 x float>, <2 x float>* %1640, align 1
  %2401 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2402 = inttoptr i64 %2398 to float*
  %2403 = load float, float* %2402, align 4
  %2404 = extractelement <2 x float> %2400, i32 0
  %2405 = fmul float %2404, %2403
  store float %2405, float* %1633, align 1
  %2406 = bitcast <2 x float> %2400 to <2 x i32>
  %2407 = extractelement <2 x i32> %2406, i32 1
  store i32 %2407, i32* %1642, align 1
  %2408 = extractelement <2 x i32> %2401, i32 0
  store i32 %2408, i32* %1643, align 1
  %2409 = extractelement <2 x i32> %2401, i32 1
  store i32 %2409, i32* %1644, align 1
  %2410 = load <2 x float>, <2 x float>* %1645, align 1
  %2411 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2412 = load <2 x float>, <2 x float>* %1640, align 1
  %2413 = extractelement <2 x float> %2410, i32 0
  %2414 = extractelement <2 x float> %2412, i32 0
  %2415 = fadd float %2413, %2414
  store float %2415, float* %1624, align 1
  %2416 = bitcast <2 x float> %2410 to <2 x i32>
  %2417 = extractelement <2 x i32> %2416, i32 1
  store i32 %2417, i32* %1647, align 1
  %2418 = extractelement <2 x i32> %2411, i32 0
  store i32 %2418, i32* %1648, align 1
  %2419 = extractelement <2 x i32> %2411, i32 1
  store i32 %2419, i32* %1649, align 1
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -32
  %2422 = add i64 %1687, 311
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RAX.i1124, align 8
  %2425 = add i64 %2420, -44
  %2426 = add i64 %1687, 314
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = add i32 %2428, -1
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RDX.i1082, align 8
  %2431 = icmp eq i32 %2428, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %.pre-phi, align 1
  %2433 = and i32 %2429, 255
  %2434 = tail call i32 @llvm.ctpop.i32(i32 %2433)
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  %2437 = xor i8 %2436, 1
  store i8 %2437, i8* %.pre-phi23, align 1
  %2438 = xor i32 %2428, %2429
  %2439 = lshr i32 %2438, 4
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  store i8 %2441, i8* %.pre-phi25, align 1
  %2442 = icmp eq i32 %2429, 0
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %.pre-phi27, align 1
  %2444 = lshr i32 %2429, 31
  %2445 = trunc i32 %2444 to i8
  store i8 %2445, i8* %.pre-phi29, align 1
  %2446 = lshr i32 %2428, 31
  %2447 = xor i32 %2444, %2446
  %2448 = add nuw nsw i32 %2447, %2446
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %.pre-phi31, align 1
  %2451 = sext i32 %2429 to i64
  store i64 %2451, i64* %RCX.i1621, align 8
  %2452 = shl nsw i64 %2451, 2
  %2453 = add i64 %2452, %2424
  %2454 = add i64 %1687, 325
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  store i32 %2456, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %2457 = add i64 %2420, -40
  %2458 = add i64 %1687, 329
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i64*
  %2460 = load i64, i64* %2459, align 8
  store i64 %2460, i64* %RAX.i1124, align 8
  %2461 = add i64 %2420, -24
  %2462 = add i64 %1687, 332
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  %2464 = load i32, i32* %2463, align 4
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RDX.i1082, align 8
  %2466 = add i64 %1687, 335
  store i64 %2466, i64* %3, align 8
  %2467 = load i32, i32* %2427, align 4
  %2468 = add i32 %2467, -1
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RSI.i1502, align 8
  %2470 = sext i32 %2464 to i64
  %2471 = sext i32 %2468 to i64
  %2472 = mul nsw i64 %2471, %2470
  %2473 = trunc i64 %2472 to i32
  %2474 = and i64 %2472, 4294967295
  store i64 %2474, i64* %RDX.i1082, align 8
  %2475 = shl i64 %2472, 32
  %2476 = ashr exact i64 %2475, 32
  %2477 = icmp ne i64 %2476, %2472
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %.pre-phi, align 1
  %2479 = and i32 %2473, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2484 = lshr i32 %2473, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %.pre-phi29, align 1
  store i8 %2478, i8* %.pre-phi31, align 1
  %2486 = add i64 %2420, -48
  %2487 = add i64 %1687, 344
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = add i32 %2489, %2473
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %RDX.i1082, align 8
  %2492 = icmp ult i32 %2490, %2473
  %2493 = icmp ult i32 %2490, %2489
  %2494 = or i1 %2492, %2493
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %.pre-phi, align 1
  %2496 = and i32 %2490, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %.pre-phi23, align 1
  %2501 = xor i32 %2489, %2473
  %2502 = xor i32 %2501, %2490
  %2503 = lshr i32 %2502, 4
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %.pre-phi25, align 1
  %2506 = icmp eq i32 %2490, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %.pre-phi27, align 1
  %2508 = lshr i32 %2490, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %.pre-phi29, align 1
  %2510 = lshr i32 %2489, 31
  %2511 = xor i32 %2508, %2484
  %2512 = xor i32 %2508, %2510
  %2513 = add nuw nsw i32 %2511, %2512
  %2514 = icmp eq i32 %2513, 2
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %.pre-phi31, align 1
  %2516 = sext i32 %2490 to i64
  store i64 %2516, i64* %RCX.i1621, align 8
  %2517 = shl nsw i64 %2516, 2
  %2518 = add i64 %2517, %2460
  %2519 = add i64 %1687, 352
  store i64 %2519, i64* %3, align 8
  %2520 = load <2 x float>, <2 x float>* %1640, align 1
  %2521 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2522 = inttoptr i64 %2518 to float*
  %2523 = load float, float* %2522, align 4
  %2524 = extractelement <2 x float> %2520, i32 0
  %2525 = fmul float %2524, %2523
  store float %2525, float* %1633, align 1
  %2526 = bitcast <2 x float> %2520 to <2 x i32>
  %2527 = extractelement <2 x i32> %2526, i32 1
  store i32 %2527, i32* %1642, align 1
  %2528 = extractelement <2 x i32> %2521, i32 0
  store i32 %2528, i32* %1643, align 1
  %2529 = extractelement <2 x i32> %2521, i32 1
  store i32 %2529, i32* %1644, align 1
  %2530 = load <2 x float>, <2 x float>* %1645, align 1
  %2531 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2532 = load <2 x float>, <2 x float>* %1640, align 1
  %2533 = extractelement <2 x float> %2530, i32 0
  %2534 = extractelement <2 x float> %2532, i32 0
  %2535 = fadd float %2533, %2534
  store float %2535, float* %1624, align 1
  %2536 = bitcast <2 x float> %2530 to <2 x i32>
  %2537 = extractelement <2 x i32> %2536, i32 1
  store i32 %2537, i32* %1647, align 1
  %2538 = extractelement <2 x i32> %2531, i32 0
  store i32 %2538, i32* %1648, align 1
  %2539 = extractelement <2 x i32> %2531, i32 1
  store i32 %2539, i32* %1649, align 1
  %2540 = add i64 %1687, 360
  store i64 %2540, i64* %3, align 8
  %2541 = load i64, i64* %2423, align 8
  store i64 %2541, i64* %RAX.i1124, align 8
  %2542 = add i64 %1687, 364
  store i64 %2542, i64* %3, align 8
  %2543 = load i32, i32* %2427, align 4
  %2544 = sext i32 %2543 to i64
  store i64 %2544, i64* %RCX.i1621, align 8
  %2545 = shl nsw i64 %2544, 2
  %2546 = add i64 %2545, %2541
  %2547 = add i64 %1687, 369
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  store i32 %2549, i32* %1737, align 1
  store float 0.000000e+00, float* %1635, align 1
  store float 0.000000e+00, float* %1637, align 1
  store float 0.000000e+00, float* %1639, align 1
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -40
  %2552 = add i64 %1687, 373
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i64*
  %2554 = load i64, i64* %2553, align 8
  store i64 %2554, i64* %RAX.i1124, align 8
  %2555 = add i64 %2550, -24
  %2556 = add i64 %1687, 376
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = zext i32 %2558 to i64
  store i64 %2559, i64* %RDX.i1082, align 8
  %2560 = add i64 %2550, -44
  %2561 = add i64 %1687, 380
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sext i32 %2558 to i64
  %2565 = sext i32 %2563 to i64
  %2566 = mul nsw i64 %2565, %2564
  %2567 = trunc i64 %2566 to i32
  %2568 = and i64 %2566, 4294967295
  store i64 %2568, i64* %RDX.i1082, align 8
  %2569 = shl i64 %2566, 32
  %2570 = ashr exact i64 %2569, 32
  %2571 = icmp ne i64 %2570, %2566
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %.pre-phi, align 1
  %2573 = and i32 %2567, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2578 = lshr i32 %2567, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %.pre-phi29, align 1
  store i8 %2572, i8* %.pre-phi31, align 1
  %2580 = add i64 %2550, -48
  %2581 = add i64 %1687, 383
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = add i32 %2583, %2567
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RDX.i1082, align 8
  %2586 = icmp ult i32 %2584, %2567
  %2587 = icmp ult i32 %2584, %2583
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %.pre-phi, align 1
  %2590 = and i32 %2584, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %.pre-phi23, align 1
  %2595 = xor i32 %2583, %2567
  %2596 = xor i32 %2595, %2584
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %.pre-phi25, align 1
  %2600 = icmp eq i32 %2584, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %.pre-phi27, align 1
  %2602 = lshr i32 %2584, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %.pre-phi29, align 1
  %2604 = lshr i32 %2583, 31
  %2605 = xor i32 %2602, %2578
  %2606 = xor i32 %2602, %2604
  %2607 = add nuw nsw i32 %2605, %2606
  %2608 = icmp eq i32 %2607, 2
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %.pre-phi31, align 1
  %2610 = sext i32 %2584 to i64
  store i64 %2610, i64* %RCX.i1621, align 8
  %2611 = shl nsw i64 %2610, 2
  %2612 = add i64 %2611, %2554
  %2613 = add i64 %1687, 391
  store i64 %2613, i64* %3, align 8
  %2614 = load <2 x float>, <2 x float>* %1640, align 1
  %2615 = load <2 x i32>, <2 x i32>* %1641, align 1
  %2616 = inttoptr i64 %2612 to float*
  %2617 = load float, float* %2616, align 4
  %2618 = extractelement <2 x float> %2614, i32 0
  %2619 = fmul float %2618, %2617
  store float %2619, float* %1633, align 1
  %2620 = bitcast <2 x float> %2614 to <2 x i32>
  %2621 = extractelement <2 x i32> %2620, i32 1
  store i32 %2621, i32* %1642, align 1
  %2622 = extractelement <2 x i32> %2615, i32 0
  store i32 %2622, i32* %1643, align 1
  %2623 = extractelement <2 x i32> %2615, i32 1
  store i32 %2623, i32* %1644, align 1
  %2624 = load <2 x float>, <2 x float>* %1645, align 1
  %2625 = load <2 x i32>, <2 x i32>* %1646, align 1
  %2626 = load <2 x float>, <2 x float>* %1640, align 1
  %2627 = extractelement <2 x float> %2624, i32 0
  %2628 = extractelement <2 x float> %2626, i32 0
  %2629 = fadd float %2627, %2628
  store float %2629, float* %1624, align 1
  %2630 = bitcast <2 x float> %2624 to <2 x i32>
  %2631 = extractelement <2 x i32> %2630, i32 1
  store i32 %2631, i32* %1647, align 1
  %2632 = extractelement <2 x i32> %2625, i32 0
  store i32 %2632, i32* %1648, align 1
  %2633 = extractelement <2 x i32> %2625, i32 1
  store i32 %2633, i32* %1649, align 1
  %2634 = load i64, i64* %RBP.i, align 8
  %2635 = add i64 %2634, -16
  %2636 = add i64 %1687, 399
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %RAX.i1124, align 8
  %2639 = add i64 %2634, -48
  %2640 = add i64 %1687, 403
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = sext i32 %2642 to i64
  store i64 %2643, i64* %RCX.i1621, align 8
  %2644 = shl nsw i64 %2643, 2
  %2645 = add i64 %2644, %2638
  %2646 = add i64 %1687, 408
  store i64 %2646, i64* %3, align 8
  %2647 = load <2 x float>, <2 x float>* %1645, align 1
  %2648 = extractelement <2 x float> %2647, i32 0
  %2649 = inttoptr i64 %2645 to float*
  store float %2648, float* %2649, align 4
  %2650 = load i64, i64* %RBP.i, align 8
  %2651 = add i64 %2650, -48
  %2652 = load i64, i64* %3, align 8
  %2653 = add i64 %2652, 3
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2651 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = add i32 %2655, 1
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RAX.i1124, align 8
  %2658 = icmp eq i32 %2655, -1
  %2659 = icmp eq i32 %2656, 0
  %2660 = or i1 %2658, %2659
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %.pre-phi, align 1
  %2662 = and i32 %2656, 255
  %2663 = tail call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  store i8 %2666, i8* %.pre-phi23, align 1
  %2667 = xor i32 %2655, %2656
  %2668 = lshr i32 %2667, 4
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  store i8 %2670, i8* %.pre-phi25, align 1
  %2671 = zext i1 %2659 to i8
  store i8 %2671, i8* %.pre-phi27, align 1
  %2672 = lshr i32 %2656, 31
  %2673 = trunc i32 %2672 to i8
  store i8 %2673, i8* %.pre-phi29, align 1
  %2674 = lshr i32 %2655, 31
  %2675 = xor i32 %2672, %2674
  %2676 = add nuw nsw i32 %2675, %2672
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %.pre-phi31, align 1
  %2679 = add i64 %2652, 9
  store i64 %2679, i64* %3, align 8
  store i32 %2656, i32* %2654, align 4
  %2680 = load i64, i64* %3, align 8
  %2681 = add i64 %2680, -429
  store i64 %2681, i64* %3, align 8
  br label %block_.L_4022cd

block_.L_40247f:                                  ; preds = %block_.L_4022cd
  %2682 = add i64 %1687, 5
  store i64 %2682, i64* %3, align 8
  br label %block_.L_402484

block_.L_402484:                                  ; preds = %block_.L_40247f, %routine_idivl__ecx.exit1122
  %2683 = phi i64 [ %1651, %block_.L_40247f ], [ %1562, %routine_idivl__ecx.exit1122 ]
  %2684 = phi i64 [ %2682, %block_.L_40247f ], [ %1591, %routine_idivl__ecx.exit1122 ]
  store i64 16, i64* %RAX.i1124, align 8
  %2685 = add i64 %2683, -20
  %2686 = add i64 %2684, 8
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = zext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i1621, align 8
  %2690 = add i64 %2683, -72
  %2691 = add i64 %2684, 11
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i32*
  store i32 16, i32* %2692, align 4
  %2693 = load i32, i32* %ECX.i1628, align 4
  %2694 = zext i32 %2693 to i64
  %2695 = load i64, i64* %3, align 8
  store i64 %2694, i64* %RAX.i1124, align 8
  %2696 = sext i32 %2693 to i64
  %2697 = lshr i64 %2696, 32
  store i64 %2697, i64* %63, align 8
  %2698 = load i64, i64* %RBP.i, align 8
  %2699 = add i64 %2698, -72
  %2700 = add i64 %2695, 6
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2699 to i32*
  %2702 = load i32, i32* %2701, align 4
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RCX.i1621, align 8
  %2704 = add i64 %2695, 8
  store i64 %2704, i64* %3, align 8
  %2705 = sext i32 %2702 to i64
  %2706 = shl nuw i64 %2697, 32
  %2707 = or i64 %2706, %2694
  %2708 = sdiv i64 %2707, %2705
  %2709 = shl i64 %2708, 32
  %2710 = ashr exact i64 %2709, 32
  %2711 = icmp eq i64 %2708, %2710
  br i1 %2711, label %2714, label %2712

; <label>:2712:                                   ; preds = %block_.L_402484
  %2713 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2704, %struct.Memory* %1558)
  %RDX.i722.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre16 = load i64, i64* %RDX.i722.phi.trans.insert, align 8
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:2714:                                   ; preds = %block_.L_402484
  %2715 = srem i64 %2707, %2705
  %2716 = and i64 %2708, 4294967295
  store i64 %2716, i64* %RAX.i1124, align 8
  %2717 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %2718 = and i64 %2715, 4294967295
  store i64 %2718, i64* %2717, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2714, %2712
  %RDX.i722.pre-phi = phi i64* [ %2717, %2714 ], [ %RDX.i722.phi.trans.insert, %2712 ]
  %2719 = phi i64 [ %2698, %2714 ], [ %.pre18, %2712 ]
  %2720 = phi i64 [ %2704, %2714 ], [ %.pre17, %2712 ]
  %2721 = phi i64 [ %2718, %2714 ], [ %.pre16, %2712 ]
  %2722 = phi %struct.Memory* [ %1558, %2714 ], [ %2713, %2712 ]
  %2723 = trunc i64 %2721 to i32
  %2724 = add i32 %2723, 16
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RDX.i722.pre-phi, align 8
  %2726 = icmp ugt i32 %2723, -17
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %.pre-phi, align 1
  %2728 = and i32 %2724, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %.pre-phi23, align 1
  %2733 = xor i32 %2723, 16
  %2734 = xor i32 %2733, %2724
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %.pre-phi25, align 1
  %2738 = icmp eq i32 %2724, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %.pre-phi27, align 1
  %2740 = lshr i32 %2724, 31
  %2741 = trunc i32 %2740 to i8
  store i8 %2741, i8* %.pre-phi29, align 1
  %2742 = lshr i32 %2723, 31
  %2743 = xor i32 %2740, %2742
  %2744 = add nuw nsw i32 %2743, %2740
  %2745 = icmp eq i32 %2744, 2
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %.pre-phi31, align 1
  %2747 = add i64 %2719, -52
  %2748 = add i64 %2720, 6
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  store i32 %2724, i32* %2749, align 4
  %2750 = load i64, i64* %RBP.i, align 8
  %2751 = add i64 %2750, -52
  %2752 = load i64, i64* %3, align 8
  %2753 = add i64 %2752, 3
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2751 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = add i32 %2755, -1
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RDX.i722.pre-phi, align 8
  %2758 = icmp eq i32 %2755, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %.pre-phi, align 1
  %2760 = and i32 %2756, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %.pre-phi23, align 1
  %2765 = xor i32 %2755, %2756
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %.pre-phi25, align 1
  %2769 = icmp eq i32 %2756, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %.pre-phi27, align 1
  %2771 = lshr i32 %2756, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %.pre-phi29, align 1
  %2773 = lshr i32 %2755, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2773
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %.pre-phi31, align 1
  %2778 = add i64 %2750, -44
  %2779 = add i64 %2752, 9
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2778 to i32*
  store i32 %2756, i32* %2780, align 4
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2782 = bitcast [32 x %union.VectorReg]* %2781 to i8*
  %2783 = bitcast [32 x %union.VectorReg]* %2781 to float*
  %2784 = getelementptr inbounds i8, i8* %2782, i64 4
  %2785 = bitcast i8* %2784 to float*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2787 = bitcast i64* %2786 to float*
  %2788 = getelementptr inbounds i8, i8* %2782, i64 12
  %2789 = bitcast i8* %2788 to float*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2791 = bitcast %union.VectorReg* %2790 to i8*
  %2792 = bitcast %union.VectorReg* %2790 to float*
  %2793 = getelementptr inbounds i8, i8* %2791, i64 4
  %2794 = bitcast i8* %2793 to float*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2796 = bitcast i64* %2795 to float*
  %2797 = getelementptr inbounds i8, i8* %2791, i64 12
  %2798 = bitcast i8* %2797 to float*
  %2799 = bitcast %union.VectorReg* %2790 to <2 x float>*
  %2800 = bitcast i64* %2795 to <2 x i32>*
  %2801 = bitcast i8* %2793 to i32*
  %2802 = bitcast i64* %2795 to i32*
  %2803 = bitcast i8* %2797 to i32*
  %2804 = bitcast [32 x %union.VectorReg]* %2781 to <2 x float>*
  %2805 = bitcast i64* %2786 to <2 x i32>*
  %2806 = bitcast i8* %2784 to i32*
  %2807 = bitcast i64* %2786 to i32*
  %2808 = bitcast i8* %2788 to i32*
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_4024a6

block_.L_4024a6:                                  ; preds = %block_.L_4027f3, %routine_idivl__ecx.exit
  %2809 = phi i64 [ %4863, %block_.L_4027f3 ], [ %.pre19, %routine_idivl__ecx.exit ]
  %2810 = load i64, i64* %RBP.i, align 8
  %2811 = add i64 %2810, -44
  %2812 = add i64 %2809, 3
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RAX.i1124, align 8
  %2816 = add i64 %2810, -20
  %2817 = add i64 %2809, 6
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = sub i32 %2814, %2819
  %2821 = icmp ult i32 %2814, %2819
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %.pre-phi, align 1
  %2823 = and i32 %2820, 255
  %2824 = tail call i32 @llvm.ctpop.i32(i32 %2823)
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = xor i8 %2826, 1
  store i8 %2827, i8* %.pre-phi23, align 1
  %2828 = xor i32 %2819, %2814
  %2829 = xor i32 %2828, %2820
  %2830 = lshr i32 %2829, 4
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  store i8 %2832, i8* %.pre-phi25, align 1
  %2833 = icmp eq i32 %2820, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %.pre-phi27, align 1
  %2835 = lshr i32 %2820, 31
  %2836 = trunc i32 %2835 to i8
  store i8 %2836, i8* %.pre-phi29, align 1
  %2837 = lshr i32 %2814, 31
  %2838 = lshr i32 %2819, 31
  %2839 = xor i32 %2838, %2837
  %2840 = xor i32 %2835, %2837
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %.pre-phi31, align 1
  %2844 = icmp ne i8 %2836, 0
  %2845 = xor i1 %2844, %2842
  %.v40 = select i1 %2845, i64 12, i64 864
  %2846 = add i64 %2809, %.v40
  store i64 %2846, i64* %3, align 8
  br i1 %2845, label %block_4024b2, label %block_.L_402806

block_4024b2:                                     ; preds = %block_.L_4024a6
  %2847 = add i64 %2810, -48
  %2848 = add i64 %2846, 7
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  store i32 0, i32* %2849, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_4024b9

block_.L_4024b9:                                  ; preds = %block_4024c5, %block_4024b2
  %2850 = phi i64 [ %4833, %block_4024c5 ], [ %.pre20, %block_4024b2 ]
  %2851 = load i64, i64* %RBP.i, align 8
  %2852 = add i64 %2851, -48
  %2853 = add i64 %2850, 3
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RAX.i1124, align 8
  %2857 = add i64 %2851, -4
  %2858 = add i64 %2850, 6
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = sub i32 %2855, %2860
  %2862 = icmp ult i32 %2855, %2860
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %.pre-phi, align 1
  %2864 = and i32 %2861, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864)
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %.pre-phi23, align 1
  %2869 = xor i32 %2860, %2855
  %2870 = xor i32 %2869, %2861
  %2871 = lshr i32 %2870, 4
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  store i8 %2873, i8* %.pre-phi25, align 1
  %2874 = icmp eq i32 %2861, 0
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %.pre-phi27, align 1
  %2876 = lshr i32 %2861, 31
  %2877 = trunc i32 %2876 to i8
  store i8 %2877, i8* %.pre-phi29, align 1
  %2878 = lshr i32 %2855, 31
  %2879 = lshr i32 %2860, 31
  %2880 = xor i32 %2879, %2878
  %2881 = xor i32 %2876, %2878
  %2882 = add nuw nsw i32 %2881, %2880
  %2883 = icmp eq i32 %2882, 2
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %.pre-phi31, align 1
  %2885 = icmp ne i8 %2877, 0
  %2886 = xor i1 %2885, %2883
  %.v41 = select i1 %2886, i64 12, i64 826
  %2887 = add i64 %2850, %.v41
  store i64 %2887, i64* %3, align 8
  br i1 %2886, label %block_4024c5, label %block_.L_4027f3

block_4024c5:                                     ; preds = %block_.L_4024b9
  %2888 = add i64 %2851, -16
  %2889 = add i64 %2887, 4
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i64*
  %2891 = load i64, i64* %2890, align 8
  store i64 %2891, i64* %RAX.i1124, align 8
  %2892 = add i64 %2887, 8
  store i64 %2892, i64* %3, align 8
  %2893 = load i32, i32* %2854, align 4
  %2894 = sext i32 %2893 to i64
  store i64 %2894, i64* %RCX.i1621, align 8
  %2895 = shl nsw i64 %2894, 2
  %2896 = add i64 %2895, %2891
  %2897 = add i64 %2887, 13
  store i64 %2897, i64* %3, align 8
  %2898 = inttoptr i64 %2896 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = bitcast [32 x %union.VectorReg]* %2781 to i32*
  store i32 %2899, i32* %2900, align 1
  store float 0.000000e+00, float* %2785, align 1
  store float 0.000000e+00, float* %2787, align 1
  store float 0.000000e+00, float* %2789, align 1
  %2901 = add i64 %2851, -32
  %2902 = add i64 %2887, 17
  store i64 %2902, i64* %3, align 8
  %2903 = inttoptr i64 %2901 to i64*
  %2904 = load i64, i64* %2903, align 8
  store i64 %2904, i64* %RAX.i1124, align 8
  %2905 = add i64 %2851, -44
  %2906 = add i64 %2887, 20
  store i64 %2906, i64* %3, align 8
  %2907 = inttoptr i64 %2905 to i32*
  %2908 = load i32, i32* %2907, align 4
  %2909 = add i32 %2908, -15
  %2910 = zext i32 %2909 to i64
  store i64 %2910, i64* %RDX.i722.pre-phi, align 8
  %2911 = icmp ult i32 %2908, 15
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %.pre-phi, align 1
  %2913 = and i32 %2909, 255
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913)
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %.pre-phi23, align 1
  %2918 = xor i32 %2908, %2909
  %2919 = lshr i32 %2918, 4
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  store i8 %2921, i8* %.pre-phi25, align 1
  %2922 = icmp eq i32 %2909, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %.pre-phi27, align 1
  %2924 = lshr i32 %2909, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %.pre-phi29, align 1
  %2926 = lshr i32 %2908, 31
  %2927 = xor i32 %2924, %2926
  %2928 = add nuw nsw i32 %2927, %2926
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %.pre-phi31, align 1
  %2931 = sext i32 %2909 to i64
  store i64 %2931, i64* %RCX.i1621, align 8
  %2932 = shl nsw i64 %2931, 2
  %2933 = add i64 %2932, %2904
  %2934 = add i64 %2887, 31
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i32*
  %2936 = load i32, i32* %2935, align 4
  %2937 = bitcast %union.VectorReg* %2790 to i32*
  store i32 %2936, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %2938 = add i64 %2851, -40
  %2939 = add i64 %2887, 35
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2938 to i64*
  %2941 = load i64, i64* %2940, align 8
  store i64 %2941, i64* %RAX.i1124, align 8
  %2942 = add i64 %2851, -24
  %2943 = add i64 %2887, 38
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = zext i32 %2945 to i64
  store i64 %2946, i64* %RDX.i722.pre-phi, align 8
  %2947 = add i64 %2887, 41
  store i64 %2947, i64* %3, align 8
  %2948 = load i32, i32* %2907, align 4
  %2949 = add i32 %2948, -15
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RSI.i1502, align 8
  %2951 = sext i32 %2945 to i64
  %2952 = sext i32 %2949 to i64
  %2953 = mul nsw i64 %2952, %2951
  %2954 = trunc i64 %2953 to i32
  %2955 = and i64 %2953, 4294967295
  store i64 %2955, i64* %RDX.i722.pre-phi, align 8
  %2956 = shl i64 %2953, 32
  %2957 = ashr exact i64 %2956, 32
  %2958 = icmp ne i64 %2957, %2953
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %.pre-phi, align 1
  %2960 = and i32 %2954, 255
  %2961 = tail call i32 @llvm.ctpop.i32(i32 %2960)
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  store i8 %2964, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2965 = lshr i32 %2954, 31
  %2966 = trunc i32 %2965 to i8
  store i8 %2966, i8* %.pre-phi29, align 1
  store i8 %2959, i8* %.pre-phi31, align 1
  %2967 = load i64, i64* %RBP.i, align 8
  %2968 = add i64 %2967, -48
  %2969 = add i64 %2887, 50
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = add i32 %2971, %2954
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RDX.i722.pre-phi, align 8
  %2974 = icmp ult i32 %2972, %2954
  %2975 = icmp ult i32 %2972, %2971
  %2976 = or i1 %2974, %2975
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %.pre-phi, align 1
  %2978 = and i32 %2972, 255
  %2979 = tail call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  store i8 %2982, i8* %.pre-phi23, align 1
  %2983 = xor i32 %2971, %2954
  %2984 = xor i32 %2983, %2972
  %2985 = lshr i32 %2984, 4
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  store i8 %2987, i8* %.pre-phi25, align 1
  %2988 = icmp eq i32 %2972, 0
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %.pre-phi27, align 1
  %2990 = lshr i32 %2972, 31
  %2991 = trunc i32 %2990 to i8
  store i8 %2991, i8* %.pre-phi29, align 1
  %2992 = lshr i32 %2971, 31
  %2993 = xor i32 %2990, %2965
  %2994 = xor i32 %2990, %2992
  %2995 = add nuw nsw i32 %2993, %2994
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %.pre-phi31, align 1
  %2998 = sext i32 %2972 to i64
  store i64 %2998, i64* %RCX.i1621, align 8
  %2999 = shl nsw i64 %2998, 2
  %3000 = add i64 %2999, %2941
  %3001 = add i64 %2887, 58
  store i64 %3001, i64* %3, align 8
  %3002 = load <2 x float>, <2 x float>* %2799, align 1
  %3003 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3004 = inttoptr i64 %3000 to float*
  %3005 = load float, float* %3004, align 4
  %3006 = extractelement <2 x float> %3002, i32 0
  %3007 = fmul float %3006, %3005
  store float %3007, float* %2792, align 1
  %3008 = bitcast <2 x float> %3002 to <2 x i32>
  %3009 = extractelement <2 x i32> %3008, i32 1
  store i32 %3009, i32* %2801, align 1
  %3010 = extractelement <2 x i32> %3003, i32 0
  store i32 %3010, i32* %2802, align 1
  %3011 = extractelement <2 x i32> %3003, i32 1
  store i32 %3011, i32* %2803, align 1
  %3012 = load <2 x float>, <2 x float>* %2804, align 1
  %3013 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3014 = load <2 x float>, <2 x float>* %2799, align 1
  %3015 = extractelement <2 x float> %3012, i32 0
  %3016 = extractelement <2 x float> %3014, i32 0
  %3017 = fadd float %3015, %3016
  store float %3017, float* %2783, align 1
  %3018 = bitcast <2 x float> %3012 to <2 x i32>
  %3019 = extractelement <2 x i32> %3018, i32 1
  store i32 %3019, i32* %2806, align 1
  %3020 = extractelement <2 x i32> %3013, i32 0
  store i32 %3020, i32* %2807, align 1
  %3021 = extractelement <2 x i32> %3013, i32 1
  store i32 %3021, i32* %2808, align 1
  %3022 = add i64 %2967, -32
  %3023 = add i64 %2887, 66
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i64*
  %3025 = load i64, i64* %3024, align 8
  store i64 %3025, i64* %RAX.i1124, align 8
  %3026 = add i64 %2967, -44
  %3027 = add i64 %2887, 69
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  %3029 = load i32, i32* %3028, align 4
  %3030 = add i32 %3029, -14
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RDX.i722.pre-phi, align 8
  %3032 = icmp ult i32 %3029, 14
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %.pre-phi, align 1
  %3034 = and i32 %3030, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %.pre-phi23, align 1
  %3039 = xor i32 %3029, %3030
  %3040 = lshr i32 %3039, 4
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  store i8 %3042, i8* %.pre-phi25, align 1
  %3043 = icmp eq i32 %3030, 0
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %.pre-phi27, align 1
  %3045 = lshr i32 %3030, 31
  %3046 = trunc i32 %3045 to i8
  store i8 %3046, i8* %.pre-phi29, align 1
  %3047 = lshr i32 %3029, 31
  %3048 = xor i32 %3045, %3047
  %3049 = add nuw nsw i32 %3048, %3047
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %.pre-phi31, align 1
  %3052 = sext i32 %3030 to i64
  store i64 %3052, i64* %RCX.i1621, align 8
  %3053 = shl nsw i64 %3052, 2
  %3054 = add i64 %3053, %3025
  %3055 = add i64 %2887, 80
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3054 to i32*
  %3057 = load i32, i32* %3056, align 4
  store i32 %3057, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3058 = load i64, i64* %RBP.i, align 8
  %3059 = add i64 %3058, -40
  %3060 = add i64 %2887, 84
  store i64 %3060, i64* %3, align 8
  %3061 = inttoptr i64 %3059 to i64*
  %3062 = load i64, i64* %3061, align 8
  store i64 %3062, i64* %RAX.i1124, align 8
  %3063 = add i64 %3058, -24
  %3064 = add i64 %2887, 87
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RDX.i722.pre-phi, align 8
  %3068 = add i64 %3058, -44
  %3069 = add i64 %2887, 90
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = add i32 %3071, -14
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RSI.i1502, align 8
  %3074 = sext i32 %3066 to i64
  %3075 = sext i32 %3072 to i64
  %3076 = mul nsw i64 %3075, %3074
  %3077 = trunc i64 %3076 to i32
  %3078 = and i64 %3076, 4294967295
  store i64 %3078, i64* %RDX.i722.pre-phi, align 8
  %3079 = shl i64 %3076, 32
  %3080 = ashr exact i64 %3079, 32
  %3081 = icmp ne i64 %3080, %3076
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %.pre-phi, align 1
  %3083 = and i32 %3077, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3088 = lshr i32 %3077, 31
  %3089 = trunc i32 %3088 to i8
  store i8 %3089, i8* %.pre-phi29, align 1
  store i8 %3082, i8* %.pre-phi31, align 1
  %3090 = add i64 %3058, -48
  %3091 = add i64 %2887, 99
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = add i32 %3093, %3077
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RDX.i722.pre-phi, align 8
  %3096 = icmp ult i32 %3094, %3077
  %3097 = icmp ult i32 %3094, %3093
  %3098 = or i1 %3096, %3097
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %.pre-phi, align 1
  %3100 = and i32 %3094, 255
  %3101 = tail call i32 @llvm.ctpop.i32(i32 %3100)
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = xor i8 %3103, 1
  store i8 %3104, i8* %.pre-phi23, align 1
  %3105 = xor i32 %3093, %3077
  %3106 = xor i32 %3105, %3094
  %3107 = lshr i32 %3106, 4
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  store i8 %3109, i8* %.pre-phi25, align 1
  %3110 = icmp eq i32 %3094, 0
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %.pre-phi27, align 1
  %3112 = lshr i32 %3094, 31
  %3113 = trunc i32 %3112 to i8
  store i8 %3113, i8* %.pre-phi29, align 1
  %3114 = lshr i32 %3093, 31
  %3115 = xor i32 %3112, %3088
  %3116 = xor i32 %3112, %3114
  %3117 = add nuw nsw i32 %3115, %3116
  %3118 = icmp eq i32 %3117, 2
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %.pre-phi31, align 1
  %3120 = sext i32 %3094 to i64
  store i64 %3120, i64* %RCX.i1621, align 8
  %3121 = shl nsw i64 %3120, 2
  %3122 = add i64 %3121, %3062
  %3123 = add i64 %2887, 107
  store i64 %3123, i64* %3, align 8
  %3124 = load <2 x float>, <2 x float>* %2799, align 1
  %3125 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3126 = inttoptr i64 %3122 to float*
  %3127 = load float, float* %3126, align 4
  %3128 = extractelement <2 x float> %3124, i32 0
  %3129 = fmul float %3128, %3127
  store float %3129, float* %2792, align 1
  %3130 = bitcast <2 x float> %3124 to <2 x i32>
  %3131 = extractelement <2 x i32> %3130, i32 1
  store i32 %3131, i32* %2801, align 1
  %3132 = extractelement <2 x i32> %3125, i32 0
  store i32 %3132, i32* %2802, align 1
  %3133 = extractelement <2 x i32> %3125, i32 1
  store i32 %3133, i32* %2803, align 1
  %3134 = load <2 x float>, <2 x float>* %2804, align 1
  %3135 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3136 = load <2 x float>, <2 x float>* %2799, align 1
  %3137 = extractelement <2 x float> %3134, i32 0
  %3138 = extractelement <2 x float> %3136, i32 0
  %3139 = fadd float %3137, %3138
  store float %3139, float* %2783, align 1
  %3140 = bitcast <2 x float> %3134 to <2 x i32>
  %3141 = extractelement <2 x i32> %3140, i32 1
  store i32 %3141, i32* %2806, align 1
  %3142 = extractelement <2 x i32> %3135, i32 0
  store i32 %3142, i32* %2807, align 1
  %3143 = extractelement <2 x i32> %3135, i32 1
  store i32 %3143, i32* %2808, align 1
  %3144 = load i64, i64* %RBP.i, align 8
  %3145 = add i64 %3144, -32
  %3146 = add i64 %2887, 115
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i64*
  %3148 = load i64, i64* %3147, align 8
  store i64 %3148, i64* %RAX.i1124, align 8
  %3149 = add i64 %3144, -44
  %3150 = add i64 %2887, 118
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = add i32 %3152, -13
  %3154 = zext i32 %3153 to i64
  store i64 %3154, i64* %RDX.i722.pre-phi, align 8
  %3155 = icmp ult i32 %3152, 13
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %.pre-phi, align 1
  %3157 = and i32 %3153, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %.pre-phi23, align 1
  %3162 = xor i32 %3152, %3153
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %.pre-phi25, align 1
  %3166 = icmp eq i32 %3153, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %.pre-phi27, align 1
  %3168 = lshr i32 %3153, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %.pre-phi29, align 1
  %3170 = lshr i32 %3152, 31
  %3171 = xor i32 %3168, %3170
  %3172 = add nuw nsw i32 %3171, %3170
  %3173 = icmp eq i32 %3172, 2
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %.pre-phi31, align 1
  %3175 = sext i32 %3153 to i64
  store i64 %3175, i64* %RCX.i1621, align 8
  %3176 = shl nsw i64 %3175, 2
  %3177 = add i64 %3176, %3148
  %3178 = add i64 %2887, 129
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  %3180 = load i32, i32* %3179, align 4
  store i32 %3180, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3181 = add i64 %3144, -40
  %3182 = add i64 %2887, 133
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i64*
  %3184 = load i64, i64* %3183, align 8
  store i64 %3184, i64* %RAX.i1124, align 8
  %3185 = add i64 %3144, -24
  %3186 = add i64 %2887, 136
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RDX.i722.pre-phi, align 8
  %3190 = add i64 %2887, 139
  store i64 %3190, i64* %3, align 8
  %3191 = load i32, i32* %3151, align 4
  %3192 = add i32 %3191, -13
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RSI.i1502, align 8
  %3194 = sext i32 %3188 to i64
  %3195 = sext i32 %3192 to i64
  %3196 = mul nsw i64 %3195, %3194
  %3197 = trunc i64 %3196 to i32
  %3198 = and i64 %3196, 4294967295
  store i64 %3198, i64* %RDX.i722.pre-phi, align 8
  %3199 = shl i64 %3196, 32
  %3200 = ashr exact i64 %3199, 32
  %3201 = icmp ne i64 %3200, %3196
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %.pre-phi, align 1
  %3203 = and i32 %3197, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3208 = lshr i32 %3197, 31
  %3209 = trunc i32 %3208 to i8
  store i8 %3209, i8* %.pre-phi29, align 1
  store i8 %3202, i8* %.pre-phi31, align 1
  %3210 = add i64 %3144, -48
  %3211 = add i64 %2887, 148
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3210 to i32*
  %3213 = load i32, i32* %3212, align 4
  %3214 = add i32 %3213, %3197
  %3215 = zext i32 %3214 to i64
  store i64 %3215, i64* %RDX.i722.pre-phi, align 8
  %3216 = icmp ult i32 %3214, %3197
  %3217 = icmp ult i32 %3214, %3213
  %3218 = or i1 %3216, %3217
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %.pre-phi, align 1
  %3220 = and i32 %3214, 255
  %3221 = tail call i32 @llvm.ctpop.i32(i32 %3220)
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = xor i8 %3223, 1
  store i8 %3224, i8* %.pre-phi23, align 1
  %3225 = xor i32 %3213, %3197
  %3226 = xor i32 %3225, %3214
  %3227 = lshr i32 %3226, 4
  %3228 = trunc i32 %3227 to i8
  %3229 = and i8 %3228, 1
  store i8 %3229, i8* %.pre-phi25, align 1
  %3230 = icmp eq i32 %3214, 0
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %.pre-phi27, align 1
  %3232 = lshr i32 %3214, 31
  %3233 = trunc i32 %3232 to i8
  store i8 %3233, i8* %.pre-phi29, align 1
  %3234 = lshr i32 %3213, 31
  %3235 = xor i32 %3232, %3208
  %3236 = xor i32 %3232, %3234
  %3237 = add nuw nsw i32 %3235, %3236
  %3238 = icmp eq i32 %3237, 2
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %.pre-phi31, align 1
  %3240 = sext i32 %3214 to i64
  store i64 %3240, i64* %RCX.i1621, align 8
  %3241 = shl nsw i64 %3240, 2
  %3242 = add i64 %3241, %3184
  %3243 = add i64 %2887, 156
  store i64 %3243, i64* %3, align 8
  %3244 = load <2 x float>, <2 x float>* %2799, align 1
  %3245 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3246 = inttoptr i64 %3242 to float*
  %3247 = load float, float* %3246, align 4
  %3248 = extractelement <2 x float> %3244, i32 0
  %3249 = fmul float %3248, %3247
  store float %3249, float* %2792, align 1
  %3250 = bitcast <2 x float> %3244 to <2 x i32>
  %3251 = extractelement <2 x i32> %3250, i32 1
  store i32 %3251, i32* %2801, align 1
  %3252 = extractelement <2 x i32> %3245, i32 0
  store i32 %3252, i32* %2802, align 1
  %3253 = extractelement <2 x i32> %3245, i32 1
  store i32 %3253, i32* %2803, align 1
  %3254 = load <2 x float>, <2 x float>* %2804, align 1
  %3255 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3256 = load <2 x float>, <2 x float>* %2799, align 1
  %3257 = extractelement <2 x float> %3254, i32 0
  %3258 = extractelement <2 x float> %3256, i32 0
  %3259 = fadd float %3257, %3258
  store float %3259, float* %2783, align 1
  %3260 = bitcast <2 x float> %3254 to <2 x i32>
  %3261 = extractelement <2 x i32> %3260, i32 1
  store i32 %3261, i32* %2806, align 1
  %3262 = extractelement <2 x i32> %3255, i32 0
  store i32 %3262, i32* %2807, align 1
  %3263 = extractelement <2 x i32> %3255, i32 1
  store i32 %3263, i32* %2808, align 1
  %3264 = add i64 %2887, 164
  store i64 %3264, i64* %3, align 8
  %3265 = load i64, i64* %3147, align 8
  store i64 %3265, i64* %RAX.i1124, align 8
  %3266 = add i64 %2887, 167
  store i64 %3266, i64* %3, align 8
  %3267 = load i32, i32* %3151, align 4
  %3268 = add i32 %3267, -12
  %3269 = zext i32 %3268 to i64
  store i64 %3269, i64* %RDX.i722.pre-phi, align 8
  %3270 = icmp ult i32 %3267, 12
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %.pre-phi, align 1
  %3272 = and i32 %3268, 255
  %3273 = tail call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  store i8 %3276, i8* %.pre-phi23, align 1
  %3277 = xor i32 %3267, %3268
  %3278 = lshr i32 %3277, 4
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  store i8 %3280, i8* %.pre-phi25, align 1
  %3281 = icmp eq i32 %3268, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %.pre-phi27, align 1
  %3283 = lshr i32 %3268, 31
  %3284 = trunc i32 %3283 to i8
  store i8 %3284, i8* %.pre-phi29, align 1
  %3285 = lshr i32 %3267, 31
  %3286 = xor i32 %3283, %3285
  %3287 = add nuw nsw i32 %3286, %3285
  %3288 = icmp eq i32 %3287, 2
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %.pre-phi31, align 1
  %3290 = sext i32 %3268 to i64
  store i64 %3290, i64* %RCX.i1621, align 8
  %3291 = shl nsw i64 %3290, 2
  %3292 = add i64 %3291, %3265
  %3293 = add i64 %2887, 178
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  %3295 = load i32, i32* %3294, align 4
  store i32 %3295, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -40
  %3298 = add i64 %2887, 182
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i64*
  %3300 = load i64, i64* %3299, align 8
  store i64 %3300, i64* %RAX.i1124, align 8
  %3301 = add i64 %3296, -24
  %3302 = add i64 %2887, 185
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RDX.i722.pre-phi, align 8
  %3306 = add i64 %3296, -44
  %3307 = add i64 %2887, 188
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = add i32 %3309, -12
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RSI.i1502, align 8
  %3312 = sext i32 %3304 to i64
  %3313 = sext i32 %3310 to i64
  %3314 = mul nsw i64 %3313, %3312
  %3315 = trunc i64 %3314 to i32
  %3316 = and i64 %3314, 4294967295
  store i64 %3316, i64* %RDX.i722.pre-phi, align 8
  %3317 = shl i64 %3314, 32
  %3318 = ashr exact i64 %3317, 32
  %3319 = icmp ne i64 %3318, %3314
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %.pre-phi, align 1
  %3321 = and i32 %3315, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3326 = lshr i32 %3315, 31
  %3327 = trunc i32 %3326 to i8
  store i8 %3327, i8* %.pre-phi29, align 1
  store i8 %3320, i8* %.pre-phi31, align 1
  %3328 = add i64 %3296, -48
  %3329 = add i64 %2887, 197
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i32*
  %3331 = load i32, i32* %3330, align 4
  %3332 = add i32 %3331, %3315
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RDX.i722.pre-phi, align 8
  %3334 = icmp ult i32 %3332, %3315
  %3335 = icmp ult i32 %3332, %3331
  %3336 = or i1 %3334, %3335
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %.pre-phi, align 1
  %3338 = and i32 %3332, 255
  %3339 = tail call i32 @llvm.ctpop.i32(i32 %3338)
  %3340 = trunc i32 %3339 to i8
  %3341 = and i8 %3340, 1
  %3342 = xor i8 %3341, 1
  store i8 %3342, i8* %.pre-phi23, align 1
  %3343 = xor i32 %3331, %3315
  %3344 = xor i32 %3343, %3332
  %3345 = lshr i32 %3344, 4
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  store i8 %3347, i8* %.pre-phi25, align 1
  %3348 = icmp eq i32 %3332, 0
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %.pre-phi27, align 1
  %3350 = lshr i32 %3332, 31
  %3351 = trunc i32 %3350 to i8
  store i8 %3351, i8* %.pre-phi29, align 1
  %3352 = lshr i32 %3331, 31
  %3353 = xor i32 %3350, %3326
  %3354 = xor i32 %3350, %3352
  %3355 = add nuw nsw i32 %3353, %3354
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %.pre-phi31, align 1
  %3358 = sext i32 %3332 to i64
  store i64 %3358, i64* %RCX.i1621, align 8
  %3359 = shl nsw i64 %3358, 2
  %3360 = add i64 %3359, %3300
  %3361 = add i64 %2887, 205
  store i64 %3361, i64* %3, align 8
  %3362 = load <2 x float>, <2 x float>* %2799, align 1
  %3363 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3364 = inttoptr i64 %3360 to float*
  %3365 = load float, float* %3364, align 4
  %3366 = extractelement <2 x float> %3362, i32 0
  %3367 = fmul float %3366, %3365
  store float %3367, float* %2792, align 1
  %3368 = bitcast <2 x float> %3362 to <2 x i32>
  %3369 = extractelement <2 x i32> %3368, i32 1
  store i32 %3369, i32* %2801, align 1
  %3370 = extractelement <2 x i32> %3363, i32 0
  store i32 %3370, i32* %2802, align 1
  %3371 = extractelement <2 x i32> %3363, i32 1
  store i32 %3371, i32* %2803, align 1
  %3372 = load <2 x float>, <2 x float>* %2804, align 1
  %3373 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3374 = load <2 x float>, <2 x float>* %2799, align 1
  %3375 = extractelement <2 x float> %3372, i32 0
  %3376 = extractelement <2 x float> %3374, i32 0
  %3377 = fadd float %3375, %3376
  store float %3377, float* %2783, align 1
  %3378 = bitcast <2 x float> %3372 to <2 x i32>
  %3379 = extractelement <2 x i32> %3378, i32 1
  store i32 %3379, i32* %2806, align 1
  %3380 = extractelement <2 x i32> %3373, i32 0
  store i32 %3380, i32* %2807, align 1
  %3381 = extractelement <2 x i32> %3373, i32 1
  store i32 %3381, i32* %2808, align 1
  %3382 = load i64, i64* %RBP.i, align 8
  %3383 = add i64 %3382, -32
  %3384 = add i64 %2887, 213
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i64*
  %3386 = load i64, i64* %3385, align 8
  store i64 %3386, i64* %RAX.i1124, align 8
  %3387 = add i64 %3382, -44
  %3388 = add i64 %2887, 216
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = add i32 %3390, -11
  %3392 = zext i32 %3391 to i64
  store i64 %3392, i64* %RDX.i722.pre-phi, align 8
  %3393 = icmp ult i32 %3390, 11
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %.pre-phi, align 1
  %3395 = and i32 %3391, 255
  %3396 = tail call i32 @llvm.ctpop.i32(i32 %3395)
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = xor i8 %3398, 1
  store i8 %3399, i8* %.pre-phi23, align 1
  %3400 = xor i32 %3390, %3391
  %3401 = lshr i32 %3400, 4
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  store i8 %3403, i8* %.pre-phi25, align 1
  %3404 = icmp eq i32 %3391, 0
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %.pre-phi27, align 1
  %3406 = lshr i32 %3391, 31
  %3407 = trunc i32 %3406 to i8
  store i8 %3407, i8* %.pre-phi29, align 1
  %3408 = lshr i32 %3390, 31
  %3409 = xor i32 %3406, %3408
  %3410 = add nuw nsw i32 %3409, %3408
  %3411 = icmp eq i32 %3410, 2
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %.pre-phi31, align 1
  %3413 = sext i32 %3391 to i64
  store i64 %3413, i64* %RCX.i1621, align 8
  %3414 = shl nsw i64 %3413, 2
  %3415 = add i64 %3414, %3386
  %3416 = add i64 %2887, 227
  store i64 %3416, i64* %3, align 8
  %3417 = inttoptr i64 %3415 to i32*
  %3418 = load i32, i32* %3417, align 4
  store i32 %3418, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3419 = add i64 %3382, -40
  %3420 = add i64 %2887, 231
  store i64 %3420, i64* %3, align 8
  %3421 = inttoptr i64 %3419 to i64*
  %3422 = load i64, i64* %3421, align 8
  store i64 %3422, i64* %RAX.i1124, align 8
  %3423 = add i64 %3382, -24
  %3424 = add i64 %2887, 234
  store i64 %3424, i64* %3, align 8
  %3425 = inttoptr i64 %3423 to i32*
  %3426 = load i32, i32* %3425, align 4
  %3427 = zext i32 %3426 to i64
  store i64 %3427, i64* %RDX.i722.pre-phi, align 8
  %3428 = add i64 %2887, 237
  store i64 %3428, i64* %3, align 8
  %3429 = load i32, i32* %3389, align 4
  %3430 = add i32 %3429, -11
  %3431 = zext i32 %3430 to i64
  store i64 %3431, i64* %RSI.i1502, align 8
  %3432 = sext i32 %3426 to i64
  %3433 = sext i32 %3430 to i64
  %3434 = mul nsw i64 %3433, %3432
  %3435 = trunc i64 %3434 to i32
  %3436 = and i64 %3434, 4294967295
  store i64 %3436, i64* %RDX.i722.pre-phi, align 8
  %3437 = shl i64 %3434, 32
  %3438 = ashr exact i64 %3437, 32
  %3439 = icmp ne i64 %3438, %3434
  %3440 = zext i1 %3439 to i8
  store i8 %3440, i8* %.pre-phi, align 1
  %3441 = and i32 %3435, 255
  %3442 = tail call i32 @llvm.ctpop.i32(i32 %3441)
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = xor i8 %3444, 1
  store i8 %3445, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3446 = lshr i32 %3435, 31
  %3447 = trunc i32 %3446 to i8
  store i8 %3447, i8* %.pre-phi29, align 1
  store i8 %3440, i8* %.pre-phi31, align 1
  %3448 = add i64 %3382, -48
  %3449 = add i64 %2887, 246
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = add i32 %3451, %3435
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RDX.i722.pre-phi, align 8
  %3454 = icmp ult i32 %3452, %3435
  %3455 = icmp ult i32 %3452, %3451
  %3456 = or i1 %3454, %3455
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %.pre-phi, align 1
  %3458 = and i32 %3452, 255
  %3459 = tail call i32 @llvm.ctpop.i32(i32 %3458)
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  %3462 = xor i8 %3461, 1
  store i8 %3462, i8* %.pre-phi23, align 1
  %3463 = xor i32 %3451, %3435
  %3464 = xor i32 %3463, %3452
  %3465 = lshr i32 %3464, 4
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  store i8 %3467, i8* %.pre-phi25, align 1
  %3468 = icmp eq i32 %3452, 0
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %.pre-phi27, align 1
  %3470 = lshr i32 %3452, 31
  %3471 = trunc i32 %3470 to i8
  store i8 %3471, i8* %.pre-phi29, align 1
  %3472 = lshr i32 %3451, 31
  %3473 = xor i32 %3470, %3446
  %3474 = xor i32 %3470, %3472
  %3475 = add nuw nsw i32 %3473, %3474
  %3476 = icmp eq i32 %3475, 2
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %.pre-phi31, align 1
  %3478 = sext i32 %3452 to i64
  store i64 %3478, i64* %RCX.i1621, align 8
  %3479 = shl nsw i64 %3478, 2
  %3480 = add i64 %3479, %3422
  %3481 = add i64 %2887, 254
  store i64 %3481, i64* %3, align 8
  %3482 = load <2 x float>, <2 x float>* %2799, align 1
  %3483 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3484 = inttoptr i64 %3480 to float*
  %3485 = load float, float* %3484, align 4
  %3486 = extractelement <2 x float> %3482, i32 0
  %3487 = fmul float %3486, %3485
  store float %3487, float* %2792, align 1
  %3488 = bitcast <2 x float> %3482 to <2 x i32>
  %3489 = extractelement <2 x i32> %3488, i32 1
  store i32 %3489, i32* %2801, align 1
  %3490 = extractelement <2 x i32> %3483, i32 0
  store i32 %3490, i32* %2802, align 1
  %3491 = extractelement <2 x i32> %3483, i32 1
  store i32 %3491, i32* %2803, align 1
  %3492 = load <2 x float>, <2 x float>* %2804, align 1
  %3493 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3494 = load <2 x float>, <2 x float>* %2799, align 1
  %3495 = extractelement <2 x float> %3492, i32 0
  %3496 = extractelement <2 x float> %3494, i32 0
  %3497 = fadd float %3495, %3496
  store float %3497, float* %2783, align 1
  %3498 = bitcast <2 x float> %3492 to <2 x i32>
  %3499 = extractelement <2 x i32> %3498, i32 1
  store i32 %3499, i32* %2806, align 1
  %3500 = extractelement <2 x i32> %3493, i32 0
  store i32 %3500, i32* %2807, align 1
  %3501 = extractelement <2 x i32> %3493, i32 1
  store i32 %3501, i32* %2808, align 1
  %3502 = add i64 %2887, 262
  store i64 %3502, i64* %3, align 8
  %3503 = load i64, i64* %3385, align 8
  store i64 %3503, i64* %RAX.i1124, align 8
  %3504 = add i64 %2887, 265
  store i64 %3504, i64* %3, align 8
  %3505 = load i32, i32* %3389, align 4
  %3506 = add i32 %3505, -10
  %3507 = zext i32 %3506 to i64
  store i64 %3507, i64* %RDX.i722.pre-phi, align 8
  %3508 = icmp ult i32 %3505, 10
  %3509 = zext i1 %3508 to i8
  store i8 %3509, i8* %.pre-phi, align 1
  %3510 = and i32 %3506, 255
  %3511 = tail call i32 @llvm.ctpop.i32(i32 %3510)
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = xor i8 %3513, 1
  store i8 %3514, i8* %.pre-phi23, align 1
  %3515 = xor i32 %3505, %3506
  %3516 = lshr i32 %3515, 4
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  store i8 %3518, i8* %.pre-phi25, align 1
  %3519 = icmp eq i32 %3506, 0
  %3520 = zext i1 %3519 to i8
  store i8 %3520, i8* %.pre-phi27, align 1
  %3521 = lshr i32 %3506, 31
  %3522 = trunc i32 %3521 to i8
  store i8 %3522, i8* %.pre-phi29, align 1
  %3523 = lshr i32 %3505, 31
  %3524 = xor i32 %3521, %3523
  %3525 = add nuw nsw i32 %3524, %3523
  %3526 = icmp eq i32 %3525, 2
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %.pre-phi31, align 1
  %3528 = sext i32 %3506 to i64
  store i64 %3528, i64* %RCX.i1621, align 8
  %3529 = shl nsw i64 %3528, 2
  %3530 = add i64 %3529, %3503
  %3531 = add i64 %2887, 276
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  store i32 %3533, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3534 = load i64, i64* %RBP.i, align 8
  %3535 = add i64 %3534, -40
  %3536 = add i64 %2887, 280
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i64*
  %3538 = load i64, i64* %3537, align 8
  store i64 %3538, i64* %RAX.i1124, align 8
  %3539 = add i64 %3534, -24
  %3540 = add i64 %2887, 283
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %RDX.i722.pre-phi, align 8
  %3544 = add i64 %3534, -44
  %3545 = add i64 %2887, 286
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  %3547 = load i32, i32* %3546, align 4
  %3548 = add i32 %3547, -10
  %3549 = zext i32 %3548 to i64
  store i64 %3549, i64* %RSI.i1502, align 8
  %3550 = sext i32 %3542 to i64
  %3551 = sext i32 %3548 to i64
  %3552 = mul nsw i64 %3551, %3550
  %3553 = trunc i64 %3552 to i32
  %3554 = and i64 %3552, 4294967295
  store i64 %3554, i64* %RDX.i722.pre-phi, align 8
  %3555 = shl i64 %3552, 32
  %3556 = ashr exact i64 %3555, 32
  %3557 = icmp ne i64 %3556, %3552
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %.pre-phi, align 1
  %3559 = and i32 %3553, 255
  %3560 = tail call i32 @llvm.ctpop.i32(i32 %3559)
  %3561 = trunc i32 %3560 to i8
  %3562 = and i8 %3561, 1
  %3563 = xor i8 %3562, 1
  store i8 %3563, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3564 = lshr i32 %3553, 31
  %3565 = trunc i32 %3564 to i8
  store i8 %3565, i8* %.pre-phi29, align 1
  store i8 %3558, i8* %.pre-phi31, align 1
  %3566 = add i64 %3534, -48
  %3567 = add i64 %2887, 295
  store i64 %3567, i64* %3, align 8
  %3568 = inttoptr i64 %3566 to i32*
  %3569 = load i32, i32* %3568, align 4
  %3570 = add i32 %3569, %3553
  %3571 = zext i32 %3570 to i64
  store i64 %3571, i64* %RDX.i722.pre-phi, align 8
  %3572 = icmp ult i32 %3570, %3553
  %3573 = icmp ult i32 %3570, %3569
  %3574 = or i1 %3572, %3573
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %.pre-phi, align 1
  %3576 = and i32 %3570, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %.pre-phi23, align 1
  %3581 = xor i32 %3569, %3553
  %3582 = xor i32 %3581, %3570
  %3583 = lshr i32 %3582, 4
  %3584 = trunc i32 %3583 to i8
  %3585 = and i8 %3584, 1
  store i8 %3585, i8* %.pre-phi25, align 1
  %3586 = icmp eq i32 %3570, 0
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %.pre-phi27, align 1
  %3588 = lshr i32 %3570, 31
  %3589 = trunc i32 %3588 to i8
  store i8 %3589, i8* %.pre-phi29, align 1
  %3590 = lshr i32 %3569, 31
  %3591 = xor i32 %3588, %3564
  %3592 = xor i32 %3588, %3590
  %3593 = add nuw nsw i32 %3591, %3592
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %.pre-phi31, align 1
  %3596 = sext i32 %3570 to i64
  store i64 %3596, i64* %RCX.i1621, align 8
  %3597 = shl nsw i64 %3596, 2
  %3598 = add i64 %3597, %3538
  %3599 = add i64 %2887, 303
  store i64 %3599, i64* %3, align 8
  %3600 = load <2 x float>, <2 x float>* %2799, align 1
  %3601 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3602 = inttoptr i64 %3598 to float*
  %3603 = load float, float* %3602, align 4
  %3604 = extractelement <2 x float> %3600, i32 0
  %3605 = fmul float %3604, %3603
  store float %3605, float* %2792, align 1
  %3606 = bitcast <2 x float> %3600 to <2 x i32>
  %3607 = extractelement <2 x i32> %3606, i32 1
  store i32 %3607, i32* %2801, align 1
  %3608 = extractelement <2 x i32> %3601, i32 0
  store i32 %3608, i32* %2802, align 1
  %3609 = extractelement <2 x i32> %3601, i32 1
  store i32 %3609, i32* %2803, align 1
  %3610 = load <2 x float>, <2 x float>* %2804, align 1
  %3611 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3612 = load <2 x float>, <2 x float>* %2799, align 1
  %3613 = extractelement <2 x float> %3610, i32 0
  %3614 = extractelement <2 x float> %3612, i32 0
  %3615 = fadd float %3613, %3614
  store float %3615, float* %2783, align 1
  %3616 = bitcast <2 x float> %3610 to <2 x i32>
  %3617 = extractelement <2 x i32> %3616, i32 1
  store i32 %3617, i32* %2806, align 1
  %3618 = extractelement <2 x i32> %3611, i32 0
  store i32 %3618, i32* %2807, align 1
  %3619 = extractelement <2 x i32> %3611, i32 1
  store i32 %3619, i32* %2808, align 1
  %3620 = load i64, i64* %RBP.i, align 8
  %3621 = add i64 %3620, -32
  %3622 = add i64 %2887, 311
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i64*
  %3624 = load i64, i64* %3623, align 8
  store i64 %3624, i64* %RAX.i1124, align 8
  %3625 = add i64 %3620, -44
  %3626 = add i64 %2887, 314
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i32*
  %3628 = load i32, i32* %3627, align 4
  %3629 = add i32 %3628, -9
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RDX.i722.pre-phi, align 8
  %3631 = icmp ult i32 %3628, 9
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %.pre-phi, align 1
  %3633 = and i32 %3629, 255
  %3634 = tail call i32 @llvm.ctpop.i32(i32 %3633)
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = xor i8 %3636, 1
  store i8 %3637, i8* %.pre-phi23, align 1
  %3638 = xor i32 %3628, %3629
  %3639 = lshr i32 %3638, 4
  %3640 = trunc i32 %3639 to i8
  %3641 = and i8 %3640, 1
  store i8 %3641, i8* %.pre-phi25, align 1
  %3642 = icmp eq i32 %3629, 0
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %.pre-phi27, align 1
  %3644 = lshr i32 %3629, 31
  %3645 = trunc i32 %3644 to i8
  store i8 %3645, i8* %.pre-phi29, align 1
  %3646 = lshr i32 %3628, 31
  %3647 = xor i32 %3644, %3646
  %3648 = add nuw nsw i32 %3647, %3646
  %3649 = icmp eq i32 %3648, 2
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %.pre-phi31, align 1
  %3651 = sext i32 %3629 to i64
  store i64 %3651, i64* %RCX.i1621, align 8
  %3652 = shl nsw i64 %3651, 2
  %3653 = add i64 %3652, %3624
  %3654 = add i64 %2887, 325
  store i64 %3654, i64* %3, align 8
  %3655 = inttoptr i64 %3653 to i32*
  %3656 = load i32, i32* %3655, align 4
  store i32 %3656, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3657 = add i64 %3620, -40
  %3658 = add i64 %2887, 329
  store i64 %3658, i64* %3, align 8
  %3659 = inttoptr i64 %3657 to i64*
  %3660 = load i64, i64* %3659, align 8
  store i64 %3660, i64* %RAX.i1124, align 8
  %3661 = add i64 %3620, -24
  %3662 = add i64 %2887, 332
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = zext i32 %3664 to i64
  store i64 %3665, i64* %RDX.i722.pre-phi, align 8
  %3666 = add i64 %2887, 335
  store i64 %3666, i64* %3, align 8
  %3667 = load i32, i32* %3627, align 4
  %3668 = add i32 %3667, -9
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RSI.i1502, align 8
  %3670 = sext i32 %3664 to i64
  %3671 = sext i32 %3668 to i64
  %3672 = mul nsw i64 %3671, %3670
  %3673 = trunc i64 %3672 to i32
  %3674 = and i64 %3672, 4294967295
  store i64 %3674, i64* %RDX.i722.pre-phi, align 8
  %3675 = shl i64 %3672, 32
  %3676 = ashr exact i64 %3675, 32
  %3677 = icmp ne i64 %3676, %3672
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %.pre-phi, align 1
  %3679 = and i32 %3673, 255
  %3680 = tail call i32 @llvm.ctpop.i32(i32 %3679)
  %3681 = trunc i32 %3680 to i8
  %3682 = and i8 %3681, 1
  %3683 = xor i8 %3682, 1
  store i8 %3683, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3684 = lshr i32 %3673, 31
  %3685 = trunc i32 %3684 to i8
  store i8 %3685, i8* %.pre-phi29, align 1
  store i8 %3678, i8* %.pre-phi31, align 1
  %3686 = add i64 %3620, -48
  %3687 = add i64 %2887, 344
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3686 to i32*
  %3689 = load i32, i32* %3688, align 4
  %3690 = add i32 %3689, %3673
  %3691 = zext i32 %3690 to i64
  store i64 %3691, i64* %RDX.i722.pre-phi, align 8
  %3692 = icmp ult i32 %3690, %3673
  %3693 = icmp ult i32 %3690, %3689
  %3694 = or i1 %3692, %3693
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %.pre-phi, align 1
  %3696 = and i32 %3690, 255
  %3697 = tail call i32 @llvm.ctpop.i32(i32 %3696)
  %3698 = trunc i32 %3697 to i8
  %3699 = and i8 %3698, 1
  %3700 = xor i8 %3699, 1
  store i8 %3700, i8* %.pre-phi23, align 1
  %3701 = xor i32 %3689, %3673
  %3702 = xor i32 %3701, %3690
  %3703 = lshr i32 %3702, 4
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  store i8 %3705, i8* %.pre-phi25, align 1
  %3706 = icmp eq i32 %3690, 0
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %.pre-phi27, align 1
  %3708 = lshr i32 %3690, 31
  %3709 = trunc i32 %3708 to i8
  store i8 %3709, i8* %.pre-phi29, align 1
  %3710 = lshr i32 %3689, 31
  %3711 = xor i32 %3708, %3684
  %3712 = xor i32 %3708, %3710
  %3713 = add nuw nsw i32 %3711, %3712
  %3714 = icmp eq i32 %3713, 2
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %.pre-phi31, align 1
  %3716 = sext i32 %3690 to i64
  store i64 %3716, i64* %RCX.i1621, align 8
  %3717 = shl nsw i64 %3716, 2
  %3718 = add i64 %3717, %3660
  %3719 = add i64 %2887, 352
  store i64 %3719, i64* %3, align 8
  %3720 = load <2 x float>, <2 x float>* %2799, align 1
  %3721 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3722 = inttoptr i64 %3718 to float*
  %3723 = load float, float* %3722, align 4
  %3724 = extractelement <2 x float> %3720, i32 0
  %3725 = fmul float %3724, %3723
  store float %3725, float* %2792, align 1
  %3726 = bitcast <2 x float> %3720 to <2 x i32>
  %3727 = extractelement <2 x i32> %3726, i32 1
  store i32 %3727, i32* %2801, align 1
  %3728 = extractelement <2 x i32> %3721, i32 0
  store i32 %3728, i32* %2802, align 1
  %3729 = extractelement <2 x i32> %3721, i32 1
  store i32 %3729, i32* %2803, align 1
  %3730 = load <2 x float>, <2 x float>* %2804, align 1
  %3731 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3732 = load <2 x float>, <2 x float>* %2799, align 1
  %3733 = extractelement <2 x float> %3730, i32 0
  %3734 = extractelement <2 x float> %3732, i32 0
  %3735 = fadd float %3733, %3734
  store float %3735, float* %2783, align 1
  %3736 = bitcast <2 x float> %3730 to <2 x i32>
  %3737 = extractelement <2 x i32> %3736, i32 1
  store i32 %3737, i32* %2806, align 1
  %3738 = extractelement <2 x i32> %3731, i32 0
  store i32 %3738, i32* %2807, align 1
  %3739 = extractelement <2 x i32> %3731, i32 1
  store i32 %3739, i32* %2808, align 1
  %3740 = add i64 %2887, 360
  store i64 %3740, i64* %3, align 8
  %3741 = load i64, i64* %3623, align 8
  store i64 %3741, i64* %RAX.i1124, align 8
  %3742 = add i64 %2887, 363
  store i64 %3742, i64* %3, align 8
  %3743 = load i32, i32* %3627, align 4
  %3744 = add i32 %3743, -8
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RDX.i722.pre-phi, align 8
  %3746 = icmp ult i32 %3743, 8
  %3747 = zext i1 %3746 to i8
  store i8 %3747, i8* %.pre-phi, align 1
  %3748 = and i32 %3744, 255
  %3749 = tail call i32 @llvm.ctpop.i32(i32 %3748)
  %3750 = trunc i32 %3749 to i8
  %3751 = and i8 %3750, 1
  %3752 = xor i8 %3751, 1
  store i8 %3752, i8* %.pre-phi23, align 1
  %3753 = xor i32 %3743, %3744
  %3754 = lshr i32 %3753, 4
  %3755 = trunc i32 %3754 to i8
  %3756 = and i8 %3755, 1
  store i8 %3756, i8* %.pre-phi25, align 1
  %3757 = icmp eq i32 %3744, 0
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %.pre-phi27, align 1
  %3759 = lshr i32 %3744, 31
  %3760 = trunc i32 %3759 to i8
  store i8 %3760, i8* %.pre-phi29, align 1
  %3761 = lshr i32 %3743, 31
  %3762 = xor i32 %3759, %3761
  %3763 = add nuw nsw i32 %3762, %3761
  %3764 = icmp eq i32 %3763, 2
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %.pre-phi31, align 1
  %3766 = sext i32 %3744 to i64
  store i64 %3766, i64* %RCX.i1621, align 8
  %3767 = shl nsw i64 %3766, 2
  %3768 = add i64 %3767, %3741
  %3769 = add i64 %2887, 374
  store i64 %3769, i64* %3, align 8
  %3770 = inttoptr i64 %3768 to i32*
  %3771 = load i32, i32* %3770, align 4
  store i32 %3771, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3772 = load i64, i64* %RBP.i, align 8
  %3773 = add i64 %3772, -40
  %3774 = add i64 %2887, 378
  store i64 %3774, i64* %3, align 8
  %3775 = inttoptr i64 %3773 to i64*
  %3776 = load i64, i64* %3775, align 8
  store i64 %3776, i64* %RAX.i1124, align 8
  %3777 = add i64 %3772, -24
  %3778 = add i64 %2887, 381
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = zext i32 %3780 to i64
  store i64 %3781, i64* %RDX.i722.pre-phi, align 8
  %3782 = add i64 %3772, -44
  %3783 = add i64 %2887, 384
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3782 to i32*
  %3785 = load i32, i32* %3784, align 4
  %3786 = add i32 %3785, -8
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %RSI.i1502, align 8
  %3788 = sext i32 %3780 to i64
  %3789 = sext i32 %3786 to i64
  %3790 = mul nsw i64 %3789, %3788
  %3791 = trunc i64 %3790 to i32
  %3792 = and i64 %3790, 4294967295
  store i64 %3792, i64* %RDX.i722.pre-phi, align 8
  %3793 = shl i64 %3790, 32
  %3794 = ashr exact i64 %3793, 32
  %3795 = icmp ne i64 %3794, %3790
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %.pre-phi, align 1
  %3797 = and i32 %3791, 255
  %3798 = tail call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  store i8 %3801, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3802 = lshr i32 %3791, 31
  %3803 = trunc i32 %3802 to i8
  store i8 %3803, i8* %.pre-phi29, align 1
  store i8 %3796, i8* %.pre-phi31, align 1
  %3804 = add i64 %3772, -48
  %3805 = add i64 %2887, 393
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i32*
  %3807 = load i32, i32* %3806, align 4
  %3808 = add i32 %3807, %3791
  %3809 = zext i32 %3808 to i64
  store i64 %3809, i64* %RDX.i722.pre-phi, align 8
  %3810 = icmp ult i32 %3808, %3791
  %3811 = icmp ult i32 %3808, %3807
  %3812 = or i1 %3810, %3811
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %.pre-phi, align 1
  %3814 = and i32 %3808, 255
  %3815 = tail call i32 @llvm.ctpop.i32(i32 %3814)
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = xor i8 %3817, 1
  store i8 %3818, i8* %.pre-phi23, align 1
  %3819 = xor i32 %3807, %3791
  %3820 = xor i32 %3819, %3808
  %3821 = lshr i32 %3820, 4
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  store i8 %3823, i8* %.pre-phi25, align 1
  %3824 = icmp eq i32 %3808, 0
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %.pre-phi27, align 1
  %3826 = lshr i32 %3808, 31
  %3827 = trunc i32 %3826 to i8
  store i8 %3827, i8* %.pre-phi29, align 1
  %3828 = lshr i32 %3807, 31
  %3829 = xor i32 %3826, %3802
  %3830 = xor i32 %3826, %3828
  %3831 = add nuw nsw i32 %3829, %3830
  %3832 = icmp eq i32 %3831, 2
  %3833 = zext i1 %3832 to i8
  store i8 %3833, i8* %.pre-phi31, align 1
  %3834 = sext i32 %3808 to i64
  store i64 %3834, i64* %RCX.i1621, align 8
  %3835 = shl nsw i64 %3834, 2
  %3836 = add i64 %3835, %3776
  %3837 = add i64 %2887, 401
  store i64 %3837, i64* %3, align 8
  %3838 = load <2 x float>, <2 x float>* %2799, align 1
  %3839 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3840 = inttoptr i64 %3836 to float*
  %3841 = load float, float* %3840, align 4
  %3842 = extractelement <2 x float> %3838, i32 0
  %3843 = fmul float %3842, %3841
  store float %3843, float* %2792, align 1
  %3844 = bitcast <2 x float> %3838 to <2 x i32>
  %3845 = extractelement <2 x i32> %3844, i32 1
  store i32 %3845, i32* %2801, align 1
  %3846 = extractelement <2 x i32> %3839, i32 0
  store i32 %3846, i32* %2802, align 1
  %3847 = extractelement <2 x i32> %3839, i32 1
  store i32 %3847, i32* %2803, align 1
  %3848 = load <2 x float>, <2 x float>* %2804, align 1
  %3849 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3850 = load <2 x float>, <2 x float>* %2799, align 1
  %3851 = extractelement <2 x float> %3848, i32 0
  %3852 = extractelement <2 x float> %3850, i32 0
  %3853 = fadd float %3851, %3852
  store float %3853, float* %2783, align 1
  %3854 = bitcast <2 x float> %3848 to <2 x i32>
  %3855 = extractelement <2 x i32> %3854, i32 1
  store i32 %3855, i32* %2806, align 1
  %3856 = extractelement <2 x i32> %3849, i32 0
  store i32 %3856, i32* %2807, align 1
  %3857 = extractelement <2 x i32> %3849, i32 1
  store i32 %3857, i32* %2808, align 1
  %3858 = load i64, i64* %RBP.i, align 8
  %3859 = add i64 %3858, -32
  %3860 = add i64 %2887, 409
  store i64 %3860, i64* %3, align 8
  %3861 = inttoptr i64 %3859 to i64*
  %3862 = load i64, i64* %3861, align 8
  store i64 %3862, i64* %RAX.i1124, align 8
  %3863 = add i64 %3858, -44
  %3864 = add i64 %2887, 412
  store i64 %3864, i64* %3, align 8
  %3865 = inttoptr i64 %3863 to i32*
  %3866 = load i32, i32* %3865, align 4
  %3867 = add i32 %3866, -7
  %3868 = zext i32 %3867 to i64
  store i64 %3868, i64* %RDX.i722.pre-phi, align 8
  %3869 = icmp ult i32 %3866, 7
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %.pre-phi, align 1
  %3871 = and i32 %3867, 255
  %3872 = tail call i32 @llvm.ctpop.i32(i32 %3871)
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  store i8 %3875, i8* %.pre-phi23, align 1
  %3876 = xor i32 %3866, %3867
  %3877 = lshr i32 %3876, 4
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  store i8 %3879, i8* %.pre-phi25, align 1
  %3880 = icmp eq i32 %3867, 0
  %3881 = zext i1 %3880 to i8
  store i8 %3881, i8* %.pre-phi27, align 1
  %3882 = lshr i32 %3867, 31
  %3883 = trunc i32 %3882 to i8
  store i8 %3883, i8* %.pre-phi29, align 1
  %3884 = lshr i32 %3866, 31
  %3885 = xor i32 %3882, %3884
  %3886 = add nuw nsw i32 %3885, %3884
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %.pre-phi31, align 1
  %3889 = sext i32 %3867 to i64
  store i64 %3889, i64* %RCX.i1621, align 8
  %3890 = shl nsw i64 %3889, 2
  %3891 = add i64 %3890, %3862
  %3892 = add i64 %2887, 423
  store i64 %3892, i64* %3, align 8
  %3893 = inttoptr i64 %3891 to i32*
  %3894 = load i32, i32* %3893, align 4
  store i32 %3894, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %3895 = add i64 %3858, -40
  %3896 = add i64 %2887, 427
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i64*
  %3898 = load i64, i64* %3897, align 8
  store i64 %3898, i64* %RAX.i1124, align 8
  %3899 = add i64 %3858, -24
  %3900 = add i64 %2887, 430
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3899 to i32*
  %3902 = load i32, i32* %3901, align 4
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RDX.i722.pre-phi, align 8
  %3904 = add i64 %2887, 433
  store i64 %3904, i64* %3, align 8
  %3905 = load i32, i32* %3865, align 4
  %3906 = add i32 %3905, -7
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RSI.i1502, align 8
  %3908 = sext i32 %3902 to i64
  %3909 = sext i32 %3906 to i64
  %3910 = mul nsw i64 %3909, %3908
  %3911 = trunc i64 %3910 to i32
  %3912 = and i64 %3910, 4294967295
  store i64 %3912, i64* %RDX.i722.pre-phi, align 8
  %3913 = shl i64 %3910, 32
  %3914 = ashr exact i64 %3913, 32
  %3915 = icmp ne i64 %3914, %3910
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %.pre-phi, align 1
  %3917 = and i32 %3911, 255
  %3918 = tail call i32 @llvm.ctpop.i32(i32 %3917)
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = xor i8 %3920, 1
  store i8 %3921, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3922 = lshr i32 %3911, 31
  %3923 = trunc i32 %3922 to i8
  store i8 %3923, i8* %.pre-phi29, align 1
  store i8 %3916, i8* %.pre-phi31, align 1
  %3924 = add i64 %3858, -48
  %3925 = add i64 %2887, 442
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = add i32 %3927, %3911
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RDX.i722.pre-phi, align 8
  %3930 = icmp ult i32 %3928, %3911
  %3931 = icmp ult i32 %3928, %3927
  %3932 = or i1 %3930, %3931
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %.pre-phi, align 1
  %3934 = and i32 %3928, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %.pre-phi23, align 1
  %3939 = xor i32 %3927, %3911
  %3940 = xor i32 %3939, %3928
  %3941 = lshr i32 %3940, 4
  %3942 = trunc i32 %3941 to i8
  %3943 = and i8 %3942, 1
  store i8 %3943, i8* %.pre-phi25, align 1
  %3944 = icmp eq i32 %3928, 0
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %.pre-phi27, align 1
  %3946 = lshr i32 %3928, 31
  %3947 = trunc i32 %3946 to i8
  store i8 %3947, i8* %.pre-phi29, align 1
  %3948 = lshr i32 %3927, 31
  %3949 = xor i32 %3946, %3922
  %3950 = xor i32 %3946, %3948
  %3951 = add nuw nsw i32 %3949, %3950
  %3952 = icmp eq i32 %3951, 2
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %.pre-phi31, align 1
  %3954 = sext i32 %3928 to i64
  store i64 %3954, i64* %RCX.i1621, align 8
  %3955 = shl nsw i64 %3954, 2
  %3956 = add i64 %3955, %3898
  %3957 = add i64 %2887, 450
  store i64 %3957, i64* %3, align 8
  %3958 = load <2 x float>, <2 x float>* %2799, align 1
  %3959 = load <2 x i32>, <2 x i32>* %2800, align 1
  %3960 = inttoptr i64 %3956 to float*
  %3961 = load float, float* %3960, align 4
  %3962 = extractelement <2 x float> %3958, i32 0
  %3963 = fmul float %3962, %3961
  store float %3963, float* %2792, align 1
  %3964 = bitcast <2 x float> %3958 to <2 x i32>
  %3965 = extractelement <2 x i32> %3964, i32 1
  store i32 %3965, i32* %2801, align 1
  %3966 = extractelement <2 x i32> %3959, i32 0
  store i32 %3966, i32* %2802, align 1
  %3967 = extractelement <2 x i32> %3959, i32 1
  store i32 %3967, i32* %2803, align 1
  %3968 = load <2 x float>, <2 x float>* %2804, align 1
  %3969 = load <2 x i32>, <2 x i32>* %2805, align 1
  %3970 = load <2 x float>, <2 x float>* %2799, align 1
  %3971 = extractelement <2 x float> %3968, i32 0
  %3972 = extractelement <2 x float> %3970, i32 0
  %3973 = fadd float %3971, %3972
  store float %3973, float* %2783, align 1
  %3974 = bitcast <2 x float> %3968 to <2 x i32>
  %3975 = extractelement <2 x i32> %3974, i32 1
  store i32 %3975, i32* %2806, align 1
  %3976 = extractelement <2 x i32> %3969, i32 0
  store i32 %3976, i32* %2807, align 1
  %3977 = extractelement <2 x i32> %3969, i32 1
  store i32 %3977, i32* %2808, align 1
  %3978 = add i64 %2887, 458
  store i64 %3978, i64* %3, align 8
  %3979 = load i64, i64* %3861, align 8
  store i64 %3979, i64* %RAX.i1124, align 8
  %3980 = add i64 %2887, 461
  store i64 %3980, i64* %3, align 8
  %3981 = load i32, i32* %3865, align 4
  %3982 = add i32 %3981, -6
  %3983 = zext i32 %3982 to i64
  store i64 %3983, i64* %RDX.i722.pre-phi, align 8
  %3984 = icmp ult i32 %3981, 6
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %.pre-phi, align 1
  %3986 = and i32 %3982, 255
  %3987 = tail call i32 @llvm.ctpop.i32(i32 %3986)
  %3988 = trunc i32 %3987 to i8
  %3989 = and i8 %3988, 1
  %3990 = xor i8 %3989, 1
  store i8 %3990, i8* %.pre-phi23, align 1
  %3991 = xor i32 %3981, %3982
  %3992 = lshr i32 %3991, 4
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  store i8 %3994, i8* %.pre-phi25, align 1
  %3995 = icmp eq i32 %3982, 0
  %3996 = zext i1 %3995 to i8
  store i8 %3996, i8* %.pre-phi27, align 1
  %3997 = lshr i32 %3982, 31
  %3998 = trunc i32 %3997 to i8
  store i8 %3998, i8* %.pre-phi29, align 1
  %3999 = lshr i32 %3981, 31
  %4000 = xor i32 %3997, %3999
  %4001 = add nuw nsw i32 %4000, %3999
  %4002 = icmp eq i32 %4001, 2
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %.pre-phi31, align 1
  %4004 = sext i32 %3982 to i64
  store i64 %4004, i64* %RCX.i1621, align 8
  %4005 = shl nsw i64 %4004, 2
  %4006 = add i64 %4005, %3979
  %4007 = add i64 %2887, 472
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i32*
  %4009 = load i32, i32* %4008, align 4
  store i32 %4009, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4010 = load i64, i64* %RBP.i, align 8
  %4011 = add i64 %4010, -40
  %4012 = add i64 %2887, 476
  store i64 %4012, i64* %3, align 8
  %4013 = inttoptr i64 %4011 to i64*
  %4014 = load i64, i64* %4013, align 8
  store i64 %4014, i64* %RAX.i1124, align 8
  %4015 = add i64 %4010, -24
  %4016 = add i64 %2887, 479
  store i64 %4016, i64* %3, align 8
  %4017 = inttoptr i64 %4015 to i32*
  %4018 = load i32, i32* %4017, align 4
  %4019 = zext i32 %4018 to i64
  store i64 %4019, i64* %RDX.i722.pre-phi, align 8
  %4020 = add i64 %4010, -44
  %4021 = add i64 %2887, 482
  store i64 %4021, i64* %3, align 8
  %4022 = inttoptr i64 %4020 to i32*
  %4023 = load i32, i32* %4022, align 4
  %4024 = add i32 %4023, -6
  %4025 = zext i32 %4024 to i64
  store i64 %4025, i64* %RSI.i1502, align 8
  %4026 = sext i32 %4018 to i64
  %4027 = sext i32 %4024 to i64
  %4028 = mul nsw i64 %4027, %4026
  %4029 = trunc i64 %4028 to i32
  %4030 = and i64 %4028, 4294967295
  store i64 %4030, i64* %RDX.i722.pre-phi, align 8
  %4031 = shl i64 %4028, 32
  %4032 = ashr exact i64 %4031, 32
  %4033 = icmp ne i64 %4032, %4028
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %.pre-phi, align 1
  %4035 = and i32 %4029, 255
  %4036 = tail call i32 @llvm.ctpop.i32(i32 %4035)
  %4037 = trunc i32 %4036 to i8
  %4038 = and i8 %4037, 1
  %4039 = xor i8 %4038, 1
  store i8 %4039, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4040 = lshr i32 %4029, 31
  %4041 = trunc i32 %4040 to i8
  store i8 %4041, i8* %.pre-phi29, align 1
  store i8 %4034, i8* %.pre-phi31, align 1
  %4042 = add i64 %4010, -48
  %4043 = add i64 %2887, 491
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = add i32 %4045, %4029
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RDX.i722.pre-phi, align 8
  %4048 = icmp ult i32 %4046, %4029
  %4049 = icmp ult i32 %4046, %4045
  %4050 = or i1 %4048, %4049
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %.pre-phi, align 1
  %4052 = and i32 %4046, 255
  %4053 = tail call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  store i8 %4056, i8* %.pre-phi23, align 1
  %4057 = xor i32 %4045, %4029
  %4058 = xor i32 %4057, %4046
  %4059 = lshr i32 %4058, 4
  %4060 = trunc i32 %4059 to i8
  %4061 = and i8 %4060, 1
  store i8 %4061, i8* %.pre-phi25, align 1
  %4062 = icmp eq i32 %4046, 0
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %.pre-phi27, align 1
  %4064 = lshr i32 %4046, 31
  %4065 = trunc i32 %4064 to i8
  store i8 %4065, i8* %.pre-phi29, align 1
  %4066 = lshr i32 %4045, 31
  %4067 = xor i32 %4064, %4040
  %4068 = xor i32 %4064, %4066
  %4069 = add nuw nsw i32 %4067, %4068
  %4070 = icmp eq i32 %4069, 2
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %.pre-phi31, align 1
  %4072 = sext i32 %4046 to i64
  store i64 %4072, i64* %RCX.i1621, align 8
  %4073 = shl nsw i64 %4072, 2
  %4074 = add i64 %4073, %4014
  %4075 = add i64 %2887, 499
  store i64 %4075, i64* %3, align 8
  %4076 = load <2 x float>, <2 x float>* %2799, align 1
  %4077 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4078 = inttoptr i64 %4074 to float*
  %4079 = load float, float* %4078, align 4
  %4080 = extractelement <2 x float> %4076, i32 0
  %4081 = fmul float %4080, %4079
  store float %4081, float* %2792, align 1
  %4082 = bitcast <2 x float> %4076 to <2 x i32>
  %4083 = extractelement <2 x i32> %4082, i32 1
  store i32 %4083, i32* %2801, align 1
  %4084 = extractelement <2 x i32> %4077, i32 0
  store i32 %4084, i32* %2802, align 1
  %4085 = extractelement <2 x i32> %4077, i32 1
  store i32 %4085, i32* %2803, align 1
  %4086 = load <2 x float>, <2 x float>* %2804, align 1
  %4087 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4088 = load <2 x float>, <2 x float>* %2799, align 1
  %4089 = extractelement <2 x float> %4086, i32 0
  %4090 = extractelement <2 x float> %4088, i32 0
  %4091 = fadd float %4089, %4090
  store float %4091, float* %2783, align 1
  %4092 = bitcast <2 x float> %4086 to <2 x i32>
  %4093 = extractelement <2 x i32> %4092, i32 1
  store i32 %4093, i32* %2806, align 1
  %4094 = extractelement <2 x i32> %4087, i32 0
  store i32 %4094, i32* %2807, align 1
  %4095 = extractelement <2 x i32> %4087, i32 1
  store i32 %4095, i32* %2808, align 1
  %4096 = load i64, i64* %RBP.i, align 8
  %4097 = add i64 %4096, -32
  %4098 = add i64 %2887, 507
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i64*
  %4100 = load i64, i64* %4099, align 8
  store i64 %4100, i64* %RAX.i1124, align 8
  %4101 = add i64 %4096, -44
  %4102 = add i64 %2887, 510
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = add i32 %4104, -5
  %4106 = zext i32 %4105 to i64
  store i64 %4106, i64* %RDX.i722.pre-phi, align 8
  %4107 = icmp ult i32 %4104, 5
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %.pre-phi, align 1
  %4109 = and i32 %4105, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %.pre-phi23, align 1
  %4114 = xor i32 %4104, %4105
  %4115 = lshr i32 %4114, 4
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  store i8 %4117, i8* %.pre-phi25, align 1
  %4118 = icmp eq i32 %4105, 0
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %.pre-phi27, align 1
  %4120 = lshr i32 %4105, 31
  %4121 = trunc i32 %4120 to i8
  store i8 %4121, i8* %.pre-phi29, align 1
  %4122 = lshr i32 %4104, 31
  %4123 = xor i32 %4120, %4122
  %4124 = add nuw nsw i32 %4123, %4122
  %4125 = icmp eq i32 %4124, 2
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %.pre-phi31, align 1
  %4127 = sext i32 %4105 to i64
  store i64 %4127, i64* %RCX.i1621, align 8
  %4128 = shl nsw i64 %4127, 2
  %4129 = add i64 %4128, %4100
  %4130 = add i64 %2887, 521
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  store i32 %4132, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4133 = add i64 %4096, -40
  %4134 = add i64 %2887, 525
  store i64 %4134, i64* %3, align 8
  %4135 = inttoptr i64 %4133 to i64*
  %4136 = load i64, i64* %4135, align 8
  store i64 %4136, i64* %RAX.i1124, align 8
  %4137 = add i64 %4096, -24
  %4138 = add i64 %2887, 528
  store i64 %4138, i64* %3, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = zext i32 %4140 to i64
  store i64 %4141, i64* %RDX.i722.pre-phi, align 8
  %4142 = add i64 %2887, 531
  store i64 %4142, i64* %3, align 8
  %4143 = load i32, i32* %4103, align 4
  %4144 = add i32 %4143, -5
  %4145 = zext i32 %4144 to i64
  store i64 %4145, i64* %RSI.i1502, align 8
  %4146 = sext i32 %4140 to i64
  %4147 = sext i32 %4144 to i64
  %4148 = mul nsw i64 %4147, %4146
  %4149 = trunc i64 %4148 to i32
  %4150 = and i64 %4148, 4294967295
  store i64 %4150, i64* %RDX.i722.pre-phi, align 8
  %4151 = shl i64 %4148, 32
  %4152 = ashr exact i64 %4151, 32
  %4153 = icmp ne i64 %4152, %4148
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %.pre-phi, align 1
  %4155 = and i32 %4149, 255
  %4156 = tail call i32 @llvm.ctpop.i32(i32 %4155)
  %4157 = trunc i32 %4156 to i8
  %4158 = and i8 %4157, 1
  %4159 = xor i8 %4158, 1
  store i8 %4159, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4160 = lshr i32 %4149, 31
  %4161 = trunc i32 %4160 to i8
  store i8 %4161, i8* %.pre-phi29, align 1
  store i8 %4154, i8* %.pre-phi31, align 1
  %4162 = add i64 %4096, -48
  %4163 = add i64 %2887, 540
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i32*
  %4165 = load i32, i32* %4164, align 4
  %4166 = add i32 %4165, %4149
  %4167 = zext i32 %4166 to i64
  store i64 %4167, i64* %RDX.i722.pre-phi, align 8
  %4168 = icmp ult i32 %4166, %4149
  %4169 = icmp ult i32 %4166, %4165
  %4170 = or i1 %4168, %4169
  %4171 = zext i1 %4170 to i8
  store i8 %4171, i8* %.pre-phi, align 1
  %4172 = and i32 %4166, 255
  %4173 = tail call i32 @llvm.ctpop.i32(i32 %4172)
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = xor i8 %4175, 1
  store i8 %4176, i8* %.pre-phi23, align 1
  %4177 = xor i32 %4165, %4149
  %4178 = xor i32 %4177, %4166
  %4179 = lshr i32 %4178, 4
  %4180 = trunc i32 %4179 to i8
  %4181 = and i8 %4180, 1
  store i8 %4181, i8* %.pre-phi25, align 1
  %4182 = icmp eq i32 %4166, 0
  %4183 = zext i1 %4182 to i8
  store i8 %4183, i8* %.pre-phi27, align 1
  %4184 = lshr i32 %4166, 31
  %4185 = trunc i32 %4184 to i8
  store i8 %4185, i8* %.pre-phi29, align 1
  %4186 = lshr i32 %4165, 31
  %4187 = xor i32 %4184, %4160
  %4188 = xor i32 %4184, %4186
  %4189 = add nuw nsw i32 %4187, %4188
  %4190 = icmp eq i32 %4189, 2
  %4191 = zext i1 %4190 to i8
  store i8 %4191, i8* %.pre-phi31, align 1
  %4192 = sext i32 %4166 to i64
  store i64 %4192, i64* %RCX.i1621, align 8
  %4193 = shl nsw i64 %4192, 2
  %4194 = add i64 %4193, %4136
  %4195 = add i64 %2887, 548
  store i64 %4195, i64* %3, align 8
  %4196 = load <2 x float>, <2 x float>* %2799, align 1
  %4197 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4198 = inttoptr i64 %4194 to float*
  %4199 = load float, float* %4198, align 4
  %4200 = extractelement <2 x float> %4196, i32 0
  %4201 = fmul float %4200, %4199
  store float %4201, float* %2792, align 1
  %4202 = bitcast <2 x float> %4196 to <2 x i32>
  %4203 = extractelement <2 x i32> %4202, i32 1
  store i32 %4203, i32* %2801, align 1
  %4204 = extractelement <2 x i32> %4197, i32 0
  store i32 %4204, i32* %2802, align 1
  %4205 = extractelement <2 x i32> %4197, i32 1
  store i32 %4205, i32* %2803, align 1
  %4206 = load <2 x float>, <2 x float>* %2804, align 1
  %4207 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4208 = load <2 x float>, <2 x float>* %2799, align 1
  %4209 = extractelement <2 x float> %4206, i32 0
  %4210 = extractelement <2 x float> %4208, i32 0
  %4211 = fadd float %4209, %4210
  store float %4211, float* %2783, align 1
  %4212 = bitcast <2 x float> %4206 to <2 x i32>
  %4213 = extractelement <2 x i32> %4212, i32 1
  store i32 %4213, i32* %2806, align 1
  %4214 = extractelement <2 x i32> %4207, i32 0
  store i32 %4214, i32* %2807, align 1
  %4215 = extractelement <2 x i32> %4207, i32 1
  store i32 %4215, i32* %2808, align 1
  %4216 = add i64 %2887, 556
  store i64 %4216, i64* %3, align 8
  %4217 = load i64, i64* %4099, align 8
  store i64 %4217, i64* %RAX.i1124, align 8
  %4218 = add i64 %2887, 559
  store i64 %4218, i64* %3, align 8
  %4219 = load i32, i32* %4103, align 4
  %4220 = add i32 %4219, -4
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %RDX.i722.pre-phi, align 8
  %4222 = icmp ult i32 %4219, 4
  %4223 = zext i1 %4222 to i8
  store i8 %4223, i8* %.pre-phi, align 1
  %4224 = and i32 %4220, 255
  %4225 = tail call i32 @llvm.ctpop.i32(i32 %4224)
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  %4228 = xor i8 %4227, 1
  store i8 %4228, i8* %.pre-phi23, align 1
  %4229 = xor i32 %4219, %4220
  %4230 = lshr i32 %4229, 4
  %4231 = trunc i32 %4230 to i8
  %4232 = and i8 %4231, 1
  store i8 %4232, i8* %.pre-phi25, align 1
  %4233 = icmp eq i32 %4220, 0
  %4234 = zext i1 %4233 to i8
  store i8 %4234, i8* %.pre-phi27, align 1
  %4235 = lshr i32 %4220, 31
  %4236 = trunc i32 %4235 to i8
  store i8 %4236, i8* %.pre-phi29, align 1
  %4237 = lshr i32 %4219, 31
  %4238 = xor i32 %4235, %4237
  %4239 = add nuw nsw i32 %4238, %4237
  %4240 = icmp eq i32 %4239, 2
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %.pre-phi31, align 1
  %4242 = sext i32 %4220 to i64
  store i64 %4242, i64* %RCX.i1621, align 8
  %4243 = shl nsw i64 %4242, 2
  %4244 = add i64 %4243, %4217
  %4245 = add i64 %2887, 570
  store i64 %4245, i64* %3, align 8
  %4246 = inttoptr i64 %4244 to i32*
  %4247 = load i32, i32* %4246, align 4
  store i32 %4247, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4248 = load i64, i64* %RBP.i, align 8
  %4249 = add i64 %4248, -40
  %4250 = add i64 %2887, 574
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i64*
  %4252 = load i64, i64* %4251, align 8
  store i64 %4252, i64* %RAX.i1124, align 8
  %4253 = add i64 %4248, -24
  %4254 = add i64 %2887, 577
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = zext i32 %4256 to i64
  store i64 %4257, i64* %RDX.i722.pre-phi, align 8
  %4258 = add i64 %4248, -44
  %4259 = add i64 %2887, 580
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i32*
  %4261 = load i32, i32* %4260, align 4
  %4262 = add i32 %4261, -4
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RSI.i1502, align 8
  %4264 = sext i32 %4256 to i64
  %4265 = sext i32 %4262 to i64
  %4266 = mul nsw i64 %4265, %4264
  %4267 = trunc i64 %4266 to i32
  %4268 = and i64 %4266, 4294967295
  store i64 %4268, i64* %RDX.i722.pre-phi, align 8
  %4269 = shl i64 %4266, 32
  %4270 = ashr exact i64 %4269, 32
  %4271 = icmp ne i64 %4270, %4266
  %4272 = zext i1 %4271 to i8
  store i8 %4272, i8* %.pre-phi, align 1
  %4273 = and i32 %4267, 255
  %4274 = tail call i32 @llvm.ctpop.i32(i32 %4273)
  %4275 = trunc i32 %4274 to i8
  %4276 = and i8 %4275, 1
  %4277 = xor i8 %4276, 1
  store i8 %4277, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4278 = lshr i32 %4267, 31
  %4279 = trunc i32 %4278 to i8
  store i8 %4279, i8* %.pre-phi29, align 1
  store i8 %4272, i8* %.pre-phi31, align 1
  %4280 = add i64 %4248, -48
  %4281 = add i64 %2887, 589
  store i64 %4281, i64* %3, align 8
  %4282 = inttoptr i64 %4280 to i32*
  %4283 = load i32, i32* %4282, align 4
  %4284 = add i32 %4283, %4267
  %4285 = zext i32 %4284 to i64
  store i64 %4285, i64* %RDX.i722.pre-phi, align 8
  %4286 = icmp ult i32 %4284, %4267
  %4287 = icmp ult i32 %4284, %4283
  %4288 = or i1 %4286, %4287
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %.pre-phi, align 1
  %4290 = and i32 %4284, 255
  %4291 = tail call i32 @llvm.ctpop.i32(i32 %4290)
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = xor i8 %4293, 1
  store i8 %4294, i8* %.pre-phi23, align 1
  %4295 = xor i32 %4283, %4267
  %4296 = xor i32 %4295, %4284
  %4297 = lshr i32 %4296, 4
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  store i8 %4299, i8* %.pre-phi25, align 1
  %4300 = icmp eq i32 %4284, 0
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %.pre-phi27, align 1
  %4302 = lshr i32 %4284, 31
  %4303 = trunc i32 %4302 to i8
  store i8 %4303, i8* %.pre-phi29, align 1
  %4304 = lshr i32 %4283, 31
  %4305 = xor i32 %4302, %4278
  %4306 = xor i32 %4302, %4304
  %4307 = add nuw nsw i32 %4305, %4306
  %4308 = icmp eq i32 %4307, 2
  %4309 = zext i1 %4308 to i8
  store i8 %4309, i8* %.pre-phi31, align 1
  %4310 = sext i32 %4284 to i64
  store i64 %4310, i64* %RCX.i1621, align 8
  %4311 = shl nsw i64 %4310, 2
  %4312 = add i64 %4311, %4252
  %4313 = add i64 %2887, 597
  store i64 %4313, i64* %3, align 8
  %4314 = load <2 x float>, <2 x float>* %2799, align 1
  %4315 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4316 = inttoptr i64 %4312 to float*
  %4317 = load float, float* %4316, align 4
  %4318 = extractelement <2 x float> %4314, i32 0
  %4319 = fmul float %4318, %4317
  store float %4319, float* %2792, align 1
  %4320 = bitcast <2 x float> %4314 to <2 x i32>
  %4321 = extractelement <2 x i32> %4320, i32 1
  store i32 %4321, i32* %2801, align 1
  %4322 = extractelement <2 x i32> %4315, i32 0
  store i32 %4322, i32* %2802, align 1
  %4323 = extractelement <2 x i32> %4315, i32 1
  store i32 %4323, i32* %2803, align 1
  %4324 = load <2 x float>, <2 x float>* %2804, align 1
  %4325 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4326 = load <2 x float>, <2 x float>* %2799, align 1
  %4327 = extractelement <2 x float> %4324, i32 0
  %4328 = extractelement <2 x float> %4326, i32 0
  %4329 = fadd float %4327, %4328
  store float %4329, float* %2783, align 1
  %4330 = bitcast <2 x float> %4324 to <2 x i32>
  %4331 = extractelement <2 x i32> %4330, i32 1
  store i32 %4331, i32* %2806, align 1
  %4332 = extractelement <2 x i32> %4325, i32 0
  store i32 %4332, i32* %2807, align 1
  %4333 = extractelement <2 x i32> %4325, i32 1
  store i32 %4333, i32* %2808, align 1
  %4334 = load i64, i64* %RBP.i, align 8
  %4335 = add i64 %4334, -32
  %4336 = add i64 %2887, 605
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i64*
  %4338 = load i64, i64* %4337, align 8
  store i64 %4338, i64* %RAX.i1124, align 8
  %4339 = add i64 %4334, -44
  %4340 = add i64 %2887, 608
  store i64 %4340, i64* %3, align 8
  %4341 = inttoptr i64 %4339 to i32*
  %4342 = load i32, i32* %4341, align 4
  %4343 = add i32 %4342, -3
  %4344 = zext i32 %4343 to i64
  store i64 %4344, i64* %RDX.i722.pre-phi, align 8
  %4345 = icmp ult i32 %4342, 3
  %4346 = zext i1 %4345 to i8
  store i8 %4346, i8* %.pre-phi, align 1
  %4347 = and i32 %4343, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %.pre-phi23, align 1
  %4352 = xor i32 %4342, %4343
  %4353 = lshr i32 %4352, 4
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %.pre-phi25, align 1
  %4356 = icmp eq i32 %4343, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %.pre-phi27, align 1
  %4358 = lshr i32 %4343, 31
  %4359 = trunc i32 %4358 to i8
  store i8 %4359, i8* %.pre-phi29, align 1
  %4360 = lshr i32 %4342, 31
  %4361 = xor i32 %4358, %4360
  %4362 = add nuw nsw i32 %4361, %4360
  %4363 = icmp eq i32 %4362, 2
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %.pre-phi31, align 1
  %4365 = sext i32 %4343 to i64
  store i64 %4365, i64* %RCX.i1621, align 8
  %4366 = shl nsw i64 %4365, 2
  %4367 = add i64 %4366, %4338
  %4368 = add i64 %2887, 619
  store i64 %4368, i64* %3, align 8
  %4369 = inttoptr i64 %4367 to i32*
  %4370 = load i32, i32* %4369, align 4
  store i32 %4370, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4371 = add i64 %4334, -40
  %4372 = add i64 %2887, 623
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4371 to i64*
  %4374 = load i64, i64* %4373, align 8
  store i64 %4374, i64* %RAX.i1124, align 8
  %4375 = add i64 %4334, -24
  %4376 = add i64 %2887, 626
  store i64 %4376, i64* %3, align 8
  %4377 = inttoptr i64 %4375 to i32*
  %4378 = load i32, i32* %4377, align 4
  %4379 = zext i32 %4378 to i64
  store i64 %4379, i64* %RDX.i722.pre-phi, align 8
  %4380 = add i64 %2887, 629
  store i64 %4380, i64* %3, align 8
  %4381 = load i32, i32* %4341, align 4
  %4382 = add i32 %4381, -3
  %4383 = zext i32 %4382 to i64
  store i64 %4383, i64* %RSI.i1502, align 8
  %4384 = sext i32 %4378 to i64
  %4385 = sext i32 %4382 to i64
  %4386 = mul nsw i64 %4385, %4384
  %4387 = trunc i64 %4386 to i32
  %4388 = and i64 %4386, 4294967295
  store i64 %4388, i64* %RDX.i722.pre-phi, align 8
  %4389 = shl i64 %4386, 32
  %4390 = ashr exact i64 %4389, 32
  %4391 = icmp ne i64 %4390, %4386
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %.pre-phi, align 1
  %4393 = and i32 %4387, 255
  %4394 = tail call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  store i8 %4397, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4398 = lshr i32 %4387, 31
  %4399 = trunc i32 %4398 to i8
  store i8 %4399, i8* %.pre-phi29, align 1
  store i8 %4392, i8* %.pre-phi31, align 1
  %4400 = add i64 %4334, -48
  %4401 = add i64 %2887, 638
  store i64 %4401, i64* %3, align 8
  %4402 = inttoptr i64 %4400 to i32*
  %4403 = load i32, i32* %4402, align 4
  %4404 = add i32 %4403, %4387
  %4405 = zext i32 %4404 to i64
  store i64 %4405, i64* %RDX.i722.pre-phi, align 8
  %4406 = icmp ult i32 %4404, %4387
  %4407 = icmp ult i32 %4404, %4403
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  store i8 %4409, i8* %.pre-phi, align 1
  %4410 = and i32 %4404, 255
  %4411 = tail call i32 @llvm.ctpop.i32(i32 %4410)
  %4412 = trunc i32 %4411 to i8
  %4413 = and i8 %4412, 1
  %4414 = xor i8 %4413, 1
  store i8 %4414, i8* %.pre-phi23, align 1
  %4415 = xor i32 %4403, %4387
  %4416 = xor i32 %4415, %4404
  %4417 = lshr i32 %4416, 4
  %4418 = trunc i32 %4417 to i8
  %4419 = and i8 %4418, 1
  store i8 %4419, i8* %.pre-phi25, align 1
  %4420 = icmp eq i32 %4404, 0
  %4421 = zext i1 %4420 to i8
  store i8 %4421, i8* %.pre-phi27, align 1
  %4422 = lshr i32 %4404, 31
  %4423 = trunc i32 %4422 to i8
  store i8 %4423, i8* %.pre-phi29, align 1
  %4424 = lshr i32 %4403, 31
  %4425 = xor i32 %4422, %4398
  %4426 = xor i32 %4422, %4424
  %4427 = add nuw nsw i32 %4425, %4426
  %4428 = icmp eq i32 %4427, 2
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %.pre-phi31, align 1
  %4430 = sext i32 %4404 to i64
  store i64 %4430, i64* %RCX.i1621, align 8
  %4431 = shl nsw i64 %4430, 2
  %4432 = add i64 %4431, %4374
  %4433 = add i64 %2887, 646
  store i64 %4433, i64* %3, align 8
  %4434 = load <2 x float>, <2 x float>* %2799, align 1
  %4435 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4436 = inttoptr i64 %4432 to float*
  %4437 = load float, float* %4436, align 4
  %4438 = extractelement <2 x float> %4434, i32 0
  %4439 = fmul float %4438, %4437
  store float %4439, float* %2792, align 1
  %4440 = bitcast <2 x float> %4434 to <2 x i32>
  %4441 = extractelement <2 x i32> %4440, i32 1
  store i32 %4441, i32* %2801, align 1
  %4442 = extractelement <2 x i32> %4435, i32 0
  store i32 %4442, i32* %2802, align 1
  %4443 = extractelement <2 x i32> %4435, i32 1
  store i32 %4443, i32* %2803, align 1
  %4444 = load <2 x float>, <2 x float>* %2804, align 1
  %4445 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4446 = load <2 x float>, <2 x float>* %2799, align 1
  %4447 = extractelement <2 x float> %4444, i32 0
  %4448 = extractelement <2 x float> %4446, i32 0
  %4449 = fadd float %4447, %4448
  store float %4449, float* %2783, align 1
  %4450 = bitcast <2 x float> %4444 to <2 x i32>
  %4451 = extractelement <2 x i32> %4450, i32 1
  store i32 %4451, i32* %2806, align 1
  %4452 = extractelement <2 x i32> %4445, i32 0
  store i32 %4452, i32* %2807, align 1
  %4453 = extractelement <2 x i32> %4445, i32 1
  store i32 %4453, i32* %2808, align 1
  %4454 = add i64 %2887, 654
  store i64 %4454, i64* %3, align 8
  %4455 = load i64, i64* %4337, align 8
  store i64 %4455, i64* %RAX.i1124, align 8
  %4456 = add i64 %2887, 657
  store i64 %4456, i64* %3, align 8
  %4457 = load i32, i32* %4341, align 4
  %4458 = add i32 %4457, -2
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RDX.i722.pre-phi, align 8
  %4460 = icmp ult i32 %4457, 2
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %.pre-phi, align 1
  %4462 = and i32 %4458, 255
  %4463 = tail call i32 @llvm.ctpop.i32(i32 %4462)
  %4464 = trunc i32 %4463 to i8
  %4465 = and i8 %4464, 1
  %4466 = xor i8 %4465, 1
  store i8 %4466, i8* %.pre-phi23, align 1
  %4467 = xor i32 %4457, %4458
  %4468 = lshr i32 %4467, 4
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  store i8 %4470, i8* %.pre-phi25, align 1
  %4471 = icmp eq i32 %4458, 0
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %.pre-phi27, align 1
  %4473 = lshr i32 %4458, 31
  %4474 = trunc i32 %4473 to i8
  store i8 %4474, i8* %.pre-phi29, align 1
  %4475 = lshr i32 %4457, 31
  %4476 = xor i32 %4473, %4475
  %4477 = add nuw nsw i32 %4476, %4475
  %4478 = icmp eq i32 %4477, 2
  %4479 = zext i1 %4478 to i8
  store i8 %4479, i8* %.pre-phi31, align 1
  %4480 = sext i32 %4458 to i64
  store i64 %4480, i64* %RCX.i1621, align 8
  %4481 = shl nsw i64 %4480, 2
  %4482 = add i64 %4481, %4455
  %4483 = add i64 %2887, 668
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  store i32 %4485, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4486 = load i64, i64* %RBP.i, align 8
  %4487 = add i64 %4486, -40
  %4488 = add i64 %2887, 672
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to i64*
  %4490 = load i64, i64* %4489, align 8
  store i64 %4490, i64* %RAX.i1124, align 8
  %4491 = add i64 %4486, -24
  %4492 = add i64 %2887, 675
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4491 to i32*
  %4494 = load i32, i32* %4493, align 4
  %4495 = zext i32 %4494 to i64
  store i64 %4495, i64* %RDX.i722.pre-phi, align 8
  %4496 = add i64 %4486, -44
  %4497 = add i64 %2887, 678
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i32*
  %4499 = load i32, i32* %4498, align 4
  %4500 = add i32 %4499, -2
  %4501 = zext i32 %4500 to i64
  store i64 %4501, i64* %RSI.i1502, align 8
  %4502 = sext i32 %4494 to i64
  %4503 = sext i32 %4500 to i64
  %4504 = mul nsw i64 %4503, %4502
  %4505 = trunc i64 %4504 to i32
  %4506 = and i64 %4504, 4294967295
  store i64 %4506, i64* %RDX.i722.pre-phi, align 8
  %4507 = shl i64 %4504, 32
  %4508 = ashr exact i64 %4507, 32
  %4509 = icmp ne i64 %4508, %4504
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %.pre-phi, align 1
  %4511 = and i32 %4505, 255
  %4512 = tail call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  store i8 %4515, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4516 = lshr i32 %4505, 31
  %4517 = trunc i32 %4516 to i8
  store i8 %4517, i8* %.pre-phi29, align 1
  store i8 %4510, i8* %.pre-phi31, align 1
  %4518 = add i64 %4486, -48
  %4519 = add i64 %2887, 687
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  %4522 = add i32 %4521, %4505
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RDX.i722.pre-phi, align 8
  %4524 = icmp ult i32 %4522, %4505
  %4525 = icmp ult i32 %4522, %4521
  %4526 = or i1 %4524, %4525
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %.pre-phi, align 1
  %4528 = and i32 %4522, 255
  %4529 = tail call i32 @llvm.ctpop.i32(i32 %4528)
  %4530 = trunc i32 %4529 to i8
  %4531 = and i8 %4530, 1
  %4532 = xor i8 %4531, 1
  store i8 %4532, i8* %.pre-phi23, align 1
  %4533 = xor i32 %4521, %4505
  %4534 = xor i32 %4533, %4522
  %4535 = lshr i32 %4534, 4
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  store i8 %4537, i8* %.pre-phi25, align 1
  %4538 = icmp eq i32 %4522, 0
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %.pre-phi27, align 1
  %4540 = lshr i32 %4522, 31
  %4541 = trunc i32 %4540 to i8
  store i8 %4541, i8* %.pre-phi29, align 1
  %4542 = lshr i32 %4521, 31
  %4543 = xor i32 %4540, %4516
  %4544 = xor i32 %4540, %4542
  %4545 = add nuw nsw i32 %4543, %4544
  %4546 = icmp eq i32 %4545, 2
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %.pre-phi31, align 1
  %4548 = sext i32 %4522 to i64
  store i64 %4548, i64* %RCX.i1621, align 8
  %4549 = shl nsw i64 %4548, 2
  %4550 = add i64 %4549, %4490
  %4551 = add i64 %2887, 695
  store i64 %4551, i64* %3, align 8
  %4552 = load <2 x float>, <2 x float>* %2799, align 1
  %4553 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4554 = inttoptr i64 %4550 to float*
  %4555 = load float, float* %4554, align 4
  %4556 = extractelement <2 x float> %4552, i32 0
  %4557 = fmul float %4556, %4555
  store float %4557, float* %2792, align 1
  %4558 = bitcast <2 x float> %4552 to <2 x i32>
  %4559 = extractelement <2 x i32> %4558, i32 1
  store i32 %4559, i32* %2801, align 1
  %4560 = extractelement <2 x i32> %4553, i32 0
  store i32 %4560, i32* %2802, align 1
  %4561 = extractelement <2 x i32> %4553, i32 1
  store i32 %4561, i32* %2803, align 1
  %4562 = load <2 x float>, <2 x float>* %2804, align 1
  %4563 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4564 = load <2 x float>, <2 x float>* %2799, align 1
  %4565 = extractelement <2 x float> %4562, i32 0
  %4566 = extractelement <2 x float> %4564, i32 0
  %4567 = fadd float %4565, %4566
  store float %4567, float* %2783, align 1
  %4568 = bitcast <2 x float> %4562 to <2 x i32>
  %4569 = extractelement <2 x i32> %4568, i32 1
  store i32 %4569, i32* %2806, align 1
  %4570 = extractelement <2 x i32> %4563, i32 0
  store i32 %4570, i32* %2807, align 1
  %4571 = extractelement <2 x i32> %4563, i32 1
  store i32 %4571, i32* %2808, align 1
  %4572 = load i64, i64* %RBP.i, align 8
  %4573 = add i64 %4572, -32
  %4574 = add i64 %2887, 703
  store i64 %4574, i64* %3, align 8
  %4575 = inttoptr i64 %4573 to i64*
  %4576 = load i64, i64* %4575, align 8
  store i64 %4576, i64* %RAX.i1124, align 8
  %4577 = add i64 %4572, -44
  %4578 = add i64 %2887, 706
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to i32*
  %4580 = load i32, i32* %4579, align 4
  %4581 = add i32 %4580, -1
  %4582 = zext i32 %4581 to i64
  store i64 %4582, i64* %RDX.i722.pre-phi, align 8
  %4583 = icmp eq i32 %4580, 0
  %4584 = zext i1 %4583 to i8
  store i8 %4584, i8* %.pre-phi, align 1
  %4585 = and i32 %4581, 255
  %4586 = tail call i32 @llvm.ctpop.i32(i32 %4585)
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  %4589 = xor i8 %4588, 1
  store i8 %4589, i8* %.pre-phi23, align 1
  %4590 = xor i32 %4580, %4581
  %4591 = lshr i32 %4590, 4
  %4592 = trunc i32 %4591 to i8
  %4593 = and i8 %4592, 1
  store i8 %4593, i8* %.pre-phi25, align 1
  %4594 = icmp eq i32 %4581, 0
  %4595 = zext i1 %4594 to i8
  store i8 %4595, i8* %.pre-phi27, align 1
  %4596 = lshr i32 %4581, 31
  %4597 = trunc i32 %4596 to i8
  store i8 %4597, i8* %.pre-phi29, align 1
  %4598 = lshr i32 %4580, 31
  %4599 = xor i32 %4596, %4598
  %4600 = add nuw nsw i32 %4599, %4598
  %4601 = icmp eq i32 %4600, 2
  %4602 = zext i1 %4601 to i8
  store i8 %4602, i8* %.pre-phi31, align 1
  %4603 = sext i32 %4581 to i64
  store i64 %4603, i64* %RCX.i1621, align 8
  %4604 = shl nsw i64 %4603, 2
  %4605 = add i64 %4604, %4576
  %4606 = add i64 %2887, 717
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i32*
  %4608 = load i32, i32* %4607, align 4
  store i32 %4608, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4609 = add i64 %4572, -40
  %4610 = add i64 %2887, 721
  store i64 %4610, i64* %3, align 8
  %4611 = inttoptr i64 %4609 to i64*
  %4612 = load i64, i64* %4611, align 8
  store i64 %4612, i64* %RAX.i1124, align 8
  %4613 = add i64 %4572, -24
  %4614 = add i64 %2887, 724
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i32*
  %4616 = load i32, i32* %4615, align 4
  %4617 = zext i32 %4616 to i64
  store i64 %4617, i64* %RDX.i722.pre-phi, align 8
  %4618 = add i64 %2887, 727
  store i64 %4618, i64* %3, align 8
  %4619 = load i32, i32* %4579, align 4
  %4620 = add i32 %4619, -1
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RSI.i1502, align 8
  %4622 = sext i32 %4616 to i64
  %4623 = sext i32 %4620 to i64
  %4624 = mul nsw i64 %4623, %4622
  %4625 = trunc i64 %4624 to i32
  %4626 = and i64 %4624, 4294967295
  store i64 %4626, i64* %RDX.i722.pre-phi, align 8
  %4627 = shl i64 %4624, 32
  %4628 = ashr exact i64 %4627, 32
  %4629 = icmp ne i64 %4628, %4624
  %4630 = zext i1 %4629 to i8
  store i8 %4630, i8* %.pre-phi, align 1
  %4631 = and i32 %4625, 255
  %4632 = tail call i32 @llvm.ctpop.i32(i32 %4631)
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = xor i8 %4634, 1
  store i8 %4635, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4636 = lshr i32 %4625, 31
  %4637 = trunc i32 %4636 to i8
  store i8 %4637, i8* %.pre-phi29, align 1
  store i8 %4630, i8* %.pre-phi31, align 1
  %4638 = add i64 %4572, -48
  %4639 = add i64 %2887, 736
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4638 to i32*
  %4641 = load i32, i32* %4640, align 4
  %4642 = add i32 %4641, %4625
  %4643 = zext i32 %4642 to i64
  store i64 %4643, i64* %RDX.i722.pre-phi, align 8
  %4644 = icmp ult i32 %4642, %4625
  %4645 = icmp ult i32 %4642, %4641
  %4646 = or i1 %4644, %4645
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %.pre-phi, align 1
  %4648 = and i32 %4642, 255
  %4649 = tail call i32 @llvm.ctpop.i32(i32 %4648)
  %4650 = trunc i32 %4649 to i8
  %4651 = and i8 %4650, 1
  %4652 = xor i8 %4651, 1
  store i8 %4652, i8* %.pre-phi23, align 1
  %4653 = xor i32 %4641, %4625
  %4654 = xor i32 %4653, %4642
  %4655 = lshr i32 %4654, 4
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  store i8 %4657, i8* %.pre-phi25, align 1
  %4658 = icmp eq i32 %4642, 0
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %.pre-phi27, align 1
  %4660 = lshr i32 %4642, 31
  %4661 = trunc i32 %4660 to i8
  store i8 %4661, i8* %.pre-phi29, align 1
  %4662 = lshr i32 %4641, 31
  %4663 = xor i32 %4660, %4636
  %4664 = xor i32 %4660, %4662
  %4665 = add nuw nsw i32 %4663, %4664
  %4666 = icmp eq i32 %4665, 2
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %.pre-phi31, align 1
  %4668 = sext i32 %4642 to i64
  store i64 %4668, i64* %RCX.i1621, align 8
  %4669 = shl nsw i64 %4668, 2
  %4670 = add i64 %4669, %4612
  %4671 = add i64 %2887, 744
  store i64 %4671, i64* %3, align 8
  %4672 = load <2 x float>, <2 x float>* %2799, align 1
  %4673 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4674 = inttoptr i64 %4670 to float*
  %4675 = load float, float* %4674, align 4
  %4676 = extractelement <2 x float> %4672, i32 0
  %4677 = fmul float %4676, %4675
  store float %4677, float* %2792, align 1
  %4678 = bitcast <2 x float> %4672 to <2 x i32>
  %4679 = extractelement <2 x i32> %4678, i32 1
  store i32 %4679, i32* %2801, align 1
  %4680 = extractelement <2 x i32> %4673, i32 0
  store i32 %4680, i32* %2802, align 1
  %4681 = extractelement <2 x i32> %4673, i32 1
  store i32 %4681, i32* %2803, align 1
  %4682 = load <2 x float>, <2 x float>* %2804, align 1
  %4683 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4684 = load <2 x float>, <2 x float>* %2799, align 1
  %4685 = extractelement <2 x float> %4682, i32 0
  %4686 = extractelement <2 x float> %4684, i32 0
  %4687 = fadd float %4685, %4686
  store float %4687, float* %2783, align 1
  %4688 = bitcast <2 x float> %4682 to <2 x i32>
  %4689 = extractelement <2 x i32> %4688, i32 1
  store i32 %4689, i32* %2806, align 1
  %4690 = extractelement <2 x i32> %4683, i32 0
  store i32 %4690, i32* %2807, align 1
  %4691 = extractelement <2 x i32> %4683, i32 1
  store i32 %4691, i32* %2808, align 1
  %4692 = add i64 %2887, 752
  store i64 %4692, i64* %3, align 8
  %4693 = load i64, i64* %4575, align 8
  store i64 %4693, i64* %RAX.i1124, align 8
  %4694 = add i64 %2887, 756
  store i64 %4694, i64* %3, align 8
  %4695 = load i32, i32* %4579, align 4
  %4696 = sext i32 %4695 to i64
  store i64 %4696, i64* %RCX.i1621, align 8
  %4697 = shl nsw i64 %4696, 2
  %4698 = add i64 %4697, %4693
  %4699 = add i64 %2887, 761
  store i64 %4699, i64* %3, align 8
  %4700 = inttoptr i64 %4698 to i32*
  %4701 = load i32, i32* %4700, align 4
  store i32 %4701, i32* %2937, align 1
  store float 0.000000e+00, float* %2794, align 1
  store float 0.000000e+00, float* %2796, align 1
  store float 0.000000e+00, float* %2798, align 1
  %4702 = load i64, i64* %RBP.i, align 8
  %4703 = add i64 %4702, -40
  %4704 = add i64 %2887, 765
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i64*
  %4706 = load i64, i64* %4705, align 8
  store i64 %4706, i64* %RAX.i1124, align 8
  %4707 = add i64 %4702, -24
  %4708 = add i64 %2887, 768
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  %4710 = load i32, i32* %4709, align 4
  %4711 = zext i32 %4710 to i64
  store i64 %4711, i64* %RDX.i722.pre-phi, align 8
  %4712 = add i64 %4702, -44
  %4713 = add i64 %2887, 772
  store i64 %4713, i64* %3, align 8
  %4714 = inttoptr i64 %4712 to i32*
  %4715 = load i32, i32* %4714, align 4
  %4716 = sext i32 %4710 to i64
  %4717 = sext i32 %4715 to i64
  %4718 = mul nsw i64 %4717, %4716
  %4719 = trunc i64 %4718 to i32
  %4720 = and i64 %4718, 4294967295
  store i64 %4720, i64* %RDX.i722.pre-phi, align 8
  %4721 = shl i64 %4718, 32
  %4722 = ashr exact i64 %4721, 32
  %4723 = icmp ne i64 %4722, %4718
  %4724 = zext i1 %4723 to i8
  store i8 %4724, i8* %.pre-phi, align 1
  %4725 = and i32 %4719, 255
  %4726 = tail call i32 @llvm.ctpop.i32(i32 %4725)
  %4727 = trunc i32 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = xor i8 %4728, 1
  store i8 %4729, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4730 = lshr i32 %4719, 31
  %4731 = trunc i32 %4730 to i8
  store i8 %4731, i8* %.pre-phi29, align 1
  store i8 %4724, i8* %.pre-phi31, align 1
  %4732 = add i64 %4702, -48
  %4733 = add i64 %2887, 775
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = add i32 %4735, %4719
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RDX.i722.pre-phi, align 8
  %4738 = icmp ult i32 %4736, %4719
  %4739 = icmp ult i32 %4736, %4735
  %4740 = or i1 %4738, %4739
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %.pre-phi, align 1
  %4742 = and i32 %4736, 255
  %4743 = tail call i32 @llvm.ctpop.i32(i32 %4742)
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  %4746 = xor i8 %4745, 1
  store i8 %4746, i8* %.pre-phi23, align 1
  %4747 = xor i32 %4735, %4719
  %4748 = xor i32 %4747, %4736
  %4749 = lshr i32 %4748, 4
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  store i8 %4751, i8* %.pre-phi25, align 1
  %4752 = icmp eq i32 %4736, 0
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %.pre-phi27, align 1
  %4754 = lshr i32 %4736, 31
  %4755 = trunc i32 %4754 to i8
  store i8 %4755, i8* %.pre-phi29, align 1
  %4756 = lshr i32 %4735, 31
  %4757 = xor i32 %4754, %4730
  %4758 = xor i32 %4754, %4756
  %4759 = add nuw nsw i32 %4757, %4758
  %4760 = icmp eq i32 %4759, 2
  %4761 = zext i1 %4760 to i8
  store i8 %4761, i8* %.pre-phi31, align 1
  %4762 = sext i32 %4736 to i64
  store i64 %4762, i64* %RCX.i1621, align 8
  %4763 = shl nsw i64 %4762, 2
  %4764 = add i64 %4763, %4706
  %4765 = add i64 %2887, 783
  store i64 %4765, i64* %3, align 8
  %4766 = load <2 x float>, <2 x float>* %2799, align 1
  %4767 = load <2 x i32>, <2 x i32>* %2800, align 1
  %4768 = inttoptr i64 %4764 to float*
  %4769 = load float, float* %4768, align 4
  %4770 = extractelement <2 x float> %4766, i32 0
  %4771 = fmul float %4770, %4769
  store float %4771, float* %2792, align 1
  %4772 = bitcast <2 x float> %4766 to <2 x i32>
  %4773 = extractelement <2 x i32> %4772, i32 1
  store i32 %4773, i32* %2801, align 1
  %4774 = extractelement <2 x i32> %4767, i32 0
  store i32 %4774, i32* %2802, align 1
  %4775 = extractelement <2 x i32> %4767, i32 1
  store i32 %4775, i32* %2803, align 1
  %4776 = load <2 x float>, <2 x float>* %2804, align 1
  %4777 = load <2 x i32>, <2 x i32>* %2805, align 1
  %4778 = load <2 x float>, <2 x float>* %2799, align 1
  %4779 = extractelement <2 x float> %4776, i32 0
  %4780 = extractelement <2 x float> %4778, i32 0
  %4781 = fadd float %4779, %4780
  store float %4781, float* %2783, align 1
  %4782 = bitcast <2 x float> %4776 to <2 x i32>
  %4783 = extractelement <2 x i32> %4782, i32 1
  store i32 %4783, i32* %2806, align 1
  %4784 = extractelement <2 x i32> %4777, i32 0
  store i32 %4784, i32* %2807, align 1
  %4785 = extractelement <2 x i32> %4777, i32 1
  store i32 %4785, i32* %2808, align 1
  %4786 = load i64, i64* %RBP.i, align 8
  %4787 = add i64 %4786, -16
  %4788 = add i64 %2887, 791
  store i64 %4788, i64* %3, align 8
  %4789 = inttoptr i64 %4787 to i64*
  %4790 = load i64, i64* %4789, align 8
  store i64 %4790, i64* %RAX.i1124, align 8
  %4791 = add i64 %4786, -48
  %4792 = add i64 %2887, 795
  store i64 %4792, i64* %3, align 8
  %4793 = inttoptr i64 %4791 to i32*
  %4794 = load i32, i32* %4793, align 4
  %4795 = sext i32 %4794 to i64
  store i64 %4795, i64* %RCX.i1621, align 8
  %4796 = shl nsw i64 %4795, 2
  %4797 = add i64 %4796, %4790
  %4798 = add i64 %2887, 800
  store i64 %4798, i64* %3, align 8
  %4799 = load <2 x float>, <2 x float>* %2804, align 1
  %4800 = extractelement <2 x float> %4799, i32 0
  %4801 = inttoptr i64 %4797 to float*
  store float %4800, float* %4801, align 4
  %4802 = load i64, i64* %RBP.i, align 8
  %4803 = add i64 %4802, -48
  %4804 = load i64, i64* %3, align 8
  %4805 = add i64 %4804, 3
  store i64 %4805, i64* %3, align 8
  %4806 = inttoptr i64 %4803 to i32*
  %4807 = load i32, i32* %4806, align 4
  %4808 = add i32 %4807, 1
  %4809 = zext i32 %4808 to i64
  store i64 %4809, i64* %RAX.i1124, align 8
  %4810 = icmp eq i32 %4807, -1
  %4811 = icmp eq i32 %4808, 0
  %4812 = or i1 %4810, %4811
  %4813 = zext i1 %4812 to i8
  store i8 %4813, i8* %.pre-phi, align 1
  %4814 = and i32 %4808, 255
  %4815 = tail call i32 @llvm.ctpop.i32(i32 %4814)
  %4816 = trunc i32 %4815 to i8
  %4817 = and i8 %4816, 1
  %4818 = xor i8 %4817, 1
  store i8 %4818, i8* %.pre-phi23, align 1
  %4819 = xor i32 %4807, %4808
  %4820 = lshr i32 %4819, 4
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  store i8 %4822, i8* %.pre-phi25, align 1
  %4823 = zext i1 %4811 to i8
  store i8 %4823, i8* %.pre-phi27, align 1
  %4824 = lshr i32 %4808, 31
  %4825 = trunc i32 %4824 to i8
  store i8 %4825, i8* %.pre-phi29, align 1
  %4826 = lshr i32 %4807, 31
  %4827 = xor i32 %4824, %4826
  %4828 = add nuw nsw i32 %4827, %4824
  %4829 = icmp eq i32 %4828, 2
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %.pre-phi31, align 1
  %4831 = add i64 %4804, 9
  store i64 %4831, i64* %3, align 8
  store i32 %4808, i32* %4806, align 4
  %4832 = load i64, i64* %3, align 8
  %4833 = add i64 %4832, -821
  store i64 %4833, i64* %3, align 8
  br label %block_.L_4024b9

block_.L_4027f3:                                  ; preds = %block_.L_4024b9
  %4834 = add i64 %2851, -44
  %4835 = add i64 %2887, 8
  store i64 %4835, i64* %3, align 8
  %4836 = inttoptr i64 %4834 to i32*
  %4837 = load i32, i32* %4836, align 4
  %4838 = add i32 %4837, 16
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RAX.i1124, align 8
  %4840 = icmp ugt i32 %4837, -17
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %.pre-phi, align 1
  %4842 = and i32 %4838, 255
  %4843 = tail call i32 @llvm.ctpop.i32(i32 %4842)
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = xor i8 %4845, 1
  store i8 %4846, i8* %.pre-phi23, align 1
  %4847 = xor i32 %4837, 16
  %4848 = xor i32 %4847, %4838
  %4849 = lshr i32 %4848, 4
  %4850 = trunc i32 %4849 to i8
  %4851 = and i8 %4850, 1
  store i8 %4851, i8* %.pre-phi25, align 1
  %4852 = icmp eq i32 %4838, 0
  %4853 = zext i1 %4852 to i8
  store i8 %4853, i8* %.pre-phi27, align 1
  %4854 = lshr i32 %4838, 31
  %4855 = trunc i32 %4854 to i8
  store i8 %4855, i8* %.pre-phi29, align 1
  %4856 = lshr i32 %4837, 31
  %4857 = xor i32 %4854, %4856
  %4858 = add nuw nsw i32 %4857, %4854
  %4859 = icmp eq i32 %4858, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %.pre-phi31, align 1
  %4861 = add i64 %2887, 14
  store i64 %4861, i64* %3, align 8
  store i32 %4838, i32* %4836, align 4
  %4862 = load i64, i64* %3, align 8
  %4863 = add i64 %4862, -859
  store i64 %4863, i64* %3, align 8
  br label %block_.L_4024a6

block_.L_402806:                                  ; preds = %block_.L_4024a6
  %4864 = add i64 %2846, 1
  store i64 %4864, i64* %3, align 8
  %4865 = load i64, i64* %6, align 8
  %4866 = add i64 %4865, 8
  %4867 = inttoptr i64 %4865 to i64*
  %4868 = load i64, i64* %4867, align 8
  store i64 %4868, i64* %RBP.i, align 8
  store i64 %4866, i64* %6, align 8
  %4869 = add i64 %2846, 2
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4866 to i64*
  %4871 = load i64, i64* %4870, align 8
  store i64 %4871, i64* %3, align 8
  %4872 = add i64 %4865, 16
  store i64 %4872, i64* %6, align 8
  ret %struct.Memory* %2722
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
