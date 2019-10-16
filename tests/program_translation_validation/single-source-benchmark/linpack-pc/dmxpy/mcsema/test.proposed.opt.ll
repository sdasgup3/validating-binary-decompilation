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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

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
  %.pre20 = load i32, i32* %EDX.i1608, align 4
  %.pre21 = load i64, i64* %3, align 8
  %.pre40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
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
  %.pre-phi50 = phi i8* [ %92, %82 ], [ %.pre49, %80 ]
  %.pre-phi48 = phi i8* [ %91, %82 ], [ %.pre47, %80 ]
  %.pre-phi46 = phi i8* [ %90, %82 ], [ %.pre45, %80 ]
  %.pre-phi44 = phi i8* [ %89, %82 ], [ %.pre43, %80 ]
  %.pre-phi42 = phi i8* [ %88, %82 ], [ %.pre41, %80 ]
  %.pre-phi = phi i8* [ %87, %82 ], [ %.pre40, %80 ]
  %94 = phi i64 [ %72, %82 ], [ %.pre21, %80 ]
  %95 = phi i32 [ %93, %82 ], [ %.pre20, %80 ]
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
  store i8 %114, i8* %.pre-phi42, align 1
  %115 = xor i32 %107, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %.pre-phi44, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %.pre-phi46, align 1
  %121 = lshr i32 %107, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %.pre-phi48, align 1
  %123 = lshr i32 %106, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %.pre-phi50, align 1
  %128 = icmp ne i8 %122, 0
  %129 = xor i1 %128, %126
  %.v51 = select i1 %129, i64 122, i64 10
  %130 = add i64 %103, %.v51
  store i64 %130, i64* %3, align 8
  br i1 %129, label %block_.L_402059, label %block_401fe9

block_401fe9:                                     ; preds = %routine_idivl__ecx.exit1606
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
  store i8 %141, i8* %.pre-phi42, align 1
  %142 = xor i32 %133, %132
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %.pre-phi44, align 1
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %.pre-phi46, align 1
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %.pre-phi48, align 1
  %150 = lshr i32 %132, 31
  %151 = xor i32 %148, %150
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %.pre-phi50, align 1
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
  %164 = bitcast [32 x %union.VectorReg]* %161 to i32*
  %165 = getelementptr inbounds i8, i8* %162, i64 4
  %166 = bitcast i8* %165 to float*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %168 = bitcast i64* %167 to float*
  %169 = getelementptr inbounds i8, i8* %162, i64 12
  %170 = bitcast i8* %169 to float*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %172 = bitcast %union.VectorReg* %171 to i8*
  %173 = bitcast %union.VectorReg* %171 to float*
  %174 = bitcast %union.VectorReg* %171 to i32*
  %175 = getelementptr inbounds i8, i8* %172, i64 4
  %176 = bitcast i8* %175 to float*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %178 = bitcast i64* %177 to float*
  %179 = getelementptr inbounds i8, i8* %172, i64 12
  %180 = bitcast i8* %179 to float*
  %RDX.i1556 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %181 = bitcast %union.VectorReg* %171 to <2 x float>*
  %182 = bitcast i64* %177 to <2 x i32>*
  %183 = bitcast i8* %175 to i32*
  %184 = bitcast i64* %177 to i32*
  %185 = bitcast i8* %179 to i32*
  %186 = bitcast [32 x %union.VectorReg]* %161 to <2 x float>*
  %187 = bitcast i64* %167 to <2 x i32>*
  %188 = bitcast i8* %165 to i32*
  %189 = bitcast i64* %167 to i32*
  %190 = bitcast i8* %169 to i32*
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_401ff9

block_.L_401ff9:                                  ; preds = %block_402005, %block_401fe9
  %191 = phi i64 [ %383, %block_402005 ], [ %.pre22, %block_401fe9 ]
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -48
  %194 = add i64 %191, 3
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX.i1124, align 8
  %198 = add i64 %192, -4
  %199 = add i64 %191, 6
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sub i32 %196, %201
  %203 = icmp ult i32 %196, %201
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %.pre-phi, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %.pre-phi42, align 1
  %210 = xor i32 %201, %196
  %211 = xor i32 %210, %202
  %212 = lshr i32 %211, 4
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %.pre-phi44, align 1
  %215 = icmp eq i32 %202, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %.pre-phi46, align 1
  %217 = lshr i32 %202, 31
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %.pre-phi48, align 1
  %219 = lshr i32 %196, 31
  %220 = lshr i32 %201, 31
  %221 = xor i32 %220, %219
  %222 = xor i32 %217, %219
  %223 = add nuw nsw i32 %222, %221
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %.pre-phi50, align 1
  %226 = icmp ne i8 %218, 0
  %227 = xor i1 %226, %224
  %.v52 = select i1 %227, i64 12, i64 91
  %228 = add i64 %191, %.v52
  store i64 %228, i64* %3, align 8
  br i1 %227, label %block_402005, label %block_.L_402054

block_402005:                                     ; preds = %block_.L_401ff9
  %229 = add i64 %192, -16
  %230 = add i64 %228, 4
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RAX.i1124, align 8
  %233 = add i64 %228, 8
  store i64 %233, i64* %3, align 8
  %234 = load i32, i32* %195, align 4
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %RCX.i1621, align 8
  %236 = shl nsw i64 %235, 2
  %237 = add i64 %236, %232
  %238 = add i64 %228, 13
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %164, align 1
  store float 0.000000e+00, float* %166, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %170, align 1
  %241 = add i64 %192, -32
  %242 = add i64 %228, 17
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX.i1124, align 8
  %245 = add i64 %192, -44
  %246 = add i64 %228, 21
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX.i1621, align 8
  %250 = shl nsw i64 %249, 2
  %251 = add i64 %250, %244
  %252 = add i64 %228, 26
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %174, align 1
  store float 0.000000e+00, float* %176, align 1
  store float 0.000000e+00, float* %178, align 1
  store float 0.000000e+00, float* %180, align 1
  %255 = add i64 %192, -40
  %256 = add i64 %228, 30
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX.i1124, align 8
  %259 = add i64 %192, -24
  %260 = add i64 %228, 33
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX.i1556, align 8
  %264 = add i64 %228, 37
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %247, align 4
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
  store i8 %279, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %280 = lshr i32 %269, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %.pre-phi48, align 1
  store i8 %274, i8* %.pre-phi50, align 1
  %282 = add i64 %228, 40
  store i64 %282, i64* %3, align 8
  %283 = trunc i64 %268 to i32
  %284 = load i32, i32* %195, align 4
  %285 = add i32 %284, %283
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RDX.i1556, align 8
  %287 = icmp ult i32 %285, %283
  %288 = icmp ult i32 %285, %284
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %.pre-phi, align 1
  %291 = and i32 %285, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %.pre-phi42, align 1
  %296 = xor i32 %284, %283
  %297 = xor i32 %296, %285
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %.pre-phi44, align 1
  %301 = icmp eq i32 %285, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %.pre-phi46, align 1
  %303 = lshr i32 %285, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %.pre-phi48, align 1
  %305 = lshr i32 %283, 31
  %306 = lshr i32 %284, 31
  %307 = xor i32 %303, %305
  %308 = xor i32 %303, %306
  %309 = add nuw nsw i32 %307, %308
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %.pre-phi50, align 1
  %312 = sext i32 %285 to i64
  store i64 %312, i64* %RCX.i1621, align 8
  %313 = shl nsw i64 %312, 2
  %314 = add i64 %258, %313
  %315 = add i64 %228, 48
  store i64 %315, i64* %3, align 8
  %316 = load <2 x float>, <2 x float>* %181, align 1
  %317 = load <2 x i32>, <2 x i32>* %182, align 1
  %318 = inttoptr i64 %314 to float*
  %319 = load float, float* %318, align 4
  %320 = extractelement <2 x float> %316, i32 0
  %321 = fmul float %320, %319
  store float %321, float* %173, align 1
  %322 = bitcast <2 x float> %316 to <2 x i32>
  %323 = extractelement <2 x i32> %322, i32 1
  store i32 %323, i32* %183, align 1
  %324 = extractelement <2 x i32> %317, i32 0
  store i32 %324, i32* %184, align 1
  %325 = extractelement <2 x i32> %317, i32 1
  store i32 %325, i32* %185, align 1
  %326 = load <2 x float>, <2 x float>* %186, align 1
  %327 = load <2 x i32>, <2 x i32>* %187, align 1
  %328 = load <2 x float>, <2 x float>* %181, align 1
  %329 = extractelement <2 x float> %326, i32 0
  %330 = extractelement <2 x float> %328, i32 0
  %331 = fadd float %329, %330
  store float %331, float* %163, align 1
  %332 = bitcast <2 x float> %326 to <2 x i32>
  %333 = extractelement <2 x i32> %332, i32 1
  store i32 %333, i32* %188, align 1
  %334 = extractelement <2 x i32> %327, i32 0
  store i32 %334, i32* %189, align 1
  %335 = extractelement <2 x i32> %327, i32 1
  store i32 %335, i32* %190, align 1
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -16
  %338 = add i64 %228, 56
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX.i1124, align 8
  %341 = add i64 %336, -48
  %342 = add i64 %228, 60
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %RCX.i1621, align 8
  %346 = shl nsw i64 %345, 2
  %347 = add i64 %346, %340
  %348 = add i64 %228, 65
  store i64 %348, i64* %3, align 8
  %349 = load <2 x float>, <2 x float>* %186, align 1
  %350 = extractelement <2 x float> %349, i32 0
  %351 = inttoptr i64 %347 to float*
  store float %350, float* %351, align 4
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -48
  %354 = load i64, i64* %3, align 8
  %355 = add i64 %354, 3
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %353 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = add i32 %357, 1
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX.i1124, align 8
  %360 = icmp eq i32 %357, -1
  %361 = icmp eq i32 %358, 0
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %.pre-phi, align 1
  %364 = and i32 %358, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %.pre-phi42, align 1
  %369 = xor i32 %358, %357
  %370 = lshr i32 %369, 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %.pre-phi44, align 1
  %373 = zext i1 %361 to i8
  store i8 %373, i8* %.pre-phi46, align 1
  %374 = lshr i32 %358, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %.pre-phi48, align 1
  %376 = lshr i32 %357, 31
  %377 = xor i32 %374, %376
  %378 = add nuw nsw i32 %377, %374
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %.pre-phi50, align 1
  %381 = add i64 %354, 9
  store i64 %381, i64* %3, align 8
  store i32 %358, i32* %356, align 4
  %382 = load i64, i64* %3, align 8
  %383 = add i64 %382, -86
  store i64 %383, i64* %3, align 8
  br label %block_.L_401ff9

block_.L_402054:                                  ; preds = %block_.L_401ff9
  %384 = add i64 %228, 5
  store i64 %384, i64* %3, align 8
  br label %block_.L_402059

block_.L_402059:                                  ; preds = %block_.L_402054, %routine_idivl__ecx.exit1606
  %385 = phi i64 [ %192, %block_.L_402054 ], [ %101, %routine_idivl__ecx.exit1606 ]
  %386 = phi i64 [ %384, %block_.L_402054 ], [ %130, %routine_idivl__ecx.exit1606 ]
  store i64 4, i64* %RAX.i1124, align 8
  %387 = add i64 %385, -20
  %388 = add i64 %386, 8
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RCX.i1621, align 8
  %392 = add i64 %385, -60
  %393 = add i64 %386, 11
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  store i32 4, i32* %394, align 4
  %395 = load i32, i32* %ECX.i1628, align 4
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %3, align 8
  store i64 %396, i64* %RAX.i1124, align 8
  %398 = sext i32 %395 to i64
  %399 = lshr i64 %398, 32
  store i64 %399, i64* %63, align 8
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -60
  %402 = add i64 %397, 6
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RCX.i1621, align 8
  %406 = add i64 %397, 8
  store i64 %406, i64* %3, align 8
  %407 = sext i32 %404 to i64
  %408 = shl nuw i64 %399, 32
  %409 = or i64 %408, %396
  %410 = sdiv i64 %409, %407
  %411 = shl i64 %410, 32
  %412 = ashr exact i64 %411, 32
  %413 = icmp eq i64 %410, %412
  br i1 %413, label %416, label %414

; <label>:414:                                    ; preds = %block_.L_402059
  %415 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %406, %struct.Memory* %97)
  %.pre23 = load i64, i64* %RBP.i, align 8
  %.pre24 = load i32, i32* %EDX.i1608, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1500

; <label>:416:                                    ; preds = %block_.L_402059
  %417 = srem i64 %409, %407
  %418 = and i64 %410, 4294967295
  store i64 %418, i64* %RAX.i1124, align 8
  %419 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %420 = and i64 %417, 4294967295
  store i64 %420, i64* %419, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  store i8 0, i8* %.pre-phi48, align 1
  store i8 0, i8* %.pre-phi50, align 1
  %421 = trunc i64 %417 to i32
  br label %routine_idivl__ecx.exit1500

routine_idivl__ecx.exit1500:                      ; preds = %416, %414
  %422 = phi i64 [ %.pre25, %414 ], [ %406, %416 ]
  %423 = phi i32 [ %.pre24, %414 ], [ %421, %416 ]
  %424 = phi i64 [ %.pre23, %414 ], [ %400, %416 ]
  %425 = phi %struct.Memory* [ %415, %414 ], [ %97, %416 ]
  %426 = add i64 %424, -44
  %427 = add i64 %422, 3
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 %423, i32* %428, align 4
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -44
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, 4
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, -2
  %436 = icmp ult i32 %434, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %.pre-phi, align 1
  %438 = and i32 %435, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %.pre-phi42, align 1
  %443 = xor i32 %435, %434
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %.pre-phi44, align 1
  %447 = icmp eq i32 %435, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %.pre-phi46, align 1
  %449 = lshr i32 %435, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %.pre-phi48, align 1
  %451 = lshr i32 %434, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %451
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %.pre-phi50, align 1
  %456 = icmp ne i8 %450, 0
  %457 = xor i1 %456, %454
  %.v53 = select i1 %457, i64 171, i64 10
  %458 = add i64 %431, %.v53
  store i64 %458, i64* %3, align 8
  br i1 %457, label %block_.L_40211a, label %block_402079

block_402079:                                     ; preds = %routine_idivl__ecx.exit1500
  %459 = add i64 %458, 3
  store i64 %459, i64* %3, align 8
  %460 = load i32, i32* %433, align 4
  %461 = add i32 %460, -1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX.i1124, align 8
  %463 = icmp eq i32 %460, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %.pre-phi, align 1
  %465 = and i32 %461, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %.pre-phi42, align 1
  %470 = xor i32 %461, %460
  %471 = lshr i32 %470, 4
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %.pre-phi44, align 1
  %474 = icmp eq i32 %461, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %.pre-phi46, align 1
  %476 = lshr i32 %461, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %.pre-phi48, align 1
  %478 = lshr i32 %460, 31
  %479 = xor i32 %476, %478
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %.pre-phi50, align 1
  %483 = add i64 %458, 9
  store i64 %483, i64* %3, align 8
  store i32 %461, i32* %433, align 4
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -48
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 7
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 0, i32* %488, align 4
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %490 = bitcast [32 x %union.VectorReg]* %489 to i8*
  %491 = bitcast [32 x %union.VectorReg]* %489 to float*
  %492 = bitcast [32 x %union.VectorReg]* %489 to i32*
  %493 = getelementptr inbounds i8, i8* %490, i64 4
  %494 = bitcast i8* %493 to float*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %496 = bitcast i64* %495 to float*
  %497 = getelementptr inbounds i8, i8* %490, i64 12
  %498 = bitcast i8* %497 to float*
  %RDX.i1460 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %500 = bitcast %union.VectorReg* %499 to i8*
  %501 = bitcast %union.VectorReg* %499 to float*
  %502 = bitcast %union.VectorReg* %499 to i32*
  %503 = getelementptr inbounds i8, i8* %500, i64 4
  %504 = bitcast i8* %503 to float*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %506 = bitcast i64* %505 to float*
  %507 = getelementptr inbounds i8, i8* %500, i64 12
  %508 = bitcast i8* %507 to float*
  %509 = bitcast %union.VectorReg* %499 to <2 x float>*
  %510 = bitcast i64* %505 to <2 x i32>*
  %511 = bitcast i8* %503 to i32*
  %512 = bitcast i64* %505 to i32*
  %513 = bitcast i8* %507 to i32*
  %514 = bitcast [32 x %union.VectorReg]* %489 to <2 x float>*
  %515 = bitcast i64* %495 to <2 x i32>*
  %516 = bitcast i8* %493 to i32*
  %517 = bitcast i64* %495 to i32*
  %518 = bitcast i8* %497 to i32*
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_402089

block_.L_402089:                                  ; preds = %block_402095, %block_402079
  %519 = phi i64 [ %839, %block_402095 ], [ %.pre26, %block_402079 ]
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -48
  %522 = add i64 %519, 3
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX.i1124, align 8
  %526 = add i64 %520, -4
  %527 = add i64 %519, 6
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = sub i32 %524, %529
  %531 = icmp ult i32 %524, %529
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %.pre-phi, align 1
  %533 = and i32 %530, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %.pre-phi42, align 1
  %538 = xor i32 %529, %524
  %539 = xor i32 %538, %530
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %.pre-phi44, align 1
  %543 = icmp eq i32 %530, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %.pre-phi46, align 1
  %545 = lshr i32 %530, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %.pre-phi48, align 1
  %547 = lshr i32 %524, 31
  %548 = lshr i32 %529, 31
  %549 = xor i32 %548, %547
  %550 = xor i32 %545, %547
  %551 = add nuw nsw i32 %550, %549
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %.pre-phi50, align 1
  %554 = icmp ne i8 %546, 0
  %555 = xor i1 %554, %552
  %.v54 = select i1 %555, i64 12, i64 140
  %556 = add i64 %519, %.v54
  store i64 %556, i64* %3, align 8
  br i1 %555, label %block_402095, label %block_.L_402115

block_402095:                                     ; preds = %block_.L_402089
  %557 = add i64 %520, -16
  %558 = add i64 %556, 4
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX.i1124, align 8
  %561 = add i64 %556, 8
  store i64 %561, i64* %3, align 8
  %562 = load i32, i32* %523, align 4
  %563 = sext i32 %562 to i64
  store i64 %563, i64* %RCX.i1621, align 8
  %564 = shl nsw i64 %563, 2
  %565 = add i64 %564, %560
  %566 = add i64 %556, 13
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  store i32 %568, i32* %492, align 1
  store float 0.000000e+00, float* %494, align 1
  store float 0.000000e+00, float* %496, align 1
  store float 0.000000e+00, float* %498, align 1
  %569 = add i64 %520, -32
  %570 = add i64 %556, 17
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i1124, align 8
  %573 = add i64 %520, -44
  %574 = add i64 %556, 20
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = add i32 %576, -1
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RDX.i1460, align 8
  %579 = icmp eq i32 %576, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %.pre-phi, align 1
  %581 = and i32 %577, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %.pre-phi42, align 1
  %586 = xor i32 %577, %576
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %.pre-phi44, align 1
  %590 = icmp eq i32 %577, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %.pre-phi46, align 1
  %592 = lshr i32 %577, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %.pre-phi48, align 1
  %594 = lshr i32 %576, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %594
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %.pre-phi50, align 1
  %599 = sext i32 %577 to i64
  store i64 %599, i64* %RCX.i1621, align 8
  %600 = shl nsw i64 %599, 2
  %601 = add i64 %572, %600
  %602 = add i64 %556, 31
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  store i32 %604, i32* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  store float 0.000000e+00, float* %506, align 1
  store float 0.000000e+00, float* %508, align 1
  %605 = add i64 %520, -40
  %606 = add i64 %556, 35
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i64*
  %608 = load i64, i64* %607, align 8
  store i64 %608, i64* %RAX.i1124, align 8
  %609 = add i64 %520, -24
  %610 = add i64 %556, 38
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RDX.i1460, align 8
  %614 = add i64 %556, 41
  store i64 %614, i64* %3, align 8
  %615 = load i32, i32* %575, align 4
  %616 = add i32 %615, -1
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RSI.i1502, align 8
  %618 = sext i32 %612 to i64
  %619 = sext i32 %616 to i64
  %620 = mul nsw i64 %619, %618
  %621 = trunc i64 %620 to i32
  %622 = and i64 %620, 4294967295
  store i64 %622, i64* %RDX.i1460, align 8
  %623 = shl i64 %620, 32
  %624 = ashr exact i64 %623, 32
  %625 = icmp ne i64 %624, %620
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %.pre-phi, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %632 = lshr i32 %621, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %.pre-phi48, align 1
  store i8 %626, i8* %.pre-phi50, align 1
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -48
  %636 = add i64 %556, 50
  store i64 %636, i64* %3, align 8
  %637 = trunc i64 %620 to i32
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, %637
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RDX.i1460, align 8
  %642 = icmp ult i32 %640, %637
  %643 = icmp ult i32 %640, %639
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %.pre-phi, align 1
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %.pre-phi42, align 1
  %651 = xor i32 %639, %637
  %652 = xor i32 %651, %640
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %.pre-phi44, align 1
  %656 = icmp eq i32 %640, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %.pre-phi46, align 1
  %658 = lshr i32 %640, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %.pre-phi48, align 1
  %660 = lshr i32 %637, 31
  %661 = lshr i32 %639, 31
  %662 = xor i32 %658, %660
  %663 = xor i32 %658, %661
  %664 = add nuw nsw i32 %662, %663
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %.pre-phi50, align 1
  %667 = sext i32 %640 to i64
  store i64 %667, i64* %RCX.i1621, align 8
  %668 = load i64, i64* %RAX.i1124, align 8
  %669 = shl nsw i64 %667, 2
  %670 = add i64 %668, %669
  %671 = add i64 %556, 58
  store i64 %671, i64* %3, align 8
  %672 = load <2 x float>, <2 x float>* %509, align 1
  %673 = load <2 x i32>, <2 x i32>* %510, align 1
  %674 = inttoptr i64 %670 to float*
  %675 = load float, float* %674, align 4
  %676 = extractelement <2 x float> %672, i32 0
  %677 = fmul float %676, %675
  store float %677, float* %501, align 1
  %678 = bitcast <2 x float> %672 to <2 x i32>
  %679 = extractelement <2 x i32> %678, i32 1
  store i32 %679, i32* %511, align 1
  %680 = extractelement <2 x i32> %673, i32 0
  store i32 %680, i32* %512, align 1
  %681 = extractelement <2 x i32> %673, i32 1
  store i32 %681, i32* %513, align 1
  %682 = load <2 x float>, <2 x float>* %514, align 1
  %683 = load <2 x i32>, <2 x i32>* %515, align 1
  %684 = load <2 x float>, <2 x float>* %509, align 1
  %685 = extractelement <2 x float> %682, i32 0
  %686 = extractelement <2 x float> %684, i32 0
  %687 = fadd float %685, %686
  store float %687, float* %491, align 1
  %688 = bitcast <2 x float> %682 to <2 x i32>
  %689 = extractelement <2 x i32> %688, i32 1
  store i32 %689, i32* %516, align 1
  %690 = extractelement <2 x i32> %683, i32 0
  store i32 %690, i32* %517, align 1
  %691 = extractelement <2 x i32> %683, i32 1
  store i32 %691, i32* %518, align 1
  %692 = add i64 %634, -32
  %693 = add i64 %556, 66
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %RAX.i1124, align 8
  %696 = add i64 %634, -44
  %697 = add i64 %556, 70
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RCX.i1621, align 8
  %701 = shl nsw i64 %700, 2
  %702 = add i64 %701, %695
  %703 = add i64 %556, 75
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  store i32 %705, i32* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  store float 0.000000e+00, float* %506, align 1
  store float 0.000000e+00, float* %508, align 1
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -40
  %708 = add i64 %556, 79
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RAX.i1124, align 8
  %711 = add i64 %706, -24
  %712 = add i64 %556, 82
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RDX.i1460, align 8
  %716 = add i64 %706, -44
  %717 = add i64 %556, 86
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %714 to i64
  %721 = sext i32 %719 to i64
  %722 = mul nsw i64 %721, %720
  %723 = trunc i64 %722 to i32
  %724 = and i64 %722, 4294967295
  store i64 %724, i64* %RDX.i1460, align 8
  %725 = shl i64 %722, 32
  %726 = ashr exact i64 %725, 32
  %727 = icmp ne i64 %726, %722
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %.pre-phi, align 1
  %729 = and i32 %723, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %734 = lshr i32 %723, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %.pre-phi48, align 1
  store i8 %728, i8* %.pre-phi50, align 1
  %736 = add i64 %706, -48
  %737 = add i64 %556, 89
  store i64 %737, i64* %3, align 8
  %738 = trunc i64 %722 to i32
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739, align 4
  %741 = add i32 %740, %738
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RDX.i1460, align 8
  %743 = icmp ult i32 %741, %738
  %744 = icmp ult i32 %741, %740
  %745 = or i1 %743, %744
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %.pre-phi, align 1
  %747 = and i32 %741, 255
  %748 = tail call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  store i8 %751, i8* %.pre-phi42, align 1
  %752 = xor i32 %740, %738
  %753 = xor i32 %752, %741
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %.pre-phi44, align 1
  %757 = icmp eq i32 %741, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %.pre-phi46, align 1
  %759 = lshr i32 %741, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %.pre-phi48, align 1
  %761 = lshr i32 %738, 31
  %762 = lshr i32 %740, 31
  %763 = xor i32 %759, %761
  %764 = xor i32 %759, %762
  %765 = add nuw nsw i32 %763, %764
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %.pre-phi50, align 1
  %768 = sext i32 %741 to i64
  store i64 %768, i64* %RCX.i1621, align 8
  %769 = shl nsw i64 %768, 2
  %770 = add i64 %710, %769
  %771 = add i64 %556, 97
  store i64 %771, i64* %3, align 8
  %772 = load <2 x float>, <2 x float>* %509, align 1
  %773 = load <2 x i32>, <2 x i32>* %510, align 1
  %774 = inttoptr i64 %770 to float*
  %775 = load float, float* %774, align 4
  %776 = extractelement <2 x float> %772, i32 0
  %777 = fmul float %776, %775
  store float %777, float* %501, align 1
  %778 = bitcast <2 x float> %772 to <2 x i32>
  %779 = extractelement <2 x i32> %778, i32 1
  store i32 %779, i32* %511, align 1
  %780 = extractelement <2 x i32> %773, i32 0
  store i32 %780, i32* %512, align 1
  %781 = extractelement <2 x i32> %773, i32 1
  store i32 %781, i32* %513, align 1
  %782 = load <2 x float>, <2 x float>* %514, align 1
  %783 = load <2 x i32>, <2 x i32>* %515, align 1
  %784 = load <2 x float>, <2 x float>* %509, align 1
  %785 = extractelement <2 x float> %782, i32 0
  %786 = extractelement <2 x float> %784, i32 0
  %787 = fadd float %785, %786
  store float %787, float* %491, align 1
  %788 = bitcast <2 x float> %782 to <2 x i32>
  %789 = extractelement <2 x i32> %788, i32 1
  store i32 %789, i32* %516, align 1
  %790 = extractelement <2 x i32> %783, i32 0
  store i32 %790, i32* %517, align 1
  %791 = extractelement <2 x i32> %783, i32 1
  store i32 %791, i32* %518, align 1
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -16
  %794 = add i64 %556, 105
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RAX.i1124, align 8
  %797 = add i64 %792, -48
  %798 = add i64 %556, 109
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  store i64 %801, i64* %RCX.i1621, align 8
  %802 = shl nsw i64 %801, 2
  %803 = add i64 %802, %796
  %804 = add i64 %556, 114
  store i64 %804, i64* %3, align 8
  %805 = load <2 x float>, <2 x float>* %514, align 1
  %806 = extractelement <2 x float> %805, i32 0
  %807 = inttoptr i64 %803 to float*
  store float %806, float* %807, align 4
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -48
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, 1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX.i1124, align 8
  %816 = icmp eq i32 %813, -1
  %817 = icmp eq i32 %814, 0
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %.pre-phi, align 1
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %.pre-phi42, align 1
  %825 = xor i32 %814, %813
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %.pre-phi44, align 1
  %829 = zext i1 %817 to i8
  store i8 %829, i8* %.pre-phi46, align 1
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %.pre-phi48, align 1
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %.pre-phi50, align 1
  %837 = add i64 %810, 9
  store i64 %837, i64* %3, align 8
  store i32 %814, i32* %812, align 4
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, -135
  store i64 %839, i64* %3, align 8
  br label %block_.L_402089

block_.L_402115:                                  ; preds = %block_.L_402089
  %840 = add i64 %556, 5
  store i64 %840, i64* %3, align 8
  br label %block_.L_40211a

block_.L_40211a:                                  ; preds = %block_.L_402115, %routine_idivl__ecx.exit1500
  %841 = phi i64 [ %520, %block_.L_402115 ], [ %429, %routine_idivl__ecx.exit1500 ]
  %842 = phi i64 [ %840, %block_.L_402115 ], [ %458, %routine_idivl__ecx.exit1500 ]
  store i64 8, i64* %RAX.i1124, align 8
  %843 = add i64 %841, -20
  %844 = add i64 %842, 8
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i1621, align 8
  %848 = add i64 %841, -64
  %849 = add i64 %842, 11
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  store i32 8, i32* %850, align 4
  %851 = load i32, i32* %ECX.i1628, align 4
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %3, align 8
  store i64 %852, i64* %RAX.i1124, align 8
  %854 = sext i32 %851 to i64
  %855 = lshr i64 %854, 32
  store i64 %855, i64* %63, align 8
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -64
  %858 = add i64 %853, 6
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RCX.i1621, align 8
  %862 = add i64 %853, 8
  store i64 %862, i64* %3, align 8
  %863 = sext i32 %860 to i64
  %864 = shl nuw i64 %855, 32
  %865 = or i64 %864, %852
  %866 = sdiv i64 %865, %863
  %867 = shl i64 %866, 32
  %868 = ashr exact i64 %867, 32
  %869 = icmp eq i64 %866, %868
  br i1 %869, label %872, label %870

; <label>:870:                                    ; preds = %block_.L_40211a
  %871 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %862, %struct.Memory* %425)
  %.pre27 = load i64, i64* %RBP.i, align 8
  %.pre28 = load i32, i32* %EDX.i1608, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1353

; <label>:872:                                    ; preds = %block_.L_40211a
  %873 = srem i64 %865, %863
  %874 = and i64 %866, 4294967295
  store i64 %874, i64* %RAX.i1124, align 8
  %875 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %876 = and i64 %873, 4294967295
  store i64 %876, i64* %875, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  store i8 0, i8* %.pre-phi48, align 1
  store i8 0, i8* %.pre-phi50, align 1
  %877 = trunc i64 %873 to i32
  br label %routine_idivl__ecx.exit1353

routine_idivl__ecx.exit1353:                      ; preds = %872, %870
  %878 = phi i64 [ %.pre29, %870 ], [ %862, %872 ]
  %879 = phi i32 [ %.pre28, %870 ], [ %877, %872 ]
  %880 = phi i64 [ %.pre27, %870 ], [ %856, %872 ]
  %881 = phi %struct.Memory* [ %871, %870 ], [ %425, %872 ]
  %882 = add i64 %880, -44
  %883 = add i64 %878, 3
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 %879, i32* %884, align 4
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -44
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, 4
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, -4
  %892 = icmp ult i32 %890, 4
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %.pre-phi, align 1
  %894 = and i32 %891, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894)
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %.pre-phi42, align 1
  %899 = xor i32 %891, %890
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %.pre-phi44, align 1
  %903 = icmp eq i32 %891, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %.pre-phi46, align 1
  %905 = lshr i32 %891, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %.pre-phi48, align 1
  %907 = lshr i32 %890, 31
  %908 = xor i32 %905, %907
  %909 = add nuw nsw i32 %908, %907
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %.pre-phi50, align 1
  %912 = icmp ne i8 %906, 0
  %913 = xor i1 %912, %910
  %.v55 = select i1 %913, i64 269, i64 10
  %914 = add i64 %887, %.v55
  store i64 %914, i64* %3, align 8
  br i1 %913, label %block_.L_40223d, label %block_40213a

block_40213a:                                     ; preds = %routine_idivl__ecx.exit1353
  %915 = add i64 %914, 3
  store i64 %915, i64* %3, align 8
  %916 = load i32, i32* %889, align 4
  %917 = add i32 %916, -1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i1124, align 8
  %919 = icmp eq i32 %916, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %.pre-phi, align 1
  %921 = and i32 %917, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %.pre-phi42, align 1
  %926 = xor i32 %917, %916
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %.pre-phi44, align 1
  %930 = icmp eq i32 %917, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %.pre-phi46, align 1
  %932 = lshr i32 %917, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %.pre-phi48, align 1
  %934 = lshr i32 %916, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %.pre-phi50, align 1
  %939 = add i64 %914, 9
  store i64 %939, i64* %3, align 8
  store i32 %917, i32* %889, align 4
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -48
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 7
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %941 to i32*
  store i32 0, i32* %944, align 4
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %946 = bitcast [32 x %union.VectorReg]* %945 to i8*
  %947 = bitcast [32 x %union.VectorReg]* %945 to float*
  %948 = bitcast [32 x %union.VectorReg]* %945 to i32*
  %949 = getelementptr inbounds i8, i8* %946, i64 4
  %950 = bitcast i8* %949 to float*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %952 = bitcast i64* %951 to float*
  %953 = getelementptr inbounds i8, i8* %946, i64 12
  %954 = bitcast i8* %953 to float*
  %RDX.i1313 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %956 = bitcast %union.VectorReg* %955 to i8*
  %957 = bitcast %union.VectorReg* %955 to float*
  %958 = bitcast %union.VectorReg* %955 to i32*
  %959 = getelementptr inbounds i8, i8* %956, i64 4
  %960 = bitcast i8* %959 to float*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %962 = bitcast i64* %961 to float*
  %963 = getelementptr inbounds i8, i8* %956, i64 12
  %964 = bitcast i8* %963 to float*
  %965 = bitcast %union.VectorReg* %955 to <2 x float>*
  %966 = bitcast i64* %961 to <2 x i32>*
  %967 = bitcast i8* %959 to i32*
  %968 = bitcast i64* %961 to i32*
  %969 = bitcast i8* %963 to i32*
  %970 = bitcast [32 x %union.VectorReg]* %945 to <2 x float>*
  %971 = bitcast i64* %951 to <2 x i32>*
  %972 = bitcast i8* %949 to i32*
  %973 = bitcast i64* %951 to i32*
  %974 = bitcast i8* %953 to i32*
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_40214a

block_.L_40214a:                                  ; preds = %block_402156, %block_40213a
  %975 = phi i64 [ %1544, %block_402156 ], [ %.pre30, %block_40213a ]
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -48
  %978 = add i64 %975, 3
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX.i1124, align 8
  %982 = add i64 %976, -4
  %983 = add i64 %975, 6
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sub i32 %980, %985
  %987 = icmp ult i32 %980, %985
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %.pre-phi, align 1
  %989 = and i32 %986, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %.pre-phi42, align 1
  %994 = xor i32 %985, %980
  %995 = xor i32 %994, %986
  %996 = lshr i32 %995, 4
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %.pre-phi44, align 1
  %999 = icmp eq i32 %986, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %.pre-phi46, align 1
  %1001 = lshr i32 %986, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %.pre-phi48, align 1
  %1003 = lshr i32 %980, 31
  %1004 = lshr i32 %985, 31
  %1005 = xor i32 %1004, %1003
  %1006 = xor i32 %1001, %1003
  %1007 = add nuw nsw i32 %1006, %1005
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %.pre-phi50, align 1
  %1010 = icmp ne i8 %1002, 0
  %1011 = xor i1 %1010, %1008
  %.v56 = select i1 %1011, i64 12, i64 238
  %1012 = add i64 %975, %.v56
  store i64 %1012, i64* %3, align 8
  br i1 %1011, label %block_402156, label %block_.L_402238

block_402156:                                     ; preds = %block_.L_40214a
  %1013 = add i64 %976, -16
  %1014 = add i64 %1012, 4
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i64*
  %1016 = load i64, i64* %1015, align 8
  store i64 %1016, i64* %RAX.i1124, align 8
  %1017 = add i64 %1012, 8
  store i64 %1017, i64* %3, align 8
  %1018 = load i32, i32* %979, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RCX.i1621, align 8
  %1020 = shl nsw i64 %1019, 2
  %1021 = add i64 %1020, %1016
  %1022 = add i64 %1012, 13
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  store i32 %1024, i32* %948, align 1
  store float 0.000000e+00, float* %950, align 1
  store float 0.000000e+00, float* %952, align 1
  store float 0.000000e+00, float* %954, align 1
  %1025 = add i64 %976, -32
  %1026 = add i64 %1012, 17
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX.i1124, align 8
  %1029 = add i64 %976, -44
  %1030 = add i64 %1012, 20
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = add i32 %1032, -3
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RDX.i1313, align 8
  %1035 = icmp ult i32 %1032, 3
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %.pre-phi, align 1
  %1037 = and i32 %1033, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %.pre-phi42, align 1
  %1042 = xor i32 %1033, %1032
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %.pre-phi44, align 1
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %.pre-phi46, align 1
  %1048 = lshr i32 %1033, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %.pre-phi48, align 1
  %1050 = lshr i32 %1032, 31
  %1051 = xor i32 %1048, %1050
  %1052 = add nuw nsw i32 %1051, %1050
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %.pre-phi50, align 1
  %1055 = sext i32 %1033 to i64
  store i64 %1055, i64* %RCX.i1621, align 8
  %1056 = shl nsw i64 %1055, 2
  %1057 = add i64 %1028, %1056
  %1058 = add i64 %1012, 31
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  store i32 %1060, i32* %958, align 1
  store float 0.000000e+00, float* %960, align 1
  store float 0.000000e+00, float* %962, align 1
  store float 0.000000e+00, float* %964, align 1
  %1061 = add i64 %976, -40
  %1062 = add i64 %1012, 35
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %RAX.i1124, align 8
  %1065 = add i64 %976, -24
  %1066 = add i64 %1012, 38
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RDX.i1313, align 8
  %1070 = add i64 %1012, 41
  store i64 %1070, i64* %3, align 8
  %1071 = load i32, i32* %1031, align 4
  %1072 = add i32 %1071, -3
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RSI.i1502, align 8
  %1074 = sext i32 %1068 to i64
  %1075 = sext i32 %1072 to i64
  %1076 = mul nsw i64 %1075, %1074
  %1077 = trunc i64 %1076 to i32
  %1078 = and i64 %1076, 4294967295
  store i64 %1078, i64* %RDX.i1313, align 8
  %1079 = shl i64 %1076, 32
  %1080 = ashr exact i64 %1079, 32
  %1081 = icmp ne i64 %1080, %1076
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %.pre-phi, align 1
  %1083 = and i32 %1077, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1088 = lshr i32 %1077, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %.pre-phi48, align 1
  store i8 %1082, i8* %.pre-phi50, align 1
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -48
  %1092 = add i64 %1012, 50
  store i64 %1092, i64* %3, align 8
  %1093 = trunc i64 %1076 to i32
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = add i32 %1095, %1093
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RDX.i1313, align 8
  %1098 = icmp ult i32 %1096, %1093
  %1099 = icmp ult i32 %1096, %1095
  %1100 = or i1 %1098, %1099
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %.pre-phi, align 1
  %1102 = and i32 %1096, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %.pre-phi42, align 1
  %1107 = xor i32 %1095, %1093
  %1108 = xor i32 %1107, %1096
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %.pre-phi44, align 1
  %1112 = icmp eq i32 %1096, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %.pre-phi46, align 1
  %1114 = lshr i32 %1096, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %.pre-phi48, align 1
  %1116 = lshr i32 %1093, 31
  %1117 = lshr i32 %1095, 31
  %1118 = xor i32 %1114, %1116
  %1119 = xor i32 %1114, %1117
  %1120 = add nuw nsw i32 %1118, %1119
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %.pre-phi50, align 1
  %1123 = sext i32 %1096 to i64
  store i64 %1123, i64* %RCX.i1621, align 8
  %1124 = load i64, i64* %RAX.i1124, align 8
  %1125 = shl nsw i64 %1123, 2
  %1126 = add i64 %1124, %1125
  %1127 = add i64 %1012, 58
  store i64 %1127, i64* %3, align 8
  %1128 = load <2 x float>, <2 x float>* %965, align 1
  %1129 = load <2 x i32>, <2 x i32>* %966, align 1
  %1130 = inttoptr i64 %1126 to float*
  %1131 = load float, float* %1130, align 4
  %1132 = extractelement <2 x float> %1128, i32 0
  %1133 = fmul float %1132, %1131
  store float %1133, float* %957, align 1
  %1134 = bitcast <2 x float> %1128 to <2 x i32>
  %1135 = extractelement <2 x i32> %1134, i32 1
  store i32 %1135, i32* %967, align 1
  %1136 = extractelement <2 x i32> %1129, i32 0
  store i32 %1136, i32* %968, align 1
  %1137 = extractelement <2 x i32> %1129, i32 1
  store i32 %1137, i32* %969, align 1
  %1138 = load <2 x float>, <2 x float>* %970, align 1
  %1139 = load <2 x i32>, <2 x i32>* %971, align 1
  %1140 = load <2 x float>, <2 x float>* %965, align 1
  %1141 = extractelement <2 x float> %1138, i32 0
  %1142 = extractelement <2 x float> %1140, i32 0
  %1143 = fadd float %1141, %1142
  store float %1143, float* %947, align 1
  %1144 = bitcast <2 x float> %1138 to <2 x i32>
  %1145 = extractelement <2 x i32> %1144, i32 1
  store i32 %1145, i32* %972, align 1
  %1146 = extractelement <2 x i32> %1139, i32 0
  store i32 %1146, i32* %973, align 1
  %1147 = extractelement <2 x i32> %1139, i32 1
  store i32 %1147, i32* %974, align 1
  %1148 = add i64 %1090, -32
  %1149 = add i64 %1012, 66
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RAX.i1124, align 8
  %1152 = add i64 %1090, -44
  %1153 = add i64 %1012, 69
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = add i32 %1155, -2
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RDX.i1313, align 8
  %1158 = icmp ult i32 %1155, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %.pre-phi, align 1
  %1160 = and i32 %1156, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %.pre-phi42, align 1
  %1165 = xor i32 %1156, %1155
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %.pre-phi44, align 1
  %1169 = icmp eq i32 %1156, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %.pre-phi46, align 1
  %1171 = lshr i32 %1156, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %.pre-phi48, align 1
  %1173 = lshr i32 %1155, 31
  %1174 = xor i32 %1171, %1173
  %1175 = add nuw nsw i32 %1174, %1173
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %.pre-phi50, align 1
  %1178 = sext i32 %1156 to i64
  store i64 %1178, i64* %RCX.i1621, align 8
  %1179 = shl nsw i64 %1178, 2
  %1180 = add i64 %1151, %1179
  %1181 = add i64 %1012, 80
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  store i32 %1183, i32* %958, align 1
  store float 0.000000e+00, float* %960, align 1
  store float 0.000000e+00, float* %962, align 1
  store float 0.000000e+00, float* %964, align 1
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -40
  %1186 = add i64 %1012, 84
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i64 %1188, i64* %RAX.i1124, align 8
  %1189 = add i64 %1184, -24
  %1190 = add i64 %1012, 87
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RDX.i1313, align 8
  %1194 = add i64 %1184, -44
  %1195 = add i64 %1012, 90
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = add i32 %1197, -2
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RSI.i1502, align 8
  %1200 = sext i32 %1192 to i64
  %1201 = sext i32 %1198 to i64
  %1202 = mul nsw i64 %1201, %1200
  %1203 = trunc i64 %1202 to i32
  %1204 = and i64 %1202, 4294967295
  store i64 %1204, i64* %RDX.i1313, align 8
  %1205 = shl i64 %1202, 32
  %1206 = ashr exact i64 %1205, 32
  %1207 = icmp ne i64 %1206, %1202
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %.pre-phi, align 1
  %1209 = and i32 %1203, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1214 = lshr i32 %1203, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %.pre-phi48, align 1
  store i8 %1208, i8* %.pre-phi50, align 1
  %1216 = add i64 %1184, -48
  %1217 = add i64 %1012, 99
  store i64 %1217, i64* %3, align 8
  %1218 = trunc i64 %1202 to i32
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = add i32 %1220, %1218
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RDX.i1313, align 8
  %1223 = icmp ult i32 %1221, %1218
  %1224 = icmp ult i32 %1221, %1220
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %.pre-phi, align 1
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %.pre-phi42, align 1
  %1232 = xor i32 %1220, %1218
  %1233 = xor i32 %1232, %1221
  %1234 = lshr i32 %1233, 4
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %.pre-phi44, align 1
  %1237 = icmp eq i32 %1221, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %.pre-phi46, align 1
  %1239 = lshr i32 %1221, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %.pre-phi48, align 1
  %1241 = lshr i32 %1218, 31
  %1242 = lshr i32 %1220, 31
  %1243 = xor i32 %1239, %1241
  %1244 = xor i32 %1239, %1242
  %1245 = add nuw nsw i32 %1243, %1244
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %.pre-phi50, align 1
  %1248 = sext i32 %1221 to i64
  store i64 %1248, i64* %RCX.i1621, align 8
  %1249 = load i64, i64* %RAX.i1124, align 8
  %1250 = shl nsw i64 %1248, 2
  %1251 = add i64 %1249, %1250
  %1252 = add i64 %1012, 107
  store i64 %1252, i64* %3, align 8
  %1253 = load <2 x float>, <2 x float>* %965, align 1
  %1254 = load <2 x i32>, <2 x i32>* %966, align 1
  %1255 = inttoptr i64 %1251 to float*
  %1256 = load float, float* %1255, align 4
  %1257 = extractelement <2 x float> %1253, i32 0
  %1258 = fmul float %1257, %1256
  store float %1258, float* %957, align 1
  %1259 = bitcast <2 x float> %1253 to <2 x i32>
  %1260 = extractelement <2 x i32> %1259, i32 1
  store i32 %1260, i32* %967, align 1
  %1261 = extractelement <2 x i32> %1254, i32 0
  store i32 %1261, i32* %968, align 1
  %1262 = extractelement <2 x i32> %1254, i32 1
  store i32 %1262, i32* %969, align 1
  %1263 = load <2 x float>, <2 x float>* %970, align 1
  %1264 = load <2 x i32>, <2 x i32>* %971, align 1
  %1265 = load <2 x float>, <2 x float>* %965, align 1
  %1266 = extractelement <2 x float> %1263, i32 0
  %1267 = extractelement <2 x float> %1265, i32 0
  %1268 = fadd float %1266, %1267
  store float %1268, float* %947, align 1
  %1269 = bitcast <2 x float> %1263 to <2 x i32>
  %1270 = extractelement <2 x i32> %1269, i32 1
  store i32 %1270, i32* %972, align 1
  %1271 = extractelement <2 x i32> %1264, i32 0
  store i32 %1271, i32* %973, align 1
  %1272 = extractelement <2 x i32> %1264, i32 1
  store i32 %1272, i32* %974, align 1
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -32
  %1275 = add i64 %1012, 115
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RAX.i1124, align 8
  %1278 = add i64 %1273, -44
  %1279 = add i64 %1012, 118
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = add i32 %1281, -1
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RDX.i1313, align 8
  %1284 = icmp eq i32 %1281, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %.pre-phi, align 1
  %1286 = and i32 %1282, 255
  %1287 = tail call i32 @llvm.ctpop.i32(i32 %1286)
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  store i8 %1290, i8* %.pre-phi42, align 1
  %1291 = xor i32 %1282, %1281
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %.pre-phi44, align 1
  %1295 = icmp eq i32 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %.pre-phi46, align 1
  %1297 = lshr i32 %1282, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %.pre-phi48, align 1
  %1299 = lshr i32 %1281, 31
  %1300 = xor i32 %1297, %1299
  %1301 = add nuw nsw i32 %1300, %1299
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %.pre-phi50, align 1
  %1304 = sext i32 %1282 to i64
  store i64 %1304, i64* %RCX.i1621, align 8
  %1305 = shl nsw i64 %1304, 2
  %1306 = add i64 %1277, %1305
  %1307 = add i64 %1012, 129
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  store i32 %1309, i32* %958, align 1
  store float 0.000000e+00, float* %960, align 1
  store float 0.000000e+00, float* %962, align 1
  store float 0.000000e+00, float* %964, align 1
  %1310 = add i64 %1273, -40
  %1311 = add i64 %1012, 133
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %RAX.i1124, align 8
  %1314 = add i64 %1273, -24
  %1315 = add i64 %1012, 136
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RDX.i1313, align 8
  %1319 = add i64 %1012, 139
  store i64 %1319, i64* %3, align 8
  %1320 = load i32, i32* %1280, align 4
  %1321 = add i32 %1320, -1
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RSI.i1502, align 8
  %1323 = sext i32 %1317 to i64
  %1324 = sext i32 %1321 to i64
  %1325 = mul nsw i64 %1324, %1323
  %1326 = trunc i64 %1325 to i32
  %1327 = and i64 %1325, 4294967295
  store i64 %1327, i64* %RDX.i1313, align 8
  %1328 = shl i64 %1325, 32
  %1329 = ashr exact i64 %1328, 32
  %1330 = icmp ne i64 %1329, %1325
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %.pre-phi, align 1
  %1332 = and i32 %1326, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1337 = lshr i32 %1326, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %.pre-phi48, align 1
  store i8 %1331, i8* %.pre-phi50, align 1
  %1339 = load i64, i64* %RBP.i, align 8
  %1340 = add i64 %1339, -48
  %1341 = add i64 %1012, 148
  store i64 %1341, i64* %3, align 8
  %1342 = trunc i64 %1325 to i32
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = add i32 %1344, %1342
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RDX.i1313, align 8
  %1347 = icmp ult i32 %1345, %1342
  %1348 = icmp ult i32 %1345, %1344
  %1349 = or i1 %1347, %1348
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %.pre-phi, align 1
  %1351 = and i32 %1345, 255
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %.pre-phi42, align 1
  %1356 = xor i32 %1344, %1342
  %1357 = xor i32 %1356, %1345
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %.pre-phi44, align 1
  %1361 = icmp eq i32 %1345, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %.pre-phi46, align 1
  %1363 = lshr i32 %1345, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %.pre-phi48, align 1
  %1365 = lshr i32 %1342, 31
  %1366 = lshr i32 %1344, 31
  %1367 = xor i32 %1363, %1365
  %1368 = xor i32 %1363, %1366
  %1369 = add nuw nsw i32 %1367, %1368
  %1370 = icmp eq i32 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %.pre-phi50, align 1
  %1372 = sext i32 %1345 to i64
  store i64 %1372, i64* %RCX.i1621, align 8
  %1373 = load i64, i64* %RAX.i1124, align 8
  %1374 = shl nsw i64 %1372, 2
  %1375 = add i64 %1373, %1374
  %1376 = add i64 %1012, 156
  store i64 %1376, i64* %3, align 8
  %1377 = load <2 x float>, <2 x float>* %965, align 1
  %1378 = load <2 x i32>, <2 x i32>* %966, align 1
  %1379 = inttoptr i64 %1375 to float*
  %1380 = load float, float* %1379, align 4
  %1381 = extractelement <2 x float> %1377, i32 0
  %1382 = fmul float %1381, %1380
  store float %1382, float* %957, align 1
  %1383 = bitcast <2 x float> %1377 to <2 x i32>
  %1384 = extractelement <2 x i32> %1383, i32 1
  store i32 %1384, i32* %967, align 1
  %1385 = extractelement <2 x i32> %1378, i32 0
  store i32 %1385, i32* %968, align 1
  %1386 = extractelement <2 x i32> %1378, i32 1
  store i32 %1386, i32* %969, align 1
  %1387 = load <2 x float>, <2 x float>* %970, align 1
  %1388 = load <2 x i32>, <2 x i32>* %971, align 1
  %1389 = load <2 x float>, <2 x float>* %965, align 1
  %1390 = extractelement <2 x float> %1387, i32 0
  %1391 = extractelement <2 x float> %1389, i32 0
  %1392 = fadd float %1390, %1391
  store float %1392, float* %947, align 1
  %1393 = bitcast <2 x float> %1387 to <2 x i32>
  %1394 = extractelement <2 x i32> %1393, i32 1
  store i32 %1394, i32* %972, align 1
  %1395 = extractelement <2 x i32> %1388, i32 0
  store i32 %1395, i32* %973, align 1
  %1396 = extractelement <2 x i32> %1388, i32 1
  store i32 %1396, i32* %974, align 1
  %1397 = add i64 %1339, -32
  %1398 = add i64 %1012, 164
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RAX.i1124, align 8
  %1401 = add i64 %1339, -44
  %1402 = add i64 %1012, 168
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i1621, align 8
  %1406 = shl nsw i64 %1405, 2
  %1407 = add i64 %1406, %1400
  %1408 = add i64 %1012, 173
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  store i32 %1410, i32* %958, align 1
  store float 0.000000e+00, float* %960, align 1
  store float 0.000000e+00, float* %962, align 1
  store float 0.000000e+00, float* %964, align 1
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -40
  %1413 = add i64 %1012, 177
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RAX.i1124, align 8
  %1416 = add i64 %1411, -24
  %1417 = add i64 %1012, 180
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i32*
  %1419 = load i32, i32* %1418, align 4
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RDX.i1313, align 8
  %1421 = add i64 %1411, -44
  %1422 = add i64 %1012, 184
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = sext i32 %1419 to i64
  %1426 = sext i32 %1424 to i64
  %1427 = mul nsw i64 %1426, %1425
  %1428 = trunc i64 %1427 to i32
  %1429 = and i64 %1427, 4294967295
  store i64 %1429, i64* %RDX.i1313, align 8
  %1430 = shl i64 %1427, 32
  %1431 = ashr exact i64 %1430, 32
  %1432 = icmp ne i64 %1431, %1427
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %.pre-phi, align 1
  %1434 = and i32 %1428, 255
  %1435 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1439 = lshr i32 %1428, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %.pre-phi48, align 1
  store i8 %1433, i8* %.pre-phi50, align 1
  %1441 = add i64 %1411, -48
  %1442 = add i64 %1012, 187
  store i64 %1442, i64* %3, align 8
  %1443 = trunc i64 %1427 to i32
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = add i32 %1445, %1443
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RDX.i1313, align 8
  %1448 = icmp ult i32 %1446, %1443
  %1449 = icmp ult i32 %1446, %1445
  %1450 = or i1 %1448, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %.pre-phi, align 1
  %1452 = and i32 %1446, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %.pre-phi42, align 1
  %1457 = xor i32 %1445, %1443
  %1458 = xor i32 %1457, %1446
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %.pre-phi44, align 1
  %1462 = icmp eq i32 %1446, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %.pre-phi46, align 1
  %1464 = lshr i32 %1446, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %.pre-phi48, align 1
  %1466 = lshr i32 %1443, 31
  %1467 = lshr i32 %1445, 31
  %1468 = xor i32 %1464, %1466
  %1469 = xor i32 %1464, %1467
  %1470 = add nuw nsw i32 %1468, %1469
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %.pre-phi50, align 1
  %1473 = sext i32 %1446 to i64
  store i64 %1473, i64* %RCX.i1621, align 8
  %1474 = shl nsw i64 %1473, 2
  %1475 = add i64 %1415, %1474
  %1476 = add i64 %1012, 195
  store i64 %1476, i64* %3, align 8
  %1477 = load <2 x float>, <2 x float>* %965, align 1
  %1478 = load <2 x i32>, <2 x i32>* %966, align 1
  %1479 = inttoptr i64 %1475 to float*
  %1480 = load float, float* %1479, align 4
  %1481 = extractelement <2 x float> %1477, i32 0
  %1482 = fmul float %1481, %1480
  store float %1482, float* %957, align 1
  %1483 = bitcast <2 x float> %1477 to <2 x i32>
  %1484 = extractelement <2 x i32> %1483, i32 1
  store i32 %1484, i32* %967, align 1
  %1485 = extractelement <2 x i32> %1478, i32 0
  store i32 %1485, i32* %968, align 1
  %1486 = extractelement <2 x i32> %1478, i32 1
  store i32 %1486, i32* %969, align 1
  %1487 = load <2 x float>, <2 x float>* %970, align 1
  %1488 = load <2 x i32>, <2 x i32>* %971, align 1
  %1489 = load <2 x float>, <2 x float>* %965, align 1
  %1490 = extractelement <2 x float> %1487, i32 0
  %1491 = extractelement <2 x float> %1489, i32 0
  %1492 = fadd float %1490, %1491
  store float %1492, float* %947, align 1
  %1493 = bitcast <2 x float> %1487 to <2 x i32>
  %1494 = extractelement <2 x i32> %1493, i32 1
  store i32 %1494, i32* %972, align 1
  %1495 = extractelement <2 x i32> %1488, i32 0
  store i32 %1495, i32* %973, align 1
  %1496 = extractelement <2 x i32> %1488, i32 1
  store i32 %1496, i32* %974, align 1
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -16
  %1499 = add i64 %1012, 203
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i64*
  %1501 = load i64, i64* %1500, align 8
  store i64 %1501, i64* %RAX.i1124, align 8
  %1502 = add i64 %1497, -48
  %1503 = add i64 %1012, 207
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RCX.i1621, align 8
  %1507 = shl nsw i64 %1506, 2
  %1508 = add i64 %1507, %1501
  %1509 = add i64 %1012, 212
  store i64 %1509, i64* %3, align 8
  %1510 = load <2 x float>, <2 x float>* %970, align 1
  %1511 = extractelement <2 x float> %1510, i32 0
  %1512 = inttoptr i64 %1508 to float*
  store float %1511, float* %1512, align 4
  %1513 = load i64, i64* %RBP.i, align 8
  %1514 = add i64 %1513, -48
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1514 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = add i32 %1518, 1
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RAX.i1124, align 8
  %1521 = icmp eq i32 %1518, -1
  %1522 = icmp eq i32 %1519, 0
  %1523 = or i1 %1521, %1522
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %.pre-phi, align 1
  %1525 = and i32 %1519, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %.pre-phi42, align 1
  %1530 = xor i32 %1519, %1518
  %1531 = lshr i32 %1530, 4
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  store i8 %1533, i8* %.pre-phi44, align 1
  %1534 = zext i1 %1522 to i8
  store i8 %1534, i8* %.pre-phi46, align 1
  %1535 = lshr i32 %1519, 31
  %1536 = trunc i32 %1535 to i8
  store i8 %1536, i8* %.pre-phi48, align 1
  %1537 = lshr i32 %1518, 31
  %1538 = xor i32 %1535, %1537
  %1539 = add nuw nsw i32 %1538, %1535
  %1540 = icmp eq i32 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %.pre-phi50, align 1
  %1542 = add i64 %1515, 9
  store i64 %1542, i64* %3, align 8
  store i32 %1519, i32* %1517, align 4
  %1543 = load i64, i64* %3, align 8
  %1544 = add i64 %1543, -233
  store i64 %1544, i64* %3, align 8
  br label %block_.L_40214a

block_.L_402238:                                  ; preds = %block_.L_40214a
  %1545 = add i64 %1012, 5
  store i64 %1545, i64* %3, align 8
  br label %block_.L_40223d

block_.L_40223d:                                  ; preds = %block_.L_402238, %routine_idivl__ecx.exit1353
  %1546 = phi i64 [ %976, %block_.L_402238 ], [ %885, %routine_idivl__ecx.exit1353 ]
  %1547 = phi i64 [ %1545, %block_.L_402238 ], [ %914, %routine_idivl__ecx.exit1353 ]
  store i64 16, i64* %RAX.i1124, align 8
  %1548 = add i64 %1546, -20
  %1549 = add i64 %1547, 8
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RCX.i1621, align 8
  %1553 = add i64 %1546, -68
  %1554 = add i64 %1547, 11
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  store i32 16, i32* %1555, align 4
  %1556 = load i32, i32* %ECX.i1628, align 4
  %1557 = zext i32 %1556 to i64
  %1558 = load i64, i64* %3, align 8
  store i64 %1557, i64* %RAX.i1124, align 8
  %1559 = sext i32 %1556 to i64
  %1560 = lshr i64 %1559, 32
  store i64 %1560, i64* %63, align 8
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -68
  %1563 = add i64 %1558, 6
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RCX.i1621, align 8
  %1567 = add i64 %1558, 8
  store i64 %1567, i64* %3, align 8
  %1568 = sext i32 %1565 to i64
  %1569 = shl nuw i64 %1560, 32
  %1570 = or i64 %1569, %1557
  %1571 = sdiv i64 %1570, %1568
  %1572 = shl i64 %1571, 32
  %1573 = ashr exact i64 %1572, 32
  %1574 = icmp eq i64 %1571, %1573
  br i1 %1574, label %1577, label %1575

; <label>:1575:                                   ; preds = %block_.L_40223d
  %1576 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1567, %struct.Memory* %881)
  %.pre31 = load i64, i64* %RBP.i, align 8
  %.pre32 = load i32, i32* %EDX.i1608, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1122

; <label>:1577:                                   ; preds = %block_.L_40223d
  %1578 = srem i64 %1570, %1568
  %1579 = and i64 %1571, 4294967295
  store i64 %1579, i64* %RAX.i1124, align 8
  %1580 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1581 = and i64 %1578, 4294967295
  store i64 %1581, i64* %1580, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  store i8 0, i8* %.pre-phi48, align 1
  store i8 0, i8* %.pre-phi50, align 1
  %1582 = trunc i64 %1578 to i32
  br label %routine_idivl__ecx.exit1122

routine_idivl__ecx.exit1122:                      ; preds = %1577, %1575
  %1583 = phi i64 [ %.pre33, %1575 ], [ %1567, %1577 ]
  %1584 = phi i32 [ %.pre32, %1575 ], [ %1582, %1577 ]
  %1585 = phi i64 [ %.pre31, %1575 ], [ %1561, %1577 ]
  %1586 = phi %struct.Memory* [ %1576, %1575 ], [ %881, %1577 ]
  %1587 = add i64 %1585, -44
  %1588 = add i64 %1583, 3
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  store i32 %1584, i32* %1589, align 4
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -44
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 4
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = add i32 %1595, -8
  %1597 = icmp ult i32 %1595, 8
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %.pre-phi, align 1
  %1599 = and i32 %1596, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %.pre-phi42, align 1
  %1604 = xor i32 %1596, %1595
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %.pre-phi44, align 1
  %1608 = icmp eq i32 %1596, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %.pre-phi46, align 1
  %1610 = lshr i32 %1596, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %.pre-phi48, align 1
  %1612 = lshr i32 %1595, 31
  %1613 = xor i32 %1610, %1612
  %1614 = add nuw nsw i32 %1613, %1612
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %.pre-phi50, align 1
  %1617 = icmp ne i8 %1611, 0
  %1618 = xor i1 %1617, %1615
  %.v57 = select i1 %1618, i64 465, i64 10
  %1619 = add i64 %1592, %.v57
  store i64 %1619, i64* %3, align 8
  br i1 %1618, label %block_.L_402424, label %block_40225d

block_40225d:                                     ; preds = %routine_idivl__ecx.exit1122
  %1620 = add i64 %1619, 3
  store i64 %1620, i64* %3, align 8
  %1621 = load i32, i32* %1594, align 4
  %1622 = add i32 %1621, -1
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RAX.i1124, align 8
  %1624 = icmp eq i32 %1621, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %.pre-phi, align 1
  %1626 = and i32 %1622, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %.pre-phi42, align 1
  %1631 = xor i32 %1622, %1621
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %.pre-phi44, align 1
  %1635 = icmp eq i32 %1622, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %.pre-phi46, align 1
  %1637 = lshr i32 %1622, 31
  %1638 = trunc i32 %1637 to i8
  store i8 %1638, i8* %.pre-phi48, align 1
  %1639 = lshr i32 %1621, 31
  %1640 = xor i32 %1637, %1639
  %1641 = add nuw nsw i32 %1640, %1639
  %1642 = icmp eq i32 %1641, 2
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %.pre-phi50, align 1
  %1644 = add i64 %1619, 9
  store i64 %1644, i64* %3, align 8
  store i32 %1622, i32* %1594, align 4
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -48
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, 7
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1646 to i32*
  store i32 0, i32* %1649, align 4
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1651 = bitcast [32 x %union.VectorReg]* %1650 to i8*
  %1652 = bitcast [32 x %union.VectorReg]* %1650 to float*
  %1653 = bitcast [32 x %union.VectorReg]* %1650 to i32*
  %1654 = getelementptr inbounds i8, i8* %1651, i64 4
  %1655 = bitcast i8* %1654 to float*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1657 = bitcast i64* %1656 to float*
  %1658 = getelementptr inbounds i8, i8* %1651, i64 12
  %1659 = bitcast i8* %1658 to float*
  %RDX.i1082 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1661 = bitcast %union.VectorReg* %1660 to i8*
  %1662 = bitcast %union.VectorReg* %1660 to float*
  %1663 = bitcast %union.VectorReg* %1660 to i32*
  %1664 = getelementptr inbounds i8, i8* %1661, i64 4
  %1665 = bitcast i8* %1664 to float*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1667 = bitcast i64* %1666 to float*
  %1668 = getelementptr inbounds i8, i8* %1661, i64 12
  %1669 = bitcast i8* %1668 to float*
  %1670 = bitcast %union.VectorReg* %1660 to <2 x float>*
  %1671 = bitcast i64* %1666 to <2 x i32>*
  %1672 = bitcast i8* %1664 to i32*
  %1673 = bitcast i64* %1666 to i32*
  %1674 = bitcast i8* %1668 to i32*
  %1675 = bitcast [32 x %union.VectorReg]* %1650 to <2 x float>*
  %1676 = bitcast i64* %1656 to <2 x i32>*
  %1677 = bitcast i8* %1654 to i32*
  %1678 = bitcast i64* %1656 to i32*
  %1679 = bitcast i8* %1658 to i32*
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_40226d

block_.L_40226d:                                  ; preds = %block_402279, %block_40225d
  %1680 = phi i64 [ %2747, %block_402279 ], [ %.pre34, %block_40225d ]
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -48
  %1683 = add i64 %1680, 3
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RAX.i1124, align 8
  %1687 = add i64 %1681, -4
  %1688 = add i64 %1680, 6
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = sub i32 %1685, %1690
  %1692 = icmp ult i32 %1685, %1690
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %.pre-phi, align 1
  %1694 = and i32 %1691, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %.pre-phi42, align 1
  %1699 = xor i32 %1690, %1685
  %1700 = xor i32 %1699, %1691
  %1701 = lshr i32 %1700, 4
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %.pre-phi44, align 1
  %1704 = icmp eq i32 %1691, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %.pre-phi46, align 1
  %1706 = lshr i32 %1691, 31
  %1707 = trunc i32 %1706 to i8
  store i8 %1707, i8* %.pre-phi48, align 1
  %1708 = lshr i32 %1685, 31
  %1709 = lshr i32 %1690, 31
  %1710 = xor i32 %1709, %1708
  %1711 = xor i32 %1706, %1708
  %1712 = add nuw nsw i32 %1711, %1710
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %.pre-phi50, align 1
  %1715 = icmp ne i8 %1707, 0
  %1716 = xor i1 %1715, %1713
  %.v58 = select i1 %1716, i64 12, i64 434
  %1717 = add i64 %1680, %.v58
  store i64 %1717, i64* %3, align 8
  br i1 %1716, label %block_402279, label %block_.L_40241f

block_402279:                                     ; preds = %block_.L_40226d
  %1718 = add i64 %1681, -16
  %1719 = add i64 %1717, 4
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %RAX.i1124, align 8
  %1722 = add i64 %1717, 8
  store i64 %1722, i64* %3, align 8
  %1723 = load i32, i32* %1684, align 4
  %1724 = sext i32 %1723 to i64
  store i64 %1724, i64* %RCX.i1621, align 8
  %1725 = shl nsw i64 %1724, 2
  %1726 = add i64 %1725, %1721
  %1727 = add i64 %1717, 13
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  store i32 %1729, i32* %1653, align 1
  store float 0.000000e+00, float* %1655, align 1
  store float 0.000000e+00, float* %1657, align 1
  store float 0.000000e+00, float* %1659, align 1
  %1730 = add i64 %1681, -32
  %1731 = add i64 %1717, 17
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RAX.i1124, align 8
  %1734 = add i64 %1681, -44
  %1735 = add i64 %1717, 20
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = add i32 %1737, -7
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RDX.i1082, align 8
  %1740 = icmp ult i32 %1737, 7
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %.pre-phi, align 1
  %1742 = and i32 %1738, 255
  %1743 = tail call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  store i8 %1746, i8* %.pre-phi42, align 1
  %1747 = xor i32 %1738, %1737
  %1748 = lshr i32 %1747, 4
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  store i8 %1750, i8* %.pre-phi44, align 1
  %1751 = icmp eq i32 %1738, 0
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %.pre-phi46, align 1
  %1753 = lshr i32 %1738, 31
  %1754 = trunc i32 %1753 to i8
  store i8 %1754, i8* %.pre-phi48, align 1
  %1755 = lshr i32 %1737, 31
  %1756 = xor i32 %1753, %1755
  %1757 = add nuw nsw i32 %1756, %1755
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %.pre-phi50, align 1
  %1760 = sext i32 %1738 to i64
  store i64 %1760, i64* %RCX.i1621, align 8
  %1761 = shl nsw i64 %1760, 2
  %1762 = add i64 %1733, %1761
  %1763 = add i64 %1717, 31
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  store i32 %1765, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %1766 = add i64 %1681, -40
  %1767 = add i64 %1717, 35
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768, align 8
  store i64 %1769, i64* %RAX.i1124, align 8
  %1770 = add i64 %1681, -24
  %1771 = add i64 %1717, 38
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RDX.i1082, align 8
  %1775 = add i64 %1717, 41
  store i64 %1775, i64* %3, align 8
  %1776 = load i32, i32* %1736, align 4
  %1777 = add i32 %1776, -7
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RSI.i1502, align 8
  %1779 = sext i32 %1773 to i64
  %1780 = sext i32 %1777 to i64
  %1781 = mul nsw i64 %1780, %1779
  %1782 = trunc i64 %1781 to i32
  %1783 = and i64 %1781, 4294967295
  store i64 %1783, i64* %RDX.i1082, align 8
  %1784 = shl i64 %1781, 32
  %1785 = ashr exact i64 %1784, 32
  %1786 = icmp ne i64 %1785, %1781
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %.pre-phi, align 1
  %1788 = and i32 %1782, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1793 = lshr i32 %1782, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %.pre-phi48, align 1
  store i8 %1787, i8* %.pre-phi50, align 1
  %1795 = load i64, i64* %RBP.i, align 8
  %1796 = add i64 %1795, -48
  %1797 = add i64 %1717, 50
  store i64 %1797, i64* %3, align 8
  %1798 = trunc i64 %1781 to i32
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799, align 4
  %1801 = add i32 %1800, %1798
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RDX.i1082, align 8
  %1803 = icmp ult i32 %1801, %1798
  %1804 = icmp ult i32 %1801, %1800
  %1805 = or i1 %1803, %1804
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %.pre-phi, align 1
  %1807 = and i32 %1801, 255
  %1808 = tail call i32 @llvm.ctpop.i32(i32 %1807)
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = xor i8 %1810, 1
  store i8 %1811, i8* %.pre-phi42, align 1
  %1812 = xor i32 %1800, %1798
  %1813 = xor i32 %1812, %1801
  %1814 = lshr i32 %1813, 4
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  store i8 %1816, i8* %.pre-phi44, align 1
  %1817 = icmp eq i32 %1801, 0
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %.pre-phi46, align 1
  %1819 = lshr i32 %1801, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %.pre-phi48, align 1
  %1821 = lshr i32 %1798, 31
  %1822 = lshr i32 %1800, 31
  %1823 = xor i32 %1819, %1821
  %1824 = xor i32 %1819, %1822
  %1825 = add nuw nsw i32 %1823, %1824
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %.pre-phi50, align 1
  %1828 = sext i32 %1801 to i64
  store i64 %1828, i64* %RCX.i1621, align 8
  %1829 = load i64, i64* %RAX.i1124, align 8
  %1830 = shl nsw i64 %1828, 2
  %1831 = add i64 %1829, %1830
  %1832 = add i64 %1717, 58
  store i64 %1832, i64* %3, align 8
  %1833 = load <2 x float>, <2 x float>* %1670, align 1
  %1834 = load <2 x i32>, <2 x i32>* %1671, align 1
  %1835 = inttoptr i64 %1831 to float*
  %1836 = load float, float* %1835, align 4
  %1837 = extractelement <2 x float> %1833, i32 0
  %1838 = fmul float %1837, %1836
  store float %1838, float* %1662, align 1
  %1839 = bitcast <2 x float> %1833 to <2 x i32>
  %1840 = extractelement <2 x i32> %1839, i32 1
  store i32 %1840, i32* %1672, align 1
  %1841 = extractelement <2 x i32> %1834, i32 0
  store i32 %1841, i32* %1673, align 1
  %1842 = extractelement <2 x i32> %1834, i32 1
  store i32 %1842, i32* %1674, align 1
  %1843 = load <2 x float>, <2 x float>* %1675, align 1
  %1844 = load <2 x i32>, <2 x i32>* %1676, align 1
  %1845 = load <2 x float>, <2 x float>* %1670, align 1
  %1846 = extractelement <2 x float> %1843, i32 0
  %1847 = extractelement <2 x float> %1845, i32 0
  %1848 = fadd float %1846, %1847
  store float %1848, float* %1652, align 1
  %1849 = bitcast <2 x float> %1843 to <2 x i32>
  %1850 = extractelement <2 x i32> %1849, i32 1
  store i32 %1850, i32* %1677, align 1
  %1851 = extractelement <2 x i32> %1844, i32 0
  store i32 %1851, i32* %1678, align 1
  %1852 = extractelement <2 x i32> %1844, i32 1
  store i32 %1852, i32* %1679, align 1
  %1853 = add i64 %1795, -32
  %1854 = add i64 %1717, 66
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %RAX.i1124, align 8
  %1857 = add i64 %1795, -44
  %1858 = add i64 %1717, 69
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = add i32 %1860, -6
  %1862 = zext i32 %1861 to i64
  store i64 %1862, i64* %RDX.i1082, align 8
  %1863 = icmp ult i32 %1860, 6
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %.pre-phi, align 1
  %1865 = and i32 %1861, 255
  %1866 = tail call i32 @llvm.ctpop.i32(i32 %1865)
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  store i8 %1869, i8* %.pre-phi42, align 1
  %1870 = xor i32 %1861, %1860
  %1871 = lshr i32 %1870, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %.pre-phi44, align 1
  %1874 = icmp eq i32 %1861, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %.pre-phi46, align 1
  %1876 = lshr i32 %1861, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %.pre-phi48, align 1
  %1878 = lshr i32 %1860, 31
  %1879 = xor i32 %1876, %1878
  %1880 = add nuw nsw i32 %1879, %1878
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %.pre-phi50, align 1
  %1883 = sext i32 %1861 to i64
  store i64 %1883, i64* %RCX.i1621, align 8
  %1884 = shl nsw i64 %1883, 2
  %1885 = add i64 %1856, %1884
  %1886 = add i64 %1717, 80
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  store i32 %1888, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -40
  %1891 = add i64 %1717, 84
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RAX.i1124, align 8
  %1894 = add i64 %1889, -24
  %1895 = add i64 %1717, 87
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RDX.i1082, align 8
  %1899 = add i64 %1889, -44
  %1900 = add i64 %1717, 90
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = add i32 %1902, -6
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RSI.i1502, align 8
  %1905 = sext i32 %1897 to i64
  %1906 = sext i32 %1903 to i64
  %1907 = mul nsw i64 %1906, %1905
  %1908 = trunc i64 %1907 to i32
  %1909 = and i64 %1907, 4294967295
  store i64 %1909, i64* %RDX.i1082, align 8
  %1910 = shl i64 %1907, 32
  %1911 = ashr exact i64 %1910, 32
  %1912 = icmp ne i64 %1911, %1907
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %.pre-phi, align 1
  %1914 = and i32 %1908, 255
  %1915 = tail call i32 @llvm.ctpop.i32(i32 %1914)
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  store i8 %1918, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %1919 = lshr i32 %1908, 31
  %1920 = trunc i32 %1919 to i8
  store i8 %1920, i8* %.pre-phi48, align 1
  store i8 %1913, i8* %.pre-phi50, align 1
  %1921 = add i64 %1889, -48
  %1922 = add i64 %1717, 99
  store i64 %1922, i64* %3, align 8
  %1923 = trunc i64 %1907 to i32
  %1924 = inttoptr i64 %1921 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = add i32 %1925, %1923
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RDX.i1082, align 8
  %1928 = icmp ult i32 %1926, %1923
  %1929 = icmp ult i32 %1926, %1925
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %.pre-phi, align 1
  %1932 = and i32 %1926, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %.pre-phi42, align 1
  %1937 = xor i32 %1925, %1923
  %1938 = xor i32 %1937, %1926
  %1939 = lshr i32 %1938, 4
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  store i8 %1941, i8* %.pre-phi44, align 1
  %1942 = icmp eq i32 %1926, 0
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %.pre-phi46, align 1
  %1944 = lshr i32 %1926, 31
  %1945 = trunc i32 %1944 to i8
  store i8 %1945, i8* %.pre-phi48, align 1
  %1946 = lshr i32 %1923, 31
  %1947 = lshr i32 %1925, 31
  %1948 = xor i32 %1944, %1946
  %1949 = xor i32 %1944, %1947
  %1950 = add nuw nsw i32 %1948, %1949
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %.pre-phi50, align 1
  %1953 = sext i32 %1926 to i64
  store i64 %1953, i64* %RCX.i1621, align 8
  %1954 = load i64, i64* %RAX.i1124, align 8
  %1955 = shl nsw i64 %1953, 2
  %1956 = add i64 %1954, %1955
  %1957 = add i64 %1717, 107
  store i64 %1957, i64* %3, align 8
  %1958 = load <2 x float>, <2 x float>* %1670, align 1
  %1959 = load <2 x i32>, <2 x i32>* %1671, align 1
  %1960 = inttoptr i64 %1956 to float*
  %1961 = load float, float* %1960, align 4
  %1962 = extractelement <2 x float> %1958, i32 0
  %1963 = fmul float %1962, %1961
  store float %1963, float* %1662, align 1
  %1964 = bitcast <2 x float> %1958 to <2 x i32>
  %1965 = extractelement <2 x i32> %1964, i32 1
  store i32 %1965, i32* %1672, align 1
  %1966 = extractelement <2 x i32> %1959, i32 0
  store i32 %1966, i32* %1673, align 1
  %1967 = extractelement <2 x i32> %1959, i32 1
  store i32 %1967, i32* %1674, align 1
  %1968 = load <2 x float>, <2 x float>* %1675, align 1
  %1969 = load <2 x i32>, <2 x i32>* %1676, align 1
  %1970 = load <2 x float>, <2 x float>* %1670, align 1
  %1971 = extractelement <2 x float> %1968, i32 0
  %1972 = extractelement <2 x float> %1970, i32 0
  %1973 = fadd float %1971, %1972
  store float %1973, float* %1652, align 1
  %1974 = bitcast <2 x float> %1968 to <2 x i32>
  %1975 = extractelement <2 x i32> %1974, i32 1
  store i32 %1975, i32* %1677, align 1
  %1976 = extractelement <2 x i32> %1969, i32 0
  store i32 %1976, i32* %1678, align 1
  %1977 = extractelement <2 x i32> %1969, i32 1
  store i32 %1977, i32* %1679, align 1
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -32
  %1980 = add i64 %1717, 115
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i64*
  %1982 = load i64, i64* %1981, align 8
  store i64 %1982, i64* %RAX.i1124, align 8
  %1983 = add i64 %1978, -44
  %1984 = add i64 %1717, 118
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = add i32 %1986, -5
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %RDX.i1082, align 8
  %1989 = icmp ult i32 %1986, 5
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %.pre-phi, align 1
  %1991 = and i32 %1987, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %.pre-phi42, align 1
  %1996 = xor i32 %1987, %1986
  %1997 = lshr i32 %1996, 4
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  store i8 %1999, i8* %.pre-phi44, align 1
  %2000 = icmp eq i32 %1987, 0
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %.pre-phi46, align 1
  %2002 = lshr i32 %1987, 31
  %2003 = trunc i32 %2002 to i8
  store i8 %2003, i8* %.pre-phi48, align 1
  %2004 = lshr i32 %1986, 31
  %2005 = xor i32 %2002, %2004
  %2006 = add nuw nsw i32 %2005, %2004
  %2007 = icmp eq i32 %2006, 2
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %.pre-phi50, align 1
  %2009 = sext i32 %1987 to i64
  store i64 %2009, i64* %RCX.i1621, align 8
  %2010 = shl nsw i64 %2009, 2
  %2011 = add i64 %1982, %2010
  %2012 = add i64 %1717, 129
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  store i32 %2014, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2015 = add i64 %1978, -40
  %2016 = add i64 %1717, 133
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i64*
  %2018 = load i64, i64* %2017, align 8
  store i64 %2018, i64* %RAX.i1124, align 8
  %2019 = add i64 %1978, -24
  %2020 = add i64 %1717, 136
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RDX.i1082, align 8
  %2024 = add i64 %1717, 139
  store i64 %2024, i64* %3, align 8
  %2025 = load i32, i32* %1985, align 4
  %2026 = add i32 %2025, -5
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %RSI.i1502, align 8
  %2028 = sext i32 %2022 to i64
  %2029 = sext i32 %2026 to i64
  %2030 = mul nsw i64 %2029, %2028
  %2031 = trunc i64 %2030 to i32
  %2032 = and i64 %2030, 4294967295
  store i64 %2032, i64* %RDX.i1082, align 8
  %2033 = shl i64 %2030, 32
  %2034 = ashr exact i64 %2033, 32
  %2035 = icmp ne i64 %2034, %2030
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %.pre-phi, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2042 = lshr i32 %2031, 31
  %2043 = trunc i32 %2042 to i8
  store i8 %2043, i8* %.pre-phi48, align 1
  store i8 %2036, i8* %.pre-phi50, align 1
  %2044 = load i64, i64* %RBP.i, align 8
  %2045 = add i64 %2044, -48
  %2046 = add i64 %1717, 148
  store i64 %2046, i64* %3, align 8
  %2047 = trunc i64 %2030 to i32
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = add i32 %2049, %2047
  %2051 = zext i32 %2050 to i64
  store i64 %2051, i64* %RDX.i1082, align 8
  %2052 = icmp ult i32 %2050, %2047
  %2053 = icmp ult i32 %2050, %2049
  %2054 = or i1 %2052, %2053
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %.pre-phi, align 1
  %2056 = and i32 %2050, 255
  %2057 = tail call i32 @llvm.ctpop.i32(i32 %2056)
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  store i8 %2060, i8* %.pre-phi42, align 1
  %2061 = xor i32 %2049, %2047
  %2062 = xor i32 %2061, %2050
  %2063 = lshr i32 %2062, 4
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  store i8 %2065, i8* %.pre-phi44, align 1
  %2066 = icmp eq i32 %2050, 0
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %.pre-phi46, align 1
  %2068 = lshr i32 %2050, 31
  %2069 = trunc i32 %2068 to i8
  store i8 %2069, i8* %.pre-phi48, align 1
  %2070 = lshr i32 %2047, 31
  %2071 = lshr i32 %2049, 31
  %2072 = xor i32 %2068, %2070
  %2073 = xor i32 %2068, %2071
  %2074 = add nuw nsw i32 %2072, %2073
  %2075 = icmp eq i32 %2074, 2
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %.pre-phi50, align 1
  %2077 = sext i32 %2050 to i64
  store i64 %2077, i64* %RCX.i1621, align 8
  %2078 = load i64, i64* %RAX.i1124, align 8
  %2079 = shl nsw i64 %2077, 2
  %2080 = add i64 %2078, %2079
  %2081 = add i64 %1717, 156
  store i64 %2081, i64* %3, align 8
  %2082 = load <2 x float>, <2 x float>* %1670, align 1
  %2083 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2084 = inttoptr i64 %2080 to float*
  %2085 = load float, float* %2084, align 4
  %2086 = extractelement <2 x float> %2082, i32 0
  %2087 = fmul float %2086, %2085
  store float %2087, float* %1662, align 1
  %2088 = bitcast <2 x float> %2082 to <2 x i32>
  %2089 = extractelement <2 x i32> %2088, i32 1
  store i32 %2089, i32* %1672, align 1
  %2090 = extractelement <2 x i32> %2083, i32 0
  store i32 %2090, i32* %1673, align 1
  %2091 = extractelement <2 x i32> %2083, i32 1
  store i32 %2091, i32* %1674, align 1
  %2092 = load <2 x float>, <2 x float>* %1675, align 1
  %2093 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2094 = load <2 x float>, <2 x float>* %1670, align 1
  %2095 = extractelement <2 x float> %2092, i32 0
  %2096 = extractelement <2 x float> %2094, i32 0
  %2097 = fadd float %2095, %2096
  store float %2097, float* %1652, align 1
  %2098 = bitcast <2 x float> %2092 to <2 x i32>
  %2099 = extractelement <2 x i32> %2098, i32 1
  store i32 %2099, i32* %1677, align 1
  %2100 = extractelement <2 x i32> %2093, i32 0
  store i32 %2100, i32* %1678, align 1
  %2101 = extractelement <2 x i32> %2093, i32 1
  store i32 %2101, i32* %1679, align 1
  %2102 = add i64 %2044, -32
  %2103 = add i64 %1717, 164
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i64*
  %2105 = load i64, i64* %2104, align 8
  store i64 %2105, i64* %RAX.i1124, align 8
  %2106 = add i64 %2044, -44
  %2107 = add i64 %1717, 167
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  %2110 = add i32 %2109, -4
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RDX.i1082, align 8
  %2112 = icmp ult i32 %2109, 4
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %.pre-phi, align 1
  %2114 = and i32 %2110, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %.pre-phi42, align 1
  %2119 = xor i32 %2110, %2109
  %2120 = lshr i32 %2119, 4
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  store i8 %2122, i8* %.pre-phi44, align 1
  %2123 = icmp eq i32 %2110, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %.pre-phi46, align 1
  %2125 = lshr i32 %2110, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %.pre-phi48, align 1
  %2127 = lshr i32 %2109, 31
  %2128 = xor i32 %2125, %2127
  %2129 = add nuw nsw i32 %2128, %2127
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %.pre-phi50, align 1
  %2132 = sext i32 %2110 to i64
  store i64 %2132, i64* %RCX.i1621, align 8
  %2133 = shl nsw i64 %2132, 2
  %2134 = add i64 %2105, %2133
  %2135 = add i64 %1717, 178
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  store i32 %2137, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2138 = load i64, i64* %RBP.i, align 8
  %2139 = add i64 %2138, -40
  %2140 = add i64 %1717, 182
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i64*
  %2142 = load i64, i64* %2141, align 8
  store i64 %2142, i64* %RAX.i1124, align 8
  %2143 = add i64 %2138, -24
  %2144 = add i64 %1717, 185
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = zext i32 %2146 to i64
  store i64 %2147, i64* %RDX.i1082, align 8
  %2148 = add i64 %2138, -44
  %2149 = add i64 %1717, 188
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = add i32 %2151, -4
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RSI.i1502, align 8
  %2154 = sext i32 %2146 to i64
  %2155 = sext i32 %2152 to i64
  %2156 = mul nsw i64 %2155, %2154
  %2157 = trunc i64 %2156 to i32
  %2158 = and i64 %2156, 4294967295
  store i64 %2158, i64* %RDX.i1082, align 8
  %2159 = shl i64 %2156, 32
  %2160 = ashr exact i64 %2159, 32
  %2161 = icmp ne i64 %2160, %2156
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %.pre-phi, align 1
  %2163 = and i32 %2157, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2168 = lshr i32 %2157, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %.pre-phi48, align 1
  store i8 %2162, i8* %.pre-phi50, align 1
  %2170 = add i64 %2138, -48
  %2171 = add i64 %1717, 197
  store i64 %2171, i64* %3, align 8
  %2172 = trunc i64 %2156 to i32
  %2173 = inttoptr i64 %2170 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = add i32 %2174, %2172
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RDX.i1082, align 8
  %2177 = icmp ult i32 %2175, %2172
  %2178 = icmp ult i32 %2175, %2174
  %2179 = or i1 %2177, %2178
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %.pre-phi, align 1
  %2181 = and i32 %2175, 255
  %2182 = tail call i32 @llvm.ctpop.i32(i32 %2181)
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = xor i8 %2184, 1
  store i8 %2185, i8* %.pre-phi42, align 1
  %2186 = xor i32 %2174, %2172
  %2187 = xor i32 %2186, %2175
  %2188 = lshr i32 %2187, 4
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  store i8 %2190, i8* %.pre-phi44, align 1
  %2191 = icmp eq i32 %2175, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %.pre-phi46, align 1
  %2193 = lshr i32 %2175, 31
  %2194 = trunc i32 %2193 to i8
  store i8 %2194, i8* %.pre-phi48, align 1
  %2195 = lshr i32 %2172, 31
  %2196 = lshr i32 %2174, 31
  %2197 = xor i32 %2193, %2195
  %2198 = xor i32 %2193, %2196
  %2199 = add nuw nsw i32 %2197, %2198
  %2200 = icmp eq i32 %2199, 2
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %.pre-phi50, align 1
  %2202 = sext i32 %2175 to i64
  store i64 %2202, i64* %RCX.i1621, align 8
  %2203 = load i64, i64* %RAX.i1124, align 8
  %2204 = shl nsw i64 %2202, 2
  %2205 = add i64 %2203, %2204
  %2206 = add i64 %1717, 205
  store i64 %2206, i64* %3, align 8
  %2207 = load <2 x float>, <2 x float>* %1670, align 1
  %2208 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2209 = inttoptr i64 %2205 to float*
  %2210 = load float, float* %2209, align 4
  %2211 = extractelement <2 x float> %2207, i32 0
  %2212 = fmul float %2211, %2210
  store float %2212, float* %1662, align 1
  %2213 = bitcast <2 x float> %2207 to <2 x i32>
  %2214 = extractelement <2 x i32> %2213, i32 1
  store i32 %2214, i32* %1672, align 1
  %2215 = extractelement <2 x i32> %2208, i32 0
  store i32 %2215, i32* %1673, align 1
  %2216 = extractelement <2 x i32> %2208, i32 1
  store i32 %2216, i32* %1674, align 1
  %2217 = load <2 x float>, <2 x float>* %1675, align 1
  %2218 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2219 = load <2 x float>, <2 x float>* %1670, align 1
  %2220 = extractelement <2 x float> %2217, i32 0
  %2221 = extractelement <2 x float> %2219, i32 0
  %2222 = fadd float %2220, %2221
  store float %2222, float* %1652, align 1
  %2223 = bitcast <2 x float> %2217 to <2 x i32>
  %2224 = extractelement <2 x i32> %2223, i32 1
  store i32 %2224, i32* %1677, align 1
  %2225 = extractelement <2 x i32> %2218, i32 0
  store i32 %2225, i32* %1678, align 1
  %2226 = extractelement <2 x i32> %2218, i32 1
  store i32 %2226, i32* %1679, align 1
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -32
  %2229 = add i64 %1717, 213
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i64*
  %2231 = load i64, i64* %2230, align 8
  store i64 %2231, i64* %RAX.i1124, align 8
  %2232 = add i64 %2227, -44
  %2233 = add i64 %1717, 216
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = add i32 %2235, -3
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RDX.i1082, align 8
  %2238 = icmp ult i32 %2235, 3
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %.pre-phi, align 1
  %2240 = and i32 %2236, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %.pre-phi42, align 1
  %2245 = xor i32 %2236, %2235
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %.pre-phi44, align 1
  %2249 = icmp eq i32 %2236, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %.pre-phi46, align 1
  %2251 = lshr i32 %2236, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %.pre-phi48, align 1
  %2253 = lshr i32 %2235, 31
  %2254 = xor i32 %2251, %2253
  %2255 = add nuw nsw i32 %2254, %2253
  %2256 = icmp eq i32 %2255, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %.pre-phi50, align 1
  %2258 = sext i32 %2236 to i64
  store i64 %2258, i64* %RCX.i1621, align 8
  %2259 = shl nsw i64 %2258, 2
  %2260 = add i64 %2231, %2259
  %2261 = add i64 %1717, 227
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  store i32 %2263, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2264 = add i64 %2227, -40
  %2265 = add i64 %1717, 231
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i64*
  %2267 = load i64, i64* %2266, align 8
  store i64 %2267, i64* %RAX.i1124, align 8
  %2268 = add i64 %2227, -24
  %2269 = add i64 %1717, 234
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RDX.i1082, align 8
  %2273 = add i64 %1717, 237
  store i64 %2273, i64* %3, align 8
  %2274 = load i32, i32* %2234, align 4
  %2275 = add i32 %2274, -3
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RSI.i1502, align 8
  %2277 = sext i32 %2271 to i64
  %2278 = sext i32 %2275 to i64
  %2279 = mul nsw i64 %2278, %2277
  %2280 = trunc i64 %2279 to i32
  %2281 = and i64 %2279, 4294967295
  store i64 %2281, i64* %RDX.i1082, align 8
  %2282 = shl i64 %2279, 32
  %2283 = ashr exact i64 %2282, 32
  %2284 = icmp ne i64 %2283, %2279
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %.pre-phi, align 1
  %2286 = and i32 %2280, 255
  %2287 = tail call i32 @llvm.ctpop.i32(i32 %2286)
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = xor i8 %2289, 1
  store i8 %2290, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2291 = lshr i32 %2280, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %.pre-phi48, align 1
  store i8 %2285, i8* %.pre-phi50, align 1
  %2293 = load i64, i64* %RBP.i, align 8
  %2294 = add i64 %2293, -48
  %2295 = add i64 %1717, 246
  store i64 %2295, i64* %3, align 8
  %2296 = trunc i64 %2279 to i32
  %2297 = inttoptr i64 %2294 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = add i32 %2298, %2296
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RDX.i1082, align 8
  %2301 = icmp ult i32 %2299, %2296
  %2302 = icmp ult i32 %2299, %2298
  %2303 = or i1 %2301, %2302
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %.pre-phi, align 1
  %2305 = and i32 %2299, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %.pre-phi42, align 1
  %2310 = xor i32 %2298, %2296
  %2311 = xor i32 %2310, %2299
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %.pre-phi44, align 1
  %2315 = icmp eq i32 %2299, 0
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %.pre-phi46, align 1
  %2317 = lshr i32 %2299, 31
  %2318 = trunc i32 %2317 to i8
  store i8 %2318, i8* %.pre-phi48, align 1
  %2319 = lshr i32 %2296, 31
  %2320 = lshr i32 %2298, 31
  %2321 = xor i32 %2317, %2319
  %2322 = xor i32 %2317, %2320
  %2323 = add nuw nsw i32 %2321, %2322
  %2324 = icmp eq i32 %2323, 2
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %.pre-phi50, align 1
  %2326 = sext i32 %2299 to i64
  store i64 %2326, i64* %RCX.i1621, align 8
  %2327 = load i64, i64* %RAX.i1124, align 8
  %2328 = shl nsw i64 %2326, 2
  %2329 = add i64 %2327, %2328
  %2330 = add i64 %1717, 254
  store i64 %2330, i64* %3, align 8
  %2331 = load <2 x float>, <2 x float>* %1670, align 1
  %2332 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2333 = inttoptr i64 %2329 to float*
  %2334 = load float, float* %2333, align 4
  %2335 = extractelement <2 x float> %2331, i32 0
  %2336 = fmul float %2335, %2334
  store float %2336, float* %1662, align 1
  %2337 = bitcast <2 x float> %2331 to <2 x i32>
  %2338 = extractelement <2 x i32> %2337, i32 1
  store i32 %2338, i32* %1672, align 1
  %2339 = extractelement <2 x i32> %2332, i32 0
  store i32 %2339, i32* %1673, align 1
  %2340 = extractelement <2 x i32> %2332, i32 1
  store i32 %2340, i32* %1674, align 1
  %2341 = load <2 x float>, <2 x float>* %1675, align 1
  %2342 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2343 = load <2 x float>, <2 x float>* %1670, align 1
  %2344 = extractelement <2 x float> %2341, i32 0
  %2345 = extractelement <2 x float> %2343, i32 0
  %2346 = fadd float %2344, %2345
  store float %2346, float* %1652, align 1
  %2347 = bitcast <2 x float> %2341 to <2 x i32>
  %2348 = extractelement <2 x i32> %2347, i32 1
  store i32 %2348, i32* %1677, align 1
  %2349 = extractelement <2 x i32> %2342, i32 0
  store i32 %2349, i32* %1678, align 1
  %2350 = extractelement <2 x i32> %2342, i32 1
  store i32 %2350, i32* %1679, align 1
  %2351 = add i64 %2293, -32
  %2352 = add i64 %1717, 262
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RAX.i1124, align 8
  %2355 = add i64 %2293, -44
  %2356 = add i64 %1717, 265
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = add i32 %2358, -2
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RDX.i1082, align 8
  %2361 = icmp ult i32 %2358, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %.pre-phi, align 1
  %2363 = and i32 %2359, 255
  %2364 = tail call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %.pre-phi42, align 1
  %2368 = xor i32 %2359, %2358
  %2369 = lshr i32 %2368, 4
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  store i8 %2371, i8* %.pre-phi44, align 1
  %2372 = icmp eq i32 %2359, 0
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %.pre-phi46, align 1
  %2374 = lshr i32 %2359, 31
  %2375 = trunc i32 %2374 to i8
  store i8 %2375, i8* %.pre-phi48, align 1
  %2376 = lshr i32 %2358, 31
  %2377 = xor i32 %2374, %2376
  %2378 = add nuw nsw i32 %2377, %2376
  %2379 = icmp eq i32 %2378, 2
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %.pre-phi50, align 1
  %2381 = sext i32 %2359 to i64
  store i64 %2381, i64* %RCX.i1621, align 8
  %2382 = shl nsw i64 %2381, 2
  %2383 = add i64 %2354, %2382
  %2384 = add i64 %1717, 276
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  store i32 %2386, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2387 = load i64, i64* %RBP.i, align 8
  %2388 = add i64 %2387, -40
  %2389 = add i64 %1717, 280
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i64*
  %2391 = load i64, i64* %2390, align 8
  store i64 %2391, i64* %RAX.i1124, align 8
  %2392 = add i64 %2387, -24
  %2393 = add i64 %1717, 283
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = zext i32 %2395 to i64
  store i64 %2396, i64* %RDX.i1082, align 8
  %2397 = add i64 %2387, -44
  %2398 = add i64 %1717, 286
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = add i32 %2400, -2
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RSI.i1502, align 8
  %2403 = sext i32 %2395 to i64
  %2404 = sext i32 %2401 to i64
  %2405 = mul nsw i64 %2404, %2403
  %2406 = trunc i64 %2405 to i32
  %2407 = and i64 %2405, 4294967295
  store i64 %2407, i64* %RDX.i1082, align 8
  %2408 = shl i64 %2405, 32
  %2409 = ashr exact i64 %2408, 32
  %2410 = icmp ne i64 %2409, %2405
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %.pre-phi, align 1
  %2412 = and i32 %2406, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2417 = lshr i32 %2406, 31
  %2418 = trunc i32 %2417 to i8
  store i8 %2418, i8* %.pre-phi48, align 1
  store i8 %2411, i8* %.pre-phi50, align 1
  %2419 = add i64 %2387, -48
  %2420 = add i64 %1717, 295
  store i64 %2420, i64* %3, align 8
  %2421 = trunc i64 %2405 to i32
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = add i32 %2423, %2421
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RDX.i1082, align 8
  %2426 = icmp ult i32 %2424, %2421
  %2427 = icmp ult i32 %2424, %2423
  %2428 = or i1 %2426, %2427
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %.pre-phi, align 1
  %2430 = and i32 %2424, 255
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %.pre-phi42, align 1
  %2435 = xor i32 %2423, %2421
  %2436 = xor i32 %2435, %2424
  %2437 = lshr i32 %2436, 4
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  store i8 %2439, i8* %.pre-phi44, align 1
  %2440 = icmp eq i32 %2424, 0
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %.pre-phi46, align 1
  %2442 = lshr i32 %2424, 31
  %2443 = trunc i32 %2442 to i8
  store i8 %2443, i8* %.pre-phi48, align 1
  %2444 = lshr i32 %2421, 31
  %2445 = lshr i32 %2423, 31
  %2446 = xor i32 %2442, %2444
  %2447 = xor i32 %2442, %2445
  %2448 = add nuw nsw i32 %2446, %2447
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %.pre-phi50, align 1
  %2451 = sext i32 %2424 to i64
  store i64 %2451, i64* %RCX.i1621, align 8
  %2452 = load i64, i64* %RAX.i1124, align 8
  %2453 = shl nsw i64 %2451, 2
  %2454 = add i64 %2452, %2453
  %2455 = add i64 %1717, 303
  store i64 %2455, i64* %3, align 8
  %2456 = load <2 x float>, <2 x float>* %1670, align 1
  %2457 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2458 = inttoptr i64 %2454 to float*
  %2459 = load float, float* %2458, align 4
  %2460 = extractelement <2 x float> %2456, i32 0
  %2461 = fmul float %2460, %2459
  store float %2461, float* %1662, align 1
  %2462 = bitcast <2 x float> %2456 to <2 x i32>
  %2463 = extractelement <2 x i32> %2462, i32 1
  store i32 %2463, i32* %1672, align 1
  %2464 = extractelement <2 x i32> %2457, i32 0
  store i32 %2464, i32* %1673, align 1
  %2465 = extractelement <2 x i32> %2457, i32 1
  store i32 %2465, i32* %1674, align 1
  %2466 = load <2 x float>, <2 x float>* %1675, align 1
  %2467 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2468 = load <2 x float>, <2 x float>* %1670, align 1
  %2469 = extractelement <2 x float> %2466, i32 0
  %2470 = extractelement <2 x float> %2468, i32 0
  %2471 = fadd float %2469, %2470
  store float %2471, float* %1652, align 1
  %2472 = bitcast <2 x float> %2466 to <2 x i32>
  %2473 = extractelement <2 x i32> %2472, i32 1
  store i32 %2473, i32* %1677, align 1
  %2474 = extractelement <2 x i32> %2467, i32 0
  store i32 %2474, i32* %1678, align 1
  %2475 = extractelement <2 x i32> %2467, i32 1
  store i32 %2475, i32* %1679, align 1
  %2476 = load i64, i64* %RBP.i, align 8
  %2477 = add i64 %2476, -32
  %2478 = add i64 %1717, 311
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i64*
  %2480 = load i64, i64* %2479, align 8
  store i64 %2480, i64* %RAX.i1124, align 8
  %2481 = add i64 %2476, -44
  %2482 = add i64 %1717, 314
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = add i32 %2484, -1
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RDX.i1082, align 8
  %2487 = icmp eq i32 %2484, 0
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %.pre-phi, align 1
  %2489 = and i32 %2485, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %.pre-phi42, align 1
  %2494 = xor i32 %2485, %2484
  %2495 = lshr i32 %2494, 4
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %.pre-phi44, align 1
  %2498 = icmp eq i32 %2485, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %.pre-phi46, align 1
  %2500 = lshr i32 %2485, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %.pre-phi48, align 1
  %2502 = lshr i32 %2484, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2502
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %.pre-phi50, align 1
  %2507 = sext i32 %2485 to i64
  store i64 %2507, i64* %RCX.i1621, align 8
  %2508 = shl nsw i64 %2507, 2
  %2509 = add i64 %2480, %2508
  %2510 = add i64 %1717, 325
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  store i32 %2512, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2513 = add i64 %2476, -40
  %2514 = add i64 %1717, 329
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i64*
  %2516 = load i64, i64* %2515, align 8
  store i64 %2516, i64* %RAX.i1124, align 8
  %2517 = add i64 %2476, -24
  %2518 = add i64 %1717, 332
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i32*
  %2520 = load i32, i32* %2519, align 4
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RDX.i1082, align 8
  %2522 = add i64 %1717, 335
  store i64 %2522, i64* %3, align 8
  %2523 = load i32, i32* %2483, align 4
  %2524 = add i32 %2523, -1
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RSI.i1502, align 8
  %2526 = sext i32 %2520 to i64
  %2527 = sext i32 %2524 to i64
  %2528 = mul nsw i64 %2527, %2526
  %2529 = trunc i64 %2528 to i32
  %2530 = and i64 %2528, 4294967295
  store i64 %2530, i64* %RDX.i1082, align 8
  %2531 = shl i64 %2528, 32
  %2532 = ashr exact i64 %2531, 32
  %2533 = icmp ne i64 %2532, %2528
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %.pre-phi, align 1
  %2535 = and i32 %2529, 255
  %2536 = tail call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  store i8 %2539, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2540 = lshr i32 %2529, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %.pre-phi48, align 1
  store i8 %2534, i8* %.pre-phi50, align 1
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -48
  %2544 = add i64 %1717, 344
  store i64 %2544, i64* %3, align 8
  %2545 = trunc i64 %2528 to i32
  %2546 = inttoptr i64 %2543 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = add i32 %2547, %2545
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i1082, align 8
  %2550 = icmp ult i32 %2548, %2545
  %2551 = icmp ult i32 %2548, %2547
  %2552 = or i1 %2550, %2551
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %.pre-phi, align 1
  %2554 = and i32 %2548, 255
  %2555 = tail call i32 @llvm.ctpop.i32(i32 %2554)
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  store i8 %2558, i8* %.pre-phi42, align 1
  %2559 = xor i32 %2547, %2545
  %2560 = xor i32 %2559, %2548
  %2561 = lshr i32 %2560, 4
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  store i8 %2563, i8* %.pre-phi44, align 1
  %2564 = icmp eq i32 %2548, 0
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %.pre-phi46, align 1
  %2566 = lshr i32 %2548, 31
  %2567 = trunc i32 %2566 to i8
  store i8 %2567, i8* %.pre-phi48, align 1
  %2568 = lshr i32 %2545, 31
  %2569 = lshr i32 %2547, 31
  %2570 = xor i32 %2566, %2568
  %2571 = xor i32 %2566, %2569
  %2572 = add nuw nsw i32 %2570, %2571
  %2573 = icmp eq i32 %2572, 2
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %.pre-phi50, align 1
  %2575 = sext i32 %2548 to i64
  store i64 %2575, i64* %RCX.i1621, align 8
  %2576 = load i64, i64* %RAX.i1124, align 8
  %2577 = shl nsw i64 %2575, 2
  %2578 = add i64 %2576, %2577
  %2579 = add i64 %1717, 352
  store i64 %2579, i64* %3, align 8
  %2580 = load <2 x float>, <2 x float>* %1670, align 1
  %2581 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2582 = inttoptr i64 %2578 to float*
  %2583 = load float, float* %2582, align 4
  %2584 = extractelement <2 x float> %2580, i32 0
  %2585 = fmul float %2584, %2583
  store float %2585, float* %1662, align 1
  %2586 = bitcast <2 x float> %2580 to <2 x i32>
  %2587 = extractelement <2 x i32> %2586, i32 1
  store i32 %2587, i32* %1672, align 1
  %2588 = extractelement <2 x i32> %2581, i32 0
  store i32 %2588, i32* %1673, align 1
  %2589 = extractelement <2 x i32> %2581, i32 1
  store i32 %2589, i32* %1674, align 1
  %2590 = load <2 x float>, <2 x float>* %1675, align 1
  %2591 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2592 = load <2 x float>, <2 x float>* %1670, align 1
  %2593 = extractelement <2 x float> %2590, i32 0
  %2594 = extractelement <2 x float> %2592, i32 0
  %2595 = fadd float %2593, %2594
  store float %2595, float* %1652, align 1
  %2596 = bitcast <2 x float> %2590 to <2 x i32>
  %2597 = extractelement <2 x i32> %2596, i32 1
  store i32 %2597, i32* %1677, align 1
  %2598 = extractelement <2 x i32> %2591, i32 0
  store i32 %2598, i32* %1678, align 1
  %2599 = extractelement <2 x i32> %2591, i32 1
  store i32 %2599, i32* %1679, align 1
  %2600 = add i64 %2542, -32
  %2601 = add i64 %1717, 360
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RAX.i1124, align 8
  %2604 = add i64 %2542, -44
  %2605 = add i64 %1717, 364
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = sext i32 %2607 to i64
  store i64 %2608, i64* %RCX.i1621, align 8
  %2609 = shl nsw i64 %2608, 2
  %2610 = add i64 %2609, %2603
  %2611 = add i64 %1717, 369
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i32*
  %2613 = load i32, i32* %2612, align 4
  store i32 %2613, i32* %1663, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1667, align 1
  store float 0.000000e+00, float* %1669, align 1
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -40
  %2616 = add i64 %1717, 373
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i64*
  %2618 = load i64, i64* %2617, align 8
  store i64 %2618, i64* %RAX.i1124, align 8
  %2619 = add i64 %2614, -24
  %2620 = add i64 %1717, 376
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RDX.i1082, align 8
  %2624 = add i64 %2614, -44
  %2625 = add i64 %1717, 380
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = sext i32 %2622 to i64
  %2629 = sext i32 %2627 to i64
  %2630 = mul nsw i64 %2629, %2628
  %2631 = trunc i64 %2630 to i32
  %2632 = and i64 %2630, 4294967295
  store i64 %2632, i64* %RDX.i1082, align 8
  %2633 = shl i64 %2630, 32
  %2634 = ashr exact i64 %2633, 32
  %2635 = icmp ne i64 %2634, %2630
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %.pre-phi, align 1
  %2637 = and i32 %2631, 255
  %2638 = tail call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  store i8 %2641, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %2642 = lshr i32 %2631, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %.pre-phi48, align 1
  store i8 %2636, i8* %.pre-phi50, align 1
  %2644 = add i64 %2614, -48
  %2645 = add i64 %1717, 383
  store i64 %2645, i64* %3, align 8
  %2646 = trunc i64 %2630 to i32
  %2647 = inttoptr i64 %2644 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = add i32 %2648, %2646
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RDX.i1082, align 8
  %2651 = icmp ult i32 %2649, %2646
  %2652 = icmp ult i32 %2649, %2648
  %2653 = or i1 %2651, %2652
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %.pre-phi, align 1
  %2655 = and i32 %2649, 255
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  store i8 %2659, i8* %.pre-phi42, align 1
  %2660 = xor i32 %2648, %2646
  %2661 = xor i32 %2660, %2649
  %2662 = lshr i32 %2661, 4
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  store i8 %2664, i8* %.pre-phi44, align 1
  %2665 = icmp eq i32 %2649, 0
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %.pre-phi46, align 1
  %2667 = lshr i32 %2649, 31
  %2668 = trunc i32 %2667 to i8
  store i8 %2668, i8* %.pre-phi48, align 1
  %2669 = lshr i32 %2646, 31
  %2670 = lshr i32 %2648, 31
  %2671 = xor i32 %2667, %2669
  %2672 = xor i32 %2667, %2670
  %2673 = add nuw nsw i32 %2671, %2672
  %2674 = icmp eq i32 %2673, 2
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %.pre-phi50, align 1
  %2676 = sext i32 %2649 to i64
  store i64 %2676, i64* %RCX.i1621, align 8
  %2677 = shl nsw i64 %2676, 2
  %2678 = add i64 %2618, %2677
  %2679 = add i64 %1717, 391
  store i64 %2679, i64* %3, align 8
  %2680 = load <2 x float>, <2 x float>* %1670, align 1
  %2681 = load <2 x i32>, <2 x i32>* %1671, align 1
  %2682 = inttoptr i64 %2678 to float*
  %2683 = load float, float* %2682, align 4
  %2684 = extractelement <2 x float> %2680, i32 0
  %2685 = fmul float %2684, %2683
  store float %2685, float* %1662, align 1
  %2686 = bitcast <2 x float> %2680 to <2 x i32>
  %2687 = extractelement <2 x i32> %2686, i32 1
  store i32 %2687, i32* %1672, align 1
  %2688 = extractelement <2 x i32> %2681, i32 0
  store i32 %2688, i32* %1673, align 1
  %2689 = extractelement <2 x i32> %2681, i32 1
  store i32 %2689, i32* %1674, align 1
  %2690 = load <2 x float>, <2 x float>* %1675, align 1
  %2691 = load <2 x i32>, <2 x i32>* %1676, align 1
  %2692 = load <2 x float>, <2 x float>* %1670, align 1
  %2693 = extractelement <2 x float> %2690, i32 0
  %2694 = extractelement <2 x float> %2692, i32 0
  %2695 = fadd float %2693, %2694
  store float %2695, float* %1652, align 1
  %2696 = bitcast <2 x float> %2690 to <2 x i32>
  %2697 = extractelement <2 x i32> %2696, i32 1
  store i32 %2697, i32* %1677, align 1
  %2698 = extractelement <2 x i32> %2691, i32 0
  store i32 %2698, i32* %1678, align 1
  %2699 = extractelement <2 x i32> %2691, i32 1
  store i32 %2699, i32* %1679, align 1
  %2700 = load i64, i64* %RBP.i, align 8
  %2701 = add i64 %2700, -16
  %2702 = add i64 %1717, 399
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i64*
  %2704 = load i64, i64* %2703, align 8
  store i64 %2704, i64* %RAX.i1124, align 8
  %2705 = add i64 %2700, -48
  %2706 = add i64 %1717, 403
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = sext i32 %2708 to i64
  store i64 %2709, i64* %RCX.i1621, align 8
  %2710 = shl nsw i64 %2709, 2
  %2711 = add i64 %2710, %2704
  %2712 = add i64 %1717, 408
  store i64 %2712, i64* %3, align 8
  %2713 = load <2 x float>, <2 x float>* %1675, align 1
  %2714 = extractelement <2 x float> %2713, i32 0
  %2715 = inttoptr i64 %2711 to float*
  store float %2714, float* %2715, align 4
  %2716 = load i64, i64* %RBP.i, align 8
  %2717 = add i64 %2716, -48
  %2718 = load i64, i64* %3, align 8
  %2719 = add i64 %2718, 3
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2717 to i32*
  %2721 = load i32, i32* %2720, align 4
  %2722 = add i32 %2721, 1
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %RAX.i1124, align 8
  %2724 = icmp eq i32 %2721, -1
  %2725 = icmp eq i32 %2722, 0
  %2726 = or i1 %2724, %2725
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %.pre-phi, align 1
  %2728 = and i32 %2722, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %.pre-phi42, align 1
  %2733 = xor i32 %2722, %2721
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %.pre-phi44, align 1
  %2737 = zext i1 %2725 to i8
  store i8 %2737, i8* %.pre-phi46, align 1
  %2738 = lshr i32 %2722, 31
  %2739 = trunc i32 %2738 to i8
  store i8 %2739, i8* %.pre-phi48, align 1
  %2740 = lshr i32 %2721, 31
  %2741 = xor i32 %2738, %2740
  %2742 = add nuw nsw i32 %2741, %2738
  %2743 = icmp eq i32 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %.pre-phi50, align 1
  %2745 = add i64 %2718, 9
  store i64 %2745, i64* %3, align 8
  store i32 %2722, i32* %2720, align 4
  %2746 = load i64, i64* %3, align 8
  %2747 = add i64 %2746, -429
  store i64 %2747, i64* %3, align 8
  br label %block_.L_40226d

block_.L_40241f:                                  ; preds = %block_.L_40226d
  %2748 = add i64 %1717, 5
  store i64 %2748, i64* %3, align 8
  br label %block_.L_402424

block_.L_402424:                                  ; preds = %block_.L_40241f, %routine_idivl__ecx.exit1122
  %2749 = phi i64 [ %1681, %block_.L_40241f ], [ %1590, %routine_idivl__ecx.exit1122 ]
  %2750 = phi i64 [ %2748, %block_.L_40241f ], [ %1619, %routine_idivl__ecx.exit1122 ]
  store i64 16, i64* %RAX.i1124, align 8
  %2751 = add i64 %2749, -20
  %2752 = add i64 %2750, 8
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i1621, align 8
  %2756 = add i64 %2749, -72
  %2757 = add i64 %2750, 11
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i32*
  store i32 16, i32* %2758, align 4
  %2759 = load i32, i32* %ECX.i1628, align 4
  %2760 = zext i32 %2759 to i64
  %2761 = load i64, i64* %3, align 8
  store i64 %2760, i64* %RAX.i1124, align 8
  %2762 = sext i32 %2759 to i64
  %2763 = lshr i64 %2762, 32
  store i64 %2763, i64* %63, align 8
  %2764 = load i64, i64* %RBP.i, align 8
  %2765 = add i64 %2764, -72
  %2766 = add i64 %2761, 6
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RCX.i1621, align 8
  %2770 = add i64 %2761, 8
  store i64 %2770, i64* %3, align 8
  %2771 = sext i32 %2768 to i64
  %2772 = shl nuw i64 %2763, 32
  %2773 = or i64 %2772, %2760
  %2774 = sdiv i64 %2773, %2771
  %2775 = shl i64 %2774, 32
  %2776 = ashr exact i64 %2775, 32
  %2777 = icmp eq i64 %2774, %2776
  br i1 %2777, label %2780, label %2778

; <label>:2778:                                   ; preds = %block_.L_402424
  %2779 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2770, %struct.Memory* %1586)
  %RDX.i722.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre35 = load i64, i64* %RDX.i722.phi.trans.insert, align 8
  %.pre36 = load i64, i64* %3, align 8
  %.pre37 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:2780:                                   ; preds = %block_.L_402424
  %2781 = srem i64 %2773, %2771
  %2782 = and i64 %2774, 4294967295
  store i64 %2782, i64* %RAX.i1124, align 8
  %2783 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %2784 = and i64 %2781, 4294967295
  store i64 %2784, i64* %2783, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  store i8 0, i8* %.pre-phi48, align 1
  store i8 0, i8* %.pre-phi50, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2780, %2778
  %RDX.i722.pre-phi = phi i64* [ %2783, %2780 ], [ %RDX.i722.phi.trans.insert, %2778 ]
  %2785 = phi i64 [ %2764, %2780 ], [ %.pre37, %2778 ]
  %2786 = phi i64 [ %2770, %2780 ], [ %.pre36, %2778 ]
  %2787 = phi i64 [ %2784, %2780 ], [ %.pre35, %2778 ]
  %2788 = phi %struct.Memory* [ %1586, %2780 ], [ %2779, %2778 ]
  %2789 = trunc i64 %2787 to i32
  %2790 = add i32 %2789, 16
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %RDX.i722.pre-phi, align 8
  %2792 = icmp ugt i32 %2789, -17
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %.pre-phi, align 1
  %2794 = and i32 %2790, 255
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %.pre-phi42, align 1
  %2799 = xor i32 %2789, 16
  %2800 = xor i32 %2799, %2790
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %.pre-phi44, align 1
  %2804 = icmp eq i32 %2790, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %.pre-phi46, align 1
  %2806 = lshr i32 %2790, 31
  %2807 = trunc i32 %2806 to i8
  store i8 %2807, i8* %.pre-phi48, align 1
  %2808 = lshr i32 %2789, 31
  %2809 = xor i32 %2806, %2808
  %2810 = add nuw nsw i32 %2809, %2806
  %2811 = icmp eq i32 %2810, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %.pre-phi50, align 1
  %2813 = add i64 %2785, -52
  %2814 = add i64 %2786, 6
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  store i32 %2790, i32* %2815, align 4
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -52
  %2818 = load i64, i64* %3, align 8
  %2819 = add i64 %2818, 3
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2817 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = add i32 %2821, -1
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RDX.i722.pre-phi, align 8
  %2824 = icmp eq i32 %2821, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %.pre-phi, align 1
  %2826 = and i32 %2822, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %.pre-phi42, align 1
  %2831 = xor i32 %2822, %2821
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %.pre-phi44, align 1
  %2835 = icmp eq i32 %2822, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %.pre-phi46, align 1
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %.pre-phi48, align 1
  %2839 = lshr i32 %2821, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %.pre-phi50, align 1
  %2844 = add i64 %2816, -44
  %2845 = add i64 %2818, 9
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  store i32 %2822, i32* %2846, align 4
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2848 = bitcast [32 x %union.VectorReg]* %2847 to i8*
  %2849 = bitcast [32 x %union.VectorReg]* %2847 to float*
  %2850 = bitcast [32 x %union.VectorReg]* %2847 to i32*
  %2851 = getelementptr inbounds i8, i8* %2848, i64 4
  %2852 = bitcast i8* %2851 to float*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2854 = bitcast i64* %2853 to float*
  %2855 = getelementptr inbounds i8, i8* %2848, i64 12
  %2856 = bitcast i8* %2855 to float*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2858 = bitcast %union.VectorReg* %2857 to i8*
  %2859 = bitcast %union.VectorReg* %2857 to float*
  %2860 = bitcast %union.VectorReg* %2857 to i32*
  %2861 = getelementptr inbounds i8, i8* %2858, i64 4
  %2862 = bitcast i8* %2861 to float*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2864 = bitcast i64* %2863 to float*
  %2865 = getelementptr inbounds i8, i8* %2858, i64 12
  %2866 = bitcast i8* %2865 to float*
  %2867 = bitcast %union.VectorReg* %2857 to <2 x float>*
  %2868 = bitcast i64* %2863 to <2 x i32>*
  %2869 = bitcast i8* %2861 to i32*
  %2870 = bitcast i64* %2863 to i32*
  %2871 = bitcast i8* %2865 to i32*
  %2872 = bitcast [32 x %union.VectorReg]* %2847 to <2 x float>*
  %2873 = bitcast i64* %2853 to <2 x i32>*
  %2874 = bitcast i8* %2851 to i32*
  %2875 = bitcast i64* %2853 to i32*
  %2876 = bitcast i8* %2855 to i32*
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_402446

block_.L_402446:                                  ; preds = %block_.L_402793, %routine_idivl__ecx.exit
  %2877 = phi i64 [ %5011, %block_.L_402793 ], [ %.pre38, %routine_idivl__ecx.exit ]
  %2878 = load i64, i64* %RBP.i, align 8
  %2879 = add i64 %2878, -44
  %2880 = add i64 %2877, 3
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i1124, align 8
  %2884 = add i64 %2878, -20
  %2885 = add i64 %2877, 6
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = sub i32 %2882, %2887
  %2889 = icmp ult i32 %2882, %2887
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %.pre-phi, align 1
  %2891 = and i32 %2888, 255
  %2892 = tail call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  store i8 %2895, i8* %.pre-phi42, align 1
  %2896 = xor i32 %2887, %2882
  %2897 = xor i32 %2896, %2888
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %.pre-phi44, align 1
  %2901 = icmp eq i32 %2888, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %.pre-phi46, align 1
  %2903 = lshr i32 %2888, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %.pre-phi48, align 1
  %2905 = lshr i32 %2882, 31
  %2906 = lshr i32 %2887, 31
  %2907 = xor i32 %2906, %2905
  %2908 = xor i32 %2903, %2905
  %2909 = add nuw nsw i32 %2908, %2907
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %.pre-phi50, align 1
  %2912 = icmp ne i8 %2904, 0
  %2913 = xor i1 %2912, %2910
  %.v59 = select i1 %2913, i64 12, i64 864
  %2914 = add i64 %2877, %.v59
  store i64 %2914, i64* %3, align 8
  br i1 %2913, label %block_402452, label %block_.L_4027a6

block_402452:                                     ; preds = %block_.L_402446
  %2915 = add i64 %2878, -48
  %2916 = add i64 %2914, 7
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i32*
  store i32 0, i32* %2917, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_402459

block_.L_402459:                                  ; preds = %block_402465, %block_402452
  %2918 = phi i64 [ %4981, %block_402465 ], [ %.pre39, %block_402452 ]
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -48
  %2921 = add i64 %2918, 3
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i32*
  %2923 = load i32, i32* %2922, align 4
  %2924 = zext i32 %2923 to i64
  store i64 %2924, i64* %RAX.i1124, align 8
  %2925 = add i64 %2919, -4
  %2926 = add i64 %2918, 6
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = sub i32 %2923, %2928
  %2930 = icmp ult i32 %2923, %2928
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %.pre-phi, align 1
  %2932 = and i32 %2929, 255
  %2933 = tail call i32 @llvm.ctpop.i32(i32 %2932)
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  store i8 %2936, i8* %.pre-phi42, align 1
  %2937 = xor i32 %2928, %2923
  %2938 = xor i32 %2937, %2929
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  store i8 %2941, i8* %.pre-phi44, align 1
  %2942 = icmp eq i32 %2929, 0
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %.pre-phi46, align 1
  %2944 = lshr i32 %2929, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %.pre-phi48, align 1
  %2946 = lshr i32 %2923, 31
  %2947 = lshr i32 %2928, 31
  %2948 = xor i32 %2947, %2946
  %2949 = xor i32 %2944, %2946
  %2950 = add nuw nsw i32 %2949, %2948
  %2951 = icmp eq i32 %2950, 2
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %.pre-phi50, align 1
  %2953 = icmp ne i8 %2945, 0
  %2954 = xor i1 %2953, %2951
  %.v = select i1 %2954, i64 12, i64 826
  %2955 = add i64 %2918, %.v
  store i64 %2955, i64* %3, align 8
  br i1 %2954, label %block_402465, label %block_.L_402793

block_402465:                                     ; preds = %block_.L_402459
  %2956 = add i64 %2919, -16
  %2957 = add i64 %2955, 4
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i64*
  %2959 = load i64, i64* %2958, align 8
  store i64 %2959, i64* %RAX.i1124, align 8
  %2960 = add i64 %2955, 8
  store i64 %2960, i64* %3, align 8
  %2961 = load i32, i32* %2922, align 4
  %2962 = sext i32 %2961 to i64
  store i64 %2962, i64* %RCX.i1621, align 8
  %2963 = shl nsw i64 %2962, 2
  %2964 = add i64 %2963, %2959
  %2965 = add i64 %2955, 13
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  store i32 %2967, i32* %2850, align 1
  store float 0.000000e+00, float* %2852, align 1
  store float 0.000000e+00, float* %2854, align 1
  store float 0.000000e+00, float* %2856, align 1
  %2968 = add i64 %2919, -32
  %2969 = add i64 %2955, 17
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %RAX.i1124, align 8
  %2972 = add i64 %2919, -44
  %2973 = add i64 %2955, 20
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = add i32 %2975, -15
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RDX.i722.pre-phi, align 8
  %2978 = icmp ult i32 %2975, 15
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %.pre-phi, align 1
  %2980 = and i32 %2976, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %.pre-phi42, align 1
  %2985 = xor i32 %2976, %2975
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  store i8 %2988, i8* %.pre-phi44, align 1
  %2989 = icmp eq i32 %2976, 0
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %.pre-phi46, align 1
  %2991 = lshr i32 %2976, 31
  %2992 = trunc i32 %2991 to i8
  store i8 %2992, i8* %.pre-phi48, align 1
  %2993 = lshr i32 %2975, 31
  %2994 = xor i32 %2991, %2993
  %2995 = add nuw nsw i32 %2994, %2993
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %.pre-phi50, align 1
  %2998 = sext i32 %2976 to i64
  store i64 %2998, i64* %RCX.i1621, align 8
  %2999 = shl nsw i64 %2998, 2
  %3000 = add i64 %2971, %2999
  %3001 = add i64 %2955, 31
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i32*
  %3003 = load i32, i32* %3002, align 4
  store i32 %3003, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3004 = add i64 %2919, -40
  %3005 = add i64 %2955, 35
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %RAX.i1124, align 8
  %3008 = add i64 %2919, -24
  %3009 = add i64 %2955, 38
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = zext i32 %3011 to i64
  store i64 %3012, i64* %RDX.i722.pre-phi, align 8
  %3013 = add i64 %2955, 41
  store i64 %3013, i64* %3, align 8
  %3014 = load i32, i32* %2974, align 4
  %3015 = add i32 %3014, -15
  %3016 = zext i32 %3015 to i64
  store i64 %3016, i64* %RSI.i1502, align 8
  %3017 = sext i32 %3011 to i64
  %3018 = sext i32 %3015 to i64
  %3019 = mul nsw i64 %3018, %3017
  %3020 = trunc i64 %3019 to i32
  %3021 = and i64 %3019, 4294967295
  store i64 %3021, i64* %RDX.i722.pre-phi, align 8
  %3022 = shl i64 %3019, 32
  %3023 = ashr exact i64 %3022, 32
  %3024 = icmp ne i64 %3023, %3019
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %.pre-phi, align 1
  %3026 = and i32 %3020, 255
  %3027 = tail call i32 @llvm.ctpop.i32(i32 %3026)
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = xor i8 %3029, 1
  store i8 %3030, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3031 = lshr i32 %3020, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %.pre-phi48, align 1
  store i8 %3025, i8* %.pre-phi50, align 1
  %3033 = load i64, i64* %RBP.i, align 8
  %3034 = add i64 %3033, -48
  %3035 = add i64 %2955, 50
  store i64 %3035, i64* %3, align 8
  %3036 = trunc i64 %3019 to i32
  %3037 = inttoptr i64 %3034 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = add i32 %3038, %3036
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RDX.i722.pre-phi, align 8
  %3041 = icmp ult i32 %3039, %3036
  %3042 = icmp ult i32 %3039, %3038
  %3043 = or i1 %3041, %3042
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %.pre-phi, align 1
  %3045 = and i32 %3039, 255
  %3046 = tail call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  store i8 %3049, i8* %.pre-phi42, align 1
  %3050 = xor i32 %3038, %3036
  %3051 = xor i32 %3050, %3039
  %3052 = lshr i32 %3051, 4
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  store i8 %3054, i8* %.pre-phi44, align 1
  %3055 = icmp eq i32 %3039, 0
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %.pre-phi46, align 1
  %3057 = lshr i32 %3039, 31
  %3058 = trunc i32 %3057 to i8
  store i8 %3058, i8* %.pre-phi48, align 1
  %3059 = lshr i32 %3036, 31
  %3060 = lshr i32 %3038, 31
  %3061 = xor i32 %3057, %3059
  %3062 = xor i32 %3057, %3060
  %3063 = add nuw nsw i32 %3061, %3062
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %.pre-phi50, align 1
  %3066 = sext i32 %3039 to i64
  store i64 %3066, i64* %RCX.i1621, align 8
  %3067 = load i64, i64* %RAX.i1124, align 8
  %3068 = shl nsw i64 %3066, 2
  %3069 = add i64 %3067, %3068
  %3070 = add i64 %2955, 58
  store i64 %3070, i64* %3, align 8
  %3071 = load <2 x float>, <2 x float>* %2867, align 1
  %3072 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3073 = inttoptr i64 %3069 to float*
  %3074 = load float, float* %3073, align 4
  %3075 = extractelement <2 x float> %3071, i32 0
  %3076 = fmul float %3075, %3074
  store float %3076, float* %2859, align 1
  %3077 = bitcast <2 x float> %3071 to <2 x i32>
  %3078 = extractelement <2 x i32> %3077, i32 1
  store i32 %3078, i32* %2869, align 1
  %3079 = extractelement <2 x i32> %3072, i32 0
  store i32 %3079, i32* %2870, align 1
  %3080 = extractelement <2 x i32> %3072, i32 1
  store i32 %3080, i32* %2871, align 1
  %3081 = load <2 x float>, <2 x float>* %2872, align 1
  %3082 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3083 = load <2 x float>, <2 x float>* %2867, align 1
  %3084 = extractelement <2 x float> %3081, i32 0
  %3085 = extractelement <2 x float> %3083, i32 0
  %3086 = fadd float %3084, %3085
  store float %3086, float* %2849, align 1
  %3087 = bitcast <2 x float> %3081 to <2 x i32>
  %3088 = extractelement <2 x i32> %3087, i32 1
  store i32 %3088, i32* %2874, align 1
  %3089 = extractelement <2 x i32> %3082, i32 0
  store i32 %3089, i32* %2875, align 1
  %3090 = extractelement <2 x i32> %3082, i32 1
  store i32 %3090, i32* %2876, align 1
  %3091 = add i64 %3033, -32
  %3092 = add i64 %2955, 66
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i64*
  %3094 = load i64, i64* %3093, align 8
  store i64 %3094, i64* %RAX.i1124, align 8
  %3095 = add i64 %3033, -44
  %3096 = add i64 %2955, 69
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  %3099 = add i32 %3098, -14
  %3100 = zext i32 %3099 to i64
  store i64 %3100, i64* %RDX.i722.pre-phi, align 8
  %3101 = icmp ult i32 %3098, 14
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %.pre-phi, align 1
  %3103 = and i32 %3099, 255
  %3104 = tail call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  store i8 %3107, i8* %.pre-phi42, align 1
  %3108 = xor i32 %3099, %3098
  %3109 = lshr i32 %3108, 4
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  store i8 %3111, i8* %.pre-phi44, align 1
  %3112 = icmp eq i32 %3099, 0
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %.pre-phi46, align 1
  %3114 = lshr i32 %3099, 31
  %3115 = trunc i32 %3114 to i8
  store i8 %3115, i8* %.pre-phi48, align 1
  %3116 = lshr i32 %3098, 31
  %3117 = xor i32 %3114, %3116
  %3118 = add nuw nsw i32 %3117, %3116
  %3119 = icmp eq i32 %3118, 2
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %.pre-phi50, align 1
  %3121 = sext i32 %3099 to i64
  store i64 %3121, i64* %RCX.i1621, align 8
  %3122 = shl nsw i64 %3121, 2
  %3123 = add i64 %3094, %3122
  %3124 = add i64 %2955, 80
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i32*
  %3126 = load i32, i32* %3125, align 4
  store i32 %3126, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3127 = load i64, i64* %RBP.i, align 8
  %3128 = add i64 %3127, -40
  %3129 = add i64 %2955, 84
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i64*
  %3131 = load i64, i64* %3130, align 8
  store i64 %3131, i64* %RAX.i1124, align 8
  %3132 = add i64 %3127, -24
  %3133 = add i64 %2955, 87
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  %3135 = load i32, i32* %3134, align 4
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RDX.i722.pre-phi, align 8
  %3137 = add i64 %3127, -44
  %3138 = add i64 %2955, 90
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = add i32 %3140, -14
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RSI.i1502, align 8
  %3143 = sext i32 %3135 to i64
  %3144 = sext i32 %3141 to i64
  %3145 = mul nsw i64 %3144, %3143
  %3146 = trunc i64 %3145 to i32
  %3147 = and i64 %3145, 4294967295
  store i64 %3147, i64* %RDX.i722.pre-phi, align 8
  %3148 = shl i64 %3145, 32
  %3149 = ashr exact i64 %3148, 32
  %3150 = icmp ne i64 %3149, %3145
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %.pre-phi, align 1
  %3152 = and i32 %3146, 255
  %3153 = tail call i32 @llvm.ctpop.i32(i32 %3152)
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  %3156 = xor i8 %3155, 1
  store i8 %3156, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3157 = lshr i32 %3146, 31
  %3158 = trunc i32 %3157 to i8
  store i8 %3158, i8* %.pre-phi48, align 1
  store i8 %3151, i8* %.pre-phi50, align 1
  %3159 = add i64 %3127, -48
  %3160 = add i64 %2955, 99
  store i64 %3160, i64* %3, align 8
  %3161 = trunc i64 %3145 to i32
  %3162 = inttoptr i64 %3159 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = add i32 %3163, %3161
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RDX.i722.pre-phi, align 8
  %3166 = icmp ult i32 %3164, %3161
  %3167 = icmp ult i32 %3164, %3163
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %.pre-phi, align 1
  %3170 = and i32 %3164, 255
  %3171 = tail call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  store i8 %3174, i8* %.pre-phi42, align 1
  %3175 = xor i32 %3163, %3161
  %3176 = xor i32 %3175, %3164
  %3177 = lshr i32 %3176, 4
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  store i8 %3179, i8* %.pre-phi44, align 1
  %3180 = icmp eq i32 %3164, 0
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %.pre-phi46, align 1
  %3182 = lshr i32 %3164, 31
  %3183 = trunc i32 %3182 to i8
  store i8 %3183, i8* %.pre-phi48, align 1
  %3184 = lshr i32 %3161, 31
  %3185 = lshr i32 %3163, 31
  %3186 = xor i32 %3182, %3184
  %3187 = xor i32 %3182, %3185
  %3188 = add nuw nsw i32 %3186, %3187
  %3189 = icmp eq i32 %3188, 2
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %.pre-phi50, align 1
  %3191 = sext i32 %3164 to i64
  store i64 %3191, i64* %RCX.i1621, align 8
  %3192 = load i64, i64* %RAX.i1124, align 8
  %3193 = shl nsw i64 %3191, 2
  %3194 = add i64 %3192, %3193
  %3195 = add i64 %2955, 107
  store i64 %3195, i64* %3, align 8
  %3196 = load <2 x float>, <2 x float>* %2867, align 1
  %3197 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3198 = inttoptr i64 %3194 to float*
  %3199 = load float, float* %3198, align 4
  %3200 = extractelement <2 x float> %3196, i32 0
  %3201 = fmul float %3200, %3199
  store float %3201, float* %2859, align 1
  %3202 = bitcast <2 x float> %3196 to <2 x i32>
  %3203 = extractelement <2 x i32> %3202, i32 1
  store i32 %3203, i32* %2869, align 1
  %3204 = extractelement <2 x i32> %3197, i32 0
  store i32 %3204, i32* %2870, align 1
  %3205 = extractelement <2 x i32> %3197, i32 1
  store i32 %3205, i32* %2871, align 1
  %3206 = load <2 x float>, <2 x float>* %2872, align 1
  %3207 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3208 = load <2 x float>, <2 x float>* %2867, align 1
  %3209 = extractelement <2 x float> %3206, i32 0
  %3210 = extractelement <2 x float> %3208, i32 0
  %3211 = fadd float %3209, %3210
  store float %3211, float* %2849, align 1
  %3212 = bitcast <2 x float> %3206 to <2 x i32>
  %3213 = extractelement <2 x i32> %3212, i32 1
  store i32 %3213, i32* %2874, align 1
  %3214 = extractelement <2 x i32> %3207, i32 0
  store i32 %3214, i32* %2875, align 1
  %3215 = extractelement <2 x i32> %3207, i32 1
  store i32 %3215, i32* %2876, align 1
  %3216 = load i64, i64* %RBP.i, align 8
  %3217 = add i64 %3216, -32
  %3218 = add i64 %2955, 115
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i64*
  %3220 = load i64, i64* %3219, align 8
  store i64 %3220, i64* %RAX.i1124, align 8
  %3221 = add i64 %3216, -44
  %3222 = add i64 %2955, 118
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  %3224 = load i32, i32* %3223, align 4
  %3225 = add i32 %3224, -13
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RDX.i722.pre-phi, align 8
  %3227 = icmp ult i32 %3224, 13
  %3228 = zext i1 %3227 to i8
  store i8 %3228, i8* %.pre-phi, align 1
  %3229 = and i32 %3225, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %.pre-phi42, align 1
  %3234 = xor i32 %3225, %3224
  %3235 = lshr i32 %3234, 4
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  store i8 %3237, i8* %.pre-phi44, align 1
  %3238 = icmp eq i32 %3225, 0
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %.pre-phi46, align 1
  %3240 = lshr i32 %3225, 31
  %3241 = trunc i32 %3240 to i8
  store i8 %3241, i8* %.pre-phi48, align 1
  %3242 = lshr i32 %3224, 31
  %3243 = xor i32 %3240, %3242
  %3244 = add nuw nsw i32 %3243, %3242
  %3245 = icmp eq i32 %3244, 2
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %.pre-phi50, align 1
  %3247 = sext i32 %3225 to i64
  store i64 %3247, i64* %RCX.i1621, align 8
  %3248 = shl nsw i64 %3247, 2
  %3249 = add i64 %3220, %3248
  %3250 = add i64 %2955, 129
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  store i32 %3252, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3253 = add i64 %3216, -40
  %3254 = add i64 %2955, 133
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %RAX.i1124, align 8
  %3257 = add i64 %3216, -24
  %3258 = add i64 %2955, 136
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RDX.i722.pre-phi, align 8
  %3262 = add i64 %2955, 139
  store i64 %3262, i64* %3, align 8
  %3263 = load i32, i32* %3223, align 4
  %3264 = add i32 %3263, -13
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RSI.i1502, align 8
  %3266 = sext i32 %3260 to i64
  %3267 = sext i32 %3264 to i64
  %3268 = mul nsw i64 %3267, %3266
  %3269 = trunc i64 %3268 to i32
  %3270 = and i64 %3268, 4294967295
  store i64 %3270, i64* %RDX.i722.pre-phi, align 8
  %3271 = shl i64 %3268, 32
  %3272 = ashr exact i64 %3271, 32
  %3273 = icmp ne i64 %3272, %3268
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %.pre-phi, align 1
  %3275 = and i32 %3269, 255
  %3276 = tail call i32 @llvm.ctpop.i32(i32 %3275)
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = xor i8 %3278, 1
  store i8 %3279, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3280 = lshr i32 %3269, 31
  %3281 = trunc i32 %3280 to i8
  store i8 %3281, i8* %.pre-phi48, align 1
  store i8 %3274, i8* %.pre-phi50, align 1
  %3282 = load i64, i64* %RBP.i, align 8
  %3283 = add i64 %3282, -48
  %3284 = add i64 %2955, 148
  store i64 %3284, i64* %3, align 8
  %3285 = trunc i64 %3268 to i32
  %3286 = inttoptr i64 %3283 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = add i32 %3287, %3285
  %3289 = zext i32 %3288 to i64
  store i64 %3289, i64* %RDX.i722.pre-phi, align 8
  %3290 = icmp ult i32 %3288, %3285
  %3291 = icmp ult i32 %3288, %3287
  %3292 = or i1 %3290, %3291
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %.pre-phi, align 1
  %3294 = and i32 %3288, 255
  %3295 = tail call i32 @llvm.ctpop.i32(i32 %3294)
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = xor i8 %3297, 1
  store i8 %3298, i8* %.pre-phi42, align 1
  %3299 = xor i32 %3287, %3285
  %3300 = xor i32 %3299, %3288
  %3301 = lshr i32 %3300, 4
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  store i8 %3303, i8* %.pre-phi44, align 1
  %3304 = icmp eq i32 %3288, 0
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %.pre-phi46, align 1
  %3306 = lshr i32 %3288, 31
  %3307 = trunc i32 %3306 to i8
  store i8 %3307, i8* %.pre-phi48, align 1
  %3308 = lshr i32 %3285, 31
  %3309 = lshr i32 %3287, 31
  %3310 = xor i32 %3306, %3308
  %3311 = xor i32 %3306, %3309
  %3312 = add nuw nsw i32 %3310, %3311
  %3313 = icmp eq i32 %3312, 2
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %.pre-phi50, align 1
  %3315 = sext i32 %3288 to i64
  store i64 %3315, i64* %RCX.i1621, align 8
  %3316 = load i64, i64* %RAX.i1124, align 8
  %3317 = shl nsw i64 %3315, 2
  %3318 = add i64 %3316, %3317
  %3319 = add i64 %2955, 156
  store i64 %3319, i64* %3, align 8
  %3320 = load <2 x float>, <2 x float>* %2867, align 1
  %3321 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3322 = inttoptr i64 %3318 to float*
  %3323 = load float, float* %3322, align 4
  %3324 = extractelement <2 x float> %3320, i32 0
  %3325 = fmul float %3324, %3323
  store float %3325, float* %2859, align 1
  %3326 = bitcast <2 x float> %3320 to <2 x i32>
  %3327 = extractelement <2 x i32> %3326, i32 1
  store i32 %3327, i32* %2869, align 1
  %3328 = extractelement <2 x i32> %3321, i32 0
  store i32 %3328, i32* %2870, align 1
  %3329 = extractelement <2 x i32> %3321, i32 1
  store i32 %3329, i32* %2871, align 1
  %3330 = load <2 x float>, <2 x float>* %2872, align 1
  %3331 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3332 = load <2 x float>, <2 x float>* %2867, align 1
  %3333 = extractelement <2 x float> %3330, i32 0
  %3334 = extractelement <2 x float> %3332, i32 0
  %3335 = fadd float %3333, %3334
  store float %3335, float* %2849, align 1
  %3336 = bitcast <2 x float> %3330 to <2 x i32>
  %3337 = extractelement <2 x i32> %3336, i32 1
  store i32 %3337, i32* %2874, align 1
  %3338 = extractelement <2 x i32> %3331, i32 0
  store i32 %3338, i32* %2875, align 1
  %3339 = extractelement <2 x i32> %3331, i32 1
  store i32 %3339, i32* %2876, align 1
  %3340 = add i64 %3282, -32
  %3341 = add i64 %2955, 164
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i64*
  %3343 = load i64, i64* %3342, align 8
  store i64 %3343, i64* %RAX.i1124, align 8
  %3344 = add i64 %3282, -44
  %3345 = add i64 %2955, 167
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i32*
  %3347 = load i32, i32* %3346, align 4
  %3348 = add i32 %3347, -12
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RDX.i722.pre-phi, align 8
  %3350 = icmp ult i32 %3347, 12
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %.pre-phi, align 1
  %3352 = and i32 %3348, 255
  %3353 = tail call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  store i8 %3356, i8* %.pre-phi42, align 1
  %3357 = xor i32 %3348, %3347
  %3358 = lshr i32 %3357, 4
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  store i8 %3360, i8* %.pre-phi44, align 1
  %3361 = icmp eq i32 %3348, 0
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %.pre-phi46, align 1
  %3363 = lshr i32 %3348, 31
  %3364 = trunc i32 %3363 to i8
  store i8 %3364, i8* %.pre-phi48, align 1
  %3365 = lshr i32 %3347, 31
  %3366 = xor i32 %3363, %3365
  %3367 = add nuw nsw i32 %3366, %3365
  %3368 = icmp eq i32 %3367, 2
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %.pre-phi50, align 1
  %3370 = sext i32 %3348 to i64
  store i64 %3370, i64* %RCX.i1621, align 8
  %3371 = shl nsw i64 %3370, 2
  %3372 = add i64 %3343, %3371
  %3373 = add i64 %2955, 178
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  %3375 = load i32, i32* %3374, align 4
  store i32 %3375, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3376 = load i64, i64* %RBP.i, align 8
  %3377 = add i64 %3376, -40
  %3378 = add i64 %2955, 182
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3377 to i64*
  %3380 = load i64, i64* %3379, align 8
  store i64 %3380, i64* %RAX.i1124, align 8
  %3381 = add i64 %3376, -24
  %3382 = add i64 %2955, 185
  store i64 %3382, i64* %3, align 8
  %3383 = inttoptr i64 %3381 to i32*
  %3384 = load i32, i32* %3383, align 4
  %3385 = zext i32 %3384 to i64
  store i64 %3385, i64* %RDX.i722.pre-phi, align 8
  %3386 = add i64 %3376, -44
  %3387 = add i64 %2955, 188
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i32*
  %3389 = load i32, i32* %3388, align 4
  %3390 = add i32 %3389, -12
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RSI.i1502, align 8
  %3392 = sext i32 %3384 to i64
  %3393 = sext i32 %3390 to i64
  %3394 = mul nsw i64 %3393, %3392
  %3395 = trunc i64 %3394 to i32
  %3396 = and i64 %3394, 4294967295
  store i64 %3396, i64* %RDX.i722.pre-phi, align 8
  %3397 = shl i64 %3394, 32
  %3398 = ashr exact i64 %3397, 32
  %3399 = icmp ne i64 %3398, %3394
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %.pre-phi, align 1
  %3401 = and i32 %3395, 255
  %3402 = tail call i32 @llvm.ctpop.i32(i32 %3401)
  %3403 = trunc i32 %3402 to i8
  %3404 = and i8 %3403, 1
  %3405 = xor i8 %3404, 1
  store i8 %3405, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3406 = lshr i32 %3395, 31
  %3407 = trunc i32 %3406 to i8
  store i8 %3407, i8* %.pre-phi48, align 1
  store i8 %3400, i8* %.pre-phi50, align 1
  %3408 = add i64 %3376, -48
  %3409 = add i64 %2955, 197
  store i64 %3409, i64* %3, align 8
  %3410 = trunc i64 %3394 to i32
  %3411 = inttoptr i64 %3408 to i32*
  %3412 = load i32, i32* %3411, align 4
  %3413 = add i32 %3412, %3410
  %3414 = zext i32 %3413 to i64
  store i64 %3414, i64* %RDX.i722.pre-phi, align 8
  %3415 = icmp ult i32 %3413, %3410
  %3416 = icmp ult i32 %3413, %3412
  %3417 = or i1 %3415, %3416
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %.pre-phi, align 1
  %3419 = and i32 %3413, 255
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  store i8 %3423, i8* %.pre-phi42, align 1
  %3424 = xor i32 %3412, %3410
  %3425 = xor i32 %3424, %3413
  %3426 = lshr i32 %3425, 4
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  store i8 %3428, i8* %.pre-phi44, align 1
  %3429 = icmp eq i32 %3413, 0
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %.pre-phi46, align 1
  %3431 = lshr i32 %3413, 31
  %3432 = trunc i32 %3431 to i8
  store i8 %3432, i8* %.pre-phi48, align 1
  %3433 = lshr i32 %3410, 31
  %3434 = lshr i32 %3412, 31
  %3435 = xor i32 %3431, %3433
  %3436 = xor i32 %3431, %3434
  %3437 = add nuw nsw i32 %3435, %3436
  %3438 = icmp eq i32 %3437, 2
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %.pre-phi50, align 1
  %3440 = sext i32 %3413 to i64
  store i64 %3440, i64* %RCX.i1621, align 8
  %3441 = load i64, i64* %RAX.i1124, align 8
  %3442 = shl nsw i64 %3440, 2
  %3443 = add i64 %3441, %3442
  %3444 = add i64 %2955, 205
  store i64 %3444, i64* %3, align 8
  %3445 = load <2 x float>, <2 x float>* %2867, align 1
  %3446 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3447 = inttoptr i64 %3443 to float*
  %3448 = load float, float* %3447, align 4
  %3449 = extractelement <2 x float> %3445, i32 0
  %3450 = fmul float %3449, %3448
  store float %3450, float* %2859, align 1
  %3451 = bitcast <2 x float> %3445 to <2 x i32>
  %3452 = extractelement <2 x i32> %3451, i32 1
  store i32 %3452, i32* %2869, align 1
  %3453 = extractelement <2 x i32> %3446, i32 0
  store i32 %3453, i32* %2870, align 1
  %3454 = extractelement <2 x i32> %3446, i32 1
  store i32 %3454, i32* %2871, align 1
  %3455 = load <2 x float>, <2 x float>* %2872, align 1
  %3456 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3457 = load <2 x float>, <2 x float>* %2867, align 1
  %3458 = extractelement <2 x float> %3455, i32 0
  %3459 = extractelement <2 x float> %3457, i32 0
  %3460 = fadd float %3458, %3459
  store float %3460, float* %2849, align 1
  %3461 = bitcast <2 x float> %3455 to <2 x i32>
  %3462 = extractelement <2 x i32> %3461, i32 1
  store i32 %3462, i32* %2874, align 1
  %3463 = extractelement <2 x i32> %3456, i32 0
  store i32 %3463, i32* %2875, align 1
  %3464 = extractelement <2 x i32> %3456, i32 1
  store i32 %3464, i32* %2876, align 1
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -32
  %3467 = add i64 %2955, 213
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i64*
  %3469 = load i64, i64* %3468, align 8
  store i64 %3469, i64* %RAX.i1124, align 8
  %3470 = add i64 %3465, -44
  %3471 = add i64 %2955, 216
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = add i32 %3473, -11
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RDX.i722.pre-phi, align 8
  %3476 = icmp ult i32 %3473, 11
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %.pre-phi, align 1
  %3478 = and i32 %3474, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %.pre-phi42, align 1
  %3483 = xor i32 %3474, %3473
  %3484 = lshr i32 %3483, 4
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  store i8 %3486, i8* %.pre-phi44, align 1
  %3487 = icmp eq i32 %3474, 0
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %.pre-phi46, align 1
  %3489 = lshr i32 %3474, 31
  %3490 = trunc i32 %3489 to i8
  store i8 %3490, i8* %.pre-phi48, align 1
  %3491 = lshr i32 %3473, 31
  %3492 = xor i32 %3489, %3491
  %3493 = add nuw nsw i32 %3492, %3491
  %3494 = icmp eq i32 %3493, 2
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %.pre-phi50, align 1
  %3496 = sext i32 %3474 to i64
  store i64 %3496, i64* %RCX.i1621, align 8
  %3497 = shl nsw i64 %3496, 2
  %3498 = add i64 %3469, %3497
  %3499 = add i64 %2955, 227
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3498 to i32*
  %3501 = load i32, i32* %3500, align 4
  store i32 %3501, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3502 = add i64 %3465, -40
  %3503 = add i64 %2955, 231
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i64*
  %3505 = load i64, i64* %3504, align 8
  store i64 %3505, i64* %RAX.i1124, align 8
  %3506 = add i64 %3465, -24
  %3507 = add i64 %2955, 234
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %RDX.i722.pre-phi, align 8
  %3511 = add i64 %2955, 237
  store i64 %3511, i64* %3, align 8
  %3512 = load i32, i32* %3472, align 4
  %3513 = add i32 %3512, -11
  %3514 = zext i32 %3513 to i64
  store i64 %3514, i64* %RSI.i1502, align 8
  %3515 = sext i32 %3509 to i64
  %3516 = sext i32 %3513 to i64
  %3517 = mul nsw i64 %3516, %3515
  %3518 = trunc i64 %3517 to i32
  %3519 = and i64 %3517, 4294967295
  store i64 %3519, i64* %RDX.i722.pre-phi, align 8
  %3520 = shl i64 %3517, 32
  %3521 = ashr exact i64 %3520, 32
  %3522 = icmp ne i64 %3521, %3517
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %.pre-phi, align 1
  %3524 = and i32 %3518, 255
  %3525 = tail call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  store i8 %3528, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3529 = lshr i32 %3518, 31
  %3530 = trunc i32 %3529 to i8
  store i8 %3530, i8* %.pre-phi48, align 1
  store i8 %3523, i8* %.pre-phi50, align 1
  %3531 = load i64, i64* %RBP.i, align 8
  %3532 = add i64 %3531, -48
  %3533 = add i64 %2955, 246
  store i64 %3533, i64* %3, align 8
  %3534 = trunc i64 %3517 to i32
  %3535 = inttoptr i64 %3532 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = add i32 %3536, %3534
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RDX.i722.pre-phi, align 8
  %3539 = icmp ult i32 %3537, %3534
  %3540 = icmp ult i32 %3537, %3536
  %3541 = or i1 %3539, %3540
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %.pre-phi, align 1
  %3543 = and i32 %3537, 255
  %3544 = tail call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  store i8 %3547, i8* %.pre-phi42, align 1
  %3548 = xor i32 %3536, %3534
  %3549 = xor i32 %3548, %3537
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  store i8 %3552, i8* %.pre-phi44, align 1
  %3553 = icmp eq i32 %3537, 0
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %.pre-phi46, align 1
  %3555 = lshr i32 %3537, 31
  %3556 = trunc i32 %3555 to i8
  store i8 %3556, i8* %.pre-phi48, align 1
  %3557 = lshr i32 %3534, 31
  %3558 = lshr i32 %3536, 31
  %3559 = xor i32 %3555, %3557
  %3560 = xor i32 %3555, %3558
  %3561 = add nuw nsw i32 %3559, %3560
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %.pre-phi50, align 1
  %3564 = sext i32 %3537 to i64
  store i64 %3564, i64* %RCX.i1621, align 8
  %3565 = load i64, i64* %RAX.i1124, align 8
  %3566 = shl nsw i64 %3564, 2
  %3567 = add i64 %3565, %3566
  %3568 = add i64 %2955, 254
  store i64 %3568, i64* %3, align 8
  %3569 = load <2 x float>, <2 x float>* %2867, align 1
  %3570 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3571 = inttoptr i64 %3567 to float*
  %3572 = load float, float* %3571, align 4
  %3573 = extractelement <2 x float> %3569, i32 0
  %3574 = fmul float %3573, %3572
  store float %3574, float* %2859, align 1
  %3575 = bitcast <2 x float> %3569 to <2 x i32>
  %3576 = extractelement <2 x i32> %3575, i32 1
  store i32 %3576, i32* %2869, align 1
  %3577 = extractelement <2 x i32> %3570, i32 0
  store i32 %3577, i32* %2870, align 1
  %3578 = extractelement <2 x i32> %3570, i32 1
  store i32 %3578, i32* %2871, align 1
  %3579 = load <2 x float>, <2 x float>* %2872, align 1
  %3580 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3581 = load <2 x float>, <2 x float>* %2867, align 1
  %3582 = extractelement <2 x float> %3579, i32 0
  %3583 = extractelement <2 x float> %3581, i32 0
  %3584 = fadd float %3582, %3583
  store float %3584, float* %2849, align 1
  %3585 = bitcast <2 x float> %3579 to <2 x i32>
  %3586 = extractelement <2 x i32> %3585, i32 1
  store i32 %3586, i32* %2874, align 1
  %3587 = extractelement <2 x i32> %3580, i32 0
  store i32 %3587, i32* %2875, align 1
  %3588 = extractelement <2 x i32> %3580, i32 1
  store i32 %3588, i32* %2876, align 1
  %3589 = add i64 %3531, -32
  %3590 = add i64 %2955, 262
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3589 to i64*
  %3592 = load i64, i64* %3591, align 8
  store i64 %3592, i64* %RAX.i1124, align 8
  %3593 = add i64 %3531, -44
  %3594 = add i64 %2955, 265
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = add i32 %3596, -10
  %3598 = zext i32 %3597 to i64
  store i64 %3598, i64* %RDX.i722.pre-phi, align 8
  %3599 = icmp ult i32 %3596, 10
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %.pre-phi, align 1
  %3601 = and i32 %3597, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %.pre-phi42, align 1
  %3606 = xor i32 %3597, %3596
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  store i8 %3609, i8* %.pre-phi44, align 1
  %3610 = icmp eq i32 %3597, 0
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %.pre-phi46, align 1
  %3612 = lshr i32 %3597, 31
  %3613 = trunc i32 %3612 to i8
  store i8 %3613, i8* %.pre-phi48, align 1
  %3614 = lshr i32 %3596, 31
  %3615 = xor i32 %3612, %3614
  %3616 = add nuw nsw i32 %3615, %3614
  %3617 = icmp eq i32 %3616, 2
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %.pre-phi50, align 1
  %3619 = sext i32 %3597 to i64
  store i64 %3619, i64* %RCX.i1621, align 8
  %3620 = shl nsw i64 %3619, 2
  %3621 = add i64 %3592, %3620
  %3622 = add i64 %2955, 276
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  store i32 %3624, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3625 = load i64, i64* %RBP.i, align 8
  %3626 = add i64 %3625, -40
  %3627 = add i64 %2955, 280
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i64*
  %3629 = load i64, i64* %3628, align 8
  store i64 %3629, i64* %RAX.i1124, align 8
  %3630 = add i64 %3625, -24
  %3631 = add i64 %2955, 283
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  %3633 = load i32, i32* %3632, align 4
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %RDX.i722.pre-phi, align 8
  %3635 = add i64 %3625, -44
  %3636 = add i64 %2955, 286
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = add i32 %3638, -10
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RSI.i1502, align 8
  %3641 = sext i32 %3633 to i64
  %3642 = sext i32 %3639 to i64
  %3643 = mul nsw i64 %3642, %3641
  %3644 = trunc i64 %3643 to i32
  %3645 = and i64 %3643, 4294967295
  store i64 %3645, i64* %RDX.i722.pre-phi, align 8
  %3646 = shl i64 %3643, 32
  %3647 = ashr exact i64 %3646, 32
  %3648 = icmp ne i64 %3647, %3643
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %.pre-phi, align 1
  %3650 = and i32 %3644, 255
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3655 = lshr i32 %3644, 31
  %3656 = trunc i32 %3655 to i8
  store i8 %3656, i8* %.pre-phi48, align 1
  store i8 %3649, i8* %.pre-phi50, align 1
  %3657 = add i64 %3625, -48
  %3658 = add i64 %2955, 295
  store i64 %3658, i64* %3, align 8
  %3659 = trunc i64 %3643 to i32
  %3660 = inttoptr i64 %3657 to i32*
  %3661 = load i32, i32* %3660, align 4
  %3662 = add i32 %3661, %3659
  %3663 = zext i32 %3662 to i64
  store i64 %3663, i64* %RDX.i722.pre-phi, align 8
  %3664 = icmp ult i32 %3662, %3659
  %3665 = icmp ult i32 %3662, %3661
  %3666 = or i1 %3664, %3665
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %.pre-phi, align 1
  %3668 = and i32 %3662, 255
  %3669 = tail call i32 @llvm.ctpop.i32(i32 %3668)
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  %3672 = xor i8 %3671, 1
  store i8 %3672, i8* %.pre-phi42, align 1
  %3673 = xor i32 %3661, %3659
  %3674 = xor i32 %3673, %3662
  %3675 = lshr i32 %3674, 4
  %3676 = trunc i32 %3675 to i8
  %3677 = and i8 %3676, 1
  store i8 %3677, i8* %.pre-phi44, align 1
  %3678 = icmp eq i32 %3662, 0
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %.pre-phi46, align 1
  %3680 = lshr i32 %3662, 31
  %3681 = trunc i32 %3680 to i8
  store i8 %3681, i8* %.pre-phi48, align 1
  %3682 = lshr i32 %3659, 31
  %3683 = lshr i32 %3661, 31
  %3684 = xor i32 %3680, %3682
  %3685 = xor i32 %3680, %3683
  %3686 = add nuw nsw i32 %3684, %3685
  %3687 = icmp eq i32 %3686, 2
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %.pre-phi50, align 1
  %3689 = sext i32 %3662 to i64
  store i64 %3689, i64* %RCX.i1621, align 8
  %3690 = load i64, i64* %RAX.i1124, align 8
  %3691 = shl nsw i64 %3689, 2
  %3692 = add i64 %3690, %3691
  %3693 = add i64 %2955, 303
  store i64 %3693, i64* %3, align 8
  %3694 = load <2 x float>, <2 x float>* %2867, align 1
  %3695 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3696 = inttoptr i64 %3692 to float*
  %3697 = load float, float* %3696, align 4
  %3698 = extractelement <2 x float> %3694, i32 0
  %3699 = fmul float %3698, %3697
  store float %3699, float* %2859, align 1
  %3700 = bitcast <2 x float> %3694 to <2 x i32>
  %3701 = extractelement <2 x i32> %3700, i32 1
  store i32 %3701, i32* %2869, align 1
  %3702 = extractelement <2 x i32> %3695, i32 0
  store i32 %3702, i32* %2870, align 1
  %3703 = extractelement <2 x i32> %3695, i32 1
  store i32 %3703, i32* %2871, align 1
  %3704 = load <2 x float>, <2 x float>* %2872, align 1
  %3705 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3706 = load <2 x float>, <2 x float>* %2867, align 1
  %3707 = extractelement <2 x float> %3704, i32 0
  %3708 = extractelement <2 x float> %3706, i32 0
  %3709 = fadd float %3707, %3708
  store float %3709, float* %2849, align 1
  %3710 = bitcast <2 x float> %3704 to <2 x i32>
  %3711 = extractelement <2 x i32> %3710, i32 1
  store i32 %3711, i32* %2874, align 1
  %3712 = extractelement <2 x i32> %3705, i32 0
  store i32 %3712, i32* %2875, align 1
  %3713 = extractelement <2 x i32> %3705, i32 1
  store i32 %3713, i32* %2876, align 1
  %3714 = load i64, i64* %RBP.i, align 8
  %3715 = add i64 %3714, -32
  %3716 = add i64 %2955, 311
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i64*
  %3718 = load i64, i64* %3717, align 8
  store i64 %3718, i64* %RAX.i1124, align 8
  %3719 = add i64 %3714, -44
  %3720 = add i64 %2955, 314
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = add i32 %3722, -9
  %3724 = zext i32 %3723 to i64
  store i64 %3724, i64* %RDX.i722.pre-phi, align 8
  %3725 = icmp ult i32 %3722, 9
  %3726 = zext i1 %3725 to i8
  store i8 %3726, i8* %.pre-phi, align 1
  %3727 = and i32 %3723, 255
  %3728 = tail call i32 @llvm.ctpop.i32(i32 %3727)
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  %3731 = xor i8 %3730, 1
  store i8 %3731, i8* %.pre-phi42, align 1
  %3732 = xor i32 %3723, %3722
  %3733 = lshr i32 %3732, 4
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  store i8 %3735, i8* %.pre-phi44, align 1
  %3736 = icmp eq i32 %3723, 0
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %.pre-phi46, align 1
  %3738 = lshr i32 %3723, 31
  %3739 = trunc i32 %3738 to i8
  store i8 %3739, i8* %.pre-phi48, align 1
  %3740 = lshr i32 %3722, 31
  %3741 = xor i32 %3738, %3740
  %3742 = add nuw nsw i32 %3741, %3740
  %3743 = icmp eq i32 %3742, 2
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %.pre-phi50, align 1
  %3745 = sext i32 %3723 to i64
  store i64 %3745, i64* %RCX.i1621, align 8
  %3746 = shl nsw i64 %3745, 2
  %3747 = add i64 %3718, %3746
  %3748 = add i64 %2955, 325
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  store i32 %3750, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3751 = add i64 %3714, -40
  %3752 = add i64 %2955, 329
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i64*
  %3754 = load i64, i64* %3753, align 8
  store i64 %3754, i64* %RAX.i1124, align 8
  %3755 = add i64 %3714, -24
  %3756 = add i64 %2955, 332
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RDX.i722.pre-phi, align 8
  %3760 = add i64 %2955, 335
  store i64 %3760, i64* %3, align 8
  %3761 = load i32, i32* %3721, align 4
  %3762 = add i32 %3761, -9
  %3763 = zext i32 %3762 to i64
  store i64 %3763, i64* %RSI.i1502, align 8
  %3764 = sext i32 %3758 to i64
  %3765 = sext i32 %3762 to i64
  %3766 = mul nsw i64 %3765, %3764
  %3767 = trunc i64 %3766 to i32
  %3768 = and i64 %3766, 4294967295
  store i64 %3768, i64* %RDX.i722.pre-phi, align 8
  %3769 = shl i64 %3766, 32
  %3770 = ashr exact i64 %3769, 32
  %3771 = icmp ne i64 %3770, %3766
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %.pre-phi, align 1
  %3773 = and i32 %3767, 255
  %3774 = tail call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  store i8 %3777, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3778 = lshr i32 %3767, 31
  %3779 = trunc i32 %3778 to i8
  store i8 %3779, i8* %.pre-phi48, align 1
  store i8 %3772, i8* %.pre-phi50, align 1
  %3780 = load i64, i64* %RBP.i, align 8
  %3781 = add i64 %3780, -48
  %3782 = add i64 %2955, 344
  store i64 %3782, i64* %3, align 8
  %3783 = trunc i64 %3766 to i32
  %3784 = inttoptr i64 %3781 to i32*
  %3785 = load i32, i32* %3784, align 4
  %3786 = add i32 %3785, %3783
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %RDX.i722.pre-phi, align 8
  %3788 = icmp ult i32 %3786, %3783
  %3789 = icmp ult i32 %3786, %3785
  %3790 = or i1 %3788, %3789
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %.pre-phi, align 1
  %3792 = and i32 %3786, 255
  %3793 = tail call i32 @llvm.ctpop.i32(i32 %3792)
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = xor i8 %3795, 1
  store i8 %3796, i8* %.pre-phi42, align 1
  %3797 = xor i32 %3785, %3783
  %3798 = xor i32 %3797, %3786
  %3799 = lshr i32 %3798, 4
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  store i8 %3801, i8* %.pre-phi44, align 1
  %3802 = icmp eq i32 %3786, 0
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %.pre-phi46, align 1
  %3804 = lshr i32 %3786, 31
  %3805 = trunc i32 %3804 to i8
  store i8 %3805, i8* %.pre-phi48, align 1
  %3806 = lshr i32 %3783, 31
  %3807 = lshr i32 %3785, 31
  %3808 = xor i32 %3804, %3806
  %3809 = xor i32 %3804, %3807
  %3810 = add nuw nsw i32 %3808, %3809
  %3811 = icmp eq i32 %3810, 2
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %.pre-phi50, align 1
  %3813 = sext i32 %3786 to i64
  store i64 %3813, i64* %RCX.i1621, align 8
  %3814 = load i64, i64* %RAX.i1124, align 8
  %3815 = shl nsw i64 %3813, 2
  %3816 = add i64 %3814, %3815
  %3817 = add i64 %2955, 352
  store i64 %3817, i64* %3, align 8
  %3818 = load <2 x float>, <2 x float>* %2867, align 1
  %3819 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3820 = inttoptr i64 %3816 to float*
  %3821 = load float, float* %3820, align 4
  %3822 = extractelement <2 x float> %3818, i32 0
  %3823 = fmul float %3822, %3821
  store float %3823, float* %2859, align 1
  %3824 = bitcast <2 x float> %3818 to <2 x i32>
  %3825 = extractelement <2 x i32> %3824, i32 1
  store i32 %3825, i32* %2869, align 1
  %3826 = extractelement <2 x i32> %3819, i32 0
  store i32 %3826, i32* %2870, align 1
  %3827 = extractelement <2 x i32> %3819, i32 1
  store i32 %3827, i32* %2871, align 1
  %3828 = load <2 x float>, <2 x float>* %2872, align 1
  %3829 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3830 = load <2 x float>, <2 x float>* %2867, align 1
  %3831 = extractelement <2 x float> %3828, i32 0
  %3832 = extractelement <2 x float> %3830, i32 0
  %3833 = fadd float %3831, %3832
  store float %3833, float* %2849, align 1
  %3834 = bitcast <2 x float> %3828 to <2 x i32>
  %3835 = extractelement <2 x i32> %3834, i32 1
  store i32 %3835, i32* %2874, align 1
  %3836 = extractelement <2 x i32> %3829, i32 0
  store i32 %3836, i32* %2875, align 1
  %3837 = extractelement <2 x i32> %3829, i32 1
  store i32 %3837, i32* %2876, align 1
  %3838 = add i64 %3780, -32
  %3839 = add i64 %2955, 360
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i64*
  %3841 = load i64, i64* %3840, align 8
  store i64 %3841, i64* %RAX.i1124, align 8
  %3842 = add i64 %3780, -44
  %3843 = add i64 %2955, 363
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = add i32 %3845, -8
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %RDX.i722.pre-phi, align 8
  %3848 = icmp ult i32 %3845, 8
  %3849 = zext i1 %3848 to i8
  store i8 %3849, i8* %.pre-phi, align 1
  %3850 = and i32 %3846, 255
  %3851 = tail call i32 @llvm.ctpop.i32(i32 %3850)
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  %3854 = xor i8 %3853, 1
  store i8 %3854, i8* %.pre-phi42, align 1
  %3855 = xor i32 %3846, %3845
  %3856 = lshr i32 %3855, 4
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  store i8 %3858, i8* %.pre-phi44, align 1
  %3859 = icmp eq i32 %3846, 0
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %.pre-phi46, align 1
  %3861 = lshr i32 %3846, 31
  %3862 = trunc i32 %3861 to i8
  store i8 %3862, i8* %.pre-phi48, align 1
  %3863 = lshr i32 %3845, 31
  %3864 = xor i32 %3861, %3863
  %3865 = add nuw nsw i32 %3864, %3863
  %3866 = icmp eq i32 %3865, 2
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %.pre-phi50, align 1
  %3868 = sext i32 %3846 to i64
  store i64 %3868, i64* %RCX.i1621, align 8
  %3869 = shl nsw i64 %3868, 2
  %3870 = add i64 %3841, %3869
  %3871 = add i64 %2955, 374
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i32*
  %3873 = load i32, i32* %3872, align 4
  store i32 %3873, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %3874 = load i64, i64* %RBP.i, align 8
  %3875 = add i64 %3874, -40
  %3876 = add i64 %2955, 378
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i64*
  %3878 = load i64, i64* %3877, align 8
  store i64 %3878, i64* %RAX.i1124, align 8
  %3879 = add i64 %3874, -24
  %3880 = add i64 %2955, 381
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3879 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = zext i32 %3882 to i64
  store i64 %3883, i64* %RDX.i722.pre-phi, align 8
  %3884 = add i64 %3874, -44
  %3885 = add i64 %2955, 384
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i32*
  %3887 = load i32, i32* %3886, align 4
  %3888 = add i32 %3887, -8
  %3889 = zext i32 %3888 to i64
  store i64 %3889, i64* %RSI.i1502, align 8
  %3890 = sext i32 %3882 to i64
  %3891 = sext i32 %3888 to i64
  %3892 = mul nsw i64 %3891, %3890
  %3893 = trunc i64 %3892 to i32
  %3894 = and i64 %3892, 4294967295
  store i64 %3894, i64* %RDX.i722.pre-phi, align 8
  %3895 = shl i64 %3892, 32
  %3896 = ashr exact i64 %3895, 32
  %3897 = icmp ne i64 %3896, %3892
  %3898 = zext i1 %3897 to i8
  store i8 %3898, i8* %.pre-phi, align 1
  %3899 = and i32 %3893, 255
  %3900 = tail call i32 @llvm.ctpop.i32(i32 %3899)
  %3901 = trunc i32 %3900 to i8
  %3902 = and i8 %3901, 1
  %3903 = xor i8 %3902, 1
  store i8 %3903, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %3904 = lshr i32 %3893, 31
  %3905 = trunc i32 %3904 to i8
  store i8 %3905, i8* %.pre-phi48, align 1
  store i8 %3898, i8* %.pre-phi50, align 1
  %3906 = add i64 %3874, -48
  %3907 = add i64 %2955, 393
  store i64 %3907, i64* %3, align 8
  %3908 = trunc i64 %3892 to i32
  %3909 = inttoptr i64 %3906 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = add i32 %3910, %3908
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RDX.i722.pre-phi, align 8
  %3913 = icmp ult i32 %3911, %3908
  %3914 = icmp ult i32 %3911, %3910
  %3915 = or i1 %3913, %3914
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %.pre-phi, align 1
  %3917 = and i32 %3911, 255
  %3918 = tail call i32 @llvm.ctpop.i32(i32 %3917)
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = xor i8 %3920, 1
  store i8 %3921, i8* %.pre-phi42, align 1
  %3922 = xor i32 %3910, %3908
  %3923 = xor i32 %3922, %3911
  %3924 = lshr i32 %3923, 4
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  store i8 %3926, i8* %.pre-phi44, align 1
  %3927 = icmp eq i32 %3911, 0
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %.pre-phi46, align 1
  %3929 = lshr i32 %3911, 31
  %3930 = trunc i32 %3929 to i8
  store i8 %3930, i8* %.pre-phi48, align 1
  %3931 = lshr i32 %3908, 31
  %3932 = lshr i32 %3910, 31
  %3933 = xor i32 %3929, %3931
  %3934 = xor i32 %3929, %3932
  %3935 = add nuw nsw i32 %3933, %3934
  %3936 = icmp eq i32 %3935, 2
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %.pre-phi50, align 1
  %3938 = sext i32 %3911 to i64
  store i64 %3938, i64* %RCX.i1621, align 8
  %3939 = load i64, i64* %RAX.i1124, align 8
  %3940 = shl nsw i64 %3938, 2
  %3941 = add i64 %3939, %3940
  %3942 = add i64 %2955, 401
  store i64 %3942, i64* %3, align 8
  %3943 = load <2 x float>, <2 x float>* %2867, align 1
  %3944 = load <2 x i32>, <2 x i32>* %2868, align 1
  %3945 = inttoptr i64 %3941 to float*
  %3946 = load float, float* %3945, align 4
  %3947 = extractelement <2 x float> %3943, i32 0
  %3948 = fmul float %3947, %3946
  store float %3948, float* %2859, align 1
  %3949 = bitcast <2 x float> %3943 to <2 x i32>
  %3950 = extractelement <2 x i32> %3949, i32 1
  store i32 %3950, i32* %2869, align 1
  %3951 = extractelement <2 x i32> %3944, i32 0
  store i32 %3951, i32* %2870, align 1
  %3952 = extractelement <2 x i32> %3944, i32 1
  store i32 %3952, i32* %2871, align 1
  %3953 = load <2 x float>, <2 x float>* %2872, align 1
  %3954 = load <2 x i32>, <2 x i32>* %2873, align 1
  %3955 = load <2 x float>, <2 x float>* %2867, align 1
  %3956 = extractelement <2 x float> %3953, i32 0
  %3957 = extractelement <2 x float> %3955, i32 0
  %3958 = fadd float %3956, %3957
  store float %3958, float* %2849, align 1
  %3959 = bitcast <2 x float> %3953 to <2 x i32>
  %3960 = extractelement <2 x i32> %3959, i32 1
  store i32 %3960, i32* %2874, align 1
  %3961 = extractelement <2 x i32> %3954, i32 0
  store i32 %3961, i32* %2875, align 1
  %3962 = extractelement <2 x i32> %3954, i32 1
  store i32 %3962, i32* %2876, align 1
  %3963 = load i64, i64* %RBP.i, align 8
  %3964 = add i64 %3963, -32
  %3965 = add i64 %2955, 409
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i64*
  %3967 = load i64, i64* %3966, align 8
  store i64 %3967, i64* %RAX.i1124, align 8
  %3968 = add i64 %3963, -44
  %3969 = add i64 %2955, 412
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3968 to i32*
  %3971 = load i32, i32* %3970, align 4
  %3972 = add i32 %3971, -7
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RDX.i722.pre-phi, align 8
  %3974 = icmp ult i32 %3971, 7
  %3975 = zext i1 %3974 to i8
  store i8 %3975, i8* %.pre-phi, align 1
  %3976 = and i32 %3972, 255
  %3977 = tail call i32 @llvm.ctpop.i32(i32 %3976)
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  %3980 = xor i8 %3979, 1
  store i8 %3980, i8* %.pre-phi42, align 1
  %3981 = xor i32 %3972, %3971
  %3982 = lshr i32 %3981, 4
  %3983 = trunc i32 %3982 to i8
  %3984 = and i8 %3983, 1
  store i8 %3984, i8* %.pre-phi44, align 1
  %3985 = icmp eq i32 %3972, 0
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %.pre-phi46, align 1
  %3987 = lshr i32 %3972, 31
  %3988 = trunc i32 %3987 to i8
  store i8 %3988, i8* %.pre-phi48, align 1
  %3989 = lshr i32 %3971, 31
  %3990 = xor i32 %3987, %3989
  %3991 = add nuw nsw i32 %3990, %3989
  %3992 = icmp eq i32 %3991, 2
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %.pre-phi50, align 1
  %3994 = sext i32 %3972 to i64
  store i64 %3994, i64* %RCX.i1621, align 8
  %3995 = shl nsw i64 %3994, 2
  %3996 = add i64 %3967, %3995
  %3997 = add i64 %2955, 423
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  store i32 %3999, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4000 = add i64 %3963, -40
  %4001 = add i64 %2955, 427
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RAX.i1124, align 8
  %4004 = add i64 %3963, -24
  %4005 = add i64 %2955, 430
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to i32*
  %4007 = load i32, i32* %4006, align 4
  %4008 = zext i32 %4007 to i64
  store i64 %4008, i64* %RDX.i722.pre-phi, align 8
  %4009 = add i64 %2955, 433
  store i64 %4009, i64* %3, align 8
  %4010 = load i32, i32* %3970, align 4
  %4011 = add i32 %4010, -7
  %4012 = zext i32 %4011 to i64
  store i64 %4012, i64* %RSI.i1502, align 8
  %4013 = sext i32 %4007 to i64
  %4014 = sext i32 %4011 to i64
  %4015 = mul nsw i64 %4014, %4013
  %4016 = trunc i64 %4015 to i32
  %4017 = and i64 %4015, 4294967295
  store i64 %4017, i64* %RDX.i722.pre-phi, align 8
  %4018 = shl i64 %4015, 32
  %4019 = ashr exact i64 %4018, 32
  %4020 = icmp ne i64 %4019, %4015
  %4021 = zext i1 %4020 to i8
  store i8 %4021, i8* %.pre-phi, align 1
  %4022 = and i32 %4016, 255
  %4023 = tail call i32 @llvm.ctpop.i32(i32 %4022)
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  %4026 = xor i8 %4025, 1
  store i8 %4026, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4027 = lshr i32 %4016, 31
  %4028 = trunc i32 %4027 to i8
  store i8 %4028, i8* %.pre-phi48, align 1
  store i8 %4021, i8* %.pre-phi50, align 1
  %4029 = load i64, i64* %RBP.i, align 8
  %4030 = add i64 %4029, -48
  %4031 = add i64 %2955, 442
  store i64 %4031, i64* %3, align 8
  %4032 = trunc i64 %4015 to i32
  %4033 = inttoptr i64 %4030 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = add i32 %4034, %4032
  %4036 = zext i32 %4035 to i64
  store i64 %4036, i64* %RDX.i722.pre-phi, align 8
  %4037 = icmp ult i32 %4035, %4032
  %4038 = icmp ult i32 %4035, %4034
  %4039 = or i1 %4037, %4038
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %.pre-phi, align 1
  %4041 = and i32 %4035, 255
  %4042 = tail call i32 @llvm.ctpop.i32(i32 %4041)
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  store i8 %4045, i8* %.pre-phi42, align 1
  %4046 = xor i32 %4034, %4032
  %4047 = xor i32 %4046, %4035
  %4048 = lshr i32 %4047, 4
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  store i8 %4050, i8* %.pre-phi44, align 1
  %4051 = icmp eq i32 %4035, 0
  %4052 = zext i1 %4051 to i8
  store i8 %4052, i8* %.pre-phi46, align 1
  %4053 = lshr i32 %4035, 31
  %4054 = trunc i32 %4053 to i8
  store i8 %4054, i8* %.pre-phi48, align 1
  %4055 = lshr i32 %4032, 31
  %4056 = lshr i32 %4034, 31
  %4057 = xor i32 %4053, %4055
  %4058 = xor i32 %4053, %4056
  %4059 = add nuw nsw i32 %4057, %4058
  %4060 = icmp eq i32 %4059, 2
  %4061 = zext i1 %4060 to i8
  store i8 %4061, i8* %.pre-phi50, align 1
  %4062 = sext i32 %4035 to i64
  store i64 %4062, i64* %RCX.i1621, align 8
  %4063 = load i64, i64* %RAX.i1124, align 8
  %4064 = shl nsw i64 %4062, 2
  %4065 = add i64 %4063, %4064
  %4066 = add i64 %2955, 450
  store i64 %4066, i64* %3, align 8
  %4067 = load <2 x float>, <2 x float>* %2867, align 1
  %4068 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4069 = inttoptr i64 %4065 to float*
  %4070 = load float, float* %4069, align 4
  %4071 = extractelement <2 x float> %4067, i32 0
  %4072 = fmul float %4071, %4070
  store float %4072, float* %2859, align 1
  %4073 = bitcast <2 x float> %4067 to <2 x i32>
  %4074 = extractelement <2 x i32> %4073, i32 1
  store i32 %4074, i32* %2869, align 1
  %4075 = extractelement <2 x i32> %4068, i32 0
  store i32 %4075, i32* %2870, align 1
  %4076 = extractelement <2 x i32> %4068, i32 1
  store i32 %4076, i32* %2871, align 1
  %4077 = load <2 x float>, <2 x float>* %2872, align 1
  %4078 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4079 = load <2 x float>, <2 x float>* %2867, align 1
  %4080 = extractelement <2 x float> %4077, i32 0
  %4081 = extractelement <2 x float> %4079, i32 0
  %4082 = fadd float %4080, %4081
  store float %4082, float* %2849, align 1
  %4083 = bitcast <2 x float> %4077 to <2 x i32>
  %4084 = extractelement <2 x i32> %4083, i32 1
  store i32 %4084, i32* %2874, align 1
  %4085 = extractelement <2 x i32> %4078, i32 0
  store i32 %4085, i32* %2875, align 1
  %4086 = extractelement <2 x i32> %4078, i32 1
  store i32 %4086, i32* %2876, align 1
  %4087 = add i64 %4029, -32
  %4088 = add i64 %2955, 458
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4087 to i64*
  %4090 = load i64, i64* %4089, align 8
  store i64 %4090, i64* %RAX.i1124, align 8
  %4091 = add i64 %4029, -44
  %4092 = add i64 %2955, 461
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4091 to i32*
  %4094 = load i32, i32* %4093, align 4
  %4095 = add i32 %4094, -6
  %4096 = zext i32 %4095 to i64
  store i64 %4096, i64* %RDX.i722.pre-phi, align 8
  %4097 = icmp ult i32 %4094, 6
  %4098 = zext i1 %4097 to i8
  store i8 %4098, i8* %.pre-phi, align 1
  %4099 = and i32 %4095, 255
  %4100 = tail call i32 @llvm.ctpop.i32(i32 %4099)
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  %4103 = xor i8 %4102, 1
  store i8 %4103, i8* %.pre-phi42, align 1
  %4104 = xor i32 %4095, %4094
  %4105 = lshr i32 %4104, 4
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  store i8 %4107, i8* %.pre-phi44, align 1
  %4108 = icmp eq i32 %4095, 0
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %.pre-phi46, align 1
  %4110 = lshr i32 %4095, 31
  %4111 = trunc i32 %4110 to i8
  store i8 %4111, i8* %.pre-phi48, align 1
  %4112 = lshr i32 %4094, 31
  %4113 = xor i32 %4110, %4112
  %4114 = add nuw nsw i32 %4113, %4112
  %4115 = icmp eq i32 %4114, 2
  %4116 = zext i1 %4115 to i8
  store i8 %4116, i8* %.pre-phi50, align 1
  %4117 = sext i32 %4095 to i64
  store i64 %4117, i64* %RCX.i1621, align 8
  %4118 = shl nsw i64 %4117, 2
  %4119 = add i64 %4090, %4118
  %4120 = add i64 %2955, 472
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i32*
  %4122 = load i32, i32* %4121, align 4
  store i32 %4122, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4123 = load i64, i64* %RBP.i, align 8
  %4124 = add i64 %4123, -40
  %4125 = add i64 %2955, 476
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i64*
  %4127 = load i64, i64* %4126, align 8
  store i64 %4127, i64* %RAX.i1124, align 8
  %4128 = add i64 %4123, -24
  %4129 = add i64 %2955, 479
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RDX.i722.pre-phi, align 8
  %4133 = add i64 %4123, -44
  %4134 = add i64 %2955, 482
  store i64 %4134, i64* %3, align 8
  %4135 = inttoptr i64 %4133 to i32*
  %4136 = load i32, i32* %4135, align 4
  %4137 = add i32 %4136, -6
  %4138 = zext i32 %4137 to i64
  store i64 %4138, i64* %RSI.i1502, align 8
  %4139 = sext i32 %4131 to i64
  %4140 = sext i32 %4137 to i64
  %4141 = mul nsw i64 %4140, %4139
  %4142 = trunc i64 %4141 to i32
  %4143 = and i64 %4141, 4294967295
  store i64 %4143, i64* %RDX.i722.pre-phi, align 8
  %4144 = shl i64 %4141, 32
  %4145 = ashr exact i64 %4144, 32
  %4146 = icmp ne i64 %4145, %4141
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %.pre-phi, align 1
  %4148 = and i32 %4142, 255
  %4149 = tail call i32 @llvm.ctpop.i32(i32 %4148)
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = xor i8 %4151, 1
  store i8 %4152, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4153 = lshr i32 %4142, 31
  %4154 = trunc i32 %4153 to i8
  store i8 %4154, i8* %.pre-phi48, align 1
  store i8 %4147, i8* %.pre-phi50, align 1
  %4155 = add i64 %4123, -48
  %4156 = add i64 %2955, 491
  store i64 %4156, i64* %3, align 8
  %4157 = trunc i64 %4141 to i32
  %4158 = inttoptr i64 %4155 to i32*
  %4159 = load i32, i32* %4158, align 4
  %4160 = add i32 %4159, %4157
  %4161 = zext i32 %4160 to i64
  store i64 %4161, i64* %RDX.i722.pre-phi, align 8
  %4162 = icmp ult i32 %4160, %4157
  %4163 = icmp ult i32 %4160, %4159
  %4164 = or i1 %4162, %4163
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %.pre-phi, align 1
  %4166 = and i32 %4160, 255
  %4167 = tail call i32 @llvm.ctpop.i32(i32 %4166)
  %4168 = trunc i32 %4167 to i8
  %4169 = and i8 %4168, 1
  %4170 = xor i8 %4169, 1
  store i8 %4170, i8* %.pre-phi42, align 1
  %4171 = xor i32 %4159, %4157
  %4172 = xor i32 %4171, %4160
  %4173 = lshr i32 %4172, 4
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  store i8 %4175, i8* %.pre-phi44, align 1
  %4176 = icmp eq i32 %4160, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %.pre-phi46, align 1
  %4178 = lshr i32 %4160, 31
  %4179 = trunc i32 %4178 to i8
  store i8 %4179, i8* %.pre-phi48, align 1
  %4180 = lshr i32 %4157, 31
  %4181 = lshr i32 %4159, 31
  %4182 = xor i32 %4178, %4180
  %4183 = xor i32 %4178, %4181
  %4184 = add nuw nsw i32 %4182, %4183
  %4185 = icmp eq i32 %4184, 2
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %.pre-phi50, align 1
  %4187 = sext i32 %4160 to i64
  store i64 %4187, i64* %RCX.i1621, align 8
  %4188 = load i64, i64* %RAX.i1124, align 8
  %4189 = shl nsw i64 %4187, 2
  %4190 = add i64 %4188, %4189
  %4191 = add i64 %2955, 499
  store i64 %4191, i64* %3, align 8
  %4192 = load <2 x float>, <2 x float>* %2867, align 1
  %4193 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4194 = inttoptr i64 %4190 to float*
  %4195 = load float, float* %4194, align 4
  %4196 = extractelement <2 x float> %4192, i32 0
  %4197 = fmul float %4196, %4195
  store float %4197, float* %2859, align 1
  %4198 = bitcast <2 x float> %4192 to <2 x i32>
  %4199 = extractelement <2 x i32> %4198, i32 1
  store i32 %4199, i32* %2869, align 1
  %4200 = extractelement <2 x i32> %4193, i32 0
  store i32 %4200, i32* %2870, align 1
  %4201 = extractelement <2 x i32> %4193, i32 1
  store i32 %4201, i32* %2871, align 1
  %4202 = load <2 x float>, <2 x float>* %2872, align 1
  %4203 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4204 = load <2 x float>, <2 x float>* %2867, align 1
  %4205 = extractelement <2 x float> %4202, i32 0
  %4206 = extractelement <2 x float> %4204, i32 0
  %4207 = fadd float %4205, %4206
  store float %4207, float* %2849, align 1
  %4208 = bitcast <2 x float> %4202 to <2 x i32>
  %4209 = extractelement <2 x i32> %4208, i32 1
  store i32 %4209, i32* %2874, align 1
  %4210 = extractelement <2 x i32> %4203, i32 0
  store i32 %4210, i32* %2875, align 1
  %4211 = extractelement <2 x i32> %4203, i32 1
  store i32 %4211, i32* %2876, align 1
  %4212 = load i64, i64* %RBP.i, align 8
  %4213 = add i64 %4212, -32
  %4214 = add i64 %2955, 507
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i64*
  %4216 = load i64, i64* %4215, align 8
  store i64 %4216, i64* %RAX.i1124, align 8
  %4217 = add i64 %4212, -44
  %4218 = add i64 %2955, 510
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i32*
  %4220 = load i32, i32* %4219, align 4
  %4221 = add i32 %4220, -5
  %4222 = zext i32 %4221 to i64
  store i64 %4222, i64* %RDX.i722.pre-phi, align 8
  %4223 = icmp ult i32 %4220, 5
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %.pre-phi, align 1
  %4225 = and i32 %4221, 255
  %4226 = tail call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  store i8 %4229, i8* %.pre-phi42, align 1
  %4230 = xor i32 %4221, %4220
  %4231 = lshr i32 %4230, 4
  %4232 = trunc i32 %4231 to i8
  %4233 = and i8 %4232, 1
  store i8 %4233, i8* %.pre-phi44, align 1
  %4234 = icmp eq i32 %4221, 0
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %.pre-phi46, align 1
  %4236 = lshr i32 %4221, 31
  %4237 = trunc i32 %4236 to i8
  store i8 %4237, i8* %.pre-phi48, align 1
  %4238 = lshr i32 %4220, 31
  %4239 = xor i32 %4236, %4238
  %4240 = add nuw nsw i32 %4239, %4238
  %4241 = icmp eq i32 %4240, 2
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %.pre-phi50, align 1
  %4243 = sext i32 %4221 to i64
  store i64 %4243, i64* %RCX.i1621, align 8
  %4244 = shl nsw i64 %4243, 2
  %4245 = add i64 %4216, %4244
  %4246 = add i64 %2955, 521
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  store i32 %4248, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4249 = add i64 %4212, -40
  %4250 = add i64 %2955, 525
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i64*
  %4252 = load i64, i64* %4251, align 8
  store i64 %4252, i64* %RAX.i1124, align 8
  %4253 = add i64 %4212, -24
  %4254 = add i64 %2955, 528
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = zext i32 %4256 to i64
  store i64 %4257, i64* %RDX.i722.pre-phi, align 8
  %4258 = add i64 %2955, 531
  store i64 %4258, i64* %3, align 8
  %4259 = load i32, i32* %4219, align 4
  %4260 = add i32 %4259, -5
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RSI.i1502, align 8
  %4262 = sext i32 %4256 to i64
  %4263 = sext i32 %4260 to i64
  %4264 = mul nsw i64 %4263, %4262
  %4265 = trunc i64 %4264 to i32
  %4266 = and i64 %4264, 4294967295
  store i64 %4266, i64* %RDX.i722.pre-phi, align 8
  %4267 = shl i64 %4264, 32
  %4268 = ashr exact i64 %4267, 32
  %4269 = icmp ne i64 %4268, %4264
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %.pre-phi, align 1
  %4271 = and i32 %4265, 255
  %4272 = tail call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  store i8 %4275, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4276 = lshr i32 %4265, 31
  %4277 = trunc i32 %4276 to i8
  store i8 %4277, i8* %.pre-phi48, align 1
  store i8 %4270, i8* %.pre-phi50, align 1
  %4278 = load i64, i64* %RBP.i, align 8
  %4279 = add i64 %4278, -48
  %4280 = add i64 %2955, 540
  store i64 %4280, i64* %3, align 8
  %4281 = trunc i64 %4264 to i32
  %4282 = inttoptr i64 %4279 to i32*
  %4283 = load i32, i32* %4282, align 4
  %4284 = add i32 %4283, %4281
  %4285 = zext i32 %4284 to i64
  store i64 %4285, i64* %RDX.i722.pre-phi, align 8
  %4286 = icmp ult i32 %4284, %4281
  %4287 = icmp ult i32 %4284, %4283
  %4288 = or i1 %4286, %4287
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %.pre-phi, align 1
  %4290 = and i32 %4284, 255
  %4291 = tail call i32 @llvm.ctpop.i32(i32 %4290)
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = xor i8 %4293, 1
  store i8 %4294, i8* %.pre-phi42, align 1
  %4295 = xor i32 %4283, %4281
  %4296 = xor i32 %4295, %4284
  %4297 = lshr i32 %4296, 4
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  store i8 %4299, i8* %.pre-phi44, align 1
  %4300 = icmp eq i32 %4284, 0
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %.pre-phi46, align 1
  %4302 = lshr i32 %4284, 31
  %4303 = trunc i32 %4302 to i8
  store i8 %4303, i8* %.pre-phi48, align 1
  %4304 = lshr i32 %4281, 31
  %4305 = lshr i32 %4283, 31
  %4306 = xor i32 %4302, %4304
  %4307 = xor i32 %4302, %4305
  %4308 = add nuw nsw i32 %4306, %4307
  %4309 = icmp eq i32 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %.pre-phi50, align 1
  %4311 = sext i32 %4284 to i64
  store i64 %4311, i64* %RCX.i1621, align 8
  %4312 = load i64, i64* %RAX.i1124, align 8
  %4313 = shl nsw i64 %4311, 2
  %4314 = add i64 %4312, %4313
  %4315 = add i64 %2955, 548
  store i64 %4315, i64* %3, align 8
  %4316 = load <2 x float>, <2 x float>* %2867, align 1
  %4317 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4318 = inttoptr i64 %4314 to float*
  %4319 = load float, float* %4318, align 4
  %4320 = extractelement <2 x float> %4316, i32 0
  %4321 = fmul float %4320, %4319
  store float %4321, float* %2859, align 1
  %4322 = bitcast <2 x float> %4316 to <2 x i32>
  %4323 = extractelement <2 x i32> %4322, i32 1
  store i32 %4323, i32* %2869, align 1
  %4324 = extractelement <2 x i32> %4317, i32 0
  store i32 %4324, i32* %2870, align 1
  %4325 = extractelement <2 x i32> %4317, i32 1
  store i32 %4325, i32* %2871, align 1
  %4326 = load <2 x float>, <2 x float>* %2872, align 1
  %4327 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4328 = load <2 x float>, <2 x float>* %2867, align 1
  %4329 = extractelement <2 x float> %4326, i32 0
  %4330 = extractelement <2 x float> %4328, i32 0
  %4331 = fadd float %4329, %4330
  store float %4331, float* %2849, align 1
  %4332 = bitcast <2 x float> %4326 to <2 x i32>
  %4333 = extractelement <2 x i32> %4332, i32 1
  store i32 %4333, i32* %2874, align 1
  %4334 = extractelement <2 x i32> %4327, i32 0
  store i32 %4334, i32* %2875, align 1
  %4335 = extractelement <2 x i32> %4327, i32 1
  store i32 %4335, i32* %2876, align 1
  %4336 = add i64 %4278, -32
  %4337 = add i64 %2955, 556
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4336 to i64*
  %4339 = load i64, i64* %4338, align 8
  store i64 %4339, i64* %RAX.i1124, align 8
  %4340 = add i64 %4278, -44
  %4341 = add i64 %2955, 559
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i32*
  %4343 = load i32, i32* %4342, align 4
  %4344 = add i32 %4343, -4
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RDX.i722.pre-phi, align 8
  %4346 = icmp ult i32 %4343, 4
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %.pre-phi, align 1
  %4348 = and i32 %4344, 255
  %4349 = tail call i32 @llvm.ctpop.i32(i32 %4348)
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  %4352 = xor i8 %4351, 1
  store i8 %4352, i8* %.pre-phi42, align 1
  %4353 = xor i32 %4344, %4343
  %4354 = lshr i32 %4353, 4
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  store i8 %4356, i8* %.pre-phi44, align 1
  %4357 = icmp eq i32 %4344, 0
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %.pre-phi46, align 1
  %4359 = lshr i32 %4344, 31
  %4360 = trunc i32 %4359 to i8
  store i8 %4360, i8* %.pre-phi48, align 1
  %4361 = lshr i32 %4343, 31
  %4362 = xor i32 %4359, %4361
  %4363 = add nuw nsw i32 %4362, %4361
  %4364 = icmp eq i32 %4363, 2
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %.pre-phi50, align 1
  %4366 = sext i32 %4344 to i64
  store i64 %4366, i64* %RCX.i1621, align 8
  %4367 = shl nsw i64 %4366, 2
  %4368 = add i64 %4339, %4367
  %4369 = add i64 %2955, 570
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to i32*
  %4371 = load i32, i32* %4370, align 4
  store i32 %4371, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4372 = load i64, i64* %RBP.i, align 8
  %4373 = add i64 %4372, -40
  %4374 = add i64 %2955, 574
  store i64 %4374, i64* %3, align 8
  %4375 = inttoptr i64 %4373 to i64*
  %4376 = load i64, i64* %4375, align 8
  store i64 %4376, i64* %RAX.i1124, align 8
  %4377 = add i64 %4372, -24
  %4378 = add i64 %2955, 577
  store i64 %4378, i64* %3, align 8
  %4379 = inttoptr i64 %4377 to i32*
  %4380 = load i32, i32* %4379, align 4
  %4381 = zext i32 %4380 to i64
  store i64 %4381, i64* %RDX.i722.pre-phi, align 8
  %4382 = add i64 %4372, -44
  %4383 = add i64 %2955, 580
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  %4385 = load i32, i32* %4384, align 4
  %4386 = add i32 %4385, -4
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RSI.i1502, align 8
  %4388 = sext i32 %4380 to i64
  %4389 = sext i32 %4386 to i64
  %4390 = mul nsw i64 %4389, %4388
  %4391 = trunc i64 %4390 to i32
  %4392 = and i64 %4390, 4294967295
  store i64 %4392, i64* %RDX.i722.pre-phi, align 8
  %4393 = shl i64 %4390, 32
  %4394 = ashr exact i64 %4393, 32
  %4395 = icmp ne i64 %4394, %4390
  %4396 = zext i1 %4395 to i8
  store i8 %4396, i8* %.pre-phi, align 1
  %4397 = and i32 %4391, 255
  %4398 = tail call i32 @llvm.ctpop.i32(i32 %4397)
  %4399 = trunc i32 %4398 to i8
  %4400 = and i8 %4399, 1
  %4401 = xor i8 %4400, 1
  store i8 %4401, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4402 = lshr i32 %4391, 31
  %4403 = trunc i32 %4402 to i8
  store i8 %4403, i8* %.pre-phi48, align 1
  store i8 %4396, i8* %.pre-phi50, align 1
  %4404 = add i64 %4372, -48
  %4405 = add i64 %2955, 589
  store i64 %4405, i64* %3, align 8
  %4406 = trunc i64 %4390 to i32
  %4407 = inttoptr i64 %4404 to i32*
  %4408 = load i32, i32* %4407, align 4
  %4409 = add i32 %4408, %4406
  %4410 = zext i32 %4409 to i64
  store i64 %4410, i64* %RDX.i722.pre-phi, align 8
  %4411 = icmp ult i32 %4409, %4406
  %4412 = icmp ult i32 %4409, %4408
  %4413 = or i1 %4411, %4412
  %4414 = zext i1 %4413 to i8
  store i8 %4414, i8* %.pre-phi, align 1
  %4415 = and i32 %4409, 255
  %4416 = tail call i32 @llvm.ctpop.i32(i32 %4415)
  %4417 = trunc i32 %4416 to i8
  %4418 = and i8 %4417, 1
  %4419 = xor i8 %4418, 1
  store i8 %4419, i8* %.pre-phi42, align 1
  %4420 = xor i32 %4408, %4406
  %4421 = xor i32 %4420, %4409
  %4422 = lshr i32 %4421, 4
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  store i8 %4424, i8* %.pre-phi44, align 1
  %4425 = icmp eq i32 %4409, 0
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %.pre-phi46, align 1
  %4427 = lshr i32 %4409, 31
  %4428 = trunc i32 %4427 to i8
  store i8 %4428, i8* %.pre-phi48, align 1
  %4429 = lshr i32 %4406, 31
  %4430 = lshr i32 %4408, 31
  %4431 = xor i32 %4427, %4429
  %4432 = xor i32 %4427, %4430
  %4433 = add nuw nsw i32 %4431, %4432
  %4434 = icmp eq i32 %4433, 2
  %4435 = zext i1 %4434 to i8
  store i8 %4435, i8* %.pre-phi50, align 1
  %4436 = sext i32 %4409 to i64
  store i64 %4436, i64* %RCX.i1621, align 8
  %4437 = load i64, i64* %RAX.i1124, align 8
  %4438 = shl nsw i64 %4436, 2
  %4439 = add i64 %4437, %4438
  %4440 = add i64 %2955, 597
  store i64 %4440, i64* %3, align 8
  %4441 = load <2 x float>, <2 x float>* %2867, align 1
  %4442 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4443 = inttoptr i64 %4439 to float*
  %4444 = load float, float* %4443, align 4
  %4445 = extractelement <2 x float> %4441, i32 0
  %4446 = fmul float %4445, %4444
  store float %4446, float* %2859, align 1
  %4447 = bitcast <2 x float> %4441 to <2 x i32>
  %4448 = extractelement <2 x i32> %4447, i32 1
  store i32 %4448, i32* %2869, align 1
  %4449 = extractelement <2 x i32> %4442, i32 0
  store i32 %4449, i32* %2870, align 1
  %4450 = extractelement <2 x i32> %4442, i32 1
  store i32 %4450, i32* %2871, align 1
  %4451 = load <2 x float>, <2 x float>* %2872, align 1
  %4452 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4453 = load <2 x float>, <2 x float>* %2867, align 1
  %4454 = extractelement <2 x float> %4451, i32 0
  %4455 = extractelement <2 x float> %4453, i32 0
  %4456 = fadd float %4454, %4455
  store float %4456, float* %2849, align 1
  %4457 = bitcast <2 x float> %4451 to <2 x i32>
  %4458 = extractelement <2 x i32> %4457, i32 1
  store i32 %4458, i32* %2874, align 1
  %4459 = extractelement <2 x i32> %4452, i32 0
  store i32 %4459, i32* %2875, align 1
  %4460 = extractelement <2 x i32> %4452, i32 1
  store i32 %4460, i32* %2876, align 1
  %4461 = load i64, i64* %RBP.i, align 8
  %4462 = add i64 %4461, -32
  %4463 = add i64 %2955, 605
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i64*
  %4465 = load i64, i64* %4464, align 8
  store i64 %4465, i64* %RAX.i1124, align 8
  %4466 = add i64 %4461, -44
  %4467 = add i64 %2955, 608
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i32*
  %4469 = load i32, i32* %4468, align 4
  %4470 = add i32 %4469, -3
  %4471 = zext i32 %4470 to i64
  store i64 %4471, i64* %RDX.i722.pre-phi, align 8
  %4472 = icmp ult i32 %4469, 3
  %4473 = zext i1 %4472 to i8
  store i8 %4473, i8* %.pre-phi, align 1
  %4474 = and i32 %4470, 255
  %4475 = tail call i32 @llvm.ctpop.i32(i32 %4474)
  %4476 = trunc i32 %4475 to i8
  %4477 = and i8 %4476, 1
  %4478 = xor i8 %4477, 1
  store i8 %4478, i8* %.pre-phi42, align 1
  %4479 = xor i32 %4470, %4469
  %4480 = lshr i32 %4479, 4
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  store i8 %4482, i8* %.pre-phi44, align 1
  %4483 = icmp eq i32 %4470, 0
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %.pre-phi46, align 1
  %4485 = lshr i32 %4470, 31
  %4486 = trunc i32 %4485 to i8
  store i8 %4486, i8* %.pre-phi48, align 1
  %4487 = lshr i32 %4469, 31
  %4488 = xor i32 %4485, %4487
  %4489 = add nuw nsw i32 %4488, %4487
  %4490 = icmp eq i32 %4489, 2
  %4491 = zext i1 %4490 to i8
  store i8 %4491, i8* %.pre-phi50, align 1
  %4492 = sext i32 %4470 to i64
  store i64 %4492, i64* %RCX.i1621, align 8
  %4493 = shl nsw i64 %4492, 2
  %4494 = add i64 %4465, %4493
  %4495 = add i64 %2955, 619
  store i64 %4495, i64* %3, align 8
  %4496 = inttoptr i64 %4494 to i32*
  %4497 = load i32, i32* %4496, align 4
  store i32 %4497, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4498 = add i64 %4461, -40
  %4499 = add i64 %2955, 623
  store i64 %4499, i64* %3, align 8
  %4500 = inttoptr i64 %4498 to i64*
  %4501 = load i64, i64* %4500, align 8
  store i64 %4501, i64* %RAX.i1124, align 8
  %4502 = add i64 %4461, -24
  %4503 = add i64 %2955, 626
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RDX.i722.pre-phi, align 8
  %4507 = add i64 %2955, 629
  store i64 %4507, i64* %3, align 8
  %4508 = load i32, i32* %4468, align 4
  %4509 = add i32 %4508, -3
  %4510 = zext i32 %4509 to i64
  store i64 %4510, i64* %RSI.i1502, align 8
  %4511 = sext i32 %4505 to i64
  %4512 = sext i32 %4509 to i64
  %4513 = mul nsw i64 %4512, %4511
  %4514 = trunc i64 %4513 to i32
  %4515 = and i64 %4513, 4294967295
  store i64 %4515, i64* %RDX.i722.pre-phi, align 8
  %4516 = shl i64 %4513, 32
  %4517 = ashr exact i64 %4516, 32
  %4518 = icmp ne i64 %4517, %4513
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %.pre-phi, align 1
  %4520 = and i32 %4514, 255
  %4521 = tail call i32 @llvm.ctpop.i32(i32 %4520)
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = xor i8 %4523, 1
  store i8 %4524, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4525 = lshr i32 %4514, 31
  %4526 = trunc i32 %4525 to i8
  store i8 %4526, i8* %.pre-phi48, align 1
  store i8 %4519, i8* %.pre-phi50, align 1
  %4527 = load i64, i64* %RBP.i, align 8
  %4528 = add i64 %4527, -48
  %4529 = add i64 %2955, 638
  store i64 %4529, i64* %3, align 8
  %4530 = trunc i64 %4513 to i32
  %4531 = inttoptr i64 %4528 to i32*
  %4532 = load i32, i32* %4531, align 4
  %4533 = add i32 %4532, %4530
  %4534 = zext i32 %4533 to i64
  store i64 %4534, i64* %RDX.i722.pre-phi, align 8
  %4535 = icmp ult i32 %4533, %4530
  %4536 = icmp ult i32 %4533, %4532
  %4537 = or i1 %4535, %4536
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %.pre-phi, align 1
  %4539 = and i32 %4533, 255
  %4540 = tail call i32 @llvm.ctpop.i32(i32 %4539)
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = xor i8 %4542, 1
  store i8 %4543, i8* %.pre-phi42, align 1
  %4544 = xor i32 %4532, %4530
  %4545 = xor i32 %4544, %4533
  %4546 = lshr i32 %4545, 4
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  store i8 %4548, i8* %.pre-phi44, align 1
  %4549 = icmp eq i32 %4533, 0
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %.pre-phi46, align 1
  %4551 = lshr i32 %4533, 31
  %4552 = trunc i32 %4551 to i8
  store i8 %4552, i8* %.pre-phi48, align 1
  %4553 = lshr i32 %4530, 31
  %4554 = lshr i32 %4532, 31
  %4555 = xor i32 %4551, %4553
  %4556 = xor i32 %4551, %4554
  %4557 = add nuw nsw i32 %4555, %4556
  %4558 = icmp eq i32 %4557, 2
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %.pre-phi50, align 1
  %4560 = sext i32 %4533 to i64
  store i64 %4560, i64* %RCX.i1621, align 8
  %4561 = load i64, i64* %RAX.i1124, align 8
  %4562 = shl nsw i64 %4560, 2
  %4563 = add i64 %4561, %4562
  %4564 = add i64 %2955, 646
  store i64 %4564, i64* %3, align 8
  %4565 = load <2 x float>, <2 x float>* %2867, align 1
  %4566 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4567 = inttoptr i64 %4563 to float*
  %4568 = load float, float* %4567, align 4
  %4569 = extractelement <2 x float> %4565, i32 0
  %4570 = fmul float %4569, %4568
  store float %4570, float* %2859, align 1
  %4571 = bitcast <2 x float> %4565 to <2 x i32>
  %4572 = extractelement <2 x i32> %4571, i32 1
  store i32 %4572, i32* %2869, align 1
  %4573 = extractelement <2 x i32> %4566, i32 0
  store i32 %4573, i32* %2870, align 1
  %4574 = extractelement <2 x i32> %4566, i32 1
  store i32 %4574, i32* %2871, align 1
  %4575 = load <2 x float>, <2 x float>* %2872, align 1
  %4576 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4577 = load <2 x float>, <2 x float>* %2867, align 1
  %4578 = extractelement <2 x float> %4575, i32 0
  %4579 = extractelement <2 x float> %4577, i32 0
  %4580 = fadd float %4578, %4579
  store float %4580, float* %2849, align 1
  %4581 = bitcast <2 x float> %4575 to <2 x i32>
  %4582 = extractelement <2 x i32> %4581, i32 1
  store i32 %4582, i32* %2874, align 1
  %4583 = extractelement <2 x i32> %4576, i32 0
  store i32 %4583, i32* %2875, align 1
  %4584 = extractelement <2 x i32> %4576, i32 1
  store i32 %4584, i32* %2876, align 1
  %4585 = add i64 %4527, -32
  %4586 = add i64 %2955, 654
  store i64 %4586, i64* %3, align 8
  %4587 = inttoptr i64 %4585 to i64*
  %4588 = load i64, i64* %4587, align 8
  store i64 %4588, i64* %RAX.i1124, align 8
  %4589 = add i64 %4527, -44
  %4590 = add i64 %2955, 657
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i32*
  %4592 = load i32, i32* %4591, align 4
  %4593 = add i32 %4592, -2
  %4594 = zext i32 %4593 to i64
  store i64 %4594, i64* %RDX.i722.pre-phi, align 8
  %4595 = icmp ult i32 %4592, 2
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %.pre-phi, align 1
  %4597 = and i32 %4593, 255
  %4598 = tail call i32 @llvm.ctpop.i32(i32 %4597)
  %4599 = trunc i32 %4598 to i8
  %4600 = and i8 %4599, 1
  %4601 = xor i8 %4600, 1
  store i8 %4601, i8* %.pre-phi42, align 1
  %4602 = xor i32 %4593, %4592
  %4603 = lshr i32 %4602, 4
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  store i8 %4605, i8* %.pre-phi44, align 1
  %4606 = icmp eq i32 %4593, 0
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %.pre-phi46, align 1
  %4608 = lshr i32 %4593, 31
  %4609 = trunc i32 %4608 to i8
  store i8 %4609, i8* %.pre-phi48, align 1
  %4610 = lshr i32 %4592, 31
  %4611 = xor i32 %4608, %4610
  %4612 = add nuw nsw i32 %4611, %4610
  %4613 = icmp eq i32 %4612, 2
  %4614 = zext i1 %4613 to i8
  store i8 %4614, i8* %.pre-phi50, align 1
  %4615 = sext i32 %4593 to i64
  store i64 %4615, i64* %RCX.i1621, align 8
  %4616 = shl nsw i64 %4615, 2
  %4617 = add i64 %4588, %4616
  %4618 = add i64 %2955, 668
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i32*
  %4620 = load i32, i32* %4619, align 4
  store i32 %4620, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4621 = load i64, i64* %RBP.i, align 8
  %4622 = add i64 %4621, -40
  %4623 = add i64 %2955, 672
  store i64 %4623, i64* %3, align 8
  %4624 = inttoptr i64 %4622 to i64*
  %4625 = load i64, i64* %4624, align 8
  store i64 %4625, i64* %RAX.i1124, align 8
  %4626 = add i64 %4621, -24
  %4627 = add i64 %2955, 675
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4626 to i32*
  %4629 = load i32, i32* %4628, align 4
  %4630 = zext i32 %4629 to i64
  store i64 %4630, i64* %RDX.i722.pre-phi, align 8
  %4631 = add i64 %4621, -44
  %4632 = add i64 %2955, 678
  store i64 %4632, i64* %3, align 8
  %4633 = inttoptr i64 %4631 to i32*
  %4634 = load i32, i32* %4633, align 4
  %4635 = add i32 %4634, -2
  %4636 = zext i32 %4635 to i64
  store i64 %4636, i64* %RSI.i1502, align 8
  %4637 = sext i32 %4629 to i64
  %4638 = sext i32 %4635 to i64
  %4639 = mul nsw i64 %4638, %4637
  %4640 = trunc i64 %4639 to i32
  %4641 = and i64 %4639, 4294967295
  store i64 %4641, i64* %RDX.i722.pre-phi, align 8
  %4642 = shl i64 %4639, 32
  %4643 = ashr exact i64 %4642, 32
  %4644 = icmp ne i64 %4643, %4639
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %.pre-phi, align 1
  %4646 = and i32 %4640, 255
  %4647 = tail call i32 @llvm.ctpop.i32(i32 %4646)
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = xor i8 %4649, 1
  store i8 %4650, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4651 = lshr i32 %4640, 31
  %4652 = trunc i32 %4651 to i8
  store i8 %4652, i8* %.pre-phi48, align 1
  store i8 %4645, i8* %.pre-phi50, align 1
  %4653 = add i64 %4621, -48
  %4654 = add i64 %2955, 687
  store i64 %4654, i64* %3, align 8
  %4655 = trunc i64 %4639 to i32
  %4656 = inttoptr i64 %4653 to i32*
  %4657 = load i32, i32* %4656, align 4
  %4658 = add i32 %4657, %4655
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RDX.i722.pre-phi, align 8
  %4660 = icmp ult i32 %4658, %4655
  %4661 = icmp ult i32 %4658, %4657
  %4662 = or i1 %4660, %4661
  %4663 = zext i1 %4662 to i8
  store i8 %4663, i8* %.pre-phi, align 1
  %4664 = and i32 %4658, 255
  %4665 = tail call i32 @llvm.ctpop.i32(i32 %4664)
  %4666 = trunc i32 %4665 to i8
  %4667 = and i8 %4666, 1
  %4668 = xor i8 %4667, 1
  store i8 %4668, i8* %.pre-phi42, align 1
  %4669 = xor i32 %4657, %4655
  %4670 = xor i32 %4669, %4658
  %4671 = lshr i32 %4670, 4
  %4672 = trunc i32 %4671 to i8
  %4673 = and i8 %4672, 1
  store i8 %4673, i8* %.pre-phi44, align 1
  %4674 = icmp eq i32 %4658, 0
  %4675 = zext i1 %4674 to i8
  store i8 %4675, i8* %.pre-phi46, align 1
  %4676 = lshr i32 %4658, 31
  %4677 = trunc i32 %4676 to i8
  store i8 %4677, i8* %.pre-phi48, align 1
  %4678 = lshr i32 %4655, 31
  %4679 = lshr i32 %4657, 31
  %4680 = xor i32 %4676, %4678
  %4681 = xor i32 %4676, %4679
  %4682 = add nuw nsw i32 %4680, %4681
  %4683 = icmp eq i32 %4682, 2
  %4684 = zext i1 %4683 to i8
  store i8 %4684, i8* %.pre-phi50, align 1
  %4685 = sext i32 %4658 to i64
  store i64 %4685, i64* %RCX.i1621, align 8
  %4686 = load i64, i64* %RAX.i1124, align 8
  %4687 = shl nsw i64 %4685, 2
  %4688 = add i64 %4686, %4687
  %4689 = add i64 %2955, 695
  store i64 %4689, i64* %3, align 8
  %4690 = load <2 x float>, <2 x float>* %2867, align 1
  %4691 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4692 = inttoptr i64 %4688 to float*
  %4693 = load float, float* %4692, align 4
  %4694 = extractelement <2 x float> %4690, i32 0
  %4695 = fmul float %4694, %4693
  store float %4695, float* %2859, align 1
  %4696 = bitcast <2 x float> %4690 to <2 x i32>
  %4697 = extractelement <2 x i32> %4696, i32 1
  store i32 %4697, i32* %2869, align 1
  %4698 = extractelement <2 x i32> %4691, i32 0
  store i32 %4698, i32* %2870, align 1
  %4699 = extractelement <2 x i32> %4691, i32 1
  store i32 %4699, i32* %2871, align 1
  %4700 = load <2 x float>, <2 x float>* %2872, align 1
  %4701 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4702 = load <2 x float>, <2 x float>* %2867, align 1
  %4703 = extractelement <2 x float> %4700, i32 0
  %4704 = extractelement <2 x float> %4702, i32 0
  %4705 = fadd float %4703, %4704
  store float %4705, float* %2849, align 1
  %4706 = bitcast <2 x float> %4700 to <2 x i32>
  %4707 = extractelement <2 x i32> %4706, i32 1
  store i32 %4707, i32* %2874, align 1
  %4708 = extractelement <2 x i32> %4701, i32 0
  store i32 %4708, i32* %2875, align 1
  %4709 = extractelement <2 x i32> %4701, i32 1
  store i32 %4709, i32* %2876, align 1
  %4710 = load i64, i64* %RBP.i, align 8
  %4711 = add i64 %4710, -32
  %4712 = add i64 %2955, 703
  store i64 %4712, i64* %3, align 8
  %4713 = inttoptr i64 %4711 to i64*
  %4714 = load i64, i64* %4713, align 8
  store i64 %4714, i64* %RAX.i1124, align 8
  %4715 = add i64 %4710, -44
  %4716 = add i64 %2955, 706
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4715 to i32*
  %4718 = load i32, i32* %4717, align 4
  %4719 = add i32 %4718, -1
  %4720 = zext i32 %4719 to i64
  store i64 %4720, i64* %RDX.i722.pre-phi, align 8
  %4721 = icmp eq i32 %4718, 0
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %.pre-phi, align 1
  %4723 = and i32 %4719, 255
  %4724 = tail call i32 @llvm.ctpop.i32(i32 %4723)
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  %4727 = xor i8 %4726, 1
  store i8 %4727, i8* %.pre-phi42, align 1
  %4728 = xor i32 %4719, %4718
  %4729 = lshr i32 %4728, 4
  %4730 = trunc i32 %4729 to i8
  %4731 = and i8 %4730, 1
  store i8 %4731, i8* %.pre-phi44, align 1
  %4732 = icmp eq i32 %4719, 0
  %4733 = zext i1 %4732 to i8
  store i8 %4733, i8* %.pre-phi46, align 1
  %4734 = lshr i32 %4719, 31
  %4735 = trunc i32 %4734 to i8
  store i8 %4735, i8* %.pre-phi48, align 1
  %4736 = lshr i32 %4718, 31
  %4737 = xor i32 %4734, %4736
  %4738 = add nuw nsw i32 %4737, %4736
  %4739 = icmp eq i32 %4738, 2
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %.pre-phi50, align 1
  %4741 = sext i32 %4719 to i64
  store i64 %4741, i64* %RCX.i1621, align 8
  %4742 = shl nsw i64 %4741, 2
  %4743 = add i64 %4714, %4742
  %4744 = add i64 %2955, 717
  store i64 %4744, i64* %3, align 8
  %4745 = inttoptr i64 %4743 to i32*
  %4746 = load i32, i32* %4745, align 4
  store i32 %4746, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4747 = add i64 %4710, -40
  %4748 = add i64 %2955, 721
  store i64 %4748, i64* %3, align 8
  %4749 = inttoptr i64 %4747 to i64*
  %4750 = load i64, i64* %4749, align 8
  store i64 %4750, i64* %RAX.i1124, align 8
  %4751 = add i64 %4710, -24
  %4752 = add i64 %2955, 724
  store i64 %4752, i64* %3, align 8
  %4753 = inttoptr i64 %4751 to i32*
  %4754 = load i32, i32* %4753, align 4
  %4755 = zext i32 %4754 to i64
  store i64 %4755, i64* %RDX.i722.pre-phi, align 8
  %4756 = add i64 %2955, 727
  store i64 %4756, i64* %3, align 8
  %4757 = load i32, i32* %4717, align 4
  %4758 = add i32 %4757, -1
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %RSI.i1502, align 8
  %4760 = sext i32 %4754 to i64
  %4761 = sext i32 %4758 to i64
  %4762 = mul nsw i64 %4761, %4760
  %4763 = trunc i64 %4762 to i32
  %4764 = and i64 %4762, 4294967295
  store i64 %4764, i64* %RDX.i722.pre-phi, align 8
  %4765 = shl i64 %4762, 32
  %4766 = ashr exact i64 %4765, 32
  %4767 = icmp ne i64 %4766, %4762
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %.pre-phi, align 1
  %4769 = and i32 %4763, 255
  %4770 = tail call i32 @llvm.ctpop.i32(i32 %4769)
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  %4773 = xor i8 %4772, 1
  store i8 %4773, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4774 = lshr i32 %4763, 31
  %4775 = trunc i32 %4774 to i8
  store i8 %4775, i8* %.pre-phi48, align 1
  store i8 %4768, i8* %.pre-phi50, align 1
  %4776 = load i64, i64* %RBP.i, align 8
  %4777 = add i64 %4776, -48
  %4778 = add i64 %2955, 736
  store i64 %4778, i64* %3, align 8
  %4779 = trunc i64 %4762 to i32
  %4780 = inttoptr i64 %4777 to i32*
  %4781 = load i32, i32* %4780, align 4
  %4782 = add i32 %4781, %4779
  %4783 = zext i32 %4782 to i64
  store i64 %4783, i64* %RDX.i722.pre-phi, align 8
  %4784 = icmp ult i32 %4782, %4779
  %4785 = icmp ult i32 %4782, %4781
  %4786 = or i1 %4784, %4785
  %4787 = zext i1 %4786 to i8
  store i8 %4787, i8* %.pre-phi, align 1
  %4788 = and i32 %4782, 255
  %4789 = tail call i32 @llvm.ctpop.i32(i32 %4788)
  %4790 = trunc i32 %4789 to i8
  %4791 = and i8 %4790, 1
  %4792 = xor i8 %4791, 1
  store i8 %4792, i8* %.pre-phi42, align 1
  %4793 = xor i32 %4781, %4779
  %4794 = xor i32 %4793, %4782
  %4795 = lshr i32 %4794, 4
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  store i8 %4797, i8* %.pre-phi44, align 1
  %4798 = icmp eq i32 %4782, 0
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %.pre-phi46, align 1
  %4800 = lshr i32 %4782, 31
  %4801 = trunc i32 %4800 to i8
  store i8 %4801, i8* %.pre-phi48, align 1
  %4802 = lshr i32 %4779, 31
  %4803 = lshr i32 %4781, 31
  %4804 = xor i32 %4800, %4802
  %4805 = xor i32 %4800, %4803
  %4806 = add nuw nsw i32 %4804, %4805
  %4807 = icmp eq i32 %4806, 2
  %4808 = zext i1 %4807 to i8
  store i8 %4808, i8* %.pre-phi50, align 1
  %4809 = sext i32 %4782 to i64
  store i64 %4809, i64* %RCX.i1621, align 8
  %4810 = load i64, i64* %RAX.i1124, align 8
  %4811 = shl nsw i64 %4809, 2
  %4812 = add i64 %4810, %4811
  %4813 = add i64 %2955, 744
  store i64 %4813, i64* %3, align 8
  %4814 = load <2 x float>, <2 x float>* %2867, align 1
  %4815 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4816 = inttoptr i64 %4812 to float*
  %4817 = load float, float* %4816, align 4
  %4818 = extractelement <2 x float> %4814, i32 0
  %4819 = fmul float %4818, %4817
  store float %4819, float* %2859, align 1
  %4820 = bitcast <2 x float> %4814 to <2 x i32>
  %4821 = extractelement <2 x i32> %4820, i32 1
  store i32 %4821, i32* %2869, align 1
  %4822 = extractelement <2 x i32> %4815, i32 0
  store i32 %4822, i32* %2870, align 1
  %4823 = extractelement <2 x i32> %4815, i32 1
  store i32 %4823, i32* %2871, align 1
  %4824 = load <2 x float>, <2 x float>* %2872, align 1
  %4825 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4826 = load <2 x float>, <2 x float>* %2867, align 1
  %4827 = extractelement <2 x float> %4824, i32 0
  %4828 = extractelement <2 x float> %4826, i32 0
  %4829 = fadd float %4827, %4828
  store float %4829, float* %2849, align 1
  %4830 = bitcast <2 x float> %4824 to <2 x i32>
  %4831 = extractelement <2 x i32> %4830, i32 1
  store i32 %4831, i32* %2874, align 1
  %4832 = extractelement <2 x i32> %4825, i32 0
  store i32 %4832, i32* %2875, align 1
  %4833 = extractelement <2 x i32> %4825, i32 1
  store i32 %4833, i32* %2876, align 1
  %4834 = add i64 %4776, -32
  %4835 = add i64 %2955, 752
  store i64 %4835, i64* %3, align 8
  %4836 = inttoptr i64 %4834 to i64*
  %4837 = load i64, i64* %4836, align 8
  store i64 %4837, i64* %RAX.i1124, align 8
  %4838 = add i64 %4776, -44
  %4839 = add i64 %2955, 756
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i32*
  %4841 = load i32, i32* %4840, align 4
  %4842 = sext i32 %4841 to i64
  store i64 %4842, i64* %RCX.i1621, align 8
  %4843 = shl nsw i64 %4842, 2
  %4844 = add i64 %4843, %4837
  %4845 = add i64 %2955, 761
  store i64 %4845, i64* %3, align 8
  %4846 = inttoptr i64 %4844 to i32*
  %4847 = load i32, i32* %4846, align 4
  store i32 %4847, i32* %2860, align 1
  store float 0.000000e+00, float* %2862, align 1
  store float 0.000000e+00, float* %2864, align 1
  store float 0.000000e+00, float* %2866, align 1
  %4848 = load i64, i64* %RBP.i, align 8
  %4849 = add i64 %4848, -40
  %4850 = add i64 %2955, 765
  store i64 %4850, i64* %3, align 8
  %4851 = inttoptr i64 %4849 to i64*
  %4852 = load i64, i64* %4851, align 8
  store i64 %4852, i64* %RAX.i1124, align 8
  %4853 = add i64 %4848, -24
  %4854 = add i64 %2955, 768
  store i64 %4854, i64* %3, align 8
  %4855 = inttoptr i64 %4853 to i32*
  %4856 = load i32, i32* %4855, align 4
  %4857 = zext i32 %4856 to i64
  store i64 %4857, i64* %RDX.i722.pre-phi, align 8
  %4858 = add i64 %4848, -44
  %4859 = add i64 %2955, 772
  store i64 %4859, i64* %3, align 8
  %4860 = inttoptr i64 %4858 to i32*
  %4861 = load i32, i32* %4860, align 4
  %4862 = sext i32 %4856 to i64
  %4863 = sext i32 %4861 to i64
  %4864 = mul nsw i64 %4863, %4862
  %4865 = trunc i64 %4864 to i32
  %4866 = and i64 %4864, 4294967295
  store i64 %4866, i64* %RDX.i722.pre-phi, align 8
  %4867 = shl i64 %4864, 32
  %4868 = ashr exact i64 %4867, 32
  %4869 = icmp ne i64 %4868, %4864
  %4870 = zext i1 %4869 to i8
  store i8 %4870, i8* %.pre-phi, align 1
  %4871 = and i32 %4865, 255
  %4872 = tail call i32 @llvm.ctpop.i32(i32 %4871)
  %4873 = trunc i32 %4872 to i8
  %4874 = and i8 %4873, 1
  %4875 = xor i8 %4874, 1
  store i8 %4875, i8* %.pre-phi42, align 1
  store i8 0, i8* %.pre-phi44, align 1
  store i8 0, i8* %.pre-phi46, align 1
  %4876 = lshr i32 %4865, 31
  %4877 = trunc i32 %4876 to i8
  store i8 %4877, i8* %.pre-phi48, align 1
  store i8 %4870, i8* %.pre-phi50, align 1
  %4878 = add i64 %4848, -48
  %4879 = add i64 %2955, 775
  store i64 %4879, i64* %3, align 8
  %4880 = trunc i64 %4864 to i32
  %4881 = inttoptr i64 %4878 to i32*
  %4882 = load i32, i32* %4881, align 4
  %4883 = add i32 %4882, %4880
  %4884 = zext i32 %4883 to i64
  store i64 %4884, i64* %RDX.i722.pre-phi, align 8
  %4885 = icmp ult i32 %4883, %4880
  %4886 = icmp ult i32 %4883, %4882
  %4887 = or i1 %4885, %4886
  %4888 = zext i1 %4887 to i8
  store i8 %4888, i8* %.pre-phi, align 1
  %4889 = and i32 %4883, 255
  %4890 = tail call i32 @llvm.ctpop.i32(i32 %4889)
  %4891 = trunc i32 %4890 to i8
  %4892 = and i8 %4891, 1
  %4893 = xor i8 %4892, 1
  store i8 %4893, i8* %.pre-phi42, align 1
  %4894 = xor i32 %4882, %4880
  %4895 = xor i32 %4894, %4883
  %4896 = lshr i32 %4895, 4
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  store i8 %4898, i8* %.pre-phi44, align 1
  %4899 = icmp eq i32 %4883, 0
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %.pre-phi46, align 1
  %4901 = lshr i32 %4883, 31
  %4902 = trunc i32 %4901 to i8
  store i8 %4902, i8* %.pre-phi48, align 1
  %4903 = lshr i32 %4880, 31
  %4904 = lshr i32 %4882, 31
  %4905 = xor i32 %4901, %4903
  %4906 = xor i32 %4901, %4904
  %4907 = add nuw nsw i32 %4905, %4906
  %4908 = icmp eq i32 %4907, 2
  %4909 = zext i1 %4908 to i8
  store i8 %4909, i8* %.pre-phi50, align 1
  %4910 = sext i32 %4883 to i64
  store i64 %4910, i64* %RCX.i1621, align 8
  %4911 = shl nsw i64 %4910, 2
  %4912 = add i64 %4852, %4911
  %4913 = add i64 %2955, 783
  store i64 %4913, i64* %3, align 8
  %4914 = load <2 x float>, <2 x float>* %2867, align 1
  %4915 = load <2 x i32>, <2 x i32>* %2868, align 1
  %4916 = inttoptr i64 %4912 to float*
  %4917 = load float, float* %4916, align 4
  %4918 = extractelement <2 x float> %4914, i32 0
  %4919 = fmul float %4918, %4917
  store float %4919, float* %2859, align 1
  %4920 = bitcast <2 x float> %4914 to <2 x i32>
  %4921 = extractelement <2 x i32> %4920, i32 1
  store i32 %4921, i32* %2869, align 1
  %4922 = extractelement <2 x i32> %4915, i32 0
  store i32 %4922, i32* %2870, align 1
  %4923 = extractelement <2 x i32> %4915, i32 1
  store i32 %4923, i32* %2871, align 1
  %4924 = load <2 x float>, <2 x float>* %2872, align 1
  %4925 = load <2 x i32>, <2 x i32>* %2873, align 1
  %4926 = load <2 x float>, <2 x float>* %2867, align 1
  %4927 = extractelement <2 x float> %4924, i32 0
  %4928 = extractelement <2 x float> %4926, i32 0
  %4929 = fadd float %4927, %4928
  store float %4929, float* %2849, align 1
  %4930 = bitcast <2 x float> %4924 to <2 x i32>
  %4931 = extractelement <2 x i32> %4930, i32 1
  store i32 %4931, i32* %2874, align 1
  %4932 = extractelement <2 x i32> %4925, i32 0
  store i32 %4932, i32* %2875, align 1
  %4933 = extractelement <2 x i32> %4925, i32 1
  store i32 %4933, i32* %2876, align 1
  %4934 = load i64, i64* %RBP.i, align 8
  %4935 = add i64 %4934, -16
  %4936 = add i64 %2955, 791
  store i64 %4936, i64* %3, align 8
  %4937 = inttoptr i64 %4935 to i64*
  %4938 = load i64, i64* %4937, align 8
  store i64 %4938, i64* %RAX.i1124, align 8
  %4939 = add i64 %4934, -48
  %4940 = add i64 %2955, 795
  store i64 %4940, i64* %3, align 8
  %4941 = inttoptr i64 %4939 to i32*
  %4942 = load i32, i32* %4941, align 4
  %4943 = sext i32 %4942 to i64
  store i64 %4943, i64* %RCX.i1621, align 8
  %4944 = shl nsw i64 %4943, 2
  %4945 = add i64 %4944, %4938
  %4946 = add i64 %2955, 800
  store i64 %4946, i64* %3, align 8
  %4947 = load <2 x float>, <2 x float>* %2872, align 1
  %4948 = extractelement <2 x float> %4947, i32 0
  %4949 = inttoptr i64 %4945 to float*
  store float %4948, float* %4949, align 4
  %4950 = load i64, i64* %RBP.i, align 8
  %4951 = add i64 %4950, -48
  %4952 = load i64, i64* %3, align 8
  %4953 = add i64 %4952, 3
  store i64 %4953, i64* %3, align 8
  %4954 = inttoptr i64 %4951 to i32*
  %4955 = load i32, i32* %4954, align 4
  %4956 = add i32 %4955, 1
  %4957 = zext i32 %4956 to i64
  store i64 %4957, i64* %RAX.i1124, align 8
  %4958 = icmp eq i32 %4955, -1
  %4959 = icmp eq i32 %4956, 0
  %4960 = or i1 %4958, %4959
  %4961 = zext i1 %4960 to i8
  store i8 %4961, i8* %.pre-phi, align 1
  %4962 = and i32 %4956, 255
  %4963 = tail call i32 @llvm.ctpop.i32(i32 %4962)
  %4964 = trunc i32 %4963 to i8
  %4965 = and i8 %4964, 1
  %4966 = xor i8 %4965, 1
  store i8 %4966, i8* %.pre-phi42, align 1
  %4967 = xor i32 %4956, %4955
  %4968 = lshr i32 %4967, 4
  %4969 = trunc i32 %4968 to i8
  %4970 = and i8 %4969, 1
  store i8 %4970, i8* %.pre-phi44, align 1
  %4971 = zext i1 %4959 to i8
  store i8 %4971, i8* %.pre-phi46, align 1
  %4972 = lshr i32 %4956, 31
  %4973 = trunc i32 %4972 to i8
  store i8 %4973, i8* %.pre-phi48, align 1
  %4974 = lshr i32 %4955, 31
  %4975 = xor i32 %4972, %4974
  %4976 = add nuw nsw i32 %4975, %4972
  %4977 = icmp eq i32 %4976, 2
  %4978 = zext i1 %4977 to i8
  store i8 %4978, i8* %.pre-phi50, align 1
  %4979 = add i64 %4952, 9
  store i64 %4979, i64* %3, align 8
  store i32 %4956, i32* %4954, align 4
  %4980 = load i64, i64* %3, align 8
  %4981 = add i64 %4980, -821
  store i64 %4981, i64* %3, align 8
  br label %block_.L_402459

block_.L_402793:                                  ; preds = %block_.L_402459
  %4982 = add i64 %2919, -44
  %4983 = add i64 %2955, 8
  store i64 %4983, i64* %3, align 8
  %4984 = inttoptr i64 %4982 to i32*
  %4985 = load i32, i32* %4984, align 4
  %4986 = add i32 %4985, 16
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RAX.i1124, align 8
  %4988 = icmp ugt i32 %4985, -17
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %.pre-phi, align 1
  %4990 = and i32 %4986, 255
  %4991 = tail call i32 @llvm.ctpop.i32(i32 %4990)
  %4992 = trunc i32 %4991 to i8
  %4993 = and i8 %4992, 1
  %4994 = xor i8 %4993, 1
  store i8 %4994, i8* %.pre-phi42, align 1
  %4995 = xor i32 %4985, 16
  %4996 = xor i32 %4995, %4986
  %4997 = lshr i32 %4996, 4
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  store i8 %4999, i8* %.pre-phi44, align 1
  %5000 = icmp eq i32 %4986, 0
  %5001 = zext i1 %5000 to i8
  store i8 %5001, i8* %.pre-phi46, align 1
  %5002 = lshr i32 %4986, 31
  %5003 = trunc i32 %5002 to i8
  store i8 %5003, i8* %.pre-phi48, align 1
  %5004 = lshr i32 %4985, 31
  %5005 = xor i32 %5002, %5004
  %5006 = add nuw nsw i32 %5005, %5002
  %5007 = icmp eq i32 %5006, 2
  %5008 = zext i1 %5007 to i8
  store i8 %5008, i8* %.pre-phi50, align 1
  %5009 = add i64 %2955, 14
  store i64 %5009, i64* %3, align 8
  store i32 %4986, i32* %4984, align 4
  %5010 = load i64, i64* %3, align 8
  %5011 = add i64 %5010, -859
  store i64 %5011, i64* %3, align 8
  br label %block_.L_402446

block_.L_4027a6:                                  ; preds = %block_.L_402446
  %5012 = add i64 %2914, 1
  store i64 %5012, i64* %3, align 8
  %5013 = load i64, i64* %6, align 8
  %5014 = add i64 %5013, 8
  %5015 = inttoptr i64 %5013 to i64*
  %5016 = load i64, i64* %5015, align 8
  store i64 %5016, i64* %RBP.i, align 8
  store i64 %5014, i64* %6, align 8
  %5017 = add i64 %2914, 2
  store i64 %5017, i64* %3, align 8
  %5018 = inttoptr i64 %5014 to i64*
  %5019 = load i64, i64* %5018, align 8
  store i64 %5019, i64* %3, align 8
  %5020 = add i64 %5013, 16
  store i64 %5020, i64* %6, align 8
  ret %struct.Memory* %2788
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jl_.L_402059(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401ff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402059(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jl_.L_40211a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402115(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40211a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jl_.L_40223d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_40214a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40223d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jl_.L_402424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40241f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_40226d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_4027a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_402793(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xf___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xf___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xe___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xe___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xd___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xb___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xb___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xa___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xa___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x9___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_402459(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402798(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402446(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
